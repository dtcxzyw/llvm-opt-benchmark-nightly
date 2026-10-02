Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/delta-rs/original/deltalake_core-1fa7f9344ca2d0c9.deltalake_core.c7669c1bd09fee8-cgu.14?download=true
inline.NumInlined: 8054
inline.NumDeleted: 3226
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_RNCNvMs0_NtNtCs14kWLkQVSKO_14deltalake_core10operations6vacuumNtB7_13VacuumBuilder18create_vacuum_plan0Bb_:bb.a

bb.im:                                            ; preds = %bb.ik
  br i1 %i.adi, label %bb.in, label %bb.iq

bb.in:                                            ; preds = %bb.im
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cj)
  %i.adk = load ptr, ptr @_RNvNCNvMs0_NtNtCs14kWLkQVSKO_14deltalake_core10operations6vacuumNtB9_13VacuumBuilder18create_vacuum_plan0s_10___CALLSITE, align 8, !nonnull !29, !align !39, !noundef !29
  %i.adl = getelementptr inbounds nuw i8, ptr %i.adk, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ci)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ch)
  %i.adm = getelementptr inbounds nuw i8, ptr %1, i64 240
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cg)
  store ptr %i.adm, ptr %i.cg, align 8
  %.sroa.5620.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cg, i64 8
  store ptr @_RNvXse_NtNtNtCsbvkFyIu7lgC_4core3fmt3num3impxNtB9_7Display3fmt, ptr %.sroa.5620.0..sroa_idx, align 8
  %i.adn = getelementptr inbounds nuw i8, ptr %i.cg, i64 16
  store ptr %i.cq, ptr %i.adn, align 8
  %.sroa.5622.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cg, i64 24
  store ptr @_RNvXsq_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmtCs14kWLkQVSKO_14deltalake_core, ptr %.sroa.5622.0..sroa_idx, align 8
  store ptr @195, ptr %i.ch, align 8
  %i.ado = getelementptr inbounds nuw i8, ptr %i.ch, i64 8
  store ptr %i.cg, ptr %i.ado, align 8
  store ptr %i.ch, ptr %i.ci, align 8
  %i.adp = getelementptr inbounds nuw i8, ptr %i.ci, i64 8
  store ptr @156, ptr %i.adp, align 8
  store i64 1, ptr %i.cj, align 8, !alias.scope !7843, !noalias !7844
  %.sroa.4.0..sroa_idx.i311 = getelementptr inbounds nuw i8, ptr %i.cj, i64 8
  store ptr %i.ci, ptr %.sroa.4.0..sroa_idx.i311, align 8, !alias.scope !7843, !noalias !7844
  %.sroa.5.0..sroa_idx.i312 = getelementptr inbounds nuw i8, ptr %i.cj, i64 16
  store i64 1, ptr %.sroa.5.0..sroa_idx.i312, align 8, !alias.scope !7843, !noalias !7844
  %i.adq = getelementptr inbounds nuw i8, ptr %i.cj, i64 24
  store ptr %i.adl, ptr %i.adq, align 8, !alias.scope !7843, !noalias !7844
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ah, ptr noundef nonnull align 8 dereferenceable(24) %i.ck, i64 24, i1 false)
  invoke void @_RNvNtCscTw95cGIolY_7tracing15___macro_support13___tracing_log(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.ada, ptr noundef nonnull %i.ade, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.adf, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.ah, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.cj)
          to label %bb.ip unwind label %bb.io

bb.io:                                            ; preds = %bb.in
  %i.adr = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cg)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ch)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ci)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cj)
  br label %bb.jd

bb.ip:                                            ; preds = %bb.in
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cg)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ch)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ci)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cj)
  br label %bb.iq

bb.iq:                                            ; preds = %bb.ip, %bb.im, %bb.ih, %bb.ig, %bb.iw
  %i.ads = getelementptr inbounds nuw i8, ptr %1, i64 80
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cf)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cf, ptr noundef nonnull align 8 dereferenceable(24) %i.cq, i64 24, i1 false)
  invoke void @_RINvXs8_NtCs3gpiEk3WpjL_9hashbrown3setINtB6_7HashSetNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateEINtNtNtNtCsbvkFyIu7lgC_4core4iter6traits7collect6ExtendBO_E6extendINtNtBS_3vec3VecBO_EECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.ads, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.cf)
          to label %_RINvXs9_NtNtNtCs2pqxYH9ZEk8_3std11collections4hash3setINtB6_7HashSetNtNtCs6Po7BT7Nknu_5alloc6string6StringEINtNtNtNtCsbvkFyIu7lgC_4core4iter6traits7collect6ExtendB14_E6extendINtNtB18_3vec3VecB14_EECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.jb

bb.ir:                                            ; preds = %bb.if
  call void @llvm.lifetime.start.p0(ptr nonnull %i.co)
  %i.adt = load ptr, ptr @_RNvNCNvMs0_NtNtCs14kWLkQVSKO_14deltalake_core10operations6vacuumNtB9_13VacuumBuilder18create_vacuum_plan0s_10___CALLSITE, align 8, !nonnull !29, !align !39, !noundef !29 ; 2 uses
  %i.adu = getelementptr inbounds nuw i8, ptr %i.adt, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cn)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cm)
  %i.adv = getelementptr inbounds nuw i8, ptr %1, i64 240
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cl)
  store ptr %i.adv, ptr %i.cl, align 8
  %.sroa.5610.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cl, i64 8
  store ptr @_RNvXse_NtNtNtCsbvkFyIu7lgC_4core3fmt3num3impxNtB9_7Display3fmt, ptr %.sroa.5610.0..sroa_idx, align 8
  %i.adw = getelementptr inbounds nuw i8, ptr %i.cl, i64 16
  store ptr %i.cq, ptr %i.adw, align 8
  %.sroa.5612.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cl, i64 24
  store ptr @_RNvXsq_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmtCs14kWLkQVSKO_14deltalake_core, ptr %.sroa.5612.0..sroa_idx, align 8
  store ptr @195, ptr %i.cm, align 8
  %i.adx = getelementptr inbounds nuw i8, ptr %i.cm, i64 8
  store ptr %i.cl, ptr %i.adx, align 8
  store ptr %i.cm, ptr %i.cn, align 8
  %i.ady = getelementptr inbounds nuw i8, ptr %i.cn, i64 8
  store ptr @156, ptr %i.ady, align 8
  store i64 1, ptr %i.co, align 8
  %.sroa.6606.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.co, i64 8
  store ptr %i.cn, ptr %.sroa.6606.0..sroa_idx, align 8
  %.sroa.7607.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.co, i64 16
  store i64 1, ptr %.sroa.7607.0..sroa_idx, align 8
  %.sroa.8608.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.co, i64 24
  store ptr %i.adu, ptr %.sroa.8608.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  invoke void @_RNvMNtCs2y6mmZ7bjoM_12tracing_core5eventNtB2_5Event8dispatch(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.adt, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.co)
          to label %.noexc320 unwind label %bb.iv

.noexc320:                                        ; preds = %bb.ir
  %i.adz = load atomic i8, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher6EXISTS monotonic, align 1, !noalias !7845
  %i.aea = icmp eq i8 %i.adz, 0
  br i1 %i.aea, label %bb.is, label %bb.iw

bb.is:                                            ; preds = %.noexc320
  %i.aeb = load atomic i64, ptr @_RNvCsaljjC7ZTCQu_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8, !noalias !7845 ; 2 uses
  %i.aec = icmp ult i64 %i.aeb, 6
  call void @llvm.assume(i1 %i.aec)
  %i.aed = icmp samesign ugt i64 %i.aeb, 3
  br i1 %i.aed, label %bb.it, label %bb.iw

bb.it:                                            ; preds = %bb.is
  %i.aee = load ptr, ptr @_RNvNCNvMs0_NtNtCs14kWLkQVSKO_14deltalake_core10operations6vacuumNtB9_13VacuumBuilder18create_vacuum_plan0s_10___CALLSITE, align 8, !noalias !7845, !nonnull !29, !align !39, !noundef !29 ; 3 uses
  %i.aef = getelementptr inbounds nuw i8, ptr %i.aee, i64 32
  %i.aeg = load ptr, ptr %i.aef, align 8, !nonnull !29, !noundef !29
  %i.aeh = getelementptr inbounds nuw i8, ptr %i.aee, i64 40
  %i.aei = load i64, ptr %i.aeh, align 8, !noundef !29
  store i64 4, ptr %i.f, align 8, !noalias !7845
  %.sroa.3.0..sroa_idx.i318 = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %i.aeg, ptr %.sroa.3.0..sroa_idx.i318, align 8, !noalias !7845
  %.sroa.5.0..sroa_idx.i319 = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store i64 %i.aei, ptr %.sroa.5.0..sroa_idx.i319, align 8, !noalias !7845
  %i.aej = invoke { ptr, ptr } @_RNvCsaljjC7ZTCQu_3log6logger()
          to label %.noexc321 unwind label %bb.iv ; 2 uses

.noexc321:                                        ; preds = %bb.it
  %i.aek = extractvalue { ptr, ptr } %i.aej, 0    ; 2 uses
  %i.ael = extractvalue { ptr, ptr } %i.aej, 1    ; 2 uses
  %i.aem = getelementptr inbounds nuw i8, ptr %i.ael, i64 24
  %i.aen = load ptr, ptr %i.aem, align 8, !invariant.load !29, !nonnull !29
  %i.aeo = invoke noundef zeroext i1 %i.aen(ptr noundef %i.aek, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.f) #55
          to label %.noexc322 unwind label %bb.iv, !inline_history !7624

.noexc322:                                        ; preds = %.noexc321
  br i1 %i.aeo, label %bb.iu, label %bb.iw

bb.iu:                                            ; preds = %.noexc322
  invoke void @_RNvNtCscTw95cGIolY_7tracing15___macro_support13___tracing_log(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.aee, ptr noundef nonnull %i.aek, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ael, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.f, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.co)
          to label %bb.iw unwind label %bb.iv

bb.iv:                                            ; preds = %bb.iu, %.noexc321, %bb.it, %bb.ir
  %i.aep = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.co)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cl)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cm)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cn)
  br label %bb.jd

bb.iw:                                            ; preds = %.noexc322, %bb.is, %.noexc320, %bb.iu
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.co)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cl)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cm)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cn)
  br label %bb.iq

_RINvXs9_NtNtNtCs2pqxYH9ZEk8_3std11collections4hash3setINtB6_7HashSetNtNtCs6Po7BT7Nknu_5alloc6string6StringEINtNtNtNtCsbvkFyIu7lgC_4core4iter6traits7collect6ExtendB14_E6extendINtNtB18_3vec3VecB14_EECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.iq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cf)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cq)
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 552
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !alias.scope !7741
  %.phi.trans.insert1173 = getelementptr inbounds nuw i8, ptr %1, i64 536
  %.pre1174 = load ptr, ptr %.phi.trans.insert1173, align 8, !alias.scope !7741
  br label %bb.bu

bb.ix:                                            ; preds = %.body, %bb.hs, %bb.jc
  %.pn60.pn = phi { ptr, i32 } [ %.pn57.pn, %bb.jc ], [ %i.abu, %bb.hs ], [ %eh.lpad-body, %.body ]
  %i.aeq = getelementptr inbounds nuw i8, ptr %1, i64 528
  invoke void @_RNvXse_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterxENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.aeq)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterxEECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.bh

bb.iy:                                            ; preds = %bb.bu
  %i.aer = getelementptr inbounds nuw i8, ptr %1, i64 528
  invoke void @_RNvXse_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterxENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.aer)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterxEECs14kWLkQVSKO_14deltalake_core.exit326 unwind label %bb.iz

bb.iz:                                            ; preds = %bb.je, %bb.iy
  %i.aes = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterxEECs14kWLkQVSKO_14deltalake_core.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterxEECs14kWLkQVSKO_14deltalake_core.exit326: ; preds = %bb.iy
  %i.aet = getelementptr inbounds nuw i8, ptr %1, i64 232 ; 2 uses
  store i8 0, ptr %i.aet, align 8
  %i.aeu = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.aev = getelementptr inbounds nuw i8, ptr %1, i64 80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.aeu, ptr noundef nonnull align 8 dereferenceable(48) %i.aev, i64 48, i1 false)
  %i.aew = getelementptr inbounds nuw i8, ptr %1, i64 496
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot13EagerSnapshotEBM_(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.aew)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs14kWLkQVSKO_14deltalake_core5table5state15DeltaTableStateEBM_.exit328 unwind label %bb.ja

bb.ja:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterxEECs14kWLkQVSKO_14deltalake_core.exit330, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterxEECs14kWLkQVSKO_14deltalake_core.exit326
  %i.aex = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs14kWLkQVSKO_14deltalake_core5table5state15DeltaTableStateEBM_.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs14kWLkQVSKO_14deltalake_core5table5state15DeltaTableStateEBM_.exit328: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterxEECs14kWLkQVSKO_14deltalake_core.exit326
  store i8 0, ptr %i.aet, align 8
  %i.aey = getelementptr inbounds nuw i8, ptr %1, i64 229
  store i8 0, ptr %i.aey, align 1
  br label %.thread1238

.thread1238:                                      ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs14kWLkQVSKO_14deltalake_core5table5state15DeltaTableStateEBM_.exit328, %_RNvMNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3setINtB2_7HashSetNtNtCs6Po7BT7Nknu_5alloc6string6StringE3newCs14kWLkQVSKO_14deltalake_core.exit
  %i.aez = getelementptr inbounds nuw i8, ptr %1, i64 224
  store i32 0, ptr %i.aez, align 8
  %3 = getelementptr inbounds nuw i8, ptr %1, i64 136
  %4 = load ptr, ptr %3, align 8, !nonnull !29, !align !39, !noundef !29
  %i.afa = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.afb = load i64, ptr %i.afa, align 8, !noundef !29
  %i.afc = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.afd = load i32, ptr %i.afc, align 8, !noundef !29
  %i.afe = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.aff = load i64, ptr %i.afe, align 8, !noundef !29
  %i.afg = getelementptr inbounds nuw i8, ptr %1, i64 128
  %5 = load ptr, ptr %i.afg, align 8, !nonnull !29, !align !39, !noundef !29
  %i.afh = getelementptr inbounds nuw i8, ptr %5, i64 168
  %6 = getelementptr inbounds nuw i8, ptr %1, i64 240
  store ptr %4, ptr %6, align 8
  %.sroa.8640.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 248
  store ptr %i.afh, ptr %.sroa.8640.0..sroa_idx, align 8
  %.sroa.9641.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 256
  store ptr @188, ptr %.sroa.9641.0..sroa_idx, align 8
  %.sroa.10642.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 264
  store i64 %i.afb, ptr %.sroa.10642.0..sroa_idx, align 8
  %.sroa.11643.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 272
  store i32 %i.afd, ptr %.sroa.11643.0..sroa_idx, align 8
  %.sroa.13645.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 280
  store i64 %i.aff, ptr %.sroa.13645.0..sroa_idx, align 8
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 416
  store i8 0, ptr %.sroa.15.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ce)
  %i.afi = getelementptr inbounds nuw i8, ptr %1, i64 240
  %i.afj = getelementptr inbounds nuw i8, ptr %1, i64 416
  br label %bb.jn

.thread:                                          ; preds = %bb.bu
  %i.afk = getelementptr inbounds nuw i8, ptr %1, i64 536
  %i.afl = getelementptr inbounds nuw i8, ptr %i.kp, i64 8
  store ptr %i.afl, ptr %i.afk, align 8, !alias.scope !7741
  %i.afm = load i64, ptr %i.kp, align 8, !noalias !7741, !noundef !29 ; 2 uses
  %i.afn = getelementptr inbounds nuw i8, ptr %1, i64 240
  store i64 %i.afm, ptr %i.afn, align 8
  %i.afo = getelementptr inbounds nuw i8, ptr %1, i64 496
  %i.afp = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.afq = load ptr, ptr %i.afp, align 8, !nonnull !29, !align !39, !noundef !29
  %i.afr = getelementptr inbounds nuw i8, ptr %i.afq, i64 168
  %i.afs = getelementptr inbounds nuw i8, ptr %1, i64 248
  store i64 1, ptr %i.afs, align 8
  %.sroa.8578.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 256
  store i64 %i.afm, ptr %.sroa.8578.0..sroa_idx, align 8
  %.sroa.9579.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 264
  store ptr %i.afo, ptr %.sroa.9579.0..sroa_idx, align 8
  %.sroa.10580.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 272
  store ptr %i.afr, ptr %.sroa.10580.0..sroa_idx, align 8
  %.sroa.11581.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 280
  store ptr @188, ptr %.sroa.11581.0..sroa_idx, align 8
  %.sroa.13583.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 328
  store i8 0, ptr %.sroa.13583.0..sroa_idx, align 8
  %i.aft = getelementptr inbounds nuw i8, ptr %1, i64 248
  %i.afu = getelementptr inbounds nuw i8, ptr %1, i64 328
  br label %bb.bx

bb.jb:                                            ; preds = %bb.iq
  %i.afv = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cf)
  br label %bb.jc

bb.jc:                                            ; preds = %bb.jb, %bb.hx, %bb.hv, %bb.jd
  %.pn57.pn = phi { ptr, i32 } [ %.pn57.ph, %bb.jd ], [ %i.afv, %bb.jb ], [ %i.ack, %bb.hx ], [ %i.ach, %bb.hv ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cq)
  br label %bb.ix

bb.jd:                                            ; preds = %bb.iv, %bb.id, %bb.ib, %bb.il, %bb.io, %bb.ii
  %.pn57.ph = phi { ptr, i32 } [ %i.acs, %bb.id ], [ %i.aep, %bb.iv ], [ %i.acz, %bb.ii ], [ %i.adj, %bb.il ], [ %i.adr, %bb.io ], [ %i.acq, %bb.ib ]
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtBL_6string6StringEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.cq) #52
          to label %bb.jc unwind label %bb.bh

bb.je:                                            ; preds = %bb.ht
  %i.afw = getelementptr inbounds nuw i8, ptr %1, i64 528
  invoke void @_RNvXse_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterxENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.afw)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterxEECs14kWLkQVSKO_14deltalake_core.exit330 unwind label %bb.iz

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterxEECs14kWLkQVSKO_14deltalake_core.exit330: ; preds = %bb.je
  %i.afx = ptrtoint ptr %.sroa.10587.0.ph to i64
  %i.afy = ptrtoint ptr %.sroa.9586.0.ph to i64
  %i.afz = getelementptr inbounds nuw i8, ptr %1, i64 496
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot13EagerSnapshotEBM_(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.afz)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs14kWLkQVSKO_14deltalake_core5table5state15DeltaTableStateEBM_.exit332 unwind label %bb.ja

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3set7HashSetNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs14kWLkQVSKO_14deltalake_core5table5state15DeltaTableStateEBM_.exit332
  %i.aga = getelementptr inbounds nuw i8, ptr %1, i64 232
  store i8 0, ptr %i.aga, align 8
  %i.agb = getelementptr inbounds nuw i8, ptr %1, i64 229 ; 2 uses
  %i.agc = load i8, ptr %i.agb, align 1, !range !38, !noundef !29
  %i.agd = trunc nuw i8 %i.agc to i1
  br i1 %i.agd, label %bb.jf, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecxEECs14kWLkQVSKO_14deltalake_core.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecxEECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.jh, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3set7HashSetNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs14kWLkQVSKO_14deltalake_core.exit
  store i8 0, ptr %i.agb, align 1
  %i.age = extractelement <2 x i64> %i.kv, i64 1
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3set7HashSetNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs14kWLkQVSKO_14deltalake_core.exit354

bb.jf:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3set7HashSetNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs14kWLkQVSKO_14deltalake_core.exit
  %i.agf = getelementptr inbounds nuw i8, ptr %1, i64 160 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecxENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.agf)
          to label %bb.jh unwind label %bb.jg

bb.jg:                                            ; preds = %bb.jf
  %i.agg = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecxENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.agf)
          to label %.body334 unwind label %bb.ji

bb.jh:                                            ; preds = %bb.jf
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecxENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.agf)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecxEECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.at

bb.ji:                                            ; preds = %bb.jg
  %i.agh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #53
  unreachable

bb.jj:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs14kWLkQVSKO_14deltalake_core5table5state15DeltaTableStateEBM_.exit
  %i.agi = getelementptr inbounds nuw i8, ptr %1, i64 80
  invoke void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringuEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.agi)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3set7HashSetNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs14kWLkQVSKO_14deltalake_core.exit337 unwind label %bb.bh

bb.jk:                                            ; preds = %bb.bi
  %i.agj = getelementptr inbounds nuw i8, ptr %1, i64 160
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecxEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(24) %i.agj) #52
          to label %.body334 unwind label %bb.bh

.body342:                                         ; preds = %bb.jv, %bb.jw
  %i.agk = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.pr = load i8, ptr %i.agn, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ce)
  %cond.i = icmp eq i8 %.pr, 3
  br i1 %cond.i, label %bb.jl, label %.body402

bb.jl:                                            ; preds = %.body342
  %i.agl = getelementptr inbounds nuw i8, ptr %1, i64 312
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream10try_stream11try_collect10TryCollectINtNtBL_10try_filter9TryFilterINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemINtNtB4_6result6ResultNtNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators10tombstones13TombstoneViewNtNtB4F_6errors15DeltaTableErrorENtNtB4_6marker4SendEL_EEINtNtNtBP_6future5ready5ReadybENCNCNvNtNtB4F_10operations6vacuum15get_stale_files00EINtNtB2O_3vec3VecB4v_EEEB4F_(ptr noalias noundef align 8 dereferenceable(104) %i.agl)
          to label %.body402 unwind label %bb.bh

bb.jm:                                            ; preds = %bb.a
  %.phi.trans.insert1189 = getelementptr inbounds nuw i8, ptr %1, i64 416
  %.pre1190 = load i8, ptr %.phi.trans.insert1189, align 8, !range !56, !noalias !7846
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ce)
  %i.agm = getelementptr inbounds nuw i8, ptr %1, i64 240 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7847)
  %i.agn = getelementptr inbounds nuw i8, ptr %1, i64 416 ; 3 uses
  switch i8 %.pre1190, label %default.unreachable1237 [
    i8 0, label %bb.jn
    i8 1, label %bb.jv
    i8 2, label %bb.jw
    i8 3, label %bb.jy
  ]

bb.jn:                                            ; preds = %.thread1238, %bb.jm
  %i.ago = phi ptr [ %i.afj, %.thread1238 ], [ %i.agn, %bb.jm ] ; 2 uses
  %i.agp = phi ptr [ %i.afi, %.thread1238 ], [ %i.agm, %bb.jm ] ; 2 uses
  %i.agq = load ptr, ptr %i.agp, align 8, !noalias !7846, !nonnull !29, !align !39, !noundef !29
  %i.agr = getelementptr inbounds nuw i8, ptr %1, i64 288
  %i.ags = getelementptr inbounds nuw i8, ptr %1, i64 264
  %i.agt = load i64, ptr %i.ags, align 8, !noalias !7846, !noundef !29 ; 4 uses
  %i.agu = getelementptr inbounds nuw i8, ptr %1, i64 272
  %i.agv = load i32, ptr %i.agu, align 8, !noalias !7846, !noundef !29 ; 5 uses
  store i64 %i.agt, ptr %i.agr, align 8, !noalias !7846
  %i.agw = getelementptr i8, ptr %1, i64 296
  store i32 %i.agv, ptr %i.agw, align 8, !noalias !7846
  %i.agx = getelementptr inbounds nuw i8, ptr %1, i64 280
  %i.agy = load i64, ptr %i.agx, align 8, !noalias !7846, !noundef !29
  %i.agz = getelementptr inbounds nuw i8, ptr %1, i64 248
  %i.aha = load ptr, ptr %i.agz, align 8, !noalias !7846, !nonnull !29, !noundef !29
  %i.ahb = getelementptr inbounds nuw i8, ptr %1, i64 256
  %i.ahc = load ptr, ptr %i.ahb, align 8, !noalias !7846, !nonnull !29, !align !39, !noundef !29
  %i.ahd = icmp slt i64 %i.agt, 0
  br i1 %i.ahd, label %bb.jo, label %bb.jq

bb.jo:                                            ; preds = %bb.jn
  %i.ahe = icmp sgt i32 %i.agv, 0                 ; 2 uses
  %i.ahf = zext i1 %i.ahe to i64
  %.sroa.01.0.i.i = add nsw i64 %i.agt, %i.ahf
  %i.ahg = add nsw i32 %i.agv, -1000000000
  %spec.select.i.i341 = select i1 %i.ahe, i32 %i.ahg, i32 %i.agv
  br label %bb.jq

bb.jp:                                            ; preds = %bb.jq
  %i.ahh = landingpad { ptr, i32 }
          cleanup
  br label %bb.js

bb.jq:                                            ; preds = %bb.jo, %bb.jn
  %.sroa.03.0.i.i = phi i32 [ %spec.select.i.i341, %bb.jo ], [ %i.agv, %bb.jn ]
  %.sroa.0.1.in.i.i = phi i64 [ %.sroa.01.0.i.i, %bb.jo ], [ %i.agt, %bb.jn ]
  %.neg10.i = sdiv i32 %.sroa.03.0.i.i, -1000000
  %i.ahi = getelementptr inbounds nuw i8, ptr %1, i64 304 ; 2 uses
  %.sroa.0.1.i.neg.i = mul i64 %.sroa.0.1.in.i.i, -1000
  %.neg.i = sext i32 %.neg10.i to i64
  %.neg9.i = add i64 %i.agy, %.neg.i
  %i.ahj = add i64 %.neg9.i, %.sroa.0.1.i.neg.i
  store i64 %i.ahj, ptr %i.ahi, align 8, !noalias !7846
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !7846
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !7846
  %i.ahk = getelementptr i8, ptr %i.agq, i64 24
  %.val.i340 = load ptr, ptr %i.ahk, align 8, !noalias !7846, !nonnull !29, !noundef !29
  %i.ahl = getelementptr inbounds nuw i8, ptr %.val.i340, i64 16
  %i.ahm = invoke { ptr, ptr } @_RNvMNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshotNtB2_8Snapshot10tombstones(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(88) %i.ahl, ptr noundef nonnull %i.aha, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(192) %i.ahc)
          to label %bb.jr unwind label %bb.jp, !noalias !7846 ; 2 uses

bb.jr:                                            ; preds = %bb.jq
  %i.ahn = extractvalue { ptr, ptr } %i.ahm, 0
  %i.aho = extractvalue { ptr, ptr } %i.ahm, 1
  %i.ahp = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  store ptr %i.ahn, ptr %i.ahp, align 8, !alias.scope !7848, !noalias !7849
  %i.ahq = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  store ptr %i.aho, ptr %i.ahq, align 8, !alias.scope !7848, !noalias !7849
end_hunk_0
