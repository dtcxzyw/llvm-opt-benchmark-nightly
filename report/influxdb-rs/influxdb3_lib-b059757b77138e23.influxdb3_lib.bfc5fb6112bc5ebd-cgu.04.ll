Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/influxdb-rs/original/influxdb3_lib-b059757b77138e23.influxdb3_lib.bfc5fb6112bc5ebd-cgu.04?download=true
inline.NumInlined: 11297
inline.NumDeleted: 4176
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 36
loop-unroll.NumUnrolled: 39
begin_hunk_0_@_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCNCNCNvMs0_NtCs1yQqqZMFGFX_16iox_v1_query_api7handlerNtBN_13V1HttpHandler13execute_query0s2_00ECsgsNUVCRJO2f_13influxdb3_lib:bb.a
  br i1 %i.an, label %.body34, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ao = getelementptr inbounds nuw i8, ptr %.val28, i64 16
  %i.ap = load i64, ptr %i.ao, align 8, !range !100, !invariant.load !84
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val27, i64 noundef range(i64 1, 0) %i.am, i64 noundef range(i64 1, 536870913) %i.ap) #30
  br label %.body34

bb.u:                                             ; preds = %bb.a
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 272
  %.val31 = load ptr, ptr %i.aq, align 16         ; 5 uses
  %i.ar = getelementptr i8, ptr %0, i64 280
  %.val32 = load ptr, ptr %i.ar, align 8, !nonnull !84, !align !90, !noundef !84 ; 5 uses
  %i.as = load ptr, ptr %.val32, align 8, !invariant.load !84 ; 2 uses
  %.not.i.i36 = icmp eq ptr %i.as, null
  br i1 %.not.i.i36, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val31) ]
  invoke void %i.as(ptr noundef nonnull %.val31)
          to label %bb.w unwind label %bb.y

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.at = getelementptr inbounds nuw i8, ptr %.val32, i64 8
  %i.au = load i64, ptr %i.at, align 8, !range !97, !invariant.load !84 ; 2 uses
  %i.av = icmp eq i64 %i.au, 0
  br i1 %i.av, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultIBC_IBS_DNtNtCs5uU3ebUyQFg_20datafusion_execution6stream17RecordBatchStreamp4ItemIB23_NtNtCs6ePPILGZvJ2_11arrow_array12record_batch11RecordBatchNtNtCslWccy9wMl4f_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEB4I_EB5H_EL_EEECsgsNUVCRJO2f_13influxdb3_lib.exit, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.aw = getelementptr inbounds nuw i8, ptr %.val32, i64 16
  %i.ax = load i64, ptr %i.aw, align 8, !range !100, !invariant.load !84
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val31) ]
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val31, i64 noundef range(i64 1, 0) %i.au, i64 noundef range(i64 1, 536870913) %i.ax) #30
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultIBC_IBS_DNtNtCs5uU3ebUyQFg_20datafusion_execution6stream17RecordBatchStreamp4ItemIB23_NtNtCs6ePPILGZvJ2_11arrow_array12record_batch11RecordBatchNtNtCslWccy9wMl4f_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEB4I_EB5H_EL_EEECsgsNUVCRJO2f_13influxdb3_lib.exit

bb.y:                                             ; preds = %bb.v
  %i.ay = landingpad { ptr, i32 }
          cleanup
  %i.az = getelementptr inbounds nuw i8, ptr %.val32, i64 8
  %i.ba = load i64, ptr %i.az, align 8, !range !97, !invariant.load !84 ; 2 uses
  %i.bb = icmp eq i64 %i.ba, 0
  br i1 %i.bb, label %.body37, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.bc = getelementptr inbounds nuw i8, ptr %.val32, i64 16
  %i.bd = load i64, ptr %i.bc, align 8, !range !100, !invariant.load !84
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val31, i64 noundef range(i64 1, 0) %i.ba, i64 noundef range(i64 1, 536870913) %i.bd) #30
  br label %.body37

bb.aa:                                            ; preds = %bb.a
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 264
  %.val25 = load ptr, ptr %i.be, align 8          ; 5 uses
  %i.bf = getelementptr i8, ptr %0, i64 272
  %.val26 = load ptr, ptr %i.bf, align 16, !nonnull !84, !align !90, !noundef !84 ; 5 uses
  %i.bg = load ptr, ptr %.val26, align 8, !invariant.load !84 ; 2 uses
  %.not.i.i39 = icmp eq ptr %i.bg, null
  br i1 %.not.i.i39, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val25) ]
  invoke void %i.bg(ptr noundef nonnull %.val25)
          to label %bb.ac unwind label %bb.ae

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %i.bh = getelementptr inbounds nuw i8, ptr %.val26, i64 8
  %i.bi = load i64, ptr %i.bh, align 8, !range !97, !invariant.load !84 ; 2 uses
  %i.bj = icmp eq i64 %i.bi, 0
  br i1 %i.bj, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtNtCs21s4ZTvHFSd_5authz13authorization13AuthorizationNtNtB2s_14iox_authorizer5ErrorENtNtB4_6marker4SendEL_EEECsgsNUVCRJO2f_13influxdb3_lib.exit43, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.bk = getelementptr inbounds nuw i8, ptr %.val26, i64 16
  %i.bl = load i64, ptr %i.bk, align 8, !range !100, !invariant.load !84
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val25) ]
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val25, i64 noundef range(i64 1, 0) %i.bi, i64 noundef range(i64 1, 536870913) %i.bl) #30
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtNtCs21s4ZTvHFSd_5authz13authorization13AuthorizationNtNtB2s_14iox_authorizer5ErrorENtNtB4_6marker4SendEL_EEECsgsNUVCRJO2f_13influxdb3_lib.exit43

bb.ae:                                            ; preds = %bb.ab
  %i.bm = landingpad { ptr, i32 }
          cleanup
  %i.bn = getelementptr inbounds nuw i8, ptr %.val26, i64 8
  %i.bo = load i64, ptr %i.bn, align 8, !range !97, !invariant.load !84 ; 2 uses
  %i.bp = icmp eq i64 %i.bo, 0
  br i1 %i.bp, label %.body41, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.bq = getelementptr inbounds nuw i8, ptr %.val26, i64 16
  %i.br = load i64, ptr %i.bq, align 8, !range !100, !invariant.load !84
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val25, i64 noundef range(i64 1, 0) %i.bo, i64 noundef range(i64 1, 536870913) %i.br) #30
  br label %.body41

bb.ag:                                            ; preds = %bb.a
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 224
  %.val29 = load ptr, ptr %i.bs, align 16         ; 5 uses
  %i.bt = getelementptr i8, ptr %0, i64 232
  %.val30 = load ptr, ptr %i.bt, align 8, !nonnull !84, !align !90, !noundef !84 ; 5 uses
  %i.bu = load ptr, ptr %.val30, align 8, !invariant.load !84 ; 2 uses
  %.not.i.i44 = icmp eq ptr %i.bu, null
  br i1 %.not.i.i44, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val29) ]
  invoke void %i.bu(ptr noundef nonnull %.val29)
          to label %bb.ai unwind label %bb.ak

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %i.bv = getelementptr inbounds nuw i8, ptr %.val30, i64 8
  %i.bw = load i64, ptr %i.bv, align 8, !range !97, !invariant.load !84 ; 2 uses
  %i.bx = icmp eq i64 %i.bw, 0
  br i1 %i.bx, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultIBC_IBS_DNtNtCs5uU3ebUyQFg_20datafusion_execution6stream17RecordBatchStreamp4ItemIB23_NtNtCs6ePPILGZvJ2_11arrow_array12record_batch11RecordBatchNtNtCslWccy9wMl4f_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEB4I_EB5H_EL_EEECsgsNUVCRJO2f_13influxdb3_lib.exit48, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.by = getelementptr inbounds nuw i8, ptr %.val30, i64 16
  %i.bz = load i64, ptr %i.by, align 8, !range !100, !invariant.load !84
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val29) ]
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val29, i64 noundef range(i64 1, 0) %i.bw, i64 noundef range(i64 1, 536870913) %i.bz) #30
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultIBC_IBS_DNtNtCs5uU3ebUyQFg_20datafusion_execution6stream17RecordBatchStreamp4ItemIB23_NtNtCs6ePPILGZvJ2_11arrow_array12record_batch11RecordBatchNtNtCslWccy9wMl4f_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEB4I_EB5H_EL_EEECsgsNUVCRJO2f_13influxdb3_lib.exit48

bb.ak:                                            ; preds = %bb.ah
  %i.ca = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %.val30, i64 8
  %i.cc = load i64, ptr %i.cb, align 8, !range !97, !invariant.load !84 ; 2 uses
  %i.cd = icmp eq i64 %i.cc, 0
  br i1 %i.cd, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueANtNtCs21s4ZTvHFSd_5authz10permission10Permissionj1_ECsgsNUVCRJO2f_13influxdb3_lib.exit, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.ce = getelementptr inbounds nuw i8, ptr %.val30, i64 16
  %i.cf = load i64, ptr %i.ce, align 8, !range !100, !invariant.load !84
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val29, i64 noundef range(i64 1, 0) %i.cc, i64 noundef range(i64 1, 536870913) %i.cf) #30
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueANtNtCs21s4ZTvHFSd_5authz10permission10Permissionj1_ECsgsNUVCRJO2f_13influxdb3_lib.exit

bb.am:                                            ; preds = %bb.a
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.ci = load i8, ptr %i.ch, align 8, !range !137, !noundef !84
  switch i8 %i.ci, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCNvMs0_NtCs1yQqqZMFGFX_16iox_v1_query_api7handlerNtBJ_13V1HttpHandler17authorize_request0ECsgsNUVCRJO2f_13influxdb3_lib.exit [
    i8 0, label %bb.an
    i8 3, label %bb.ap
  ]

bb.an:                                            ; preds = %bb.am
  %i.cj = load i64, ptr %i.cg, align 16, !range !94, !alias.scope !5913, !noundef !84
  %i.ck = icmp eq i64 %i.cj, -1
  br i1 %i.ck, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCNvMs0_NtCs1yQqqZMFGFX_16iox_v1_query_api7handlerNtBJ_13V1HttpHandler17authorize_request0ECsgsNUVCRJO2f_13influxdb3_lib.exit, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.cg)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCNvMs0_NtCs1yQqqZMFGFX_16iox_v1_query_api7handlerNtBJ_13V1HttpHandler17authorize_request0ECsgsNUVCRJO2f_13influxdb3_lib.exit unwind label %bb.fr

bb.ap:                                            ; preds = %bb.am
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 312
  %.val.i = load ptr, ptr %i.cl, align 8          ; 5 uses
  %i.cm = getelementptr i8, ptr %0, i64 320
  %.val4.i = load ptr, ptr %i.cm, align 16, !nonnull !84, !align !90, !noundef !84 ; 5 uses
  %i.cn = load ptr, ptr %.val4.i, align 8, !invariant.load !84 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.cn, null
  br i1 %.not.i.i.i, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i) ]
  invoke void %i.cn(ptr noundef nonnull %.val.i)
          to label %bb.ar unwind label %bb.at

bb.ar:                                            ; preds = %bb.aq, %bb.ap
  %i.co = getelementptr inbounds nuw i8, ptr %.val4.i, i64 8
  %i.cp = load i64, ptr %i.co, align 8, !range !97, !invariant.load !84 ; 2 uses
  %i.cq = icmp eq i64 %i.cp, 0
  br i1 %i.cq, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtNtCs21s4ZTvHFSd_5authz13authorization13AuthorizationNtNtB2s_14iox_authorizer5ErrorENtNtB4_6marker4SendEL_EEECsgsNUVCRJO2f_13influxdb3_lib.exit.i, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.cr = getelementptr inbounds nuw i8, ptr %.val4.i, i64 16
  %i.cs = load i64, ptr %i.cr, align 8, !range !100, !invariant.load !84
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i) ]
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef range(i64 1, 0) %i.cp, i64 noundef range(i64 1, 536870913) %i.cs) #30
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtNtCs21s4ZTvHFSd_5authz13authorization13AuthorizationNtNtB2s_14iox_authorizer5ErrorENtNtB4_6marker4SendEL_EEECsgsNUVCRJO2f_13influxdb3_lib.exit.i

bb.at:                                            ; preds = %bb.aq
  %i.ct = landingpad { ptr, i32 }
          cleanup
  %i.cu = getelementptr inbounds nuw i8, ptr %.val4.i, i64 8
  %i.cv = load i64, ptr %i.cu, align 8, !range !97, !invariant.load !84 ; 2 uses
  %i.cw = icmp eq i64 %i.cv, 0
  br i1 %i.cw, label %.body.i, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.cx = getelementptr inbounds nuw i8, ptr %.val4.i, i64 16
  %i.cy = load i64, ptr %i.cx, align 8, !range !100, !invariant.load !84
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef range(i64 1, 0) %i.cv, i64 noundef range(i64 1, 536870913) %i.cy) #30
  br label %.body.i

.body.i:                                          ; preds = %bb.au, %bb.at
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 280
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.cz)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueANtNtCs21s4ZTvHFSd_5authz10permission10Permissionj1_ECsgsNUVCRJO2f_13influxdb3_lib.exit.i unwind label %bb.aw

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtNtCs21s4ZTvHFSd_5authz13authorization13AuthorizationNtNtB2s_14iox_authorizer5ErrorENtNtB4_6marker4SendEL_EEECsgsNUVCRJO2f_13influxdb3_lib.exit.i: ; preds = %bb.as, %bb.ar
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 280
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.da)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueANtNtCs21s4ZTvHFSd_5authz10permission10Permissionj1_ECsgsNUVCRJO2f_13influxdb3_lib.exit7.i unwind label %bb.av

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueANtNtCs21s4ZTvHFSd_5authz10permission10Permissionj1_ECsgsNUVCRJO2f_13influxdb3_lib.exit.i: ; preds = %.body.i, %bb.av
  %.pn.i49 = phi { ptr, i32 } [ %i.dc, %bb.av ], [ %i.ct, %.body.i ]
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 329
  store i8 0, ptr %i.db, align 1
  br label %.body50

bb.av:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtNtCs21s4ZTvHFSd_5authz13authorization13AuthorizationNtNtB2s_14iox_authorizer5ErrorENtNtB4_6marker4SendEL_EEECsgsNUVCRJO2f_13influxdb3_lib.exit.i
  %i.dc = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueANtNtCs21s4ZTvHFSd_5authz10permission10Permissionj1_ECsgsNUVCRJO2f_13influxdb3_lib.exit.i

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueANtNtCs21s4ZTvHFSd_5authz10permission10Permissionj1_ECsgsNUVCRJO2f_13influxdb3_lib.exit7.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtNtCs21s4ZTvHFSd_5authz13authorization13AuthorizationNtNtB2s_14iox_authorizer5ErrorENtNtB4_6marker4SendEL_EEECsgsNUVCRJO2f_13influxdb3_lib.exit.i
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 329
  store i8 0, ptr %i.dd, align 1
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCNvMs0_NtCs1yQqqZMFGFX_16iox_v1_query_api7handlerNtBJ_13V1HttpHandler17authorize_request0ECsgsNUVCRJO2f_13influxdb3_lib.exit

bb.aw:                                            ; preds = %.body.i
  %i.de = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #31
  unreachable

bb.ax:                                            ; preds = %bb.a
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 1464
  %i.dg = load i8, ptr %i.df, align 8, !range !130, !noundef !84
  switch i8 %i.dg, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCNvMs0_NtCs1yQqqZMFGFX_16iox_v1_query_api7handlerNtBJ_13V1HttpHandler10plan_query0ECsgsNUVCRJO2f_13influxdb3_lib.exit [
    i8 0, label %bb.ay
    i8 3, label %bb.az
    i8 4, label %bb.bf
    i8 5, label %bb.bv
  ]

bb.ay:                                            ; preds = %bb.ax
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 1408
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.dh)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsgsNUVCRJO2f_13influxdb3_lib.exit.i unwind label %bb.cl

bb.az:                                            ; preds = %bb.ax
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 1496
  %.val.i54 = load ptr, ptr %i.di, align 8        ; 5 uses
  %i.dj = getelementptr i8, ptr %0, i64 1504
  %.val41.i = load ptr, ptr %i.dj, align 16, !nonnull !84, !align !90, !noundef !84 ; 5 uses
  %i.dk = load ptr, ptr %.val41.i, align 8, !invariant.load !84 ; 2 uses
  %.not.i.i.i55 = icmp eq ptr %i.dk, null
  br i1 %.not.i.i.i55, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i54) ]
  invoke void %i.dk(ptr noundef nonnull %.val.i54)
          to label %bb.bb unwind label %bb.bd

bb.bb:                                            ; preds = %bb.ba, %bb.az
  %i.dl = getelementptr inbounds nuw i8, ptr %.val41.i, i64 8
  %i.dm = load i64, ptr %i.dl, align 8, !range !97, !invariant.load !84 ; 2 uses
  %i.dn = icmp eq i64 %i.dm, 0
  br i1 %i.dn, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB4_6option6OptionINtNtBW_4sync3ArcDNtCs7q2UDKzmthI_9iox_query14QueryNamespaceEL_EENtNtCslWccy9wMl4f_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECsgsNUVCRJO2f_13influxdb3_lib.exit.i, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.do = getelementptr inbounds nuw i8, ptr %.val41.i, i64 16
  %i.dp = load i64, ptr %i.do, align 8, !range !100, !invariant.load !84
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i54) ]
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i54, i64 noundef range(i64 1, 0) %i.dm, i64 noundef range(i64 1, 536870913) %i.dp) #30
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB4_6option6OptionINtNtBW_4sync3ArcDNtCs7q2UDKzmthI_9iox_query14QueryNamespaceEL_EENtNtCslWccy9wMl4f_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECsgsNUVCRJO2f_13influxdb3_lib.exit.i

bb.bd:                                            ; preds = %bb.ba
  %i.dq = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %.val41.i, i64 8
  %i.ds = load i64, ptr %i.dr, align 8, !range !97, !invariant.load !84 ; 2 uses
  %i.dt = icmp eq i64 %i.ds, 0
  br i1 %i.dt, label %.body.i53, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.du = getelementptr inbounds nuw i8, ptr %.val41.i, i64 16
  %i.dv = load i64, ptr %i.du, align 8, !range !100, !invariant.load !84
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i54, i64 noundef range(i64 1, 0) %i.ds, i64 noundef range(i64 1, 536870913) %i.dv) #30
  br label %.body.i53

bb.bf:                                            ; preds = %bb.ax
  %i.dw = getelementptr inbounds nuw i8, ptr %0, i64 8425
  %i.dx = load i8, ptr %i.dw, align 1, !range !137, !noundef !84
  switch i8 %i.dx, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCINvMs6_NtNtCs7q2UDKzmthI_9iox_query4exec7contextNtBK_17IOxSessionContext3runNCNCNvMs0_NtCs1yQqqZMFGFX_16iox_v1_query_api7handlerNtB21_13V1HttpHandler10plan_query00NtNtNtCs7fnekraeopg_15datafusion_expr12logical_plan4plan11LogicalPlanE0ECsgsNUVCRJO2f_13influxdb3_lib.exit.i [
    i8 0, label %bb.bg
    i8 3, label %bb.bh
  ]

bb.bg:                                            ; preds = %bb.bf
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 1472
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCNCNvMs0_NtCs1yQqqZMFGFX_16iox_v1_query_api7handlerNtBL_13V1HttpHandler10plan_query00ECsgsNUVCRJO2f_13influxdb3_lib(ptr noundef nonnull align 16 %i.dy)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCINvMs6_NtNtCs7q2UDKzmthI_9iox_query4exec7contextNtBK_17IOxSessionContext3runNCNCNvMs0_NtCs1yQqqZMFGFX_16iox_v1_query_api7handlerNtB21_13V1HttpHandler10plan_query00NtNtNtCs7fnekraeopg_15datafusion_expr12logical_plan4plan11LogicalPlanE0ECsgsNUVCRJO2f_13influxdb3_lib.exit.i unwind label %bb.dj

bb.bh:                                            ; preds = %bb.bf
  %i.dz = getelementptr inbounds nuw i8, ptr %0, i64 4912 ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %0, i64 8400
  %i.eb = load i8, ptr %i.ea, align 16, !range !137, !noundef !84
  switch i8 %i.eb, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCINvMs6_NtNtCs7q2UDKzmthI_9iox_query4exec7contextNtBK_17IOxSessionContext9run_innerNCNCNvMs0_NtCs1yQqqZMFGFX_16iox_v1_query_api7handlerNtB27_13V1HttpHandler10plan_query00NtNtNtCs7fnekraeopg_15datafusion_expr12logical_plan4plan11LogicalPlanE0ECsgsNUVCRJO2f_13influxdb3_lib.exit.i.i [
    i8 0, label %bb.bi
    i8 3, label %bb.bk
  ]

bb.bi:                                            ; preds = %bb.bh
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5914)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5915)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5916)
  %i.ec = load ptr, ptr %i.dz, align 16, !alias.scope !5917, !nonnull !84, !noundef !84
  %i.ed = atomicrmw sub ptr %i.ec, i64 1 release, align 8, !noalias !5917
  %i.ee = icmp eq i64 %i.ed, 1
  br i1 %i.ee, label %bb.bj, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCs4lw9sX6UwIr_8executor17DedicatedExecutorECsgsNUVCRJO2f_13influxdb3_lib.exit.i.i.i

bb.bj:                                            ; preds = %bb.bi
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcINtNtCs6gU0GsN6MoR_8lock_api6rwlock6RwLockNtNtCsgIGNhOnZR2a_11parking_lot10raw_rwlock9RawRwLockNtCs4lw9sX6UwIr_8executor5StateEE9drop_slowB2e_(ptr noalias noundef nonnull align 16 dereferenceable(16) %i.dz)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCs4lw9sX6UwIr_8executor17DedicatedExecutorECsgsNUVCRJO2f_13influxdb3_lib.exit.i.i.i unwind label %bb.bq

bb.bk:                                            ; preds = %bb.bh
  %i.ef = getelementptr inbounds nuw i8, ptr %0, i64 8384
  %.val.i.i.i = load ptr, ptr %i.ef, align 16     ; 5 uses
  %i.eg = getelementptr i8, ptr %0, i64 8392
  %.val2.i.i.i = load ptr, ptr %i.eg, align 8, !nonnull !84, !align !90, !noundef !84 ; 5 uses
  %i.eh = load ptr, ptr %.val2.i.i.i, align 8, !invariant.load !84 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.eh, null
  br i1 %.not.i.i.i.i.i, label %bb.bm, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i) ]
  invoke void %i.eh(ptr noundef nonnull %.val.i.i.i)
          to label %bb.bm unwind label %bb.bo

bb.bm:                                            ; preds = %bb.bl, %bb.bk
  %i.ei = getelementptr inbounds nuw i8, ptr %.val2.i.i.i, i64 8
  %i.ej = load i64, ptr %i.ei, align 8, !range !97, !invariant.load !84 ; 2 uses
  %i.ek = icmp eq i64 %i.ej, 0
  br i1 %i.ek, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultIB23_NtNtNtCs7fnekraeopg_15datafusion_expr12logical_plan4plan11LogicalPlanNtNtCslWccy9wMl4f_17datafusion_common5error15DataFusionErrorENtCs4lw9sX6UwIr_8executor8JobErrorENtNtB4_6marker4SendEL_EEECsgsNUVCRJO2f_13influxdb3_lib.exit.i.i.i, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.el = getelementptr inbounds nuw i8, ptr %.val2.i.i.i, i64 16
  %i.em = load i64, ptr %i.el, align 8, !range !100, !invariant.load !84
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i) ]
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i, i64 noundef range(i64 1, 0) %i.ej, i64 noundef range(i64 1, 536870913) %i.em) #30
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultIB23_NtNtNtCs7fnekraeopg_15datafusion_expr12logical_plan4plan11LogicalPlanNtNtCslWccy9wMl4f_17datafusion_common5error15DataFusionErrorENtCs4lw9sX6UwIr_8executor8JobErrorENtNtB4_6marker4SendEL_EEECsgsNUVCRJO2f_13influxdb3_lib.exit.i.i.i

bb.bo:                                            ; preds = %bb.bl
  %i.en = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %.val2.i.i.i, i64 8
  %i.ep = load i64, ptr %i.eo, align 8, !range !97, !invariant.load !84 ; 2 uses
  %i.eq = icmp eq i64 %i.ep, 0
  br i1 %i.eq, label %.body.i.i.i, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.er = getelementptr inbounds nuw i8, ptr %.val2.i.i.i, i64 16
  %i.es = load i64, ptr %i.er, align 8, !range !100, !invariant.load !84
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i, i64 noundef range(i64 1, 0) %i.ep, i64 noundef range(i64 1, 536870913) %i.es) #30
  br label %.body.i.i.i

bb.bq:                                            ; preds = %bb.bj
  %i.et = landingpad { ptr, i32 }
          cleanup
  %i.eu = getelementptr inbounds nuw i8, ptr %0, i64 4928
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCNCNvMs0_NtCs1yQqqZMFGFX_16iox_v1_query_api7handlerNtBL_13V1HttpHandler10plan_query00ECsgsNUVCRJO2f_13influxdb3_lib(ptr noundef nonnull align 16 %i.eu) #32
          to label %.body.i.i unwind label %bb.br

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCs4lw9sX6UwIr_8executor17DedicatedExecutorECsgsNUVCRJO2f_13influxdb3_lib.exit.i.i.i: ; preds = %bb.bj, %bb.bi
  %i.ev = getelementptr inbounds nuw i8, ptr %0, i64 4928
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCNCNvMs0_NtCs1yQqqZMFGFX_16iox_v1_query_api7handlerNtBL_13V1HttpHandler10plan_query00ECsgsNUVCRJO2f_13influxdb3_lib(ptr noundef nonnull align 16 %i.ev)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCINvMs6_NtNtCs7q2UDKzmthI_9iox_query4exec7contextNtBK_17IOxSessionContext9run_innerNCNCNvMs0_NtCs1yQqqZMFGFX_16iox_v1_query_api7handlerNtB27_13V1HttpHandler10plan_query00NtNtNtCs7fnekraeopg_15datafusion_expr12logical_plan4plan11LogicalPlanE0ECsgsNUVCRJO2f_13influxdb3_lib.exit.i.i unwind label %bb.bu

bb.br:                                            ; preds = %bb.bs, %bb.bq
  %i.ew = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #31
  unreachable

.body.i.i.i:                                      ; preds = %bb.bp, %bb.bo
  %i.ex = getelementptr inbounds nuw i8, ptr %0, i64 8368 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5918)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5919)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5920)
  %i.ey = load ptr, ptr %i.ex, align 16, !alias.scope !5921, !nonnull !84, !noundef !84
  %i.ez = atomicrmw sub ptr %i.ey, i64 1 release, align 8, !noalias !5921
  %i.fa = icmp eq i64 %i.ez, 1
  br i1 %i.fa, label %bb.bs, label %.body.i.i

bb.bs:                                            ; preds = %.body.i.i.i
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcINtNtCs6gU0GsN6MoR_8lock_api6rwlock6RwLockNtNtCsgIGNhOnZR2a_11parking_lot10raw_rwlock9RawRwLockNtCs4lw9sX6UwIr_8executor5StateEE9drop_slowB2e_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.ex)
          to label %.body.i.i unwind label %bb.br

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultIB23_NtNtNtCs7fnekraeopg_15datafusion_expr12logical_plan4plan11LogicalPlanNtNtCslWccy9wMl4f_17datafusion_common5error15DataFusionErrorENtCs4lw9sX6UwIr_8executor8JobErrorENtNtB4_6marker4SendEL_EEECsgsNUVCRJO2f_13influxdb3_lib.exit.i.i.i: ; preds = %bb.bn, %bb.bm
  %i.fb = getelementptr inbounds nuw i8, ptr %0, i64 8368 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5922)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5923)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5924)
  %i.fc = load ptr, ptr %i.fb, align 16, !alias.scope !5925, !nonnull !84, !noundef !84
  %i.fd = atomicrmw sub ptr %i.fc, i64 1 release, align 8, !noalias !5925
  %i.fe = icmp eq i64 %i.fd, 1
  br i1 %i.fe, label %bb.bt, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCINvMs6_NtNtCs7q2UDKzmthI_9iox_query4exec7contextNtBK_17IOxSessionContext9run_innerNCNCNvMs0_NtCs1yQqqZMFGFX_16iox_v1_query_api7handlerNtB27_13V1HttpHandler10plan_query00NtNtNtCs7fnekraeopg_15datafusion_expr12logical_plan4plan11LogicalPlanE0ECsgsNUVCRJO2f_13influxdb3_lib.exit.i.i

bb.bt:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultIB23_NtNtNtCs7fnekraeopg_15datafusion_expr12logical_plan4plan11LogicalPlanNtNtCslWccy9wMl4f_17datafusion_common5error15DataFusionErrorENtCs4lw9sX6UwIr_8executor8JobErrorENtNtB4_6marker4SendEL_EEECsgsNUVCRJO2f_13influxdb3_lib.exit.i.i.i
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcINtNtCs6gU0GsN6MoR_8lock_api6rwlock6RwLockNtNtCsgIGNhOnZR2a_11parking_lot10raw_rwlock9RawRwLockNtCs4lw9sX6UwIr_8executor5StateEE9drop_slowB2e_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.fb)
end_hunk_0
begin_hunk_1_@_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCNCNCNvMs0_NtCs1yQqqZMFGFX_16iox_v1_query_api7handlerNtBN_13V1HttpHandler13execute_query0s2_00ECsgsNUVCRJO2f_13influxdb3_lib:bb.a
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCscdodAO9FK5_5alloc6string6StringEECsgsNUVCRJO2f_13influxdb3_lib.exit90.i unwind label %bb.ev

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCscdodAO9FK5_5alloc6string6StringEECsgsNUVCRJO2f_13influxdb3_lib.exit96.i: ; preds = %bb.fd, %bb.fc, %bb.ev, %.body86.i
  %.pn25.i = phi { ptr, i32 } [ %i.mo, %bb.ev ], [ %.pn23.i, %.body86.i ], [ %.pn23.i, %bb.fd ], [ %.pn23.i, %bb.fc ] ; 2 uses
  %i.mk = getelementptr inbounds nuw i8, ptr %0, i64 1458
  store i8 0, ptr %i.mk, align 2
  %i.ml = getelementptr inbounds nuw i8, ptr %0, i64 1459
  %i.mm = load i8, ptr %i.ml, align 1, !range !83, !noundef !84
  %i.mn = trunc nuw i8 %i.mm to i1
  br i1 %i.mn, label %bb.fe, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs1hWu9vWSLgD_16iox_query_params6params15StatementParamsECsgsNUVCRJO2f_13influxdb3_lib.exit98.i

bb.ev:                                            ; preds = %bb.eu
  %i.mo = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCscdodAO9FK5_5alloc6string6StringEECsgsNUVCRJO2f_13influxdb3_lib.exit96.i

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs1hWu9vWSLgD_16iox_query_params6params15StatementParamsECsgsNUVCRJO2f_13influxdb3_lib.exit92.i: ; preds = %bb.ew, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCscdodAO9FK5_5alloc6string6StringEECsgsNUVCRJO2f_13influxdb3_lib.exit90.i
  store i8 0, ptr %i.me, align 1
  %i.mp = getelementptr inbounds nuw i8, ptr %0, i64 1460 ; 2 uses
  %i.mq = load i8, ptr %i.mp, align 4, !range !83, !noundef !84
  %i.mr = trunc nuw i8 %i.mq to i1
  br i1 %i.mr, label %bb.ey, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsgsNUVCRJO2f_13influxdb3_lib.exit94.i

bb.ew:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCscdodAO9FK5_5alloc6string6StringEECsgsNUVCRJO2f_13influxdb3_lib.exit90.i
  %i.ms = getelementptr inbounds nuw i8, ptr %0, i64 832
  invoke void @_RNvXsg_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableTNtNtCscdodAO9FK5_5alloc6string6StringNtNtCs1hWu9vWSLgD_16iox_query_params6params14StatementParamEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.ms)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs1hWu9vWSLgD_16iox_query_params6params15StatementParamsECsgsNUVCRJO2f_13influxdb3_lib.exit92.i unwind label %bb.ex

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs1hWu9vWSLgD_16iox_query_params6params15StatementParamsECsgsNUVCRJO2f_13influxdb3_lib.exit98.i: ; preds = %bb.fe, %bb.ex, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCscdodAO9FK5_5alloc6string6StringEECsgsNUVCRJO2f_13influxdb3_lib.exit96.i
  %.pn27.i = phi { ptr, i32 } [ %i.mx, %bb.ex ], [ %.pn25.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCscdodAO9FK5_5alloc6string6StringEECsgsNUVCRJO2f_13influxdb3_lib.exit96.i ], [ %.pn25.i, %bb.fe ] ; 2 uses
  %i.mt = getelementptr inbounds nuw i8, ptr %0, i64 1459
  store i8 0, ptr %i.mt, align 1
  %i.mu = getelementptr inbounds nuw i8, ptr %0, i64 1460
  %i.mv = load i8, ptr %i.mu, align 4, !range !83, !noundef !84
  %i.mw = trunc nuw i8 %i.mv to i1
  br i1 %i.mw, label %bb.ff, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsgsNUVCRJO2f_13influxdb3_lib.exit100.i

bb.ex:                                            ; preds = %bb.ew
  %i.mx = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs1hWu9vWSLgD_16iox_query_params6params15StatementParamsECsgsNUVCRJO2f_13influxdb3_lib.exit98.i

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsgsNUVCRJO2f_13influxdb3_lib.exit94.i: ; preds = %bb.ey, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs1hWu9vWSLgD_16iox_query_params6params15StatementParamsECsgsNUVCRJO2f_13influxdb3_lib.exit92.i
  store i8 0, ptr %i.mp, align 4
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCNvMs0_NtCs1yQqqZMFGFX_16iox_v1_query_api7handlerNtBJ_13V1HttpHandler10plan_query0ECsgsNUVCRJO2f_13influxdb3_lib.exit

bb.ey:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs1hWu9vWSLgD_16iox_query_params6params15StatementParamsECsgsNUVCRJO2f_13influxdb3_lib.exit92.i
  %i.my = getelementptr inbounds nuw i8, ptr %0, i64 1312
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.my)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsgsNUVCRJO2f_13influxdb3_lib.exit94.i unwind label %bb.ez

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsgsNUVCRJO2f_13influxdb3_lib.exit100.i: ; preds = %bb.ff, %bb.ez, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs1hWu9vWSLgD_16iox_query_params6params15StatementParamsECsgsNUVCRJO2f_13influxdb3_lib.exit98.i
  %.pn29.i = phi { ptr, i32 } [ %i.na, %bb.ez ], [ %.pn27.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs1hWu9vWSLgD_16iox_query_params6params15StatementParamsECsgsNUVCRJO2f_13influxdb3_lib.exit98.i ], [ %.pn27.i, %bb.ff ]
  %i.mz = getelementptr inbounds nuw i8, ptr %0, i64 1460
  store i8 0, ptr %i.mz, align 4
  br label %.body57

bb.ez:                                            ; preds = %bb.ey
  %i.na = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsgsNUVCRJO2f_13influxdb3_lib.exit100.i

bb.fa:                                            ; preds = %bb.do
  %i.nb = getelementptr inbounds nuw i8, ptr %0, i64 1336
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs7q2UDKzmthI_9iox_query9query_log19QueryCompletedTokenNtBE_13StateReceivedEECsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef align 8 dereferenceable(40) %i.nb) #32
          to label %bb.du unwind label %bb.dg

bb.fb:                                            ; preds = %.body80.i
  %i.nc = getelementptr inbounds nuw i8, ptr %0, i64 880
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs2lpxFwhfAIc_5trace3ctx11SpanContextEECsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef align 16 dereferenceable(80) %i.nc) #32
          to label %.body86.i unwind label %bb.dg

bb.fc:                                            ; preds = %.body86.i
  %i.nd = getelementptr inbounds nuw i8, ptr %0, i64 1472 ; 2 uses
  %i.ne = load i64, ptr %i.nd, align 16, !range !94, !alias.scope !5987, !noundef !84
  %i.nf = icmp eq i64 %i.ne, -1
  br i1 %i.nf, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCscdodAO9FK5_5alloc6string6StringEECsgsNUVCRJO2f_13influxdb3_lib.exit96.i, label %bb.fd

bb.fd:                                            ; preds = %bb.fc
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.nd)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCscdodAO9FK5_5alloc6string6StringEECsgsNUVCRJO2f_13influxdb3_lib.exit96.i unwind label %bb.dg

bb.fe:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCscdodAO9FK5_5alloc6string6StringEECsgsNUVCRJO2f_13influxdb3_lib.exit96.i
  %i.ng = getelementptr inbounds nuw i8, ptr %0, i64 832
  invoke void @_RNvXsg_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableTNtNtCscdodAO9FK5_5alloc6string6StringNtNtCs1hWu9vWSLgD_16iox_query_params6params14StatementParamEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.ng)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs1hWu9vWSLgD_16iox_query_params6params15StatementParamsECsgsNUVCRJO2f_13influxdb3_lib.exit98.i unwind label %bb.dg

bb.ff:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs1hWu9vWSLgD_16iox_query_params6params15StatementParamsECsgsNUVCRJO2f_13influxdb3_lib.exit98.i
  %i.nh = getelementptr inbounds nuw i8, ptr %0, i64 1312
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.nh)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsgsNUVCRJO2f_13influxdb3_lib.exit100.i unwind label %bb.dg

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtBW_3vec3VecNtCsIdnmPPg5ba_10data_types9NamespaceENtNtCslWccy9wMl4f_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECsgsNUVCRJO2f_13influxdb3_lib.exit: ; preds = %_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCs21s4ZTvHFSd_5authz10permission10PermissionENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsgsNUVCRJO2f_13influxdb3_lib.exit.i, %bb.l, %bb.k
  %i.ni = getelementptr inbounds nuw i8, ptr %0, i64 217
  store i8 0, ptr %i.ni, align 1
  br label %bb.fl

.body:                                            ; preds = %bb.fk, %.body.i60, %bb.n, %bb.m, %.body34
  %.pn19 = phi { ptr, i32 } [ %.pn17, %.body34 ], [ %i.w, %bb.m ], [ %i.nw, %.body.i60 ], [ %i.w, %bb.n ], [ %i.oi, %bb.fk ]
  %i.nj = getelementptr inbounds nuw i8, ptr %0, i64 217
  store i8 0, ptr %i.nj, align 1
  br label %bb.fm

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtNtCs21s4ZTvHFSd_5authz13authorization13AuthorizationNtNtB2s_14iox_authorizer5ErrorENtNtB4_6marker4SendEL_EEECsgsNUVCRJO2f_13influxdb3_lib.exit: ; preds = %bb.r, %bb.q, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultIBC_IBS_DNtNtCs5uU3ebUyQFg_20datafusion_execution6stream17RecordBatchStreamp4ItemIB23_NtNtCs6ePPILGZvJ2_11arrow_array12record_batch11RecordBatchNtNtCslWccy9wMl4f_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEB4I_EB5H_EL_EEECsgsNUVCRJO2f_13influxdb3_lib.exit
  %i.nk = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5988)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5989)
  %i.nl = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.nm = load ptr, ptr %i.nl, align 8, !alias.scope !5990, !nonnull !84, !noundef !84 ; 2 uses
  %i.nn = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.no = load i64, ptr %i.nn, align 16, !alias.scope !5990, !noundef !84 ; 4 uses
  %i.np = icmp eq i64 %i.no, 0
  br i1 %i.np, label %_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCs21s4ZTvHFSd_5authz10permission10PermissionENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsgsNUVCRJO2f_13influxdb3_lib.exit.i, label %.lr.ph

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs21s4ZTvHFSd_5authz10permission10PermissionECsgsNUVCRJO2f_13influxdb3_lib.exit.i.i.i59: ; preds = %.lr.ph
  %i.nq = icmp eq i64 %i.ns, %i.no
  br i1 %i.nq, label %_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCs21s4ZTvHFSd_5authz10permission10PermissionENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsgsNUVCRJO2f_13influxdb3_lib.exit.i, label %.lr.ph

.lr.ph:                                           ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtNtCs21s4ZTvHFSd_5authz13authorization13AuthorizationNtNtB2s_14iox_authorizer5ErrorENtNtB4_6marker4SendEL_EEECsgsNUVCRJO2f_13influxdb3_lib.exit, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs21s4ZTvHFSd_5authz10permission10PermissionECsgsNUVCRJO2f_13influxdb3_lib.exit.i.i.i59
  %.sroa.0.0.i.i.i115 = phi i64 [ %i.ns, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs21s4ZTvHFSd_5authz10permission10PermissionECsgsNUVCRJO2f_13influxdb3_lib.exit.i.i.i59 ], [ 0, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtNtCs21s4ZTvHFSd_5authz13authorization13AuthorizationNtNtB2s_14iox_authorizer5ErrorENtNtB4_6marker4SendEL_EEECsgsNUVCRJO2f_13influxdb3_lib.exit ] ; 2 uses
  %i.nr = getelementptr inbounds nuw [40 x i8], ptr %i.nm, i64 %.sroa.0.0.i.i.i115
  %i.ns = add nuw nsw i64 %.sroa.0.0.i.i.i115, 1  ; 4 uses
  %i.nt = getelementptr inbounds nuw i8, ptr %i.nr, i64 8
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.nt)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs21s4ZTvHFSd_5authz10permission10PermissionECsgsNUVCRJO2f_13influxdb3_lib.exit.i.i.i59 unwind label %bb.fg, !noalias !5990

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs21s4ZTvHFSd_5authz10permission10PermissionECsgsNUVCRJO2f_13influxdb3_lib.exit7.i.i.i: ; preds = %.lr.ph117
  %i.nu = add i64 %.sroa.0.1.i.i.i116, 1          ; 2 uses
  %i.nv = icmp eq i64 %i.nu, %i.no
  br i1 %i.nv, label %.body.i60, label %.lr.ph117

bb.fg:                                            ; preds = %.lr.ph
  %i.nw = landingpad { ptr, i32 }
          cleanup
  %i.nx = icmp eq i64 %i.ns, %i.no
  br i1 %i.nx, label %.body.i60, label %.lr.ph117

.lr.ph117:                                        ; preds = %bb.fg, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs21s4ZTvHFSd_5authz10permission10PermissionECsgsNUVCRJO2f_13influxdb3_lib.exit7.i.i.i
  %.sroa.0.1.i.i.i116 = phi i64 [ %i.nu, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs21s4ZTvHFSd_5authz10permission10PermissionECsgsNUVCRJO2f_13influxdb3_lib.exit7.i.i.i ], [ %i.ns, %bb.fg ] ; 2 uses
  %i.ny = getelementptr inbounds nuw [40 x i8], ptr %i.nm, i64 %.sroa.0.1.i.i.i116
  %i.nz = getelementptr inbounds nuw i8, ptr %i.ny, i64 8
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.nz)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs21s4ZTvHFSd_5authz10permission10PermissionECsgsNUVCRJO2f_13influxdb3_lib.exit7.i.i.i unwind label %bb.fh, !noalias !5990

bb.fh:                                            ; preds = %.lr.ph117
  %i.oa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #31, !noalias !5990
  unreachable

.body.i60:                                        ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs21s4ZTvHFSd_5authz10permission10PermissionECsgsNUVCRJO2f_13influxdb3_lib.exit7.i.i.i, %bb.fg
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCs21s4ZTvHFSd_5authz10permission10PermissionENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.nk)
          to label %.body unwind label %bb.fi

_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCs21s4ZTvHFSd_5authz10permission10PermissionENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsgsNUVCRJO2f_13influxdb3_lib.exit.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs21s4ZTvHFSd_5authz10permission10PermissionECsgsNUVCRJO2f_13influxdb3_lib.exit.i.i.i59, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtNtCs21s4ZTvHFSd_5authz13authorization13AuthorizationNtNtB2s_14iox_authorizer5ErrorENtNtB4_6marker4SendEL_EEECsgsNUVCRJO2f_13influxdb3_lib.exit
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCs21s4ZTvHFSd_5authz10permission10PermissionENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.nk)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtBW_3vec3VecNtCsIdnmPPg5ba_10data_types9NamespaceENtNtCslWccy9wMl4f_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECsgsNUVCRJO2f_13influxdb3_lib.exit unwind label %bb.fk

bb.fi:                                            ; preds = %.body.i60
  %i.ob = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #31
  unreachable

.body34:                                          ; preds = %bb.t, %bb.s, %bb.fj, %.body37
  %.pn17 = phi { ptr, i32 } [ %i.ay, %.body37 ], [ %i.oh, %bb.fj ], [ %i.ak, %bb.s ], [ %i.ak, %bb.t ]
  %i.oc = getelementptr inbounds nuw i8, ptr %0, i64 128
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCs21s4ZTvHFSd_5authz10permission10PermissionEECsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef align 8 dereferenceable(24) %i.oc) #32
          to label %.body unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.body37:                                          ; preds = %bb.y, %bb.z
  %i.od = getelementptr inbounds nuw i8, ptr %0, i64 216
  store i8 0, ptr %i.od, align 8
  %i.oe = getelementptr inbounds nuw i8, ptr %0, i64 224
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs21s4ZTvHFSd_5authz13authorization13AuthorizationECsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef align 8 dereferenceable(48) %i.oe) #32
          to label %.body34 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultIBC_IBS_DNtNtCs5uU3ebUyQFg_20datafusion_execution6stream17RecordBatchStreamp4ItemIB23_NtNtCs6ePPILGZvJ2_11arrow_array12record_batch11RecordBatchNtNtCslWccy9wMl4f_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEB4I_EB5H_EL_EEECsgsNUVCRJO2f_13influxdb3_lib.exit: ; preds = %bb.x, %bb.w
  %i.of = getelementptr inbounds nuw i8, ptr %0, i64 216
  store i8 0, ptr %i.of, align 8
  %i.og = getelementptr inbounds nuw i8, ptr %0, i64 224
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs21s4ZTvHFSd_5authz13authorization13AuthorizationECsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef align 8 dereferenceable(48) %i.og)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtNtCs21s4ZTvHFSd_5authz13authorization13AuthorizationNtNtB2s_14iox_authorizer5ErrorENtNtB4_6marker4SendEL_EEECsgsNUVCRJO2f_13influxdb3_lib.exit unwind label %bb.fj

bb.fj:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultIBC_IBS_DNtNtCs5uU3ebUyQFg_20datafusion_execution6stream17RecordBatchStreamp4ItemIB23_NtNtCs6ePPILGZvJ2_11arrow_array12record_batch11RecordBatchNtNtCslWccy9wMl4f_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEB4I_EB5H_EL_EEECsgsNUVCRJO2f_13influxdb3_lib.exit
  %i.oh = landingpad { ptr, i32 }
          cleanup
  br label %.body34

bb.fk:                                            ; preds = %_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCs21s4ZTvHFSd_5authz10permission10PermissionENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsgsNUVCRJO2f_13influxdb3_lib.exit.i
  %i.oi = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.fl:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsgsNUVCRJO2f_13influxdb3_lib.exit, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsgsNUVCRJO2f_13influxdb3_lib.exit72, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtBW_3vec3VecNtCsIdnmPPg5ba_10data_types9NamespaceENtNtCslWccy9wMl4f_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECsgsNUVCRJO2f_13influxdb3_lib.exit
  %i.oj = getelementptr inbounds nuw i8, ptr %0, i64 209
  %i.ok = load i8, ptr %i.oj, align 1, !range !83, !noundef !84
  %i.ol = trunc nuw i8 %i.ok to i1
  br i1 %i.ol, label %bb.fv, label %common.ret

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.body41, %.body34, %.body37, %bb.gd, %bb.fq, %bb.gc
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #31
  unreachable

bb.fm:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsgsNUVCRJO2f_13influxdb3_lib.exit70.a, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsgsNUVCRJO2f_13influxdb3_lib.exit78, %.body
  %.pn19.pn = phi { ptr, i32 } [ %.pn19, %.body ], [ %.pn15, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsgsNUVCRJO2f_13influxdb3_lib.exit70.a ], [ %.pn10, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsgsNUVCRJO2f_13influxdb3_lib.exit78 ] ; 2 uses
  %i.om = getelementptr inbounds nuw i8, ptr %0, i64 209
  %i.on = load i8, ptr %i.om, align 1, !range !83, !noundef !84
  %i.oo = trunc nuw i8 %i.on to i1
  br i1 %i.oo, label %bb.gd, label %common.resume

.body41:                                          ; preds = %bb.ae, %bb.af
  %i.op = getelementptr inbounds nuw i8, ptr %0, i64 232
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.op)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueANtNtCs21s4ZTvHFSd_5authz10permission10Permissionj1_ECsgsNUVCRJO2f_13influxdb3_lib.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtNtCs21s4ZTvHFSd_5authz13authorization13AuthorizationNtNtB2s_14iox_authorizer5ErrorENtNtB4_6marker4SendEL_EEECsgsNUVCRJO2f_13influxdb3_lib.exit43: ; preds = %bb.ad, %bb.ac
  %i.oq = getelementptr inbounds nuw i8, ptr %0, i64 232
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.oq)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultIBC_IBS_DNtNtCs5uU3ebUyQFg_20datafusion_execution6stream17RecordBatchStreamp4ItemIB23_NtNtCs6ePPILGZvJ2_11arrow_array12record_batch11RecordBatchNtNtCslWccy9wMl4f_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEB4I_EB5H_EL_EEECsgsNUVCRJO2f_13influxdb3_lib.exit48 unwind label %bb.fn

bb.fn:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtNtCs21s4ZTvHFSd_5authz13authorization13AuthorizationNtNtB2s_14iox_authorizer5ErrorENtNtB4_6marker4SendEL_EEECsgsNUVCRJO2f_13influxdb3_lib.exit43
  %i.or = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueANtNtCs21s4ZTvHFSd_5authz10permission10Permissionj1_ECsgsNUVCRJO2f_13influxdb3_lib.exit

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultIBC_IBS_DNtNtCs5uU3ebUyQFg_20datafusion_execution6stream17RecordBatchStreamp4ItemIB23_NtNtCs6ePPILGZvJ2_11arrow_array12record_batch11RecordBatchNtNtCslWccy9wMl4f_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEB4I_EB5H_EL_EEECsgsNUVCRJO2f_13influxdb3_lib.exit48: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtNtCs21s4ZTvHFSd_5authz13authorization13AuthorizationNtNtB2s_14iox_authorizer5ErrorENtNtB4_6marker4SendEL_EEECsgsNUVCRJO2f_13influxdb3_lib.exit43, %bb.aj, %bb.ai
  %i.os = getelementptr inbounds nuw i8, ptr %0, i64 211 ; 2 uses
  %i.ot = load i8, ptr %i.os, align 1, !range !83, !noundef !84
  %i.ou = trunc nuw i8 %i.ot to i1
  br i1 %i.ou, label %bb.fo, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsgsNUVCRJO2f_13influxdb3_lib.exit

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueANtNtCs21s4ZTvHFSd_5authz10permission10Permissionj1_ECsgsNUVCRJO2f_13influxdb3_lib.exit: ; preds = %.body41, %bb.al, %bb.ak, %bb.fn
  %.pn12.pn = phi { ptr, i32 } [ %i.ca, %bb.al ], [ %i.or, %bb.fn ], [ %i.ca, %bb.ak ], [ %i.bm, %.body41 ] ; 2 uses
  %i.ov = getelementptr inbounds nuw i8, ptr %0, i64 211
  %i.ow = load i8, ptr %i.ov, align 1, !range !83, !noundef !84
  %i.ox = trunc nuw i8 %i.ow to i1
  br i1 %i.ox, label %bb.fq, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsgsNUVCRJO2f_13influxdb3_lib.exit70.a

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsgsNUVCRJO2f_13influxdb3_lib.exit: ; preds = %bb.fo, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultIBC_IBS_DNtNtCs5uU3ebUyQFg_20datafusion_execution6stream17RecordBatchStreamp4ItemIB23_NtNtCs6ePPILGZvJ2_11arrow_array12record_batch11RecordBatchNtNtCslWccy9wMl4f_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEB4I_EB5H_EL_EEECsgsNUVCRJO2f_13influxdb3_lib.exit48
  store i8 0, ptr %i.os, align 1
  br label %bb.fl

bb.fo:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultIBC_IBS_DNtNtCs5uU3ebUyQFg_20datafusion_execution6stream17RecordBatchStreamp4ItemIB23_NtNtCs6ePPILGZvJ2_11arrow_array12record_batch11RecordBatchNtNtCslWccy9wMl4f_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEB4I_EB5H_EL_EEECsgsNUVCRJO2f_13influxdb3_lib.exit48
  %i.oy = getelementptr inbounds nuw i8, ptr %0, i64 160
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.oy)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsgsNUVCRJO2f_13influxdb3_lib.exit unwind label %bb.fp

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsgsNUVCRJO2f_13influxdb3_lib.exit70.a: ; preds = %bb.fq, %bb.fp, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueANtNtCs21s4ZTvHFSd_5authz10permission10Permissionj1_ECsgsNUVCRJO2f_13influxdb3_lib.exit
  %.pn15 = phi { ptr, i32 } [ %i.pa, %bb.fp ], [ %.pn12.pn, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueANtNtCs21s4ZTvHFSd_5authz10permission10Permissionj1_ECsgsNUVCRJO2f_13influxdb3_lib.exit ], [ %.pn12.pn, %bb.fq ]
  %i.oz = getelementptr inbounds nuw i8, ptr %0, i64 211
  store i8 0, ptr %i.oz, align 1
  br label %bb.fm

bb.fp:                                            ; preds = %bb.fo
  %i.pa = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsgsNUVCRJO2f_13influxdb3_lib.exit70.a

bb.fq:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueANtNtCs21s4ZTvHFSd_5authz10permission10Permissionj1_ECsgsNUVCRJO2f_13influxdb3_lib.exit
  %i.pb = getelementptr inbounds nuw i8, ptr %0, i64 160
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.pb)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsgsNUVCRJO2f_13influxdb3_lib.exit70.a unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.fr:                                            ; preds = %bb.ao
  %i.pc = landingpad { ptr, i32 }
          cleanup
  br label %.body50

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCNvMs0_NtCs1yQqqZMFGFX_16iox_v1_query_api7handlerNtBJ_13V1HttpHandler17authorize_request0ECsgsNUVCRJO2f_13influxdb3_lib.exit: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueANtNtCs21s4ZTvHFSd_5authz10permission10Permissionj1_ECsgsNUVCRJO2f_13influxdb3_lib.exit7.i, %bb.an, %bb.am, %bb.ao, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCNvMs0_NtCs1yQqqZMFGFX_16iox_v1_query_api7handlerNtBJ_13V1HttpHandler10plan_query0ECsgsNUVCRJO2f_13influxdb3_lib.exit
  %i.pd = getelementptr inbounds nuw i8, ptr %0, i64 215
  store i8 0, ptr %i.pd, align 1
  %i.pe = getelementptr inbounds nuw i8, ptr %0, i64 210 ; 2 uses
  %i.pf = load i8, ptr %i.pe, align 2, !range !83, !noundef !84
  %i.pg = trunc nuw i8 %i.pf to i1
  br i1 %i.pg, label %bb.ft, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsgsNUVCRJO2f_13influxdb3_lib.exit72

.body50:                                          ; preds = %bb.fr, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueANtNtCs21s4ZTvHFSd_5authz10permission10Permissionj1_ECsgsNUVCRJO2f_13influxdb3_lib.exit.i, %.body57
  %.pn = phi { ptr, i32 } [ %eh.lpad-body58, %.body57 ], [ %i.pc, %bb.fr ], [ %.pn.i49, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueANtNtCs21s4ZTvHFSd_5authz10permission10Permissionj1_ECsgsNUVCRJO2f_13influxdb3_lib.exit.i ] ; 2 uses
  %i.ph = getelementptr inbounds nuw i8, ptr %0, i64 215
  store i8 0, ptr %i.ph, align 1
  %i.pi = getelementptr inbounds nuw i8, ptr %0, i64 210
  %i.pj = load i8, ptr %i.pi, align 2, !range !83, !noundef !84
  %i.pk = trunc nuw i8 %i.pj to i1
  br i1 %i.pk, label %bb.gc, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsgsNUVCRJO2f_13influxdb3_lib.exit78

bb.fs:                                            ; preds = %bb.de
  %i.pl = landingpad { ptr, i32 }
          cleanup
  br label %.body57

.body57:                                          ; preds = %.body65.i, %bb.da, %bb.db, %bb.dc, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsgsNUVCRJO2f_13influxdb3_lib.exit100.i, %bb.fs
  %eh.lpad-body58 = phi { ptr, i32 } [ %i.pl, %bb.fs ], [ %i.id, %bb.da ], [ %i.id, %bb.dc ], [ %i.id, %bb.db ], [ %.pn29.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsgsNUVCRJO2f_13influxdb3_lib.exit100.i ], [ %.pn37.i, %.body65.i ]
  %i.pm = getelementptr inbounds nuw i8, ptr %0, i64 212
  store i8 0, ptr %i.pm, align 4
  %i.pn = getelementptr inbounds nuw i8, ptr %0, i64 213
  store i8 0, ptr %i.pn, align 1
  %i.po = getelementptr inbounds nuw i8, ptr %0, i64 214
  store i8 0, ptr %i.po, align 2
  br label %.body50

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCNvMs0_NtCs1yQqqZMFGFX_16iox_v1_query_api7handlerNtBJ_13V1HttpHandler10plan_query0ECsgsNUVCRJO2f_13influxdb3_lib.exit: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsgsNUVCRJO2f_13influxdb3_lib.exit94.i, %bb.dd, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecTNtNtCs2lpxFwhfAIc_5trace3ctx7TraceIdNtB1a_6SpanIdEEECsgsNUVCRJO2f_13influxdb3_lib.exit.i.i.i.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs2lpxFwhfAIc_5trace3ctx11SpanContextEECsgsNUVCRJO2f_13influxdb3_lib.exit.i, %bb.ax, %bb.de
  %i.pp = getelementptr inbounds nuw i8, ptr %0, i64 212
  store i8 0, ptr %i.pp, align 4
  %i.pq = getelementptr inbounds nuw i8, ptr %0, i64 213
  store i8 0, ptr %i.pq, align 1
  %i.pr = getelementptr inbounds nuw i8, ptr %0, i64 214
  store i8 0, ptr %i.pr, align 2
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCNvMs0_NtCs1yQqqZMFGFX_16iox_v1_query_api7handlerNtBJ_13V1HttpHandler17authorize_request0ECsgsNUVCRJO2f_13influxdb3_lib.exit

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsgsNUVCRJO2f_13influxdb3_lib.exit72: ; preds = %bb.ft, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCNvMs0_NtCs1yQqqZMFGFX_16iox_v1_query_api7handlerNtBJ_13V1HttpHandler17authorize_request0ECsgsNUVCRJO2f_13influxdb3_lib.exit
  store i8 0, ptr %i.pe, align 2
  br label %bb.fl

bb.ft:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCNvMs0_NtCs1yQqqZMFGFX_16iox_v1_query_api7handlerNtBJ_13V1HttpHandler17authorize_request0ECsgsNUVCRJO2f_13influxdb3_lib.exit
  %i.ps = getelementptr inbounds nuw i8, ptr %0, i64 184
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ps)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsgsNUVCRJO2f_13influxdb3_lib.exit72 unwind label %bb.fu

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsgsNUVCRJO2f_13influxdb3_lib.exit78: ; preds = %bb.gc, %bb.fu, %.body50
  %.pn10 = phi { ptr, i32 } [ %i.pu, %bb.fu ], [ %.pn, %.body50 ], [ %.pn, %bb.gc ]
  %i.pt = getelementptr inbounds nuw i8, ptr %0, i64 210
  store i8 0, ptr %i.pt, align 2
  br label %bb.fm

bb.fu:                                            ; preds = %bb.ft
  %i.pu = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsgsNUVCRJO2f_13influxdb3_lib.exit78

bb.fv:                                            ; preds = %bb.fl
  %i.pv = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.pw = load i64, ptr %i.pv, align 16, !range !94, !alias.scope !5991, !noundef !84
  %i.px = icmp eq i64 %i.pw, -1
  br i1 %i.px, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs2ng9dRaCDyN_24influxdb_influxql_parser10identifier10IdentifierEECsgsNUVCRJO2f_13influxdb3_lib.exit.i75, label %bb.fw

bb.fw:                                            ; preds = %bb.fv
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.pv)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs2ng9dRaCDyN_24influxdb_influxql_parser10identifier10IdentifierEECsgsNUVCRJO2f_13influxdb3_lib.exit.i75 unwind label %bb.fx

bb.fx:                                            ; preds = %bb.fw
  %i.py = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.pz = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.qa = load i64, ptr %i.pz, align 8, !range !94, !alias.scope !5992, !noundef !84
  %i.qb = icmp eq i64 %i.qa, -1
  br i1 %i.qb, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs2ng9dRaCDyN_24influxdb_influxql_parser10identifier10IdentifierEECsgsNUVCRJO2f_13influxdb3_lib.exit3.i73, label %bb.fy

bb.fy:                                            ; preds = %bb.fx
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.pz)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs2ng9dRaCDyN_24influxdb_influxql_parser10identifier10IdentifierEECsgsNUVCRJO2f_13influxdb3_lib.exit3.i73 unwind label %bb.gb

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs2ng9dRaCDyN_24influxdb_influxql_parser10identifier10IdentifierEECsgsNUVCRJO2f_13influxdb3_lib.exit.i75: ; preds = %bb.fw, %bb.fv
  %i.qc = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.qd = load i64, ptr %i.qc, align 8, !range !94, !alias.scope !5993, !noundef !84
  %i.qe = icmp eq i64 %i.qd, -1
  br i1 %i.qe, label %common.ret.sink.split, label %bb.fz

bb.fz:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs2ng9dRaCDyN_24influxdb_influxql_parser10identifier10IdentifierEECsgsNUVCRJO2f_13influxdb3_lib.exit.i75
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.qc)
          to label %common.ret.sink.split unwind label %bb.ga

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs2ng9dRaCDyN_24influxdb_influxql_parser10identifier10IdentifierEECsgsNUVCRJO2f_13influxdb3_lib.exit3.i73: ; preds = %bb.ga, %bb.fy, %bb.fx
  %.pn.i74 = phi { ptr, i32 } [ %i.qf, %bb.ga ], [ %i.py, %bb.fy ], [ %i.py, %bb.fx ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2ng9dRaCDyN_24influxdb_influxql_parser9statement9StatementECsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull align 8 dereferenceable(64) %0) #32
          to label %common.resume unwind label %bb.gb

bb.ga:                                            ; preds = %bb.fz
  %i.qf = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs2ng9dRaCDyN_24influxdb_influxql_parser10identifier10IdentifierEECsgsNUVCRJO2f_13influxdb3_lib.exit3.i73

bb.gb:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs2ng9dRaCDyN_24influxdb_influxql_parser10identifier10IdentifierEECsgsNUVCRJO2f_13influxdb3_lib.exit3.i73, %bb.fy
  %i.qg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #31
  unreachable

bb.gc:                                            ; preds = %.body50
  %i.qh = getelementptr inbounds nuw i8, ptr %0, i64 184
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.qh)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsgsNUVCRJO2f_13influxdb3_lib.exit78 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.gd:                                            ; preds = %bb.fm
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCs8dx9gOL6MFw_26iox_query_influxql_rewrite9RewrittenNtNtCs2ng9dRaCDyN_24influxdb_influxql_parser9statement9StatementEECsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef align 8 dereferenceable(64) %0) #32
          to label %common.resume unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCNCNCNvMs4_NtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36eventsNtBN_20CatalogSubscriptions11send_update0s_00ECsgsNUVCRJO2f_13influxdb3_lib(ptr noundef nonnull align 8 %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 124
  %i.b = load i8, ptr %i.a, align 4, !range !6034, !noundef !84
  switch i8 %i.b, label %common.ret [
    i8 0, label %bb.b
    i8 3, label %bb.c
    i8 4, label %bb.t
  ]

common.ret:                                       ; preds = %bb.ae, %bb.ad, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCseCDlJsl44RV_5tokio4sync7oneshot8ReceiveruEECsgsNUVCRJO2f_13influxdb3_lib.exit, %bb.a
  ret void

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 88
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36events19CatalogUpdateSenderECsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef align 8 dereferenceable(24) %i.c)
          to label %bb.ad unwind label %bb.ab

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.e = load i8, ptr %i.d, align 8, !range !137, !noundef !84
  switch i8 %i.e, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCNvMs1_NtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36eventsNtBJ_19CatalogUpdateSender4send0ECsgsNUVCRJO2f_13influxdb3_lib.exit [
    i8 0, label %.invoke
    i8 3, label %bb.d
  ]

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.g = load i8, ptr %i.f, align 8, !range !137, !noundef !84
  switch i8 %i.g, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCNvMs1_NtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36eventsNtBJ_19CatalogUpdateSender4send0ECsgsNUVCRJO2f_13influxdb3_lib.exit [
    i8 0, label %.invoke
    i8 3, label %bb.e
  ]

.invoke:                                          ; preds = %bb.d, %bb.c
  %.sink = phi i64 [ 136, %bb.c ], [ 168, %bb.d ]
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 %.sink
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36events20CatalogUpdateMessageECsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCNvMs1_NtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36eventsNtBJ_19CatalogUpdateSender4send0ECsgsNUVCRJO2f_13influxdb3_lib.exit unwind label %bb.ag

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.j = load i8, ptr %i.i, align 8, !range !137, !noundef !84
  %cond.i.i.i = icmp eq i8 %i.j, 3
  br i1 %cond.i.i.i, label %bb.f, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCNvMs1_NtNtNtCseCDlJsl44RV_5tokio4sync4mpsc7boundedINtBJ_6SenderNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36events20CatalogUpdateMessageE7reserve0ECsgsNUVCRJO2f_13influxdb3_lib.exit.i.i
end_hunk_1
