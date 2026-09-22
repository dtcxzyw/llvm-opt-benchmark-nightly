Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/influxdb-rs/original/influxdb3_lib-b059757b77138e23.influxdb3_lib.bfc5fb6112bc5ebd-cgu.15?download=true
inline.NumInlined: 9161
inline.NumDeleted: 2965
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_RNCNvMs0_NtCs1yQqqZMFGFX_16iox_v1_query_api7handlerNtB7_13V1HttpHandler26handle_parameterized_query0CsgsNUVCRJO2f_13influxdb3_lib:bb.a
  %i.aos = load i8, ptr %i.aor, align 1, !range !20, !noalias !7730, !noundef !13
  %i.aot = trunc nuw i8 %i.aos to i1
  br i1 %i.aot, label %bb.nf, label %bb.ne

bb.ne:                                            ; preds = %bb.nf, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs2lpxFwhfAIc_5trace3ctx11SpanContextEECsgsNUVCRJO2f_13influxdb3_lib.exit.i
  store i8 0, ptr %i.aor, align 1, !noalias !7730
  br label %bb.nl

bb.nf:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs2lpxFwhfAIc_5trace3ctx11SpanContextEECsgsNUVCRJO2f_13influxdb3_lib.exit.i
  %i.aou = getelementptr inbounds nuw i8, ptr %1, i64 512
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs6P5GRezSnwZ_4http7request7RequestINtNtNtCsPDBpS1owJq_14http_body_util11combinators8box_body7BoxBodyNtNtCsuxFxh2mtOX_5bytes5bytes5BytesINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SendNtB3M_4SyncEL_EEEECsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef align 8 dereferenceable(240) %i.aou)
          to label %bb.ne unwind label %bb.nh, !noalias !7731

bb.ng:                                            ; preds = %bb.nj, %bb.nh, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs2lpxFwhfAIc_5trace3ctx11SpanContextEECsgsNUVCRJO2f_13influxdb3_lib.exit14.i
  %i.aov = phi ptr [ %i.ef, %bb.nh ], [ %i.er, %bb.nj ], [ %i.er, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs2lpxFwhfAIc_5trace3ctx11SpanContextEECsgsNUVCRJO2f_13influxdb3_lib.exit14.i ]
  %i.aow = phi ptr [ %i.eg, %bb.nh ], [ %i.es, %bb.nj ], [ %i.es, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs2lpxFwhfAIc_5trace3ctx11SpanContextEECsgsNUVCRJO2f_13influxdb3_lib.exit14.i ]
  %.pn11.i = phi { ptr, i32 } [ %i.aoy, %bb.nh ], [ %.pn9.i, %bb.nj ], [ %.pn9.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs2lpxFwhfAIc_5trace3ctx11SpanContextEECsgsNUVCRJO2f_13influxdb3_lib.exit14.i ]
  %i.aox = getelementptr inbounds nuw i8, ptr %1, i64 2937
  store i8 0, ptr %i.aox, align 1, !noalias !7730
  store i8 2, ptr %i.aov, align 8, !noalias !7730
  br label %.body

bb.nh:                                            ; preds = %bb.nf
  %i.aoy = landingpad { ptr, i32 }
          cleanup
  br label %bb.ng

bb.ni:                                            ; preds = %bb.nj, %.body.i, %bb.r, %bb.m
  %i.aoz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #35, !noalias !7731
  unreachable

bb.nj:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs2lpxFwhfAIc_5trace3ctx11SpanContextEECsgsNUVCRJO2f_13influxdb3_lib.exit14.i
  %i.apa = getelementptr inbounds nuw i8, ptr %1, i64 512
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs6P5GRezSnwZ_4http7request7RequestINtNtNtCsPDBpS1owJq_14http_body_util11combinators8box_body7BoxBodyNtNtCsuxFxh2mtOX_5bytes5bytes5BytesINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SendNtB3M_4SyncEL_EEEECsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef align 8 dereferenceable(240) %i.apa) #34
          to label %bb.ng unwind label %bb.ni, !noalias !7731

common.ret:                                       ; preds = %bb.th, %bb.nq, %bb.nk
  %.sink = phi i8 [ 4, %bb.th ], [ 1, %bb.nq ], [ 3, %bb.nk ]
  store i8 %.sink, ptr %i.cy, align 16
  ret void

bb.nk:                                            ; preds = %bb.mt, %.thread.i
  %i.apb = phi ptr [ %i.any, %.thread.i ], [ %i.akt, %bb.mt ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.1037.sroa.0.i)
  store i8 3, ptr %i.apb, align 8, !noalias !7730
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cv)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.3.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.028)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.832)
  store i64 -2, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cx)
  br label %common.ret

bb.nl:                                            ; preds = %bb.ne, %bb.mx
  %i.apc = phi ptr [ %i.aob, %bb.mx ], [ %i.ef, %bb.ne ]
  %i.apd = phi ptr [ %i.aoc, %bb.mx ], [ %i.eg, %bb.ne ] ; 2 uses
  %.sroa.629.0.copyload31 = phi i64 [ %.sroa.035.0.copyload3677.i, %bb.mx ], [ 2, %bb.ne ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(80) %.sroa.028, ptr noundef nonnull align 16 dereferenceable(80) %i.cv, i64 80, i1 false), !noalias !7971
  %.sroa.832.0..sroa_idx33 = getelementptr inbounds nuw i8, ptr %i.cv, i64 88
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %.sroa.832, ptr noundef nonnull align 8 dereferenceable(152) %.sroa.832.0..sroa_idx33, i64 152, i1 false), !noalias !7971
  store i8 1, ptr %i.apc, align 8, !noalias !7730
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cv)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.3.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(80) %.sroa.034, ptr noundef nonnull align 16 dereferenceable(80) %.sroa.028, i64 80, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %.sroa.636, ptr noundef nonnull align 8 dereferenceable(152) %.sroa.832, i64 152, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.028)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.832)
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCNvMs0_NtCs1yQqqZMFGFX_16iox_v1_query_api7handlerNtBJ_13V1HttpHandler21extract_query_request0ECsgsNUVCRJO2f_13influxdb3_lib(ptr noundef nonnull align 16 %i.apd)
          to label %bb.nn unwind label %bb.nm

bb.nm:                                            ; preds = %bb.nl
  %i.ape = landingpad { ptr, i32 }
          cleanup
  br label %bb.ns

bb.nn:                                            ; preds = %bb.nl
  %i.apf = icmp eq i64 %.sroa.629.0.copyload31, 2
  br i1 %i.apf, label %bb.np, label %.thread91

.thread91:                                        ; preds = %bb.nn
  %.sroa.538.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cx, i64 88
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %.sroa.538.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(152) %.sroa.636, i64 152, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(80) %i.cx, ptr noundef nonnull align 16 dereferenceable(80) %.sroa.034, i64 80, i1 false)
  %i.apg = getelementptr inbounds nuw i8, ptr %1, i64 257
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cx, i64 80
  store i64 %.sroa.629.0.copyload31, ptr %.sroa.4.0..sroa_idx, align 16
  %i.aph = getelementptr inbounds nuw i8, ptr %1, i64 248
  %i.api = load ptr, ptr %i.aph, align 8, !nonnull !13, !align !18, !noundef !13
  store i8 0, ptr %i.apg, align 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(240) %i.apd, ptr noundef nonnull align 16 dereferenceable(240) %i.cx, i64 240, i1 false)
  %.sroa.745.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 672
  store ptr %i.api, ptr %.sroa.745.0..sroa_idx, align 16
  %.sroa.947.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 968
  store i8 0, ptr %.sroa.947.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.851)
  %i.apj = getelementptr inbounds nuw i8, ptr %1, i64 272
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5298.i)
  %i.apk = getelementptr inbounds nuw i8, ptr %1, i64 968
  br label %bb.nw

bb.no:                                            ; preds = %bb.tj, %.body19
  %.pn2 = phi { ptr, i32 } [ %i.bck, %bb.tj ], [ %eh.lpad-body20, %.body19 ] ; 2 uses
  %i.apl = getelementptr inbounds nuw i8, ptr %1, i64 257
  %i.apm = load i8, ptr %i.apl, align 1, !range !20, !noundef !13
  %i.apn = trunc nuw i8 %i.apm to i1
  br i1 %i.apn, label %bb.tk, label %bb.ns

bb.np:                                            ; preds = %bb.nn
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.354, ptr noundef nonnull align 16 dereferenceable(32) %.sroa.034, i64 32, i1 false)
  br label %bb.nq

bb.nq:                                            ; preds = %bb.ti, %bb.np
  %.sroa.053.0 = phi i64 [ -1, %bb.np ], [ %.sroa.049.0.copyload50, %bb.ti ]
  %i.apo = getelementptr inbounds nuw i8, ptr %1, i64 257
  store i8 0, ptr %i.apo, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cx)
  store i64 %.sroa.053.0, ptr %0, align 8
  %.sroa.354.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %.sroa.354.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(120) %.sroa.354, i64 120, i1 false)
  br label %common.ret

bb.nr:                                            ; preds = %bb.tk, %.body19, %.body
  %i.app = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #35
  unreachable

bb.ns:                                            ; preds = %.body, %bb.nm, %bb.tk, %bb.no
  %.pn4.pn = phi { ptr, i32 } [ %.pn2, %bb.no ], [ %.pn2, %bb.tk ], [ %eh.lpad-body, %.body ], [ %i.ape, %bb.nm ]
  %i.apq = getelementptr inbounds nuw i8, ptr %1, i64 257
  store i8 0, ptr %i.apq, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cx)
  store i8 2, ptr %i.cy, align 16
  resume { ptr, i32 } %.pn4.pn

bb.nt:                                            ; preds = %bb.qj, %bb.qi
  %i.apr = landingpad { ptr, i32 }
          cleanup
  br label %.body19

.body19:                                          ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs2lpxFwhfAIc_5trace3ctx11SpanContextEECsgsNUVCRJO2f_13influxdb3_lib.exit.i9, %bb.nt
  %i.aps = phi ptr [ %i.apt, %bb.nt ], [ %i.azw, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs2lpxFwhfAIc_5trace3ctx11SpanContextEECsgsNUVCRJO2f_13influxdb3_lib.exit.i9 ]
  %eh.lpad-body20 = phi { ptr, i32 } [ %i.apr, %bb.nt ], [ %.pn88.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs2lpxFwhfAIc_5trace3ctx11SpanContextEECsgsNUVCRJO2f_13influxdb3_lib.exit.i9 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.851)
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCNvMs0_NtCs1yQqqZMFGFX_16iox_v1_query_api7handlerNtBJ_13V1HttpHandler13execute_query0ECsgsNUVCRJO2f_13influxdb3_lib(ptr noundef nonnull align 16 %i.aps) #34
          to label %bb.no unwind label %bb.nr

bb.nu:                                            ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cx)
  %.phi.trans.insert66 = getelementptr inbounds nuw i8, ptr %1, i64 968
  %.pre67 = load i8, ptr %.phi.trans.insert66, align 8, !range !37, !noalias !7972
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.851)
  %i.apt = getelementptr inbounds nuw i8, ptr %1, i64 272 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5298.i)
  %i.apu = getelementptr inbounds nuw i8, ptr %1, i64 968 ; 2 uses
  switch i8 %.pre67, label %default.unreachable89 [
    i8 0, label %bb.nw
    i8 1, label %bb.qi
    i8 2, label %bb.qj
    i8 3, label %bb.nv
  ]

bb.nv:                                            ; preds = %bb.nu
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai), !noalias !7972
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !noalias !7972
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !7972
  br label %bb.ql

bb.nw:                                            ; preds = %.thread91, %bb.nu
  %i.apv = phi ptr [ %i.apk, %.thread91 ], [ %i.apu, %bb.nu ] ; 13 uses
  %i.apw = phi ptr [ %i.apj, %.thread91 ], [ %i.apt, %bb.nu ] ; 14 uses
  %i.apx = getelementptr inbounds nuw i8, ptr %1, i64 971 ; 3 uses
  %i.apy = getelementptr inbounds nuw i8, ptr %1, i64 973
  %i.apz = getelementptr inbounds nuw i8, ptr %1, i64 972
  %i.aqa = getelementptr inbounds nuw i8, ptr %1, i64 974
  %i.aqb = getelementptr inbounds nuw i8, ptr %1, i64 672
  %i.aqc = load ptr, ptr %i.aqb, align 16, !noalias !7972, !nonnull !13, !align !18, !noundef !13
  %i.aqd = getelementptr inbounds nuw i8, ptr %1, i64 512 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(80) %i.aqd, ptr noundef nonnull align 16 dereferenceable(80) %i.apw, i64 80, i1 false), !noalias !7972
  %.sroa.0.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 352
  %.sroa.0.sroa.8.0.copyload.i = load i64, ptr %.sroa.0.sroa.8.0..sroa_idx.i, align 16, !noalias !7972 ; 2 uses
  %.sroa.0.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 360
  %.sroa.0.sroa.9.0.copyload.i = load i64, ptr %.sroa.0.sroa.9.0..sroa_idx.i, align 8, !noalias !7972 ; 2 uses
  %.sroa.0.sroa.10.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 368 ; 2 uses
  %i.aqe = getelementptr inbounds nuw i8, ptr %1, i64 704 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.aqe, ptr noundef nonnull align 16 dereferenceable(24) %.sroa.0.sroa.10.0..sroa_idx.i, i64 24, i1 false), !noalias !7972
  %.sroa.0.sroa.11.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 392
  %i.aqf = getelementptr inbounds nuw i8, ptr %1, i64 728 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aqf, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.sroa.11.0..sroa_idx.i, i64 24, i1 false), !noalias !7972
  %.sroa.0.sroa.12.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 416
  %i.aqg = getelementptr inbounds nuw i8, ptr %1, i64 752 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.aqg, ptr noundef nonnull align 16 dereferenceable(24) %.sroa.0.sroa.12.0..sroa_idx.i, i64 24, i1 false), !noalias !7972
  %.sroa.0.sroa.13.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 440
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai), !noalias !7972
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ai, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.sroa.13.0..sroa_idx.i, i64 24, i1 false), !noalias !7972
  %.sroa.0.sroa.14.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 464
  %.sroa.0.sroa.14.0.copyload.i = load i8, ptr %.sroa.0.sroa.14.0..sroa_idx.i, align 16, !noalias !7972
  %.sroa.0.sroa.16.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 466
  %.sroa.0.sroa.16.0.copyload.i = load i8, ptr %.sroa.0.sroa.16.0..sroa_idx.i, align 2, !noalias !7972
  %.sroa.0.sroa.18.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 472
  %i.aqh = getelementptr inbounds nuw i8, ptr %1, i64 680 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aqh, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.sroa.18.0..sroa_idx.i, i64 24, i1 false), !noalias !7972
  %.sroa.10.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 496
  %.sroa.10.0.copyload.i = load i8, ptr %.sroa.10.0..sroa_idx.i, align 16, !noalias !7972
  %i.aqi = getelementptr inbounds nuw i8, ptr %1, i64 969 ; 3 uses
  store i8 %.sroa.10.0.copyload.i, ptr %i.aqi, align 1, !noalias !7972
  %i.aqj = getelementptr inbounds nuw i8, ptr %1, i64 592
  store i64 %.sroa.0.sroa.8.0.copyload.i, ptr %i.aqj, align 16, !noalias !7972
  %i.aqk = getelementptr i8, ptr %1, i64 600
  store i64 %.sroa.0.sroa.9.0.copyload.i, ptr %i.aqk, align 8, !noalias !7972
  %i.aql = getelementptr inbounds nuw i8, ptr %1, i64 970 ; 2 uses
  store i8 %.sroa.0.sroa.16.0.copyload.i, ptr %i.aql, align 2, !noalias !7972
  store <4 x i8> <i8 1, i8 1, i8 1, i8 0>, ptr %i.apx, align 1, !noalias !7972
  %i.aqm = getelementptr inbounds nuw i8, ptr %1, i64 608 ; 2 uses
  %i.aqn = trunc nuw i64 %.sroa.0.sroa.8.0.copyload.i to i1
  %.sroa.01.0.i.i.i = select i1 %i.aqn, i64 %.sroa.0.sroa.9.0.copyload.i, i64 10000
  %.mask.i.i = and i8 %.sroa.0.sroa.14.0.copyload.i, 1 ; 2 uses
  %.sroa.0.0.i.i.i = zext nneg i8 %.mask.i.i to i64
  %i.aqo = icmp eq i8 %.mask.i.i, 0
  %.sroa.3.0.i.i = select i1 %i.aqo, i64 undef, i64 %.sroa.01.0.i.i.i
  store i64 %.sroa.0.0.i.i.i, ptr %i.aqm, align 16, !noalias !7972
  %i.aqp = getelementptr inbounds nuw i8, ptr %1, i64 616 ; 2 uses
  store i64 %.sroa.3.0.i.i, ptr %i.aqp, align 8, !noalias !7972
  %i.aqq = load i64, ptr %i.aqe, align 16, !range !12, !alias.scope !7973, !noalias !7972, !noundef !13
  %.not.i105.i.a = icmp ne i64 %i.aqq, -1
  %i.aqr = getelementptr inbounds nuw i8, ptr %1, i64 720
  %.val2.i.i = load i64, ptr %i.aqr, align 16, !alias.scope !7973, !noalias !7972
  %i.aqs = icmp eq i64 %.val2.i.i, 0
  %or.cond.i = select i1 %.not.i105.i.a, i1 %i.aqs, i1 false
  br i1 %or.cond.i, label %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.i, label %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.thread.i

_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.thread.i: ; preds = %bb.nw
  store i8 0, ptr %i.apx, align 1, !noalias !7972
  %i.aqt = getelementptr inbounds nuw i8, ptr %1, i64 776
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aqt, ptr noundef nonnull align 16 dereferenceable(24) %.sroa.0.sroa.10.0..sroa_idx.i, i64 24, i1 false), !noalias !7972
  br label %bb.nx

_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.i: ; preds = %bb.nw
  %i.aqu = getelementptr inbounds nuw i8, ptr %1, i64 776
  store i64 -1, ptr %i.aqu, align 8, !noalias !7972
  br label %bb.nx

bb.nx:                                            ; preds = %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.i, %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.thread.i
  %.val94.i = load i64, ptr %i.aqg, align 16, !range !12, !noalias !7972, !noundef !13 ; 2 uses
  %.not.i108.i = icmp eq i64 %.val94.i, -1
  br i1 %.not.i108.i, label %bb.ny, label %bb.oa

bb.ny:                                            ; preds = %bb.nx
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !7974
  invoke void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.o, i64 noundef range(i64 0, -9223372036854775808) 59, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %.noexc109.i unwind label %bb.qd, !noalias !7975

.noexc109.i:                                      ; preds = %bb.ny
  %i.aqv = load i64, ptr %i.o, align 8, !range !14, !noalias !7974, !noundef !13
  %i.aqw = trunc nuw i64 %i.aqv to i1
  %i.aqx = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.aqy = load i64, ptr %i.aqx, align 8, !range !15, !noalias !7974, !noundef !13 ; 3 uses
  %i.aqz = getelementptr inbounds nuw i8, ptr %i.o, i64 16 ; 2 uses
  br i1 %i.aqw, label %bb.nz, label %bb.qe, !prof !16

bb.nz:                                            ; preds = %.noexc109.i
  %i.ara = load i64, ptr %i.aqz, align 8, !noalias !7974
  invoke void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.aqy, i64 %i.ara) #36
          to label %.noexc110.i unwind label %bb.qd, !noalias !7975

.noexc110.i:                                      ; preds = %bb.nz
  unreachable

bb.oa:                                            ; preds = %bb.nx
  store i8 0, ptr %i.apy, align 1, !noalias !7972
  %.sroa.6233.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 760
  %.sroa.6233.0..sroa_idx234.i = getelementptr i8, ptr %1, i64 808 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6233.0..sroa_idx234.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6233.0..sroa_idx.i, i64 16, i1 false), !noalias !7972
  %i.arb = getelementptr inbounds nuw i8, ptr %1, i64 800
  store i64 %.val94.i, ptr %i.arb, align 16, !alias.scope !7976, !noalias !7977
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.11249.i)
  store i8 0, ptr %i.apz, align 4, !noalias !7972
  %.sroa.0253.0.copyload.i = load i64, ptr %i.ai, align 8, !noalias !7972 ; 2 uses
  %.not.i111.i = icmp eq i64 %.sroa.0253.0.copyload.i, -1
  br i1 %.not.i111.i, label %bb.ol, label %bb.ob

bb.ob:                                            ; preds = %bb.oa
  %.sroa.6255.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !7978
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !7978
  store i64 %.sroa.0253.0.copyload.i, ptr %i.m, align 8, !noalias !7979
  %.sroa.6255.0..sroa_idx256.i = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6255.0..sroa_idx256.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6255.0..sroa_idx.i, i64 16, i1 false), !noalias !7972
  call void @llvm.experimental.noalias.scope.decl(metadata !7980)
  %i.arc = load ptr, ptr %.sroa.6255.0..sroa_idx256.i, align 8, !alias.scope !7980, !noalias !7981, !nonnull !13, !noundef !13 ; 2 uses
  %i.ard = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.are = load i64, ptr %i.ard, align 8, !alias.scope !7980, !noalias !7981, !noundef !13 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !7982
  store ptr %i.arc, ptr %i.l, align 8, !noalias !7982
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store i64 %i.are, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !noalias !7982
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.arf = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx.i.i.i, i8 0, i64 16, i1 false), !noalias !7982
  store ptr %i.arc, ptr %i.arf, align 8, !noalias !7982
  %i.arg = getelementptr inbounds nuw i8, ptr %i.l, i64 40
  store i64 %i.are, ptr %i.arg, align 8, !noalias !7982
  invoke void @_RINvNtCsdLkRf3gRIi6_10serde_json2de10from_traitNtNtB4_4read7StrReadNtNtCs1hWu9vWSLgD_16iox_query_params6params15StatementParamsECsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.n, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(48) %i.l)
          to label %bb.od unwind label %bb.oc, !noalias !7983

bb.oc:                                            ; preds = %bb.ob
  %i.arh = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.m) #34
          to label %.body.i13 unwind label %bb.og, !noalias !7984

bb.od:                                            ; preds = %bb.ob
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !7982
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.m)
          to label %_RNCNCNvMs0_NtCs1yQqqZMFGFX_16iox_v1_query_api7handlerNtB9_13V1HttpHandler13execute_query0s_0CsgsNUVCRJO2f_13influxdb3_lib.exit.i.i unwind label %bb.oe, !noalias !7984

bb.oe:                                            ; preds = %bb.od
  %i.ari = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.m)
          to label %.body.i13 unwind label %bb.of, !noalias !7984

bb.of:                                            ; preds = %bb.oe
  %i.arj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #35, !noalias !7984
  unreachable

bb.og:                                            ; preds = %bb.oc
  %i.ark = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #35, !noalias !7984
  unreachable

_RNCNCNvMs0_NtCs1yQqqZMFGFX_16iox_v1_query_api7handlerNtB9_13V1HttpHandler13execute_query0s_0CsgsNUVCRJO2f_13influxdb3_lib.exit.i.i: ; preds = %bb.od
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.m)
          to label %bb.oi unwind label %bb.oh, !noalias !7975

bb.oh:                                            ; preds = %_RNCNCNvMs0_NtCs1yQqqZMFGFX_16iox_v1_query_api7handlerNtB9_13V1HttpHandler13execute_query0s_0CsgsNUVCRJO2f_13influxdb3_lib.exit.i.i
  %i.arl = landingpad { ptr, i32 }
          cleanup
  br label %.body.i13

.body.i13:                                        ; preds = %bb.oh, %bb.oe, %bb.oc
  %eh.lpad-body.i14 = phi { ptr, i32 } [ %i.arl, %bb.oh ], [ %i.ari, %bb.oe ], [ %i.arh, %bb.oc ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.11249.i)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs1hWu9vWSLgD_16iox_query_params6params15StatementParamsECsgsNUVCRJO2f_13influxdb3_lib.exit132.i

bb.oi:                                            ; preds = %_RNCNCNvMs0_NtCs1yQqqZMFGFX_16iox_v1_query_api7handlerNtB9_13V1HttpHandler13execute_query0s_0CsgsNUVCRJO2f_13influxdb3_lib.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !7978
  %.sroa.6247.8.copyload.i = load ptr, ptr %i.n, align 8, !noalias !7985 ; 2 uses
  %.sroa.9248.8..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %.sroa.9248.8.copyload.i = load ptr, ptr %.sroa.9248.8..sroa_idx.i, align 8, !noalias !7985 ; 3 uses
  %.sroa.11249.8..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.11249.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.11249.8..sroa_idx.i, i64 32, i1 false), !noalias !7985
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !7978
  %i.arm = icmp eq ptr %.sroa.6247.8.copyload.i, null
  br i1 %i.arm, label %bb.oj, label %bb.ok

bb.oj:                                            ; preds = %bb.oi
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.9248.8.copyload.i) ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.11249.i)
  call void @llvm.experimental.noalias.scope.decl(metadata !7986)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !7987
  store i64 -9223372036854775801, ptr %i.k, align 8, !noalias !7988
  %.sroa.5.0..sroa_idx258.i = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr %.sroa.9248.8.copyload.i, ptr %.sroa.5.0..sroa_idx258.i, align 8, !noalias !7988
  %i.arn = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  invoke void @_RNvXNtCs1yQqqZMFGFX_16iox_v1_query_api5errorNtB2_9HttpErrorINtNtCs4NRVxsYgnAr_4core7convert4FromNtB2_5ErrorE4from(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.arn, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(56) %i.k)
          to label %bb.qa unwind label %bb.pz, !noalias !7975

bb.ok:                                            ; preds = %bb.oi
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 640
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %.sroa.4.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.11249.i, i64 32, i1 false), !noalias !7972
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.11249.i)
  %i.aro = getelementptr inbounds nuw i8, ptr %1, i64 624 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !7989)
  store ptr %.sroa.6247.8.copyload.i, ptr %i.aro, align 16, !alias.scope !7990, !noalias !7972
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 632
  store ptr %.sroa.9248.8.copyload.i, ptr %.sroa.3.0..sroa_idx.i, align 8, !alias.scope !7990, !noalias !7972
  br label %bb.on

bb.ol:                                            ; preds = %bb.oa
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.11249.i)
  %i.arp = invoke { i64, i64 } @_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyINtNtCs4NRVxsYgnAr_4core4cell4CellTyyEEE4withNCNvMNtNtBa_4hash6randomNtB1I_11RandomState3new0B21_ECsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @402)
          to label %.noexc117.i unwind label %bb.om, !noalias !7975 ; 2 uses

.noexc117.i:                                      ; preds = %bb.ol
  %i.arq = getelementptr inbounds nuw i8, ptr %1, i64 624 ; 2 uses
  %i.arr = extractvalue { i64, i64 } %i.arp, 0
  %i.ars = extractvalue { i64, i64 } %i.arp, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.arq, ptr noundef nonnull align 8 dereferenceable(32) @43, i64 32, i1 false), !noalias !7991
  %.sroa.42.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 656
  store i64 %i.arr, ptr %.sroa.42.0..sroa_idx.i.i.i, align 16, !alias.scope !7992, !noalias !7991
  %.sroa.53.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 664
  store i64 %i.ars, ptr %.sroa.53.0..sroa_idx.i.i.i, align 8, !alias.scope !7992, !noalias !7991
  br label %bb.on

bb.om:                                            ; preds = %bb.ol
  %i.art = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs1hWu9vWSLgD_16iox_query_params6params15StatementParamsECsgsNUVCRJO2f_13influxdb3_lib.exit132.i

bb.on:                                            ; preds = %.noexc117.i, %bb.ok
  %i.aru = phi ptr [ %i.arq, %.noexc117.i ], [ %i.aro, %bb.ok ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah), !noalias !7972
  %.val97.i = load ptr, ptr %.sroa.6233.0..sroa_idx234.i, align 8, !noalias !7972, !nonnull !13, !noundef !13
  %i.arv = getelementptr i8, ptr %1, i64 816
  %.val98.i = load i64, ptr %i.arv, align 16, !noalias !7972, !noundef !13
  invoke void @_RNvCs8dx9gOL6MFw_26iox_query_influxql_rewrite16parse_statements(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(address) dereferenceable(56) %i.ah, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.val97.i, i64 noundef %.val98.i)
          to label %bb.op unwind label %bb.oo, !noalias !7975

bb.oo:                                            ; preds = %bb.on
  %i.arw = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah), !noalias !7972
  br label %bb.py

bb.op:                                            ; preds = %bb.on
end_hunk_0
