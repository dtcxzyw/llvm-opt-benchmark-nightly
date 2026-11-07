Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/influxdb-rs/original/influxdb3_write-5ad51624d01e48bf.influxdb3_write.69514a759dae960a-cgu.01?download=true
inline.NumInlined: 5360
inline.NumDeleted: 1703
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_RNCNCNvMNtNtCs92BnbMq7p8c_15influxdb3_write12write_buffer16queryable_bufferNtB6_15QueryableBuffer48buffer_wal_contents_and_persist_snapshotted_data00Ba_:bb.a
  ret i1 %common.ret.op

bb.i:                                             ; preds = %bb.h
  call void @llvm.experimental.noalias.scope.decl(metadata !8104)
  %i.r = load i64, ptr %i.p, align 8, !range !13, !alias.scope !8104, !noundef !12
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 4 uses
  %i.t = icmp eq i64 %i.r, 0
  br i1 %i.t, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  call void @llvm.experimental.noalias.scope.decl(metadata !8105)
  call void @llvm.experimental.noalias.scope.decl(metadata !8106)
  %i.u = load ptr, ptr %i.s, align 8, !alias.scope !8107, !nonnull !12, !noundef !12
  %i.v = atomicrmw add ptr %i.u, i64 -1 release, align 8, !noalias !8107
  %i.w = icmp eq i64 %i.v, 1
  br i1 %i.w, label %bb.k, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCseCDlJsl44RV_5tokio7runtime9scheduler6HandleECs92BnbMq7p8c_15influxdb3_write.exit.i

bb.k:                                             ; preds = %bb.j
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtNtNtCseCDlJsl44RV_5tokio7runtime9scheduler14current_thread6HandleE9drop_slowBN_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.s)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCseCDlJsl44RV_5tokio7runtime9scheduler6HandleECs92BnbMq7p8c_15influxdb3_write.exit.i unwind label %bb.n

bb.l:                                             ; preds = %bb.i
  call void @llvm.experimental.noalias.scope.decl(metadata !8108)
  call void @llvm.experimental.noalias.scope.decl(metadata !8109)
  %i.x = load ptr, ptr %i.s, align 8, !alias.scope !8110, !nonnull !12, !noundef !12
  %i.y = atomicrmw add ptr %i.x, i64 -1 release, align 8, !noalias !8110
  %i.z = icmp eq i64 %i.y, 1
  br i1 %i.z, label %bb.m, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCseCDlJsl44RV_5tokio7runtime9scheduler6HandleECs92BnbMq7p8c_15influxdb3_write.exit.i

bb.m:                                             ; preds = %bb.l
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtNtNtNtCseCDlJsl44RV_5tokio7runtime9scheduler12multi_thread6handle6HandleE9drop_slowBP_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.s)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCseCDlJsl44RV_5tokio7runtime9scheduler6HandleECs92BnbMq7p8c_15influxdb3_write.exit.i unwind label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.k
  %i.aa = landingpad { ptr, i32 }
          cleanup
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 160
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCseCDlJsl44RV_5tokio7runtime5TimerEECs92BnbMq7p8c_15influxdb3_write(ptr noundef nonnull align 8 %i.ab) #31
          to label %.body unwind label %bb.o

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCseCDlJsl44RV_5tokio7runtime9scheduler6HandleECs92BnbMq7p8c_15influxdb3_write.exit.i: ; preds = %bb.m, %bb.l, %bb.k, %bb.j
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 160
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCseCDlJsl44RV_5tokio7runtime5TimerEECs92BnbMq7p8c_15influxdb3_write(ptr noundef nonnull align 8 %i.ac)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCseCDlJsl44RV_5tokio4time5sleep5SleepECs92BnbMq7p8c_15influxdb3_write.exit unwind label %bb.q

bb.o:                                             ; preds = %bb.n
  %i.ad = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #30
  unreachable

.body:                                            ; preds = %bb.q, %bb.n, %bb.aq, %bb.f
  %.pn6 = phi { ptr, i32 } [ %i.cs, %bb.aq ], [ %i.o, %bb.f ], [ %i.ah, %bb.q ], [ %i.aa, %bb.n ] ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.af = load i64, ptr %i.ae, align 8, !range !28, !alias.scope !8111, !noundef !12
  %i.ag = icmp eq i64 %i.af, -1
  br i1 %i.ag, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultuNtCs1LivM9IBWqb_12object_store5ErrorEECs92BnbMq7p8c_15influxdb3_write.exit, label %bb.p

bb.p:                                             ; preds = %.body
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCs1LivM9IBWqb_12object_store5ErrorECs92BnbMq7p8c_15influxdb3_write(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.ae)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultuNtCs1LivM9IBWqb_12object_store5ErrorEECs92BnbMq7p8c_15influxdb3_write.exit unwind label %bb.ao

bb.q:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCseCDlJsl44RV_5tokio7runtime9scheduler6HandleECs92BnbMq7p8c_15influxdb3_write.exit.i
  %i.ah = landingpad { ptr, i32 }
          cleanup
  br label %.body

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCseCDlJsl44RV_5tokio4time5sleep5SleepECs92BnbMq7p8c_15influxdb3_write.exit: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCseCDlJsl44RV_5tokio7runtime9scheduler6HandleECs92BnbMq7p8c_15influxdb3_write.exit.i
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.aj = load i64, ptr %i.ai, align 8, !range !28, !alias.scope !8112, !noundef !12
  %i.ak = icmp eq i64 %i.aj, -1
  br i1 %i.ak, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultuNtCs1LivM9IBWqb_12object_store5ErrorEECs92BnbMq7p8c_15influxdb3_write.exit24, label %bb.r

bb.r:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCseCDlJsl44RV_5tokio4time5sleep5SleepECs92BnbMq7p8c_15influxdb3_write.exit
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCs1LivM9IBWqb_12object_store5ErrorECs92BnbMq7p8c_15influxdb3_write(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.ai)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultuNtCs1LivM9IBWqb_12object_store5ErrorEECs92BnbMq7p8c_15influxdb3_write.exit24 unwind label %bb.v

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultuNtCs1LivM9IBWqb_12object_store5ErrorEECs92BnbMq7p8c_15influxdb3_write.exit31: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultuNtCs1LivM9IBWqb_12object_store5ErrorENtNtB4_6marker4SendEL_EEECs92BnbMq7p8c_15influxdb3_write.exit, %bb.ah, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultuNtCs1LivM9IBWqb_12object_store5ErrorEECs92BnbMq7p8c_15influxdb3_write.exit24
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs92BnbMq7p8c_15influxdb3_write(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.al)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs92BnbMq7p8c_15influxdb3_write.exit.i unwind label %bb.s

bb.s:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultuNtCs1LivM9IBWqb_12object_store5ErrorEECs92BnbMq7p8c_15influxdb3_write.exit31
  %i.am = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs92BnbMq7p8c_15influxdb3_write(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.al)
          to label %.body25 unwind label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.an = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #30
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs92BnbMq7p8c_15influxdb3_write.exit.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultuNtCs1LivM9IBWqb_12object_store5ErrorEECs92BnbMq7p8c_15influxdb3_write.exit31
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs92BnbMq7p8c_15influxdb3_write(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.al)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs1LivM9IBWqb_12object_store4path4PathECs92BnbMq7p8c_15influxdb3_write.exit unwind label %bb.ai

bb.u:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultuNtCs1LivM9IBWqb_12object_store5ErrorEECs92BnbMq7p8c_15influxdb3_write.exit24
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val19 = load ptr, ptr %i.ao, align 8, !nonnull !12, !noundef !12
  %i.ap = getelementptr i8, ptr %0, i64 24
  %.val20 = load ptr, ptr %i.ap, align 8, !nonnull !12, !align !21, !noundef !12 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.val20, i64 16
  %i.ar = load i64, ptr %i.aq, align 8, !range !16, !invariant.load !12
  %i.as = add nsw i64 %i.ar, -1
  %i.at = and i64 %i.as, -16
  %i.au = getelementptr inbounds nuw i8, ptr %.val19, i64 %i.at
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ax = getelementptr inbounds nuw i8, ptr %.val20, i64 120
  %i.ay = load ptr, ptr %i.ax, align 8, !invariant.load !12, !nonnull !12
  %i.az = invoke { ptr, ptr } %i.ay(ptr noundef nonnull %i.av, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.aw)
          to label %bb.w unwind label %bb.v       ; 2 uses

bb.v:                                             ; preds = %bb.ah, %bb.r, %bb.u
  %i.ba = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultuNtCs1LivM9IBWqb_12object_store5ErrorEECs92BnbMq7p8c_15influxdb3_write.exit

bb.w:                                             ; preds = %bb.u
  %i.bb = extractvalue { ptr, ptr } %i.az, 0
  %i.bc = extractvalue { ptr, ptr } %i.az, 1
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 144
  store ptr %i.bb, ptr %i.bd, align 8
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 152
  store ptr %i.bc, ptr %i.be, align 8
  br label %bb.y

bb.x:                                             ; preds = %bb.y
  %i.bf = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %.val15 = load ptr, ptr %i.bh, align 8
  %i.bg = getelementptr i8, ptr %0, i64 152
  %.val16 = load ptr, ptr %i.bg, align 8, !nonnull !12, !align !21, !noundef !12
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultuNtCs1LivM9IBWqb_12object_store5ErrorENtNtB4_6marker4SendEL_EEECs92BnbMq7p8c_15influxdb3_write(ptr %.val15, ptr nonnull %.val16) #31
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultuNtCs1LivM9IBWqb_12object_store5ErrorEECs92BnbMq7p8c_15influxdb3_write.exit unwind label %bb.ao

bb.y:                                             ; preds = %bb.w, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 4 uses
  invoke void @_RNvXs_NtNtCs4NRVxsYgnAr_4core6future6futureINtNtB8_3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtB4_6Futurep6OutputINtNtB8_6result6ResultuNtCs1LivM9IBWqb_12object_store5ErrorENtNtB8_6marker4SendEL_EEB1u_4pollCs92BnbMq7p8c_15influxdb3_write(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.bh, ptr noalias noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.z unwind label %bb.x

bb.z:                                             ; preds = %bb.y
  %i.bi = load i64, ptr %i.b, align 8, !range !24, !noundef !12
  %i.bj = icmp eq i64 %i.bi, -2
  br i1 %i.bj, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %common.ret

bb.ab:                                            ; preds = %bb.z
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.bk, ptr noundef nonnull align 8 dereferenceable(72) %i.b, i64 72, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %.val = load ptr, ptr %i.bh, align 8            ; 5 uses
  %i.bl = getelementptr i8, ptr %0, i64 152
  %.val14 = load ptr, ptr %i.bl, align 8, !nonnull !12, !align !21, !noundef !12 ; 5 uses
  %i.bm = load ptr, ptr %.val14, align 8, !invariant.load !12 ; 2 uses
  %.not.i.i = icmp eq ptr %i.bm, null
  br i1 %.not.i.i, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  invoke void %i.bm(ptr noundef nonnull %.val)
          to label %bb.ad unwind label %bb.af

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %i.bn = getelementptr inbounds nuw i8, ptr %.val14, i64 8
  %i.bo = load i64, ptr %i.bn, align 8, !range !15, !invariant.load !12 ; 2 uses
  %i.bp = icmp eq i64 %i.bo, 0
  br i1 %i.bp, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultuNtCs1LivM9IBWqb_12object_store5ErrorENtNtB4_6marker4SendEL_EEECs92BnbMq7p8c_15influxdb3_write.exit, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.bq = getelementptr inbounds nuw i8, ptr %.val14, i64 16
  %i.br = load i64, ptr %i.bq, align 8, !range !16, !invariant.load !12
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef range(i64 1, 0) %i.bo, i64 noundef range(i64 1, 536870913) %i.br) #29
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultuNtCs1LivM9IBWqb_12object_store5ErrorENtNtB4_6marker4SendEL_EEECs92BnbMq7p8c_15influxdb3_write.exit

bb.af:                                            ; preds = %bb.ac
  %i.bs = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %.val14, i64 8
  %i.bu = load i64, ptr %i.bt, align 8, !range !15, !invariant.load !12 ; 2 uses
  %i.bv = icmp eq i64 %i.bu, 0
  br i1 %i.bv, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultuNtCs1LivM9IBWqb_12object_store5ErrorEECs92BnbMq7p8c_15influxdb3_write.exit, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.bw = getelementptr inbounds nuw i8, ptr %.val14, i64 16
  %i.bx = load i64, ptr %i.bw, align 8, !range !16, !invariant.load !12
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef range(i64 1, 0) %i.bu, i64 noundef range(i64 1, 536870913) %i.bx) #29
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultuNtCs1LivM9IBWqb_12object_store5ErrorEECs92BnbMq7p8c_15influxdb3_write.exit

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultuNtCs1LivM9IBWqb_12object_store5ErrorENtNtB4_6marker4SendEL_EEECs92BnbMq7p8c_15influxdb3_write.exit: ; preds = %bb.ae, %bb.ad
  %i.by = load i64, ptr %i.bk, align 8, !range !28, !noundef !12 ; 2 uses
  switch i64 %i.by, label %bb.ap [
    i64 -1, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultuNtCs1LivM9IBWqb_12object_store5ErrorEECs92BnbMq7p8c_15influxdb3_write.exit31
    i64 -9223372036854775801, label %bb.ah
  ]

bb.ah:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultuNtCs1LivM9IBWqb_12object_store5ErrorENtNtB4_6marker4SendEL_EEECs92BnbMq7p8c_15influxdb3_write.exit
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCs1LivM9IBWqb_12object_store5ErrorECs92BnbMq7p8c_15influxdb3_write(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.bk)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultuNtCs1LivM9IBWqb_12object_store5ErrorEECs92BnbMq7p8c_15influxdb3_write.exit31 unwind label %bb.v

bb.ai:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs92BnbMq7p8c_15influxdb3_write.exit.i, %bb.b
  %i.bz = landingpad { ptr, i32 }
          cleanup
  br label %.body25

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs1LivM9IBWqb_12object_store4path4PathECs92BnbMq7p8c_15influxdb3_write.exit: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs92BnbMq7p8c_15influxdb3_write.exit.i
  call void @llvm.experimental.noalias.scope.decl(metadata !8113)
  call void @llvm.experimental.noalias.scope.decl(metadata !8114)
  %i.ca = load ptr, ptr %0, align 8, !alias.scope !8115, !nonnull !12, !noundef !12
  %i.cb = atomicrmw add ptr %i.ca, i64 -1 release, align 8, !noalias !8115
  %i.cc = icmp eq i64 %i.cb, 1
  br i1 %i.cc, label %bb.aj, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArceEECs92BnbMq7p8c_15influxdb3_write.exit33

bb.aj:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs1LivM9IBWqb_12object_store4path4PathECs92BnbMq7p8c_15influxdb3_write.exit
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArceE9drop_slowCs883m0UBHfPV_9sqlx_core(ptr noalias noundef nonnull align 8 dereferenceable(16) %0)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArceEECs92BnbMq7p8c_15influxdb3_write.exit33 unwind label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.cd = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !8116)
  call void @llvm.experimental.noalias.scope.decl(metadata !8117)
  %i.cf = load ptr, ptr %i.ce, align 8, !alias.scope !8118, !nonnull !12, !noundef !12
  %i.cg = atomicrmw add ptr %i.cf, i64 -1 release, align 8, !noalias !8118
  %i.ch = icmp eq i64 %i.cg, 1
  br i1 %i.ch, label %bb.al, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcDNtCs1LivM9IBWqb_12object_store11ObjectStoreEL_EECs92BnbMq7p8c_15influxdb3_write.exit

bb.al:                                            ; preds = %bb.ak
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcDNtCs1LivM9IBWqb_12object_store11ObjectStoreEL_E9drop_slowBI_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.ce)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcDNtCs1LivM9IBWqb_12object_store11ObjectStoreEL_EECs92BnbMq7p8c_15influxdb3_write.exit unwind label %bb.ao

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArceEECs92BnbMq7p8c_15influxdb3_write.exit33: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs1LivM9IBWqb_12object_store4path4PathECs92BnbMq7p8c_15influxdb3_write.exit, %bb.aj
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !8119)
  call void @llvm.experimental.noalias.scope.decl(metadata !8120)
  %i.cj = load ptr, ptr %i.ci, align 8, !alias.scope !8121, !nonnull !12, !noundef !12
  %i.ck = atomicrmw add ptr %i.cj, i64 -1 release, align 8, !noalias !8121
  %i.cl = icmp eq i64 %i.ck, 1
  br i1 %i.cl, label %bb.am, label %common.ret

bb.am:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArceEECs92BnbMq7p8c_15influxdb3_write.exit33
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcDNtCs1LivM9IBWqb_12object_store11ObjectStoreEL_E9drop_slowBI_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.ci)
          to label %common.ret unwind label %bb.an

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcDNtCs1LivM9IBWqb_12object_store11ObjectStoreEL_EECs92BnbMq7p8c_15influxdb3_write.exit: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArceEECs92BnbMq7p8c_15influxdb3_write.exit, %bb.as, %bb.ak, %bb.al, %bb.an
  %.pn12 = phi { ptr, i32 } [ %i.cm, %bb.an ], [ %i.cd, %bb.ak ], [ %i.cd, %bb.al ], [ %.pn10, %bb.as ], [ %.pn10, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArceEECs92BnbMq7p8c_15influxdb3_write.exit ]
  store i8 2, ptr %i.c, align 8
  resume { ptr, i32 } %.pn12

bb.an:                                            ; preds = %bb.am
  %i.cm = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcDNtCs1LivM9IBWqb_12object_store11ObjectStoreEL_EECs92BnbMq7p8c_15influxdb3_write.exit

bb.ao:                                            ; preds = %bb.as, %bb.al, %bb.p, %bb.c, %bb.x, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultuNtCs1LivM9IBWqb_12object_store5ErrorEECs92BnbMq7p8c_15influxdb3_write.exit, %bb.f
  %i.cn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #30
  unreachable

bb.ap:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultuNtCs1LivM9IBWqb_12object_store5ErrorENtNtB4_6marker4SendEL_EEECs92BnbMq7p8c_15influxdb3_write.exit
  %2 = icmp ne i64 %i.by, -9223372036854775800
  call void @llvm.assume(i1 %2)
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.cp = load i64, ptr %i.co, align 8, !noundef !12
  %i.cq = add i64 %i.cp, 1                        ; 2 uses
  store i64 %i.cq, ptr %i.co, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.cr = mul i64 %i.cq, 10
  invoke void @_RNvNtNtCseCDlJsl44RV_5tokio4time5sleep5sleep(ptr noalias noundef nonnull sret([112 x i8]) align 8 captures(address) dereferenceable(112) %i.a, i64 noundef %i.cr, i32 noundef 0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @35)
          to label %bb.ar unwind label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.cs = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %.body

bb.ar:                                            ; preds = %bb.ap
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.bh, ptr noundef nonnull readonly align 8 dereferenceable(112) %i.a, i64 112, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.g

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultuNtCs1LivM9IBWqb_12object_store5ErrorEECs92BnbMq7p8c_15influxdb3_write.exit: ; preds = %bb.af, %bb.ag, %bb.v, %.body, %bb.p, %bb.x
  %.pn8 = phi { ptr, i32 } [ %.pn6, %.body ], [ %i.bf, %bb.x ], [ %.pn6, %bb.p ], [ %i.ba, %bb.v ], [ %i.bs, %bb.ag ], [ %i.bs, %bb.af ]
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 40
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs1LivM9IBWqb_12object_store4path4PathECs92BnbMq7p8c_15influxdb3_write(ptr noalias noundef align 8 dereferenceable(24) %i.ct) #31
          to label %.body25 unwind label %bb.ao

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArceEECs92BnbMq7p8c_15influxdb3_write.exit: ; preds = %.body25, %bb.c
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !8122)
  call void @llvm.experimental.noalias.scope.decl(metadata !8123)
  %i.cv = load ptr, ptr %i.cu, align 8, !alias.scope !8124, !nonnull !12, !noundef !12
  %i.cw = atomicrmw add ptr %i.cv, i64 -1 release, align 8, !noalias !8124
  %i.cx = icmp eq i64 %i.cw, 1
  br i1 %i.cx, label %bb.as, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcDNtCs1LivM9IBWqb_12object_store11ObjectStoreEL_EECs92BnbMq7p8c_15influxdb3_write.exit

bb.as:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArceEECs92BnbMq7p8c_15influxdb3_write.exit
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcDNtCs1LivM9IBWqb_12object_store11ObjectStoreEL_E9drop_slowBI_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.cu)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcDNtCs1LivM9IBWqb_12object_store11ObjectStoreEL_EECs92BnbMq7p8c_15influxdb3_write.exit unwind label %bb.ao
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNCNCNvMNtNtCs92BnbMq7p8c_15influxdb3_write12write_buffer16queryable_bufferNtB6_15QueryableBuffer48buffer_wal_contents_and_persist_snapshotted_data0s_0Ba_(ptr noundef nonnull align 8 %0, ptr noalias noundef nonnull align 8 dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality !guid !8368 {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
  %i.d = alloca [24 x i8], align 8                ; 7 uses
  %i.e = alloca [24 x i8], align 8                ; 7 uses
  %i.f = alloca [24 x i8], align 8                ; 7 uses
  %i.g = alloca [208 x i8], align 8               ; 5 uses
  %i.h = alloca [56 x i8], align 8                ; 4 uses
  %i.i = alloca [56 x i8], align 8                ; 4 uses
  %i.j = alloca [56 x i8], align 8                ; 5 uses
  %i.k = alloca [16 x i8], align 8                ; 5 uses
  %i.l = alloca [24 x i8], align 8                ; 7 uses
  %i.m = alloca [24 x i8], align 8                ; 4 uses
  %.sroa.6162.i.i = alloca [56 x i8], align 8     ; 7 uses
  %i.n = alloca [200 x i8], align 8               ; 11 uses
  %i.o = alloca [8 x i8], align 8                 ; 5 uses
  %i.p = alloca [8 x i8], align 8                 ; 5 uses
  %i.q = alloca [8 x i8], align 8                 ; 5 uses
  %i.r = alloca [8 x i8], align 8                 ; 5 uses
  %i.s = alloca [8 x i8], align 8                 ; 5 uses
  %i.t = alloca [16 x i8], align 8                ; 6 uses
  %i.u = alloca [64 x i8], align 8                ; 12 uses
  %i.v = alloca [32 x i8], align 8                ; 8 uses
  %i.w = alloca [24 x i8], align 8                ; 8 uses
  %i.x = alloca [8 x i8], align 8                 ; 5 uses
  %i.y = alloca [8 x i8], align 8                 ; 5 uses
  %i.z = alloca [8 x i8], align 8                 ; 5 uses
  %i.aa = alloca [8 x i8], align 8                ; 5 uses
  %i.ab = alloca [16 x i8], align 8               ; 6 uses
  %i.ac = alloca [64 x i8], align 8               ; 12 uses
  %i.ad = alloca [32 x i8], align 8               ; 9 uses
  %.sroa.3.sroa.3.i.i = alloca [40 x i8], align 8 ; 7 uses
  %.sroa.5145.i.i = alloca [16 x i8], align 8     ; 6 uses
  %i.ae = alloca [72 x i8], align 8               ; 9 uses
  %i.af = alloca [24 x i8], align 8               ; 5 uses
  %i.ag = alloca [48 x i8], align 8               ; 9 uses
  %i.ah = alloca [24 x i8], align 8               ; 8 uses
  %i.ai = alloca [24 x i8], align 8               ; 11 uses
  %i.aj = alloca [8 x i8], align 8                ; 5 uses
  %i.ak = alloca [8 x i8], align 8                ; 5 uses
  %i.al = alloca [16 x i8], align 8               ; 6 uses
  %i.am = alloca [48 x i8], align 8               ; 10 uses
  %i.an = alloca [32 x i8], align 8               ; 8 uses
  %i.ao = alloca [24 x i8], align 8               ; 8 uses
  %i.ap = alloca [8 x i8], align 8                ; 5 uses
  %i.aq = alloca [8 x i8], align 8                ; 5 uses
  %i.ar = alloca [16 x i8], align 8               ; 6 uses
  %i.as = alloca [48 x i8], align 8               ; 10 uses
  %i.at = alloca [32 x i8], align 8               ; 9 uses
  %i.au = alloca [56 x i8], align 8               ; 4 uses
  %i.av = alloca [56 x i8], align 8               ; 4 uses
  %i.aw = alloca [56 x i8], align 8               ; 5 uses
  %i.ax = alloca [16 x i8], align 8               ; 5 uses
  %i.ay = alloca [40 x i8], align 8               ; 8 uses
  %i.az = alloca [24 x i8], align 8               ; 6 uses
  %i.ba = alloca [24 x i8], align 8               ; 12 uses
  %i.bb = alloca [24 x i8], align 8               ; 4 uses
  %i.bc = alloca [24 x i8], align 8               ; 4 uses
  %i.bd = alloca [24 x i8], align 8               ; 4 uses
  %.sroa.8280.i = alloca [56 x i8], align 8       ; 7 uses
  %i.be = alloca [8 x i8], align 8                ; 5 uses
  %i.bf = alloca [16 x i8], align 8               ; 6 uses
  %i.bg = alloca [32 x i8], align 8               ; 8 uses
  %i.bh = alloca [32 x i8], align 8               ; 8 uses
  %i.bi = alloca [24 x i8], align 8               ; 8 uses
  %i.bj = alloca [8 x i8], align 8                ; 5 uses
  %i.bk = alloca [16 x i8], align 8               ; 6 uses
  %i.bl = alloca [32 x i8], align 8               ; 8 uses
  %i.bm = alloca [32 x i8], align 8               ; 9 uses
  %i.bn = alloca [72 x i8], align 8               ; 10 uses
  %.sroa.3.sroa.2.i = alloca [56 x i8], align 8   ; 6 uses
  %.sroa.9265.i = alloca [56 x i8], align 8       ; 7 uses
  %i.bo = alloca [8 x i8], align 8                ; 5 uses
  %i.bp = alloca [8 x i8], align 8                ; 5 uses
  %i.bq = alloca [8 x i8], align 8                ; 5 uses
  %i.br = alloca [16 x i8], align 8               ; 6 uses
  %i.bs = alloca [64 x i8], align 8               ; 12 uses
  %i.bt = alloca [32 x i8], align 8               ; 8 uses
  %i.bu = alloca [24 x i8], align 8               ; 8 uses
  %i.bv = alloca [8 x i8], align 8                ; 5 uses
  %i.bw = alloca [8 x i8], align 8                ; 5 uses
  %i.bx = alloca [8 x i8], align 8                ; 5 uses
  %i.by = alloca [16 x i8], align 8               ; 6 uses
  %i.bz = alloca [64 x i8], align 8               ; 12 uses
  %i.ca = alloca [32 x i8], align 8               ; 9 uses
  %.sroa.3234.sroa.3.i = alloca [40 x i8], align 8 ; 7 uses
  %.sroa.5235.i = alloca [16 x i8], align 8       ; 6 uses
  %i.cb = alloca [72 x i8], align 8               ; 9 uses
  %i.cc = alloca [24 x i8], align 8               ; 5 uses
  %i.cd = alloca [32 x i8], align 8               ; 5 uses
  %i.ce = alloca [48 x i8], align 8               ; 9 uses
  %i.cf = alloca [24 x i8], align 8               ; 5 uses
  %i.cg = alloca [8 x i8], align 8                ; 5 uses
  %i.ch = alloca [8 x i8], align 8                ; 5 uses
  %i.ci = alloca [8 x i8], align 8                ; 5 uses
  %i.cj = alloca [8 x i8], align 8                ; 5 uses
  %i.ck = alloca [16 x i8], align 8               ; 6 uses
  %i.cl = alloca [224 x i8], align 8              ; 32 uses
  %i.cm = alloca [32 x i8], align 8               ; 8 uses
  %i.cn = alloca [24 x i8], align 8               ; 8 uses
  %i.co = alloca [24 x i8], align 8               ; 5 uses
  %i.cp = alloca [8 x i8], align 8                ; 5 uses
  %i.cq = alloca [8 x i8], align 8                ; 5 uses
  %i.cr = alloca [8 x i8], align 8                ; 5 uses
  %i.cs = alloca [8 x i8], align 8                ; 5 uses
  %i.ct = alloca [16 x i8], align 8               ; 6 uses
  %i.cu = alloca [224 x i8], align 8              ; 32 uses
  %i.cv = alloca [32 x i8], align 8               ; 10 uses
  %i.cw = alloca [24 x i8], align 8               ; 7 uses
  %i.cx = alloca [8 x i8], align 8                ; 6 uses
  %i.cy = alloca [8 x i8], align 8                ; 6 uses
  %i.cz = alloca [8 x i8], align 8                ; 6 uses
  %i.da = alloca [24 x i8], align 8               ; 7 uses
  %i.db = alloca [8 x i8], align 8                ; 6 uses
  %i.dc = alloca [8 x i8], align 8                ; 6 uses
  %i.dd = alloca [8 x i8], align 8                ; 6 uses
  %i.de = alloca [8 x i8], align 8                ; 4 uses
  %i.df = alloca [216 x i8], align 8              ; 5 uses
  %i.dg = alloca [24 x i8], align 8               ; 6 uses
  %.sroa.4468 = alloca [16 x i8], align 8         ; 6 uses
  %i.dh = alloca [16 x i8], align 8               ; 5 uses
  %i.di = alloca [24 x i8], align 8               ; 6 uses
  %i.dj = alloca [24 x i8], align 8               ; 6 uses
  %i.dk = alloca [32 x i8], align 8               ; 10 uses
  %i.dl = alloca [232 x i8], align 8              ; 8 uses
  %i.dm = alloca [24 x i8], align 8               ; 4 uses
  %i.dn = alloca [24 x i8], align 8               ; 4 uses
  %i.do = alloca [24 x i8], align 8               ; 4 uses
  %i.dp = alloca [40 x i8], align 8               ; 5 uses
  %i.dq = alloca [40 x i8], align 8               ; 4 uses
  %i.dr = alloca [112 x i8], align 8              ; 5 uses
  %i.ds = alloca [8 x i8], align 8                ; 5 uses
  %i.dt = alloca [16 x i8], align 8               ; 6 uses
  %i.du = alloca [32 x i8], align 8               ; 8 uses
  %i.dv = alloca [32 x i8], align 8               ; 8 uses
  %i.dw = alloca [24 x i8], align 8               ; 8 uses
  %i.dx = alloca [8 x i8], align 8                ; 5 uses
  %i.dy = alloca [16 x i8], align 8               ; 6 uses
  %i.dz = alloca [32 x i8], align 8               ; 8 uses
  %i.ea = alloca [32 x i8], align 8               ; 9 uses
  %i.eb = alloca [208 x i8], align 8              ; 6 uses
  %i.ec = alloca [208 x i8], align 16             ; 13 uses
  %.sroa.10440 = alloca [56 x i8], align 8        ; 7 uses
  %i.ed = alloca [216 x i8], align 8              ; 6 uses
  %.sroa.8423 = alloca [16 x i8], align 8         ; 7 uses
  %i.ee = alloca [24 x i8], align 8               ; 10 uses
  %i.ef = alloca [8 x i8], align 8                ; 5 uses
  %i.eg = alloca [8 x i8], align 8                ; 5 uses
  %i.eh = alloca [8 x i8], align 8                ; 5 uses
  %i.ei = alloca [16 x i8], align 8               ; 6 uses
  %i.ej = alloca [64 x i8], align 8               ; 12 uses
  %i.ek = alloca [32 x i8], align 8               ; 8 uses
  %i.el = alloca [24 x i8], align 8               ; 8 uses
  %i.em = alloca [8 x i8], align 8                ; 5 uses
  %i.en = alloca [8 x i8], align 8                ; 5 uses
  %i.eo = alloca [8 x i8], align 8                ; 5 uses
end_hunk_0
begin_hunk_1_@_RNCNvMNtNtNtCs844E4pPEVZX_17influxdb3_catalog12object_store8versions2v3NtB4_18ObjectStoreCatalog11persist_log0Cs92BnbMq7p8c_15influxdb3_write:bb.a
  %i.cf = extractvalue { i64, i64 } %i.cb, 1
  %i.cg = getelementptr inbounds nuw i8, ptr %1, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.cg, ptr noundef nonnull align 8 dereferenceable(48) %i.c, i64 48, i1 false), !noalias !9456
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.bn, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !noalias !9456
  %i.ch = getelementptr inbounds nuw i8, ptr %1, i64 120 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ch, ptr noundef nonnull align 8 dereferenceable(32) @381, i64 32, i1 false), !noalias !9456
  %.sroa.411.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 152
  store i64 %i.ce, ptr %.sroa.411.0..sroa_idx.i.i, align 8, !alias.scope !9458, !noalias !9456
  %.sroa.512.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 160
  store i64 %i.cf, ptr %.sroa.512.0..sroa_idx.i.i, align 8, !alias.scope !9458, !noalias !9456
  %i.ci = getelementptr inbounds nuw i8, ptr %1, i64 168
  store ptr null, ptr %i.ci, align 8, !alias.scope !9458, !noalias !9456
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !9459
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !9459
  %i.cj = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.cj, ptr noundef nonnull align 8 dereferenceable(48) %i.q, i64 48, i1 false), !noalias !9456
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.r, ptr noundef nonnull align 8 dereferenceable(24) %i.bn, i64 24, i1 false), !noalias !9456
  %i.ck = getelementptr inbounds nuw i8, ptr %i.r, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ck, ptr noundef nonnull align 8 dereferenceable(48) %i.ch, i64 48, i1 false), !noalias !9456
  %i.cl = getelementptr inbounds nuw i8, ptr %i.r, i64 120
  store ptr null, ptr %i.cl, align 8, !noalias !9456
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !9456
  %i.cm = invoke { ptr, ptr } @_RNvXsc_Cs1LivM9IBWqb_12object_storeINtNtCscdodAO9FK5_5alloc4sync3ArcDNtB5_11ObjectStoreEL_EB15_8put_opts(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.bv, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bt, ptr noundef nonnull %i.by, i64 noundef %i.bz, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(128) %i.r)
          to label %bb.r unwind label %bb.q, !noalias !9457 ; 2 uses

bb.q:                                             ; preds = %bb.p
  %i.cn = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !9456
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !9456
  br label %.body46.i

bb.r:                                             ; preds = %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !9456
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !9456
  %i.co = extractvalue { ptr, ptr } %i.cm, 0
  %i.cp = extractvalue { ptr, ptr } %i.cm, 1
  %i.cq = getelementptr inbounds nuw i8, ptr %1, i64 208
  store ptr %i.co, ptr %i.cq, align 8, !noalias !9456
  %i.cr = getelementptr inbounds nuw i8, ptr %1, i64 216
  store ptr %i.cp, ptr %i.cr, align 8, !noalias !9456
  br label %bb.z

.body46.i:                                        ; preds = %bb.bi, %bb.bg, %bb.ah, %bb.ag, %bb.af, %bb.y, %bb.q
  %i.cs = phi ptr [ %i.bm, %bb.q ], [ %i.df, %bb.bi ], [ %i.df, %bb.bg ], [ %i.df, %bb.y ], [ %i.df, %bb.af ], [ %i.df, %bb.ag ], [ %i.df, %bb.ah ]
  %i.ct = phi ptr [ %i.bn, %bb.q ], [ %i.dg, %bb.bi ], [ %i.dg, %bb.bg ], [ %i.dg, %bb.y ], [ %i.dg, %bb.af ], [ %i.dg, %bb.ag ], [ %i.dg, %bb.ah ]
  %.sroa.0.1185 = phi ptr [ %.sroa.0.1179.a, %bb.q ], [ %.sroa.0.1178, %bb.bi ], [ %.sroa.0.1178, %bb.bg ], [ %.sroa.0.1178, %bb.y ], [ %.sroa.0.1178, %bb.af ], [ %.sroa.0.1178, %bb.ag ], [ %.sroa.0.1178, %bb.ah ]
  %.sroa.9.1175 = phi ptr [ %.sroa.9.1169.a, %bb.q ], [ %.sroa.9.1168, %bb.bi ], [ %.sroa.9.1168, %bb.bg ], [ %.sroa.9.1168, %bb.y ], [ %.sroa.9.1168, %bb.af ], [ %.sroa.9.1168, %bb.ag ], [ %.sroa.9.1168, %bb.ah ]
  %.sroa.10.1165 = phi i64 [ %.sroa.10.1159.a, %bb.q ], [ %.sroa.10.1158, %bb.bi ], [ %.sroa.10.1158, %bb.bg ], [ %.sroa.10.1158, %bb.y ], [ %.sroa.10.1158, %bb.af ], [ %.sroa.10.1158, %bb.ag ], [ %.sroa.10.1158, %bb.ah ]
  %.sroa.11.1155 = phi ptr [ %.sroa.11.1149.a, %bb.q ], [ %.sroa.11.1148, %bb.bi ], [ %.sroa.11.1148, %bb.bg ], [ %.sroa.11.1148, %bb.y ], [ %.sroa.11.1148, %bb.af ], [ %.sroa.11.1148, %bb.ag ], [ %.sroa.11.1148, %bb.ah ]
  %.sroa.10.1.i = phi ptr [ %.sroa.10.0.copyload.i, %bb.q ], [ %.sroa.10.0.i, %bb.bi ], [ %.sroa.10.0.i, %bb.bg ], [ %.sroa.10.0.i, %bb.y ], [ %.sroa.10.0.i, %bb.af ], [ %.sroa.10.0.i, %bb.ag ], [ %.sroa.10.0.i, %bb.ah ]
  %.sroa.9.1.i = phi i64 [ %.sroa.9.0.copyload.i, %bb.q ], [ %.sroa.9.0.i, %bb.bi ], [ %.sroa.9.0.i, %bb.bg ], [ %.sroa.9.0.i, %bb.y ], [ %.sroa.9.0.i, %bb.af ], [ %.sroa.9.0.i, %bb.ag ], [ %.sroa.9.0.i, %bb.ah ]
  %.sroa.8.1.i = phi ptr [ %.sroa.8.0.copyload.i, %bb.q ], [ %.sroa.8.0.i, %bb.bi ], [ %.sroa.8.0.i, %bb.bg ], [ %.sroa.8.0.i, %bb.y ], [ %.sroa.8.0.i, %bb.af ], [ %.sroa.8.0.i, %bb.ag ], [ %.sroa.8.0.i, %bb.ah ]
  %.sroa.0.1.i = phi ptr [ %.sroa.0.0.copyload.i, %bb.q ], [ %.sroa.0.0.i46, %bb.bi ], [ %.sroa.0.0.i46, %bb.bg ], [ %.sroa.0.0.i46, %bb.y ], [ %.sroa.0.0.i46, %bb.af ], [ %.sroa.0.0.i46, %bb.ag ], [ %.sroa.0.0.i46, %bb.ah ]
  %.pn27.i = phi { ptr, i32 } [ %i.cn, %bb.q ], [ %.pn23.ph.i, %bb.bi ], [ %.pn23.ph.i, %bb.bg ], [ %i.dd, %bb.y ], [ %i.dr, %bb.af ], [ %i.dr, %bb.ag ], [ %i.dx, %bb.ah ]
  %i.cu = getelementptr inbounds nuw i8, ptr %1, i64 72
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCs1LivM9IBWqb_12object_store7PutModeECs92BnbMq7p8c_15influxdb3_write(ptr noalias noundef align 8 dereferenceable(48) %i.cu) #31
          to label %bb.v unwind label %bb.s, !noalias !9457

bb.s:                                             ; preds = %bb.bj, %bb.bi, %bb.bh, %bb.y, %bb.u, %.body46.i, %.body.i
  %i.cv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #30, !noalias !9457
  unreachable

bb.t:                                             ; preds = %.body.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !9456
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !9456
  %i.cw = atomicrmw add ptr %i.by, i64 -1 release, align 8, !noalias !9461
  %i.cx = icmp eq i64 %i.cw, 1
  br i1 %i.cx, label %bb.u, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs1LivM9IBWqb_12object_store7payload10PutPayloadECs92BnbMq7p8c_15influxdb3_write.exit.i

bb.u:                                             ; preds = %bb.t
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcSNtNtCsuxFxh2mtOX_5bytes5bytes5BytesE9drop_slowCs1LivM9IBWqb_12object_store(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.t)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs1LivM9IBWqb_12object_store7payload10PutPayloadECs92BnbMq7p8c_15influxdb3_write.exit.i unwind label %bb.s, !noalias !9457

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs1LivM9IBWqb_12object_store7payload10PutPayloadECs92BnbMq7p8c_15influxdb3_write.exit.i: ; preds = %bb.u, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !9456
  br label %bb.v

bb.v:                                             ; preds = %bb.bf, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs1LivM9IBWqb_12object_store7payload10PutPayloadECs92BnbMq7p8c_15influxdb3_write.exit.i, %.body46.i, %bb.l
  %i.cy = phi ptr [ %i.df, %bb.bf ], [ %i.cs, %.body46.i ], [ %i.bm, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs1LivM9IBWqb_12object_store7payload10PutPayloadECs92BnbMq7p8c_15influxdb3_write.exit.i ], [ %i.bm, %bb.l ]
  %i.cz = phi ptr [ %i.dg, %bb.bf ], [ %i.ct, %.body46.i ], [ %i.bn, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs1LivM9IBWqb_12object_store7payload10PutPayloadECs92BnbMq7p8c_15influxdb3_write.exit.i ], [ %i.bn, %bb.l ]
  %.sroa.0.1184 = phi ptr [ %.sroa.0.1178, %bb.bf ], [ %.sroa.0.1185, %.body46.i ], [ %.sroa.0.1179.a, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs1LivM9IBWqb_12object_store7payload10PutPayloadECs92BnbMq7p8c_15influxdb3_write.exit.i ], [ %.sroa.0.1179.a, %bb.l ]
  %.sroa.9.1174 = phi ptr [ %.sroa.9.1168, %bb.bf ], [ %.sroa.9.1175, %.body46.i ], [ %.sroa.9.1169.a, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs1LivM9IBWqb_12object_store7payload10PutPayloadECs92BnbMq7p8c_15influxdb3_write.exit.i ], [ %.sroa.9.1169.a, %bb.l ]
  %.sroa.10.1164 = phi i64 [ %.sroa.10.1158, %bb.bf ], [ %.sroa.10.1165, %.body46.i ], [ %.sroa.10.1159.a, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs1LivM9IBWqb_12object_store7payload10PutPayloadECs92BnbMq7p8c_15influxdb3_write.exit.i ], [ %.sroa.10.1159.a, %bb.l ]
  %.sroa.11.1154 = phi ptr [ %.sroa.11.1148, %bb.bf ], [ %.sroa.11.1155, %.body46.i ], [ %.sroa.11.1149.a, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs1LivM9IBWqb_12object_store7payload10PutPayloadECs92BnbMq7p8c_15influxdb3_write.exit.i ], [ %.sroa.11.1149.a, %bb.l ]
  %.sroa.10.2.i = phi ptr [ %.sroa.10.0.i, %bb.bf ], [ %.sroa.10.1.i, %.body46.i ], [ %.sroa.10.0.copyload.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs1LivM9IBWqb_12object_store7payload10PutPayloadECs92BnbMq7p8c_15influxdb3_write.exit.i ], [ %.sroa.10.0.copyload.i, %bb.l ]
  %.sroa.9.2.i = phi i64 [ %.sroa.9.0.i, %bb.bf ], [ %.sroa.9.1.i, %.body46.i ], [ %.sroa.9.0.copyload.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs1LivM9IBWqb_12object_store7payload10PutPayloadECs92BnbMq7p8c_15influxdb3_write.exit.i ], [ %.sroa.9.0.copyload.i, %bb.l ]
  %.sroa.8.2.i = phi ptr [ %.sroa.8.0.i, %bb.bf ], [ %.sroa.8.1.i, %.body46.i ], [ %.sroa.8.0.copyload.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs1LivM9IBWqb_12object_store7payload10PutPayloadECs92BnbMq7p8c_15influxdb3_write.exit.i ], [ %.sroa.8.0.copyload.i, %bb.l ]
  %.sroa.0.2.i = phi ptr [ %.sroa.0.0.i46, %bb.bf ], [ %.sroa.0.1.i, %.body46.i ], [ %.sroa.0.0.copyload.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs1LivM9IBWqb_12object_store7payload10PutPayloadECs92BnbMq7p8c_15influxdb3_write.exit.i ], [ %.sroa.0.0.copyload.i, %bb.l ] ; 2 uses
  %.pn29.i = phi { ptr, i32 } [ %i.gj, %bb.bf ], [ %.pn27.i, %.body46.i ], [ %i.cc, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs1LivM9IBWqb_12object_store7payload10PutPayloadECs92BnbMq7p8c_15influxdb3_write.exit.i ], [ %i.bx, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !9456
  %i.da = getelementptr inbounds nuw i8, ptr %1, i64 248 ; 2 uses
  %i.db = load i8, ptr %i.da, align 8, !range !14, !noalias !9456, !noundef !12
  %i.dc = trunc nuw i8 %i.db to i1
  br i1 %i.dc, label %bb.bj, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsuxFxh2mtOX_5bytes5bytes5BytesECs92BnbMq7p8c_15influxdb3_write.exit.i

bb.w:                                             ; preds = %bb.i
  invoke void @_RNvNtNtCs4NRVxsYgnAr_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @109) #28
          to label %.noexc48 unwind label %bb.h

.noexc48:                                         ; preds = %bb.w
  unreachable

bb.x:                                             ; preds = %bb.i
  invoke void @_RNvNtNtCs4NRVxsYgnAr_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @109) #28
          to label %.noexc49 unwind label %bb.h

.noexc49:                                         ; preds = %bb.x
  unreachable

bb.y:                                             ; preds = %bb.z
  %i.dd = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !9456
  %.val35.i = load ptr, ptr %i.dh, align 8, !noalias !9456
  %i.de = getelementptr i8, ptr %1, i64 216
  %.val36.i = load ptr, ptr %i.de, align 8, !noalias !9456, !nonnull !12, !align !21, !noundef !12
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtCs1LivM9IBWqb_12object_store9PutResultNtB2q_5ErrorENtNtB4_6marker4SendEL_EEECs92BnbMq7p8c_15influxdb3_write(ptr %.val35.i, ptr nonnull %.val36.i) #31
          to label %.body46.i unwind label %bb.s, !noalias !9457

bb.z:                                             ; preds = %bb.r, %bb.j
  %i.df = phi ptr [ %i.bm, %bb.r ], [ %i.bl, %bb.j ] ; 9 uses
  %i.dg = phi ptr [ %i.bn, %bb.r ], [ %i.bk, %bb.j ] ; 8 uses
  %.sroa.0.1178 = phi ptr [ %.sroa.0.1179.a, %bb.r ], [ undef, %bb.j ] ; 13 uses
  %.sroa.9.1168 = phi ptr [ %.sroa.9.1169.a, %bb.r ], [ undef, %bb.j ] ; 13 uses
  %.sroa.10.1158 = phi i64 [ %.sroa.10.1159.a, %bb.r ], [ undef, %bb.j ] ; 13 uses
  %.sroa.11.1148 = phi ptr [ %.sroa.11.1149.a, %bb.r ], [ undef, %bb.j ] ; 13 uses
  %.sroa.10.0.i = phi ptr [ %.sroa.10.0.copyload.i, %bb.r ], [ undef, %bb.j ] ; 7 uses
  %.sroa.9.0.i = phi i64 [ %.sroa.9.0.copyload.i, %bb.r ], [ undef, %bb.j ] ; 7 uses
  %.sroa.8.0.i = phi ptr [ %.sroa.8.0.copyload.i, %bb.r ], [ undef, %bb.j ] ; 7 uses
  %.sroa.0.0.i46 = phi ptr [ %.sroa.0.0.copyload.i, %bb.r ], [ undef, %bb.j ] ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !9456
  %i.dh = getelementptr inbounds nuw i8, ptr %1, i64 208 ; 3 uses
  invoke void @_RNvXs_NtNtCs4NRVxsYgnAr_4core6future6futureINtNtB8_3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtB4_6Futurep6OutputINtNtB8_6result6ResultNtCs1LivM9IBWqb_12object_store9PutResultNtB2c_5ErrorENtNtB8_6marker4SendEL_EEB1u_4pollCs92BnbMq7p8c_15influxdb3_write(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %i.p, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.dh, ptr noalias noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.aa unwind label %bb.y, !noalias !9457

bb.aa:                                            ; preds = %bb.z
  %i.di = load i64, ptr %i.p, align 8, !range !24, !noalias !9456, !noundef !12
  %i.dj = icmp eq i64 %i.di, -2
  br i1 %i.dj, label %.thread, label %bb.ab

.thread:                                          ; preds = %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !9456
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !9456
  store i8 3, ptr %i.df, align 1, !noalias !9456
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i)
  br label %bb.bl

bb.ab:                                            ; preds = %bb.aa
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.u, ptr noundef nonnull align 8 dereferenceable(72) %i.p, i64 72, i1 false), !noalias !9456
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !9456
  %.val.i = load ptr, ptr %i.dh, align 8, !noalias !9456 ; 5 uses
  %i.dk = getelementptr i8, ptr %1, i64 216
  %.val34.i = load ptr, ptr %i.dk, align 8, !noalias !9456, !nonnull !12, !align !21, !noundef !12 ; 5 uses
  %i.dl = load ptr, ptr %.val34.i, align 8, !invariant.load !12, !noalias !9457 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.dl, null
  br i1 %.not.i.i.i, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i) ]
  invoke void %i.dl(ptr noundef nonnull %.val.i)
          to label %bb.ad unwind label %bb.af, !noalias !9457

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %i.dm = getelementptr inbounds nuw i8, ptr %.val34.i, i64 8
  %i.dn = load i64, ptr %i.dm, align 8, !range !15, !invariant.load !12, !noalias !9457 ; 2 uses
  %i.do = icmp eq i64 %i.dn, 0
  br i1 %i.do, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtCs1LivM9IBWqb_12object_store9PutResultNtB2q_5ErrorENtNtB4_6marker4SendEL_EEECs92BnbMq7p8c_15influxdb3_write.exit.i, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.dp = getelementptr inbounds nuw i8, ptr %.val34.i, i64 16
  %i.dq = load i64, ptr %i.dp, align 8, !range !16, !invariant.load !12, !noalias !9457
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i) ]
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef range(i64 1, 0) %i.dn, i64 noundef range(i64 1, 536870913) %i.dq) #29, !noalias !9457
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtCs1LivM9IBWqb_12object_store9PutResultNtB2q_5ErrorENtNtB4_6marker4SendEL_EEECs92BnbMq7p8c_15influxdb3_write.exit.i

bb.af:                                            ; preds = %bb.ac
  %i.dr = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %.val34.i, i64 8
  %i.dt = load i64, ptr %i.ds, align 8, !range !15, !invariant.load !12, !noalias !9457 ; 2 uses
  %i.du = icmp eq i64 %i.dt, 0
  br i1 %i.du, label %.body46.i, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.dv = getelementptr inbounds nuw i8, ptr %.val34.i, i64 16
  %i.dw = load i64, ptr %i.dv, align 8, !range !16, !invariant.load !12, !noalias !9457
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef range(i64 1, 0) %i.dt, i64 noundef range(i64 1, 536870913) %i.dw) #29, !noalias !9457
  br label %.body46.i

bb.ah:                                            ; preds = %bb.be, %.thread.i
  %i.dx = landingpad { ptr, i32 }
          cleanup
  br label %.body46.i

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtCs1LivM9IBWqb_12object_store9PutResultNtB2q_5ErrorENtNtB4_6marker4SendEL_EEECs92BnbMq7p8c_15influxdb3_write.exit.i: ; preds = %bb.ae, %bb.ad
  %i.dy = load i64, ptr %i.u, align 8, !range !28, !noalias !9456, !noundef !12 ; 3 uses
  switch i64 %i.dy, label %.noexc.i [
    i64 -1, label %.thread.i
    i64 -9223372036854775797, label %bb.be
  ]

.thread94.i:                                      ; preds = %_RNCNCNvMNtNtNtCs844E4pPEVZX_17influxdb3_catalog12object_store8versions2v3NtB6_18ObjectStoreCatalog17put_if_not_exists00Cs92BnbMq7p8c_15influxdb3_write.exit, %bb.au, %bb.ap, %bb.ao
  %.sroa.078.0.copyload.i = load i64, ptr %i.o, align 8, !noalias !9456 ; 2 uses
  %.sroa.579.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %.sroa.579.0.copyload.i = load i8, ptr %.sroa.579.0..sroa_idx.i, align 8, !noalias !9456 ; 2 uses
  %.sroa.680.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.o, i64 9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(63) %.sroa.6.i, ptr noundef nonnull align 1 dereferenceable(63) %.sroa.680.0..sroa_idx.i, i64 63, i1 false), !noalias !9456
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !9456
  %.pr98.i = load i64, ptr %i.u, align 8, !noalias !9456
  %.not2699.i = icmp eq i64 %.pr98.i, -1
  br i1 %.not2699.i, label %.thread.i, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultNtCs1LivM9IBWqb_12object_store9PutResultNtBZ_5ErrorEECs92BnbMq7p8c_15influxdb3_write.exit.i

.noexc.i:                                         ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtCs1LivM9IBWqb_12object_store9PutResultNtB2q_5ErrorENtNtB4_6marker4SendEL_EEECs92BnbMq7p8c_15influxdb3_write.exit.i
  %3 = icmp ne i64 %i.dy, -9223372036854775800
  call void @llvm.assume(i1 %3)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !9456
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.o, ptr noundef nonnull align 8 dereferenceable(72) %i.u, i64 72, i1 false), !noalias !9456
  %i.dz = load atomic i64, ptr @_RNvNtCs4BfJs7E7SEE_12tracing_core8metadata9MAX_LEVEL monotonic, align 8, !noalias !9456
  %i.ea = and i64 %i.dz, -2
  %switch.i = icmp eq i64 %i.ea, 4
  br i1 %switch.i, label %bb.ao, label %bb.ai

bb.ai:                                            ; preds = %.noexc.i
  %i.eb = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNCNvMNtNtNtCs844E4pPEVZX_17influxdb3_catalog12object_store8versions2v3NtB6_18ObjectStoreCatalog17put_if_not_exists010___CALLSITE, i64 16) monotonic, align 8, !noalias !9456 ; 2 uses
  %i.ec = icmp ult i8 %i.eb, 3
  br i1 %i.ec, label %bb.ak, label %bb.aj, !prof !59

bb.aj:                                            ; preds = %bb.ai
  %i.ed = invoke noundef i8 @_RNvMNtCs4BfJs7E7SEE_12tracing_core8callsiteNtB2_15DefaultCallsite8register(ptr noundef nonnull align 8 @_RNvNCNvMNtNtNtCs844E4pPEVZX_17influxdb3_catalog12object_store8versions2v3NtB6_18ObjectStoreCatalog17put_if_not_exists010___CALLSITE)
          to label %bb.ak unwind label %bb.al, !noalias !9457

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %.sroa.0.0.i48.i = phi i8 [ %i.eb, %bb.ai ], [ %i.ed, %bb.aj ] ; 2 uses
  %i.ee = icmp eq i8 %.sroa.0.0.i48.i, 0
  br i1 %i.ee, label %bb.ao, label %bb.am

bb.al:                                            ; preds = %bb.am, %bb.aj
  %i.ef = landingpad { ptr, i32 }
          cleanup
  br label %bb.bh

bb.am:                                            ; preds = %bb.ak
  %i.eg = load ptr, ptr @_RNvNCNvMNtNtNtCs844E4pPEVZX_17influxdb3_catalog12object_store8versions2v3NtB6_18ObjectStoreCatalog17put_if_not_exists010___CALLSITE, align 8, !noalias !9456, !nonnull !12, !align !21, !noundef !12
  %i.eh = invoke noundef zeroext i1 @_RNvNtCsjXURJ4PNQnW_7tracing15___macro_support12___is_enabled(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.eg, i8 noundef %.sroa.0.0.i48.i)
          to label %bb.an unwind label %bb.al, !noalias !9457

bb.an:                                            ; preds = %bb.am
  br i1 %i.eh, label %bb.az, label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.ak, %.noexc.i
  %i.ei = load atomic i8, ptr @_RNvNtCs4BfJs7E7SEE_12tracing_core10dispatcher6EXISTS monotonic, align 1, !noalias !9456
  %.not113.i = icmp eq i8 %i.ei, 0
  br i1 %.not113.i, label %bb.ap, label %.thread94.i

bb.ap:                                            ; preds = %bb.ao
  %i.ej = load atomic i64, ptr @_RNvCsbKm4k1ctY99_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8, !noalias !9456 ; 2 uses
  %i.ek = icmp ult i64 %i.ej, 6
  call void @llvm.assume(i1 %i.ek)
  %i.el = icmp samesign ugt i64 %i.ej, 1
  br i1 %i.el, label %bb.aq, label %.thread94.i

bb.aq:                                            ; preds = %bb.ap
  %i.em = load ptr, ptr @_RNvNCNvMNtNtNtCs844E4pPEVZX_17influxdb3_catalog12object_store8versions2v3NtB6_18ObjectStoreCatalog17put_if_not_exists010___CALLSITE, align 8, !noalias !9456, !nonnull !12, !align !21, !noundef !12 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !9456
  %i.en = getelementptr i8, ptr %i.em, i64 32
  %.val42.i = load ptr, ptr %i.en, align 8, !noalias !9457, !nonnull !12, !noundef !12
  %i.eo = getelementptr i8, ptr %i.em, i64 40
  %.val43.i = load i64, ptr %i.eo, align 8, !noalias !9457, !noundef !12
  store i64 2, ptr %i.i, align 8, !alias.scope !9462, !noalias !9456
  %.sroa.674.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr %.val42.i, ptr %.sroa.674.0..sroa_idx.i, align 8, !alias.scope !9462, !noalias !9456
  %.sroa.875.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store i64 %.val43.i, ptr %.sroa.875.0..sroa_idx.i, align 8, !alias.scope !9462, !noalias !9456
  %i.ep = invoke { ptr, ptr } @_RNvCsbKm4k1ctY99_3log6logger()
          to label %bb.ar unwind label %bb.as, !noalias !9457 ; 2 uses

bb.ar:                                            ; preds = %bb.aq
  %i.eq = extractvalue { ptr, ptr } %i.ep, 0      ; 2 uses
  %i.er = extractvalue { ptr, ptr } %i.ep, 1      ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 24
  %i.et = load ptr, ptr %i.es, align 8, !invariant.load !12, !noalias !9457, !nonnull !12
  %i.eu = invoke noundef zeroext i1 %i.et(ptr noundef %i.eq, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.i)
          to label %bb.at unwind label %bb.as, !noalias !9457

bb.as:                                            ; preds = %bb.ar, %bb.aq
  %i.ev = landingpad { ptr, i32 }
          cleanup
  br label %bb.ay

bb.at:                                            ; preds = %bb.ar
  br i1 %i.eu, label %bb.av, label %bb.au

bb.au:                                            ; preds = %bb.ax, %bb.at
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !9456
  br label %.thread94.i

bb.av:                                            ; preds = %bb.at
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !9456
  %i.ew = load ptr, ptr @_RNvNCNvMNtNtNtCs844E4pPEVZX_17influxdb3_catalog12object_store8versions2v3NtB6_18ObjectStoreCatalog17put_if_not_exists010___CALLSITE, align 8, !noalias !9456, !nonnull !12, !align !21, !noundef !12
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !9456
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !9456
  store ptr @110, ptr %i.f, align 8, !noalias !9456
  %i.ey = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr inttoptr (i64 61 to ptr), ptr %i.ey, align 8, !noalias !9456
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !9456
  store ptr %i.o, ptr %i.e, align 8, !noalias !9456
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !9456
  %i.ez = getelementptr inbounds nuw i8, ptr %1, i64 224
  store ptr %i.ez, ptr %i.d, align 8, !noalias !9456
  store ptr %i.f, ptr %i.g, align 8, !noalias !9456
  %i.fa = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr @24, ptr %i.fa, align 8, !noalias !9456
  %i.fb = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store ptr %i.e, ptr %i.fb, align 8, !noalias !9456
  %i.fc = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  store ptr @111, ptr %i.fc, align 8, !noalias !9456
  %i.fd = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  store ptr %i.d, ptr %i.fd, align 8, !noalias !9456
  %i.fe = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  store ptr @112, ptr %i.fe, align 8, !noalias !9456
  store i64 1, ptr %i.h, align 8, !alias.scope !9463, !noalias !9456
  %.sroa.4.0..sroa_idx.i50.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr %i.g, ptr %.sroa.4.0..sroa_idx.i50.i, align 8, !alias.scope !9463, !noalias !9456
  %.sroa.5.0..sroa_idx.i51.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store i64 3, ptr %.sroa.5.0..sroa_idx.i51.i, align 8, !alias.scope !9463, !noalias !9456
  %i.ff = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  store ptr %i.ex, ptr %i.ff, align 8, !alias.scope !9463, !noalias !9456
  invoke void @_RNvNtCsjXURJ4PNQnW_7tracing15___macro_support13___tracing_log(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.em, ptr noundef nonnull %i.eq, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.er, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.h)
          to label %bb.ax unwind label %bb.aw, !noalias !9457

bb.aw:                                            ; preds = %bb.av
  %i.fg = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !9456
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !9456
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !9456
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !9456
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !9456
  br label %bb.ay

bb.ax:                                            ; preds = %bb.av
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !9456
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !9456
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !9456
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !9456
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !9456
  br label %bb.au

bb.ay:                                            ; preds = %bb.aw, %bb.as
  %.pn12.pn.pn.pn.pn.i = phi { ptr, i32 } [ %i.fg, %bb.aw ], [ %i.ev, %bb.as ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !9456
  br label %bb.bh

bb.az:                                            ; preds = %bb.an
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !9456
  %i.fh = load ptr, ptr @_RNvNCNvMNtNtNtCs844E4pPEVZX_17influxdb3_catalog12object_store8versions2v3NtB6_18ObjectStoreCatalog17put_if_not_exists010___CALLSITE, align 8, !noalias !9456, !nonnull !12, !align !21, !noundef !12 ; 2 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !9456
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !9456
  store ptr @110, ptr %i.l, align 8, !noalias !9456
  %i.fj = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store ptr inttoptr (i64 61 to ptr), ptr %i.fj, align 8, !noalias !9456
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !9456
  store ptr %i.o, ptr %i.k, align 8, !noalias !9456
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !9456
  %i.fk = getelementptr inbounds nuw i8, ptr %1, i64 224
  store ptr %i.fk, ptr %i.j, align 8, !noalias !9456
  store ptr %i.l, ptr %i.m, align 8, !noalias !9456
  %i.fl = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store ptr @24, ptr %i.fl, align 8, !noalias !9456
  %i.fm = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  store ptr %i.k, ptr %i.fm, align 8, !noalias !9456
  %i.fn = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  store ptr @111, ptr %i.fn, align 8, !noalias !9456
  %i.fo = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  store ptr %i.j, ptr %i.fo, align 8, !noalias !9456
  %i.fp = getelementptr inbounds nuw i8, ptr %i.m, i64 40
  store ptr @112, ptr %i.fp, align 8, !noalias !9456
  store i64 1, ptr %i.n, align 8, !noalias !9456
  %.sroa.867.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store ptr %i.m, ptr %.sroa.867.0..sroa_idx.i, align 8, !noalias !9456
  %.sroa.968.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  store i64 3, ptr %.sroa.968.0..sroa_idx.i, align 8, !noalias !9456
  %.sroa.1069.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  store ptr %i.fi, ptr %.sroa.1069.0..sroa_idx.i, align 8, !noalias !9456
  invoke void @_RNvMNtCs4BfJs7E7SEE_12tracing_core5eventNtB2_5Event8dispatch(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.fh, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.n)
          to label %.noexc68 unwind label %bb.bd

.noexc68:                                         ; preds = %bb.az
  %i.fq = load atomic i8, ptr @_RNvNtCs4BfJs7E7SEE_12tracing_core10dispatcher6EXISTS monotonic, align 1, !noalias !9464
  %i.fr = icmp eq i8 %i.fq, 0
  br i1 %i.fr, label %bb.ba, label %_RNCNCNvMNtNtNtCs844E4pPEVZX_17influxdb3_catalog12object_store8versions2v3NtB6_18ObjectStoreCatalog17put_if_not_exists00Cs92BnbMq7p8c_15influxdb3_write.exit

bb.ba:                                            ; preds = %.noexc68
  %i.fs = load atomic i64, ptr @_RNvCsbKm4k1ctY99_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8, !noalias !9464 ; 2 uses
  %i.ft = icmp ult i64 %i.fs, 6
  call void @llvm.assume(i1 %i.ft), !noalias !9457
  %i.fu = icmp samesign ugt i64 %i.fs, 1
  br i1 %i.fu, label %bb.bb, label %_RNCNCNvMNtNtNtCs844E4pPEVZX_17influxdb3_catalog12object_store8versions2v3NtB6_18ObjectStoreCatalog17put_if_not_exists00Cs92BnbMq7p8c_15influxdb3_write.exit

bb.bb:                                            ; preds = %bb.ba
  %i.fv = load ptr, ptr @_RNvNCNvMNtNtNtCs844E4pPEVZX_17influxdb3_catalog12object_store8versions2v3NtB6_18ObjectStoreCatalog17put_if_not_exists010___CALLSITE, align 8, !noalias !9464, !nonnull !12, !align !21, !noundef !12 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !9464
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fv, i64 32
  %i.fx = load ptr, ptr %i.fw, align 8, !noalias !9457, !nonnull !12, !noundef !12
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fv, i64 40
  %i.fz = load i64, ptr %i.fy, align 8, !noalias !9457, !noundef !12
  store i64 2, ptr %i.a, align 8, !noalias !9464
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.fx, ptr %.sroa.3.0..sroa_idx.i, align 8, !noalias !9464
  %.sroa.5.0..sroa_idx.i67 = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.fz, ptr %.sroa.5.0..sroa_idx.i67, align 8, !noalias !9464
  %i.ga = invoke { ptr, ptr } @_RNvCsbKm4k1ctY99_3log6logger()
          to label %.noexc69 unwind label %bb.bd  ; 2 uses

.noexc69:                                         ; preds = %bb.bb
  %i.gb = extractvalue { ptr, ptr } %i.ga, 0      ; 2 uses
  %i.gc = extractvalue { ptr, ptr } %i.ga, 1      ; 2 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gc, i64 24
  %i.ge = load ptr, ptr %i.gd, align 8, !invariant.load !12, !noalias !9457, !nonnull !12
  %i.gf = invoke noundef zeroext i1 %i.ge(ptr noundef %i.gb, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.a)
          to label %.noexc70 unwind label %bb.bd, !inline_history !9441

.noexc70:                                         ; preds = %.noexc69
  br i1 %i.gf, label %bb.bc, label %.noexc71

bb.bc:                                            ; preds = %.noexc70
  invoke void @_RNvNtCsjXURJ4PNQnW_7tracing15___macro_support13___tracing_log(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.fv, ptr noundef nonnull %i.gb, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.gc, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.n)
          to label %.noexc71 unwind label %bb.bd

.noexc71:                                         ; preds = %bb.bc, %.noexc70
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !9464
  br label %_RNCNCNvMNtNtNtCs844E4pPEVZX_17influxdb3_catalog12object_store8versions2v3NtB6_18ObjectStoreCatalog17put_if_not_exists00Cs92BnbMq7p8c_15influxdb3_write.exit

bb.bd:                                            ; preds = %bb.bc, %.noexc69, %bb.bb, %bb.az
  %i.gg = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !9456
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !9456
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !9456
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !9456
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !9456
  br label %bb.bh

_RNCNCNvMNtNtNtCs844E4pPEVZX_17influxdb3_catalog12object_store8versions2v3NtB6_18ObjectStoreCatalog17put_if_not_exists00Cs92BnbMq7p8c_15influxdb3_write.exit: ; preds = %.noexc71, %bb.ba, %.noexc68
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !9456
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !9456
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !9456
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !9456
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !9456
  br label %.thread94.i

.thread.i:                                        ; preds = %.thread94.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtCs1LivM9IBWqb_12object_store9PutResultNtB2q_5ErrorENtNtB4_6marker4SendEL_EEECs92BnbMq7p8c_15influxdb3_write.exit.i
  %.sroa.03.088.i = phi i64 [ %.sroa.078.0.copyload.i, %.thread94.i ], [ %i.dy, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtCs1LivM9IBWqb_12object_store9PutResultNtB2q_5ErrorENtNtB4_6marker4SendEL_EEECs92BnbMq7p8c_15influxdb3_write.exit.i ]
  %.sroa.4.086.i = phi i8 [ %.sroa.579.0.copyload.i, %.thread94.i ], [ 0, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtCs1LivM9IBWqb_12object_store9PutResultNtB2q_5ErrorENtNtB4_6marker4SendEL_EEECs92BnbMq7p8c_15influxdb3_write.exit.i ]
  %i.gh = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCs1LivM9IBWqb_12object_store9PutResultECs92BnbMq7p8c_15influxdb3_write(ptr noalias noundef align 8 dereferenceable(48) %i.gh)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultNtCs1LivM9IBWqb_12object_store9PutResultNtBZ_5ErrorEECs92BnbMq7p8c_15influxdb3_write.exit.i unwind label %bb.ah, !noalias !9457

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultNtCs1LivM9IBWqb_12object_store9PutResultNtBZ_5ErrorEECs92BnbMq7p8c_15influxdb3_write.exit.i: ; preds = %bb.be, %.thread.i, %.thread94.i
  %.sroa.03.087.i = phi i64 [ %.sroa.078.0.copyload.i, %.thread94.i ], [ -1, %bb.be ], [ %.sroa.03.088.i, %.thread.i ] ; 3 uses
  %.sroa.4.085.i = phi i8 [ %.sroa.579.0.copyload.i, %.thread94.i ], [ 1, %bb.be ], [ %.sroa.4.086.i, %.thread.i ] ; 2 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %1, i64 72
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCs1LivM9IBWqb_12object_store7PutModeECs92BnbMq7p8c_15influxdb3_write(ptr noalias noundef align 8 dereferenceable(48) %i.gi)
          to label %bb.bk unwind label %bb.bf, !noalias !9457

bb.be:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtCs1LivM9IBWqb_12object_store9PutResultNtB2q_5ErrorENtNtB4_6marker4SendEL_EEECs92BnbMq7p8c_15influxdb3_write.exit.i
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCs1LivM9IBWqb_12object_store5ErrorECs92BnbMq7p8c_15influxdb3_write(ptr noalias noundef align 8 dereferenceable(72) %i.u)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultNtCs1LivM9IBWqb_12object_store9PutResultNtBZ_5ErrorEECs92BnbMq7p8c_15influxdb3_write.exit.i unwind label %bb.ah, !noalias !9457

bb.bf:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultNtCs1LivM9IBWqb_12object_store9PutResultNtBZ_5ErrorEECs92BnbMq7p8c_15influxdb3_write.exit.i
  %i.gj = landingpad { ptr, i32 }
          cleanup
  br label %bb.v

bb.bg:                                            ; preds = %bb.bh
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !9456
  %i.gk = load i64, ptr %i.u, align 8, !range !28, !noalias !9456, !noundef !12
  %.not25.i = icmp eq i64 %i.gk, -1
  br i1 %.not25.i, label %bb.bi, label %.body46.i

bb.bh:                                            ; preds = %bb.bd, %bb.ay, %bb.al
  %.pn23.ph.i = phi { ptr, i32 } [ %i.gg, %bb.bd ], [ %i.ef, %bb.al ], [ %.pn12.pn.pn.pn.pn.i, %bb.ay ] ; 2 uses
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCs1LivM9IBWqb_12object_store5ErrorECs92BnbMq7p8c_15influxdb3_write(ptr noalias noundef align 8 dereferenceable(72) %i.o) #31
          to label %bb.bg unwind label %bb.s, !noalias !9457

bb.bi:                                            ; preds = %bb.bg
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultNtCs1LivM9IBWqb_12object_store9PutResultNtBZ_5ErrorEECs92BnbMq7p8c_15influxdb3_write(ptr noalias noundef align 8 dereferenceable(72) %i.u) #31
          to label %.body46.i unwind label %bb.s, !noalias !9457

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsuxFxh2mtOX_5bytes5bytes5BytesECs92BnbMq7p8c_15influxdb3_write.exit.i: ; preds = %bb.bj, %bb.v
  store i8 0, ptr %i.da, align 8, !noalias !9456
  store i8 2, ptr %i.cy, align 1, !noalias !9456
  br label %.body

bb.bj:                                            ; preds = %bb.v
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.2.i) ]
  %i.gl = getelementptr inbounds nuw i8, ptr %.sroa.0.2.i, i64 32
  %i.gm = load ptr, ptr %i.gl, align 8, !noalias !9465, !nonnull !12, !noundef !12
  invoke void %i.gm(ptr noundef %.sroa.10.2.i, ptr noundef %.sroa.8.2.i, i64 noundef %.sroa.9.2.i)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsuxFxh2mtOX_5bytes5bytes5BytesECs92BnbMq7p8c_15influxdb3_write.exit.i unwind label %bb.s, !noalias !9457, !inline_history !5

bb.bk:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultNtCs1LivM9IBWqb_12object_store9PutResultNtBZ_5ErrorEECs92BnbMq7p8c_15influxdb3_write.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !9456
  %i.gn = getelementptr inbounds nuw i8, ptr %1, i64 248
  store i8 0, ptr %i.gn, align 8, !noalias !9456
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(63) %.sroa.999, ptr noundef nonnull align 1 dereferenceable(63) %.sroa.6.i, i64 63, i1 false), !noalias !9466
  store i8 1, ptr %i.df, align 1, !noalias !9456
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i)
  %i.go = icmp eq i64 %.sroa.03.087.i, -2
  br i1 %i.go, label %bb.bl, label %bb.bm

common.ret:                                       ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog12object_store8versions2v315CatalogFilePathECs92BnbMq7p8c_15influxdb3_write.exit65, %bb.bl
  %storemerge = phi i8 [ 1, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog12object_store8versions2v315CatalogFilePathECs92BnbMq7p8c_15influxdb3_write.exit65 ], [ 3, %bb.bl ]
  store i8 %storemerge, ptr %i.al, align 1
  ret void

bb.bl:                                            ; preds = %.thread, %bb.bk
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.999)
  store i64 -2, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak)
  br label %common.ret

bb.bm:                                            ; preds = %bb.bk
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(63) %.sroa.6103, ptr noundef nonnull align 1 dereferenceable(63) %.sroa.999, i64 63, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.999)
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCNvMNtNtNtCs844E4pPEVZX_17influxdb3_catalog12object_store8versions2v3NtBG_18ObjectStoreCatalog17put_if_not_exists0ECs92BnbMq7p8c_15influxdb3_write(ptr noundef nonnull align 8 %i.dg)
          to label %bb.bn unwind label %bb.bu

bb.bn:                                            ; preds = %bb.bm
  %.not.i50 = icmp eq i64 %.sroa.03.087.i, -1
  br i1 %.not.i50, label %bb.bo, label %bb.cn

bb.bo:                                            ; preds = %bb.bn
  store i8 %.sroa.4.085.i, ptr %i.ak, align 1
  %i.gp = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.gq = invoke { i64, i32 } @_RNvMNtCs2AWtUsOyxgP_3std4timeNtB2_7Instant7elapsed(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.gp)
          to label %.noexc unwind label %bb.bu    ; 2 uses

.noexc:                                           ; preds = %bb.bo
  %i.gr = extractvalue { i64, i32 } %i.gq, 0      ; 2 uses
  %i.gs = extractvalue { i64, i32 } %i.gq, 1      ; 2 uses
  %i.gt = load atomic i64, ptr @_RNvNtCs4BfJs7E7SEE_12tracing_core8metadata9MAX_LEVEL monotonic, align 8
  %.off = add i64 %i.gt, -2
  %switch = icmp ult i64 %.off, 4
  br i1 %switch, label %.thread135, label %bb.bp

bb.bp:                                            ; preds = %.noexc
  %i.gu = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNCNvMNtNtNtCs844E4pPEVZX_17influxdb3_catalog12object_store8versions2v3NtB6_18ObjectStoreCatalog11persist_log010___CALLSITE, i64 16) monotonic, align 8 ; 2 uses
  %i.gv = icmp ult i8 %i.gu, 3
  br i1 %i.gv, label %bb.br, label %bb.bq, !prof !59

bb.bq:                                            ; preds = %bb.bp
  %i.gw = invoke noundef i8 @_RNvMNtCs4BfJs7E7SEE_12tracing_core8callsiteNtB2_15DefaultCallsite8register(ptr noundef nonnull align 8 @_RNvNCNvMNtNtNtCs844E4pPEVZX_17influxdb3_catalog12object_store8versions2v3NtB6_18ObjectStoreCatalog11persist_log010___CALLSITE)
          to label %bb.br unwind label %bb.bu

bb.br:                                            ; preds = %bb.bq, %bb.bp
  %.sroa.0.0.i51 = phi i8 [ %i.gu, %bb.bp ], [ %i.gw, %bb.bq ] ; 2 uses
  %i.gx = icmp eq i8 %.sroa.0.0.i51, 0
  br i1 %i.gx, label %.thread135, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.gy = load ptr, ptr @_RNvNCNvMNtNtNtCs844E4pPEVZX_17influxdb3_catalog12object_store8versions2v3NtB6_18ObjectStoreCatalog11persist_log010___CALLSITE, align 8, !nonnull !12, !align !21, !noundef !12
  %i.gz = invoke noundef zeroext i1 @_RNvNtCsjXURJ4PNQnW_7tracing15___macro_support12___is_enabled(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.gy, i8 noundef %.sroa.0.0.i51)
          to label %bb.bt unwind label %bb.bu

bb.bt:                                            ; preds = %bb.bs
  br i1 %i.gz, label %bb.ci, label %.thread135

bb.bu:                                            ; preds = %bb.bm, %bb.bs, %bb.bq, %bb.bo
  %i.ha = landingpad { ptr, i32 }
          cleanup
  br label %bb.cm

.thread135:                                       ; preds = %.noexc, %bb.br, %bb.bt
  %i.hb = load atomic i8, ptr @_RNvNtCs4BfJs7E7SEE_12tracing_core10dispatcher6EXISTS monotonic, align 1
  %.not = icmp eq i8 %i.hb, 0
  br i1 %.not, label %bb.bv, label %bb.cf

bb.bv:                                            ; preds = %.thread135
  %i.hc = load atomic i64, ptr @_RNvCsbKm4k1ctY99_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8 ; 2 uses
  %i.hd = icmp ult i64 %i.hc, 6
  call void @llvm.assume(i1 %i.hd)
  %i.he = icmp samesign ugt i64 %i.hc, 3
  br i1 %i.he, label %bb.bw, label %bb.cf

bb.bw:                                            ; preds = %bb.bv
  %i.hf = load ptr, ptr @_RNvNCNvMNtNtNtCs844E4pPEVZX_17influxdb3_catalog12object_store8versions2v3NtB6_18ObjectStoreCatalog11persist_log010___CALLSITE, align 8, !nonnull !12, !align !21, !noundef !12 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac)
  %i.hg = getelementptr i8, ptr %i.hf, i64 32
  %.val36 = load ptr, ptr %i.hg, align 8, !nonnull !12, !noundef !12
  %i.hh = getelementptr i8, ptr %i.hf, i64 40
  %.val37 = load i64, ptr %i.hh, align 8, !noundef !12
  store i64 4, ptr %i.ac, align 8, !alias.scope !9467
  %.sroa.6122.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  store ptr %.val36, ptr %.sroa.6122.0..sroa_idx, align 8, !alias.scope !9467
  %.sroa.8123.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  store i64 %.val37, ptr %.sroa.8123.0..sroa_idx, align 8, !alias.scope !9467
  %i.hi = invoke { ptr, ptr } @_RNvCsbKm4k1ctY99_3log6logger()
          to label %bb.bx unwind label %bb.by     ; 2 uses

bb.bx:                                            ; preds = %bb.bw
  %i.hj = extractvalue { ptr, ptr } %i.hi, 0      ; 2 uses
  %i.hk = extractvalue { ptr, ptr } %i.hi, 1      ; 2 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hk, i64 24
  %i.hm = load ptr, ptr %i.hl, align 8, !invariant.load !12, !nonnull !12
  %i.hn = invoke noundef zeroext i1 %i.hm(ptr noundef %i.hj, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ac)
          to label %bb.bz unwind label %bb.by

bb.by:                                            ; preds = %bb.bw, %bb.bx
  %i.ho = landingpad { ptr, i32 }
          cleanup
  br label %bb.ce

bb.bz:                                            ; preds = %bb.bx
  br i1 %i.hn, label %bb.cb, label %bb.ca

bb.ca:                                            ; preds = %bb.bz, %bb.cd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac)
  br label %bb.cf

bb.cb:                                            ; preds = %bb.bz
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab)
  %i.hp = load ptr, ptr @_RNvNCNvMNtNtNtCs844E4pPEVZX_17influxdb3_catalog12object_store8versions2v3NtB6_18ObjectStoreCatalog11persist_log010___CALLSITE, align 8, !nonnull !12, !align !21, !noundef !12
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hp, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z)
  store ptr @99, ptr %i.z, align 8
  %i.hr = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  store ptr inttoptr (i64 49 to ptr), ptr %i.hr, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y)
  %i.hs = getelementptr inbounds nuw i8, ptr %1, i64 264
  %.val41 = load i64, ptr %i.hs, align 8, !noundef !12
  store i64 %.val41, ptr %i.y, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  %i.ht = getelementptr inbounds nuw i8, ptr %1, i64 272
  store ptr %i.ht, ptr %i.x, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  %i.hu = zext i64 %i.gr to i128
  %i.hv = mul nuw nsw i128 %i.hu, 1000
  %i.hw = udiv i32 %i.gs, 1000000
  %i.hx = zext nneg i32 %i.hw to i128
  %i.hy = add nuw nsw i128 %i.hv, %i.hx
  store i128 %i.hy, ptr %i.w, align 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  store ptr %i.ak, ptr %i.v, align 8
  store ptr %i.z, ptr %i.aa, align 8
  %i.hz = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  store ptr @24, ptr %i.hz, align 8
  %i.ia = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  store ptr %i.y, ptr %i.ia, align 8
  %i.ib = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  store ptr @100, ptr %i.ib, align 8
  %i.ic = getelementptr inbounds nuw i8, ptr %i.aa, i64 32
  store ptr %i.x, ptr %i.ic, align 8
  %i.id = getelementptr inbounds nuw i8, ptr %i.aa, i64 40
  store ptr @101, ptr %i.id, align 8
  %i.ie = getelementptr inbounds nuw i8, ptr %i.aa, i64 48
  store ptr %i.w, ptr %i.ie, align 8
  %i.if = getelementptr inbounds nuw i8, ptr %i.aa, i64 56
  store ptr @102, ptr %i.if, align 8
  %i.ig = getelementptr inbounds nuw i8, ptr %i.aa, i64 64
  store ptr %i.v, ptr %i.ig, align 8
  %i.ih = getelementptr inbounds nuw i8, ptr %i.aa, i64 72
  store ptr @103, ptr %i.ih, align 8
  store i64 1, ptr %i.ab, align 8, !alias.scope !9468
  %.sroa.4.0..sroa_idx.i53 = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
end_hunk_1
