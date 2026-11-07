Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/delta-rs/original/deltalake_core-1fa7f9344ca2d0c9.deltalake_core.c7669c1bd09fee8-cgu.07?download=true
inline.NumInlined: 9996
inline.NumDeleted: 4213
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_RNCNvYINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_ENtNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage9retry_ext19ObjectStoreRetryExt16put_with_retries0B1w_:bb.a
          to label %bb.ad unwind label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.dx = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as)
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCscTw95cGIolY_7tracing10instrument12InstrumentedNCNCNvYINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_ENtNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage9retry_ext19ObjectStoreRetryExt16put_with_retries00EEB36_(ptr noundef nonnull align 8 %i.dw) #54
          to label %.body unwind label %bb.q

bb.ad:                                            ; preds = %bb.ab
  %i.dy = load i64, ptr %i.as, align 8, !range !58, !noundef !35 ; 2 uses
  %i.dz = icmp eq i64 %i.dy, -9223372036854775789
  br i1 %i.dz, label %bb.ae, label %bb.af

common.ret:                                       ; preds = %bb.fo, %bb.fl, %bb.ae
  %.sink = phi i8 [ 1, %bb.fo ], [ 4, %bb.fl ], [ 3, %bb.ae ]
  store i8 %.sink, ptr %i.bg, align 1
  ret void

bb.ae:                                            ; preds = %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as)
  store i64 -9223372036854775789, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au)
  br label %common.ret

bb.af:                                            ; preds = %bb.ad
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.3, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.3.0..sroa_idx, i64 48, i1 false)
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.as, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.0..sroa_idx, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as)
  invoke void @_RNvXs0_NvNtCscTw95cGIolY_7tracing10instruments_1__INtB7_12InstrumentedNCNCNvYINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_ENtNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage9retry_ext19ObjectStoreRetryExt16put_with_retries00ENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropB2F_(ptr noundef nonnull align 8 %i.dw)
          to label %bb.ah unwind label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.ea = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCscTw95cGIolY_7tracing4span4SpanECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.dw) #54
          to label %.body unwind label %bb.ai

bb.ah:                                            ; preds = %bb.af
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCscTw95cGIolY_7tracing4span4SpanECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.dw)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCscTw95cGIolY_7tracing10instrument12InstrumentedNCNCNvYINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_ENtNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage9retry_ext19ObjectStoreRetryExt16put_with_retries00EEB36_.exit unwind label %bb.fn

bb.ai:                                            ; preds = %bb.ag
  %i.eb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #53
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCscTw95cGIolY_7tracing10instrument12InstrumentedNCNCNvYINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_ENtNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage9retry_ext19ObjectStoreRetryExt16put_with_retries00EEB36_.exit: ; preds = %bb.fm, %bb.ah
  %.sroa.048.0 = phi i64 [ %i.dy, %bb.ah ], [ %.sroa.010.0.i, %bb.fm ]
  %i.ec = getelementptr inbounds nuw i8, ptr %1, i64 81
  store i8 0, ptr %i.ec, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au)
  %i.ed = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  %i.ee = load i8, ptr %i.ed, align 8, !range !56, !noundef !35
  %i.ef = trunc nuw i8 %i.ee to i1
  br i1 %i.ef, label %bb.fp, label %bb.fo

bb.aj:                                            ; preds = %bb.c, %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.9)
  %i.eg = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.413.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.516.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al)
  %i.eh = getelementptr inbounds nuw i8, ptr %1, i64 185 ; 4 uses
  %i.ei = load i8, ptr %i.eh, align 1, !range !41, !noalias !12746, !noundef !35
  switch i8 %i.ei, label %default.unreachable68 [
    i8 0, label %bb.ak
    i8 1, label %bb.an
    i8 2, label %bb.ao
    i8 3, label %bb.al
  ]

bb.ak:                                            ; preds = %bb.aj
  %i.ej = getelementptr inbounds nuw i8, ptr %1, i64 184
  %i.ek = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.el = getelementptr inbounds nuw i8, ptr %1, i64 168
  %i.em = load ptr, ptr %i.el, align 8, !noalias !12746, !nonnull !35, !align !42, !noundef !35
  store ptr %i.em, ptr %i.ek, align 8, !noalias !12746
  store i8 0, ptr %i.ej, align 8, !noalias !12746
  %i.en = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.eo = load ptr, ptr %i.en, align 8, !noalias !12746, !nonnull !35, !noundef !35
  %i.ep = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.eq = load i64, ptr %i.ep, align 8, !noalias !12746, !noundef !35
  store ptr %i.eo, ptr %i.eg, align 8, !noalias !12746
  %i.er = getelementptr inbounds nuw i8, ptr %1, i64 96
  store i64 %i.eq, ptr %i.er, align 8, !noalias !12746
  %i.es = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.et = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.eu = load i64, ptr %i.et, align 8, !noalias !12746, !noundef !35 ; 2 uses
  store i64 %i.eu, ptr %i.es, align 8, !noalias !12746
  %i.ev = getelementptr inbounds nuw i8, ptr %1, i64 160
  store i64 1, ptr %i.ev, align 8, !noalias !12746
  br label %bb.am

bb.al:                                            ; preds = %bb.aj
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ar), !noalias !12746
  br label %bb.aq

bb.am:                                            ; preds = %bb.cz, %bb.ak
  %i.ew = phi i64 [ %.pre254.i, %bb.cz ], [ %i.eu, %bb.ak ]
  %i.ex = phi i64 [ %.pre.i, %bb.cz ], [ 1, %bb.ak ]
  %.not.i33 = icmp ugt i64 %i.ex, %i.ew
  br i1 %.not.i33, label %bb.de, label %bb.db

bb.an:                                            ; preds = %bb.aj
  invoke void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @73) #55
          to label %.noexc35 unwind label %bb.fj

.noexc35:                                         ; preds = %bb.an
  unreachable

bb.ao:                                            ; preds = %bb.aj
  invoke void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @73) #55
          to label %.noexc36 unwind label %bb.fj

.noexc36:                                         ; preds = %bb.ao
  unreachable

bb.ap:                                            ; preds = %bb.aq
  %i.ey = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq), !noalias !12746
  %.val106.i = load ptr, ptr %i.fa, align 8, !noalias !12746
  %i.ez = getelementptr i8, ptr %1, i64 112
  %.val107.i = load ptr, ptr %i.ez, align 8, !noalias !12746, !nonnull !35, !align !42, !noundef !35
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtCsjyY8HP3IvQ6_12object_store9PutResultNtB2w_5ErrorENtNtB4_6marker4SendEL_EEECs14kWLkQVSKO_14deltalake_core(ptr %.val106.i, ptr nonnull %.val107.i) #54
          to label %.body.i unwind label %bb.bw, !noalias !12747

bb.aq:                                            ; preds = %bb.dk, %bb.al
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aq), !noalias !12746
  %i.fa = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 3 uses
  invoke void @_RNvXs_NtNtCsbvkFyIu7lgC_4core6future6futureINtNtB8_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtB4_6Futurep6OutputINtNtB8_6result6ResultNtCsjyY8HP3IvQ6_12object_store9PutResultNtB2d_5ErrorENtNtB8_6marker4SendEL_EEB1v_4pollCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %i.aq, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.fa, ptr noalias noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.ar unwind label %bb.ap, !noalias !12747

bb.ar:                                            ; preds = %bb.aq
  %i.fb = load i64, ptr %i.aq, align 8, !range !58, !noalias !12746, !noundef !35
  %i.fc = icmp eq i64 %i.fb, -9223372036854775789
  br i1 %i.fc, label %.thread, label %bb.as

.thread:                                          ; preds = %bb.ar
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq), !noalias !12746
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar), !noalias !12746
  store i8 3, ptr %i.eh, align 1, !noalias !12746
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.413.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.516.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al)
  br label %bb.fl

bb.as:                                            ; preds = %bb.ar
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.ar, ptr noundef nonnull align 8 dereferenceable(72) %i.aq, i64 72, i1 false), !noalias !12746
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq), !noalias !12746
  %.val104.i = load ptr, ptr %i.fa, align 8, !noalias !12746 ; 5 uses
  %i.fd = getelementptr i8, ptr %1, i64 112
  %.val105.i = load ptr, ptr %i.fd, align 8, !noalias !12746, !nonnull !35, !align !42, !noundef !35 ; 5 uses
  %i.fe = load ptr, ptr %.val105.i, align 8, !invariant.load !35, !noalias !12747 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.fe, null
  br i1 %.not.i.i.i, label %bb.au, label %bb.at

bb.at:                                            ; preds = %bb.as
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val104.i) ]
  invoke void %i.fe(ptr noundef nonnull %.val104.i)
          to label %bb.au unwind label %bb.av, !noalias !12747

bb.au:                                            ; preds = %bb.at, %bb.as
  %i.ff = getelementptr inbounds nuw i8, ptr %.val105.i, i64 8
  %i.fg = load i64, ptr %i.ff, align 8, !range !50, !invariant.load !35, !noalias !12747 ; 2 uses
  %i.fh = icmp eq i64 %i.fg, 0
  br i1 %i.fh, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtCsjyY8HP3IvQ6_12object_store9PutResultNtB2w_5ErrorENtNtB4_6marker4SendEL_EEECs14kWLkQVSKO_14deltalake_core.exit.i, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i.i.i

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i.i.i: ; preds = %bb.au
  %i.fi = getelementptr inbounds nuw i8, ptr %.val105.i, i64 16
  %i.fj = load i64, ptr %i.fi, align 8, !range !49, !invariant.load !35, !noalias !12747
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val104.i) ]
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val104.i, i64 noundef %i.fg, i64 noundef range(i64 1, 536870913) %i.fj) #48, !noalias !12747
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtCsjyY8HP3IvQ6_12object_store9PutResultNtB2w_5ErrorENtNtB4_6marker4SendEL_EEECs14kWLkQVSKO_14deltalake_core.exit.i

bb.av:                                            ; preds = %bb.at
  %i.fk = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %.val105.i, i64 8
  %i.fm = load i64, ptr %i.fl, align 8, !range !50, !invariant.load !35, !noalias !12747 ; 2 uses
  %i.fn = icmp eq i64 %i.fm, 0
  br i1 %i.fn, label %.body.i, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i.i

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i.i: ; preds = %bb.av
  %i.fo = getelementptr inbounds nuw i8, ptr %.val105.i, i64 16
  %i.fp = load i64, ptr %i.fo, align 8, !range !49, !invariant.load !35, !noalias !12747
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val104.i, i64 noundef %i.fm, i64 noundef range(i64 1, 536870913) %i.fp) #48, !noalias !12747
  br label %.body.i

.body.i:                                          ; preds = %bb.fg, %bb.ff, %bb.eg, %bb.dj, %bb.by, %bb.by, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i.i, %bb.av, %bb.ap
  %.pn72.pn.pn.pn.pn.i = phi { ptr, i32 } [ %.pn72.pn.pn.pn.i, %bb.by ], [ %.pn72.pn.pn.pn.i, %bb.fg ], [ %.pn72.pn.pn.pn.i, %bb.by ], [ %i.fk, %bb.av ], [ %i.ey, %bb.ap ], [ %i.lr, %bb.dj ], [ %i.fk, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i.i ], [ %.pn43.pn.pn.i, %bb.eg ], [ %.pn72.pn.pn.i, %bb.ff ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar), !noalias !12746
  br label %bb.dg

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtCsjyY8HP3IvQ6_12object_store9PutResultNtB2w_5ErrorENtNtB4_6marker4SendEL_EEECs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i.i.i, %bb.au
  %i.fq = load i64, ptr %i.ar, align 8, !range !57, !noalias !12746, !noundef !35 ; 3 uses
  %.not26.i = icmp eq i64 %i.fq, -9223372036854775790
  br i1 %.not26.i, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtCsjyY8HP3IvQ6_12object_store9PutResultNtB2w_5ErrorENtNtB4_6marker4SendEL_EEECs14kWLkQVSKO_14deltalake_core.exit.i
  %i.fr = getelementptr inbounds nuw i8, ptr %1, i64 160 ; 10 uses
  %i.fs = load i64, ptr %i.fr, align 8, !noalias !12746, !noundef !35
  %i.ft = getelementptr inbounds nuw i8, ptr %1, i64 152 ; 2 uses
  %i.fu = load i64, ptr %i.ft, align 8, !noalias !12746, !noundef !35
  %i.fv = icmp eq i64 %i.fs, %i.fu
  br i1 %i.fv, label %bb.eh, label %bb.bz

bb.ax:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtCsjyY8HP3IvQ6_12object_store9PutResultNtB2w_5ErrorENtNtB4_6marker4SendEL_EEECs14kWLkQVSKO_14deltalake_core.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap), !noalias !12746
  %i.fw = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ap, ptr noundef nonnull align 8 dereferenceable(48) %i.fw, i64 48, i1 false), !noalias !12746
  %i.fx = load atomic i64, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core8metadata9MAX_LEVEL monotonic, align 8, !noalias !12746
  %i.fy = icmp samesign ult i64 %i.fx, 2
  br i1 %i.fy, label %bb.ay, label %bb.bd

bb.ay:                                            ; preds = %bb.ax
  %i.fz = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNCNCNvNtNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage9retry_ext19ObjectStoreRetryExt16put_with_retries0010___CALLSITE, i64 16) monotonic, align 8, !noalias !12746 ; 2 uses
  %i.ga = icmp ult i8 %i.fz, 3
  br i1 %i.ga, label %bb.ba, label %bb.az, !prof !12742

bb.az:                                            ; preds = %bb.ay
  %i.gb = invoke noundef i8 @_RNvMNtCs2y6mmZ7bjoM_12tracing_core8callsiteNtB2_15DefaultCallsite8register(ptr noundef nonnull align 8 @_RNvNCNCNvNtNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage9retry_ext19ObjectStoreRetryExt16put_with_retries0010___CALLSITE) #58
          to label %bb.ba unwind label %bb.bh, !noalias !12747

bb.ba:                                            ; preds = %bb.az, %bb.ay
  %.sroa.0.0.i.i = phi i8 [ %i.fz, %bb.ay ], [ %i.gb, %bb.az ] ; 2 uses
  %i.gc = icmp eq i8 %.sroa.0.0.i.i, 0
  br i1 %i.gc, label %bb.bd, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.gd = load ptr, ptr @_RNvNCNCNvNtNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage9retry_ext19ObjectStoreRetryExt16put_with_retries0010___CALLSITE, align 8, !noalias !12746, !nonnull !35, !align !42, !noundef !35
  %i.ge = invoke noundef zeroext i1 @_RNvNtCscTw95cGIolY_7tracing15___macro_support12___is_enabled(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.gd, i8 noundef %.sroa.0.0.i.i)
          to label %bb.bc unwind label %bb.bh, !noalias !12747

bb.bc:                                            ; preds = %bb.bb
  br i1 %i.ge, label %bb.bn, label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %bb.ba, %bb.ax
  %i.gf = load atomic i8, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher6EXISTS monotonic, align 1, !noalias !12746
  %.not251.i = icmp eq i8 %i.gf, 0
  br i1 %.not251.i, label %bb.be, label %bb.bm

bb.be:                                            ; preds = %bb.bd
  %i.gg = load atomic i64, ptr @_RNvCsaljjC7ZTCQu_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8, !noalias !12746 ; 2 uses
  %i.gh = icmp ult i64 %i.gg, 6
  call void @llvm.assume(i1 %i.gh)
  %i.gi = icmp samesign ugt i64 %i.gg, 3
  br i1 %i.gi, label %bb.bf, label %bb.bm

bb.bf:                                            ; preds = %bb.be
  %i.gj = load ptr, ptr @_RNvNCNCNvNtNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage9retry_ext19ObjectStoreRetryExt16put_with_retries0010___CALLSITE, align 8, !noalias !12746, !nonnull !35, !align !42, !noundef !35 ; 3 uses
  %i.gk = getelementptr i8, ptr %i.gj, i64 32
  %.val134.i = load ptr, ptr %i.gk, align 8, !noalias !12747, !nonnull !35, !noundef !35
  %i.gl = getelementptr i8, ptr %i.gj, i64 40
  %.val135.i = load i64, ptr %i.gl, align 8, !noalias !12747, !noundef !35
  store i64 4, ptr %i.al, align 8, !alias.scope !12748, !noalias !12746
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  store ptr %.val134.i, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !12748, !noalias !12746
  %.sroa.8196.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  store i64 %.val135.i, ptr %.sroa.8196.0..sroa_idx.i, align 8, !alias.scope !12748, !noalias !12746
  %i.gm = invoke { ptr, ptr } @_RNvCsaljjC7ZTCQu_3log6logger()
          to label %bb.bg unwind label %bb.bh, !noalias !12747 ; 2 uses

bb.bg:                                            ; preds = %bb.bf
  %i.gn = extractvalue { ptr, ptr } %i.gm, 0      ; 2 uses
  %i.go = extractvalue { ptr, ptr } %i.gm, 1      ; 2 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %i.go, i64 24
  %i.gq = load ptr, ptr %i.gp, align 8, !invariant.load !35, !noalias !12747, !nonnull !35
  %i.gr = invoke noundef zeroext i1 %i.gq(ptr noundef %i.gn, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.al)
          to label %bb.bi unwind label %bb.bh, !noalias !12747

bb.bh:                                            ; preds = %bb.bg, %bb.bf, %bb.bb, %bb.az
  %i.gs = landingpad { ptr, i32 }
          cleanup
  br label %bb.bv

bb.bi:                                            ; preds = %bb.bg
  br i1 %i.gr, label %bb.bj, label %bb.bm

bb.bj:                                            ; preds = %bb.bi
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak), !noalias !12746
  %i.gt = load ptr, ptr @_RNvNCNCNvNtNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage9retry_ext19ObjectStoreRetryExt16put_with_retries0010___CALLSITE, align 8, !noalias !12746, !nonnull !35, !align !42, !noundef !35
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gt, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj), !noalias !12746
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai), !noalias !12746
  store ptr @74, ptr %i.ai, align 8, !noalias !12746
  %i.gv = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  store ptr inttoptr (i64 47 to ptr), ptr %i.gv, align 8, !noalias !12746
  %i.gw = getelementptr inbounds nuw i8, ptr %1, i64 160
  store ptr %i.ai, ptr %i.aj, align 8, !noalias !12746
  %i.gx = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  store ptr @75, ptr %i.gx, align 8, !noalias !12746
  %i.gy = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  store ptr %i.gw, ptr %i.gy, align 8, !noalias !12746
  %i.gz = getelementptr inbounds nuw i8, ptr %i.aj, i64 24
  store ptr @76, ptr %i.gz, align 8, !noalias !12746
  store i64 1, ptr %i.ak, align 8, !alias.scope !12749, !noalias !12746
  %.sroa.4.0..sroa_idx.i138.i = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  store ptr %i.aj, ptr %.sroa.4.0..sroa_idx.i138.i, align 8, !alias.scope !12749, !noalias !12746
  %.sroa.5.0..sroa_idx.i139.i = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  store i64 2, ptr %.sroa.5.0..sroa_idx.i139.i, align 8, !alias.scope !12749, !noalias !12746
  %i.ha = getelementptr inbounds nuw i8, ptr %i.ak, i64 24
  store ptr %i.gu, ptr %i.ha, align 8, !alias.scope !12749, !noalias !12746
  invoke void @_RNvNtCscTw95cGIolY_7tracing15___macro_support13___tracing_log(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.gj, ptr noundef nonnull %i.gn, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.go, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.al, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.ak)
          to label %bb.bl unwind label %bb.bk, !noalias !12747

bb.bk:                                            ; preds = %bb.bj
  %i.hb = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai), !noalias !12746
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj), !noalias !12746
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak), !noalias !12746
  br label %bb.bv

bb.bl:                                            ; preds = %bb.bj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai), !noalias !12746
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj), !noalias !12746
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak), !noalias !12746
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bs, %bb.bl, %bb.bi, %bb.be, %bb.bd
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.413.i, ptr noundef nonnull align 8 dereferenceable(48) %i.ap, i64 48, i1 false), !noalias !12746
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap), !noalias !12746
  br label %bb.bt

bb.bn:                                            ; preds = %bb.bc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao), !noalias !12746
  %i.hc = load ptr, ptr @_RNvNCNCNvNtNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage9retry_ext19ObjectStoreRetryExt16put_with_retries0010___CALLSITE, align 8, !noalias !12746, !nonnull !35, !align !42, !noundef !35 ; 2 uses
  %i.hd = getelementptr inbounds nuw i8, ptr %i.hc, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an), !noalias !12746
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am), !noalias !12746
  store ptr @74, ptr %i.am, align 8, !noalias !12746
  %i.he = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  store ptr inttoptr (i64 47 to ptr), ptr %i.he, align 8, !noalias !12746
  %i.hf = getelementptr inbounds nuw i8, ptr %1, i64 160
  store ptr %i.am, ptr %i.an, align 8, !noalias !12746
  %i.hg = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  store ptr @75, ptr %i.hg, align 8, !noalias !12746
  %i.hh = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  store ptr %i.hf, ptr %i.hh, align 8, !noalias !12746
  %i.hi = getelementptr inbounds nuw i8, ptr %i.an, i64 24
  store ptr @76, ptr %i.hi, align 8, !noalias !12746
  store i64 1, ptr %i.ao, align 8, !noalias !12746
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  store ptr %i.an, ptr %.sroa.7.0..sroa_idx.i, align 8, !noalias !12746
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  store i64 2, ptr %.sroa.8.0..sroa_idx.i, align 8, !noalias !12746
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ao, i64 24
  store ptr %i.hd, ptr %.sroa.9.0..sroa_idx.i, align 8, !noalias !12746
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke void @_RNvMNtCs2y6mmZ7bjoM_12tracing_core5eventNtB2_5Event8dispatch(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.hc, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.ao)
          to label %.noexc41 unwind label %bb.br

.noexc41:                                         ; preds = %bb.bn
  %i.hj = load atomic i8, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher6EXISTS monotonic, align 1, !noalias !12750
  %i.hk = icmp eq i8 %i.hj, 0
  br i1 %i.hk, label %bb.bo, label %bb.bs

bb.bo:                                            ; preds = %.noexc41
  %i.hl = load atomic i64, ptr @_RNvCsaljjC7ZTCQu_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8, !noalias !12750 ; 2 uses
  %i.hm = icmp ult i64 %i.hl, 6
  call void @llvm.assume(i1 %i.hm), !noalias !12747
  %i.hn = icmp samesign ugt i64 %i.hl, 3
  br i1 %i.hn, label %bb.bp, label %bb.bs

bb.bp:                                            ; preds = %bb.bo
  %i.ho = load ptr, ptr @_RNvNCNCNvNtNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage9retry_ext19ObjectStoreRetryExt16put_with_retries0010___CALLSITE, align 8, !noalias !12750, !nonnull !35, !align !42, !noundef !35 ; 3 uses
  %i.hp = getelementptr inbounds nuw i8, ptr %i.ho, i64 32
  %i.hq = load ptr, ptr %i.hp, align 8, !noalias !12747, !nonnull !35, !noundef !35
  %i.hr = getelementptr inbounds nuw i8, ptr %i.ho, i64 40
  %i.hs = load i64, ptr %i.hr, align 8, !noalias !12747, !noundef !35
  store i64 4, ptr %i.a, align 8, !noalias !12750
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.hq, ptr %.sroa.3.0..sroa_idx.i, align 8, !noalias !12750
  %.sroa.5.0..sroa_idx.i40 = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.hs, ptr %.sroa.5.0..sroa_idx.i40, align 8, !noalias !12750
  %i.ht = invoke { ptr, ptr } @_RNvCsaljjC7ZTCQu_3log6logger()
          to label %.noexc42 unwind label %bb.br  ; 2 uses

.noexc42:                                         ; preds = %bb.bp
  %i.hu = extractvalue { ptr, ptr } %i.ht, 0      ; 2 uses
  %i.hv = extractvalue { ptr, ptr } %i.ht, 1      ; 2 uses
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hv, i64 24
  %i.hx = load ptr, ptr %i.hw, align 8, !invariant.load !35, !noalias !12747, !nonnull !35
  %i.hy = invoke noundef zeroext i1 %i.hx(ptr noundef %i.hu, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.a) #56
          to label %.noexc43 unwind label %bb.br, !inline_history !12692

.noexc43:                                         ; preds = %.noexc42
  br i1 %i.hy, label %bb.bq, label %bb.bs

bb.bq:                                            ; preds = %.noexc43
  invoke void @_RNvNtCscTw95cGIolY_7tracing15___macro_support13___tracing_log(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.ho, ptr noundef nonnull %i.hu, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.hv, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.ao)
          to label %bb.bs unwind label %bb.br

bb.br:                                            ; preds = %bb.bq, %.noexc42, %bb.bp, %bb.bn
  %i.hz = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao), !noalias !12746
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am), !noalias !12746
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an), !noalias !12746
  br label %bb.bv

bb.bs:                                            ; preds = %.noexc43, %bb.bo, %.noexc41, %bb.bq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao), !noalias !12746
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am), !noalias !12746
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an), !noalias !12746
  br label %bb.bm

bb.bt:                                            ; preds = %bb.ew, %bb.eb, %bb.bm
  %.sroa.010.0.i = phi i64 [ %.sroa.019.0.copyload.i, %bb.ew ], [ %.sroa.022.0.copyload.i, %bb.eb ], [ -9223372036854775790, %bb.bm ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar), !noalias !12746
  call void @llvm.experimental.noalias.scope.decl(metadata !12751)
  call void @llvm.experimental.noalias.scope.decl(metadata !12752)
  call void @llvm.experimental.noalias.scope.decl(metadata !12753)
  %i.ia = load ptr, ptr %i.eg, align 8, !alias.scope !12754, !noalias !12746, !nonnull !35, !noundef !35
  %i.ib = atomicrmw add ptr %i.ia, i64 -1 release, align 8, !noalias !12755
  %i.ic = icmp eq i64 %i.ib, 1
  br i1 %i.ic, label %bb.bu, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store7payload10PutPayloadECs14kWLkQVSKO_14deltalake_core.exit.i

bb.bu:                                            ; preds = %bb.bt
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcSNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesE9drop_slowCsjyY8HP3IvQ6_12object_store(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.eg) #58
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store7payload10PutPayloadECs14kWLkQVSKO_14deltalake_core.exit.i unwind label %bb.fa, !noalias !12747

bb.bv:                                            ; preds = %bb.br, %bb.bk, %bb.bh
  %.pn32.pn.pn.i = phi { ptr, i32 } [ %i.hz, %bb.br ], [ %i.gs, %bb.bh ], [ %i.hb, %bb.bk ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCsjyY8HP3IvQ6_12object_store9PutResultECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(48) %i.ap) #54
          to label %bb.bx unwind label %bb.bw, !noalias !12747

bb.bw:                                            ; preds = %bb.fi, %bb.fg, %bb.fe, %bb.ef, %bb.dl, %bb.dh, %bb.bv, %bb.ap
  %i.id = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #53, !noalias !12747
  unreachable

bb.bx:                                            ; preds = %bb.bv
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap), !noalias !12746
  br label %bb.by

bb.by:                                            ; preds = %.body154.i, %bb.bx
  %.pn72.pn.pn.pn.i = phi { ptr, i32 } [ %.pn32.pn.pn.i, %bb.bx ], [ %.pn62.i, %.body154.i ] ; 3 uses
  %i.ie = load i64, ptr %i.ar, align 8, !range !57, !noalias !12746, !noundef !35 ; 2 uses
  switch i64 %i.ie, label %bb.fg [
    i64 -9223372036854775790, label %.body.i
    i64 -9223372036854775802, label %.body.i
  ]

bb.bz:                                            ; preds = %bb.aw
  %i.if = icmp ne i64 %i.fq, -9223372036854775800
  call void @llvm.assume(i1 %i.if)
  %i.ig = icmp eq i64 %i.fq, -9223372036854775802
  br i1 %i.ig, label %bb.ca, label %bb.dm

bb.ca:                                            ; preds = %bb.bz
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !12746
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.ii = load ptr, ptr %i.ih, align 8, !noalias !12746, !nonnull !35, !noundef !35
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %i.ik = load i64, ptr %i.ij, align 8, !noalias !12746, !noundef !35
  store ptr %i.ii, ptr %i.x, align 8, !noalias !12746
  %i.il = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  store i64 %i.ik, ptr %i.il, align 8, !noalias !12746
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !12746
  %i.im = getelementptr inbounds nuw i8, ptr %i.ar, i64 24
  %i.in = getelementptr inbounds nuw i8, ptr %i.w, i64 8 ; 2 uses
  %i.io = load <2 x ptr>, ptr %i.im, align 8, !noalias !12746
  store <2 x ptr> %i.io, ptr %i.w, align 16, !noalias !12746
  %i.ip = load atomic i64, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core8metadata9MAX_LEVEL monotonic, align 8, !noalias !12746
  %i.iq = icmp samesign ult i64 %i.ip, 2
  br i1 %i.iq, label %bb.cb, label %bb.cg

bb.cb:                                            ; preds = %bb.ca
  %i.ir = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNCNCNvNtNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage9retry_ext19ObjectStoreRetryExt16put_with_retries00s0_10___CALLSITE, i64 16) monotonic, align 8, !noalias !12746 ; 2 uses
  %i.is = icmp ult i8 %i.ir, 3
  br i1 %i.is, label %bb.cd, label %bb.cc, !prof !12742

bb.cc:                                            ; preds = %bb.cb
  %i.it = invoke noundef i8 @_RNvMNtCs2y6mmZ7bjoM_12tracing_core8callsiteNtB2_15DefaultCallsite8register(ptr noundef nonnull align 8 @_RNvNCNCNvNtNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage9retry_ext19ObjectStoreRetryExt16put_with_retries00s0_10___CALLSITE) #58
          to label %bb.cd unwind label %bb.ck, !noalias !12747

bb.cd:                                            ; preds = %bb.cc, %bb.cb
  %.sroa.0.0.i143.i = phi i8 [ %i.ir, %bb.cb ], [ %i.it, %bb.cc ] ; 2 uses
  %i.iu = icmp eq i8 %.sroa.0.0.i143.i, 0
  br i1 %i.iu, label %bb.cg, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.iv = load ptr, ptr @_RNvNCNCNvNtNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage9retry_ext19ObjectStoreRetryExt16put_with_retries00s0_10___CALLSITE, align 8, !noalias !12746, !nonnull !35, !align !42, !noundef !35
  %i.iw = invoke noundef zeroext i1 @_RNvNtCscTw95cGIolY_7tracing15___macro_support12___is_enabled(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.iv, i8 noundef %.sroa.0.0.i143.i)
          to label %bb.cf unwind label %bb.ck, !noalias !12747

bb.cf:                                            ; preds = %bb.ce
  br i1 %i.iw, label %bb.ct, label %bb.cg

bb.cg:                                            ; preds = %bb.cf, %bb.cd, %bb.ca
  %i.ix = load atomic i8, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher6EXISTS monotonic, align 1, !noalias !12746
  %.not249.i = icmp eq i8 %i.ix, 0
  br i1 %.not249.i, label %bb.ch, label %bb.cp

bb.ch:                                            ; preds = %bb.cg
  %i.iy = load atomic i64, ptr @_RNvCsaljjC7ZTCQu_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8, !noalias !12746 ; 2 uses
  %i.iz = icmp ult i64 %i.iy, 6
  call void @llvm.assume(i1 %i.iz)
  %i.ja = icmp samesign ugt i64 %i.iy, 3
  br i1 %i.ja, label %bb.ci, label %bb.cp

bb.ci:                                            ; preds = %bb.ch
  %i.jb = load ptr, ptr @_RNvNCNCNvNtNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage9retry_ext19ObjectStoreRetryExt16put_with_retries00s0_10___CALLSITE, align 8, !noalias !12746, !nonnull !35, !align !42, !noundef !35 ; 3 uses
  %i.jc = getelementptr i8, ptr %i.jb, i64 32
  %.val132.i = load ptr, ptr %i.jc, align 8, !noalias !12747, !nonnull !35, !noundef !35
  %i.jd = getelementptr i8, ptr %i.jb, i64 40
  %.val133.i = load i64, ptr %i.jd, align 8, !noalias !12747, !noundef !35
  store i64 4, ptr %i.r, align 8, !alias.scope !12756, !noalias !12746
  %.sroa.6224.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store ptr %.val132.i, ptr %.sroa.6224.0..sroa_idx.i, align 8, !alias.scope !12756, !noalias !12746
  %.sroa.8225.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  store i64 %.val133.i, ptr %.sroa.8225.0..sroa_idx.i, align 8, !alias.scope !12756, !noalias !12746
  %i.je = invoke { ptr, ptr } @_RNvCsaljjC7ZTCQu_3log6logger()
          to label %bb.cj unwind label %bb.ck, !noalias !12747 ; 2 uses

bb.cj:                                            ; preds = %bb.ci
  %i.jf = extractvalue { ptr, ptr } %i.je, 0      ; 2 uses
  %i.jg = extractvalue { ptr, ptr } %i.je, 1      ; 2 uses
  %i.jh = getelementptr inbounds nuw i8, ptr %i.jg, i64 24
  %i.ji = load ptr, ptr %i.jh, align 8, !invariant.load !35, !noalias !12747, !nonnull !35
  %i.jj = invoke noundef zeroext i1 %i.ji(ptr noundef %i.jf, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.r)
          to label %bb.cl unwind label %bb.ck, !noalias !12747

bb.ck:                                            ; preds = %bb.cj, %bb.ci, %bb.ce, %bb.cc
  %i.jk = landingpad { ptr, i32 }
          cleanup
  br label %bb.dl

bb.cl:                                            ; preds = %bb.cj
  br i1 %i.jj, label %bb.cm, label %bb.cp

bb.cm:                                            ; preds = %bb.cl
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !12746
  %i.jl = load ptr, ptr @_RNvNCNCNvNtNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage9retry_ext19ObjectStoreRetryExt16put_with_retries00s0_10___CALLSITE, align 8, !noalias !12746, !nonnull !35, !align !42, !noundef !35
  %i.jm = getelementptr inbounds nuw i8, ptr %i.jl, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !12746
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !12746
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !12746
  store ptr %i.fr, ptr %i.n, align 8, !noalias !12746
  %.sroa.5227.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store ptr @_RNvXsi_NtNtNtCsbvkFyIu7lgC_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.5227.0..sroa_idx.i, align 8, !noalias !12746
  %i.jn = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  store ptr %i.x, ptr %i.jn, align 8, !noalias !12746
  %.sroa.5229.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  store ptr @_RNvXs1i_NtCsbvkFyIu7lgC_4core3fmtReNtB6_7Display3fmtCs14kWLkQVSKO_14deltalake_core, ptr %.sroa.5229.0..sroa_idx.i, align 8, !noalias !12746
  %i.jo = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  store ptr %i.w, ptr %i.jo, align 8, !noalias !12746
  %.sroa.5231.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 40
  store ptr @_RNvXsm_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtCsbvkFyIu7lgC_4core5error5ErrorNtNtBM_6marker4SyncNtB1j_4SendEL_ENtNtBM_3fmt7Display3fmtCs14kWLkQVSKO_14deltalake_core, ptr %.sroa.5231.0..sroa_idx.i, align 8, !noalias !12746
  store ptr @77, ptr %i.o, align 8, !noalias !12746
  %i.jp = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store ptr %i.n, ptr %i.jp, align 8, !noalias !12746
  store ptr %i.o, ptr %i.p, align 8, !noalias !12746
  %i.jq = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store ptr @75, ptr %i.jq, align 8, !noalias !12746
  store i64 1, ptr %i.q, align 8, !alias.scope !12757, !noalias !12746
  %.sroa.4.0..sroa_idx.i151.i = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store ptr %i.p, ptr %.sroa.4.0..sroa_idx.i151.i, align 8, !alias.scope !12757, !noalias !12746
  %.sroa.5.0..sroa_idx.i152.i = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store i64 1, ptr %.sroa.5.0..sroa_idx.i152.i, align 8, !alias.scope !12757, !noalias !12746
  %i.jr = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  store ptr %i.jm, ptr %i.jr, align 8, !alias.scope !12757, !noalias !12746
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !12746
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %i.r, i64 24, i1 false), !noalias !12746
  invoke void @_RNvNtCscTw95cGIolY_7tracing15___macro_support13___tracing_log(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.jb, ptr noundef nonnull %i.jf, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.jg, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.q)
          to label %bb.co unwind label %bb.cn, !noalias !12747

bb.cn:                                            ; preds = %bb.cm
  %i.js = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !12746
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !12746
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !12746
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !12746
  br label %bb.dl

bb.co:                                            ; preds = %bb.cm
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !12746
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !12746
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !12746
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !12746
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !12746
  br label %bb.cp

bb.cp:                                            ; preds = %bb.cy, %bb.co, %bb.cl, %bb.ch, %bb.cg
  %i.jt = load i64, ptr %i.fr, align 8, !noalias !12746, !noundef !35
  %i.ju = add i64 %i.jt, 1
  store i64 %i.ju, ptr %i.fr, align 8, !noalias !12746
  %.val102.i = load ptr, ptr %i.w, align 16, !noalias !12746 ; 5 uses
  %.val103.i = load ptr, ptr %i.in, align 8, !noalias !12746, !nonnull !35, !align !42, !noundef !35 ; 5 uses
  %i.jv = load ptr, ptr %.val103.i, align 8, !invariant.load !35, !noalias !12747 ; 2 uses
  %.not.i153.i = icmp eq ptr %i.jv, null
  br i1 %.not.i153.i, label %bb.cr, label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val102.i) ]
  invoke void %i.jv(ptr noundef nonnull %.val102.i)
          to label %bb.cr unwind label %bb.cs, !noalias !12747

bb.cr:                                            ; preds = %bb.cq, %bb.cp
  %i.jw = getelementptr inbounds nuw i8, ptr %.val103.i, i64 8
  %i.jx = load i64, ptr %i.jw, align 8, !range !50, !invariant.load !35, !noalias !12747 ; 2 uses
  %i.jy = icmp eq i64 %i.jx, 0
  br i1 %i.jy, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECs14kWLkQVSKO_14deltalake_core.exit.i, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i.i

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i.i: ; preds = %bb.cr
  %i.jz = getelementptr inbounds nuw i8, ptr %.val103.i, i64 16
  %i.ka = load i64, ptr %i.jz, align 8, !range !49, !invariant.load !35, !noalias !12747
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val102.i) ]
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val102.i, i64 noundef %i.jx, i64 noundef range(i64 1, 536870913) %i.ka) #48, !noalias !12747
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECs14kWLkQVSKO_14deltalake_core.exit.i

bb.cs:                                            ; preds = %bb.cq
  %i.kb = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.kc = getelementptr inbounds nuw i8, ptr %.val103.i, i64 8
  %i.kd = load i64, ptr %i.kc, align 8, !range !50, !invariant.load !35, !noalias !12747 ; 2 uses
  %i.ke = icmp eq i64 %i.kd, 0
  br i1 %i.ke, label %.body154.i, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i: ; preds = %bb.cs
  %i.kf = getelementptr inbounds nuw i8, ptr %.val103.i, i64 16
  %i.kg = load i64, ptr %i.kf, align 8, !range !49, !invariant.load !35, !noalias !12747
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val102.i, i64 noundef %i.kd, i64 noundef range(i64 1, 536870913) %i.kg) #48, !noalias !12747
  br label %.body154.i

bb.ct:                                            ; preds = %bb.cf
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !12746
  %i.kh = load ptr, ptr @_RNvNCNCNvNtNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage9retry_ext19ObjectStoreRetryExt16put_with_retries00s0_10___CALLSITE, align 8, !noalias !12746, !nonnull !35, !align !42, !noundef !35 ; 2 uses
  %i.ki = getelementptr inbounds nuw i8, ptr %i.kh, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !12746
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !12746
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !12746
  store ptr %i.fr, ptr %i.s, align 8, !noalias !12746
  %.sroa.5.0..sroa_idx.i34 = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store ptr @_RNvXsi_NtNtNtCsbvkFyIu7lgC_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.5.0..sroa_idx.i34, align 8, !noalias !12746
  %i.kj = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  store ptr %i.x, ptr %i.kj, align 8, !noalias !12746
  %.sroa.5217.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  store ptr @_RNvXs1i_NtCsbvkFyIu7lgC_4core3fmtReNtB6_7Display3fmtCs14kWLkQVSKO_14deltalake_core, ptr %.sroa.5217.0..sroa_idx.i, align 8, !noalias !12746
  %i.kk = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  store ptr %i.w, ptr %i.kk, align 8, !noalias !12746
  %.sroa.5219.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.s, i64 40
  store ptr @_RNvXsm_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtCsbvkFyIu7lgC_4core5error5ErrorNtNtBM_6marker4SyncNtB1j_4SendEL_ENtNtBM_3fmt7Display3fmtCs14kWLkQVSKO_14deltalake_core, ptr %.sroa.5219.0..sroa_idx.i, align 8, !noalias !12746
  store ptr @77, ptr %i.t, align 8, !noalias !12746
  %i.kl = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store ptr %i.s, ptr %i.kl, align 8, !noalias !12746
  store ptr %i.t, ptr %i.u, align 8, !noalias !12746
  %i.km = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store ptr @75, ptr %i.km, align 8, !noalias !12746
  store i64 1, ptr %i.v, align 8, !noalias !12746
  %.sroa.6212.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  store ptr %i.u, ptr %.sroa.6212.0..sroa_idx.i, align 8, !noalias !12746
  %.sroa.7213.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  store i64 1, ptr %.sroa.7213.0..sroa_idx.i, align 8, !noalias !12746
  %.sroa.8214.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  store ptr %i.ki, ptr %.sroa.8214.0..sroa_idx.i, align 8, !noalias !12746
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !12746
  invoke void @_RNvMNtCs2y6mmZ7bjoM_12tracing_core5eventNtB2_5Event8dispatch(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.kh, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.v)
          to label %.noexc162.i unwind label %bb.cx, !noalias !12747

.noexc162.i:                                      ; preds = %bb.ct
  %i.kn = load atomic i8, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher6EXISTS monotonic, align 1, !noalias !12758
  %i.ko = icmp eq i8 %i.kn, 0
  br i1 %i.ko, label %bb.cu, label %bb.cy

bb.cu:                                            ; preds = %.noexc162.i
  %i.kp = load atomic i64, ptr @_RNvCsaljjC7ZTCQu_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8, !noalias !12758 ; 2 uses
  %i.kq = icmp ult i64 %i.kp, 6
  call void @llvm.assume(i1 %i.kq)
  %i.kr = icmp samesign ugt i64 %i.kp, 3
  br i1 %i.kr, label %bb.cv, label %bb.cy

bb.cv:                                            ; preds = %bb.cu
  %i.ks = load ptr, ptr @_RNvNCNCNvNtNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage9retry_ext19ObjectStoreRetryExt16put_with_retries00s0_10___CALLSITE, align 8, !noalias !12758, !nonnull !35, !align !42, !noundef !35 ; 3 uses
  %i.kt = getelementptr inbounds nuw i8, ptr %i.ks, i64 32
  %i.ku = load ptr, ptr %i.kt, align 8, !noalias !12747, !nonnull !35, !noundef !35
  %i.kv = getelementptr inbounds nuw i8, ptr %i.ks, i64 40
  %i.kw = load i64, ptr %i.kv, align 8, !noalias !12747, !noundef !35
  store i64 4, ptr %i.b, align 8, !noalias !12758
  %.sroa.3.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.ku, ptr %.sroa.3.0..sroa_idx.i.i, align 8, !noalias !12758
  %.sroa.5.0..sroa_idx.i161.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %i.kw, ptr %.sroa.5.0..sroa_idx.i161.i, align 8, !noalias !12758
  %i.kx = invoke { ptr, ptr } @_RNvCsaljjC7ZTCQu_3log6logger()
          to label %.noexc163.i unwind label %bb.cx, !noalias !12747 ; 2 uses

.noexc163.i:                                      ; preds = %bb.cv
  %i.ky = extractvalue { ptr, ptr } %i.kx, 0      ; 2 uses
  %i.kz = extractvalue { ptr, ptr } %i.kx, 1      ; 2 uses
  %i.la = getelementptr inbounds nuw i8, ptr %i.kz, i64 24
  %i.lb = load ptr, ptr %i.la, align 8, !invariant.load !35, !noalias !12747, !nonnull !35
  %i.lc = invoke noundef zeroext i1 %i.lb(ptr noundef %i.ky, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.b) #56
          to label %.noexc164.i unwind label %bb.cx, !noalias !12747, !inline_history !12706

.noexc164.i:                                      ; preds = %.noexc163.i
  br i1 %i.lc, label %bb.cw, label %bb.cy

bb.cw:                                            ; preds = %.noexc164.i
  invoke void @_RNvNtCscTw95cGIolY_7tracing15___macro_support13___tracing_log(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.ks, ptr noundef nonnull %i.ky, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.kz, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.v)
          to label %bb.cy unwind label %bb.cx, !noalias !12747

bb.cx:                                            ; preds = %bb.cw, %.noexc163.i, %bb.cv, %bb.ct
  %i.ld = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !12746
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !12746
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !12746
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !12746
  br label %bb.dl

bb.cy:                                            ; preds = %bb.cw, %.noexc164.i, %bb.cu, %.noexc162.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !12746
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !12746
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !12746
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !12746
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !12746
  br label %bb.cp

.body154.i:                                       ; preds = %bb.dl, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i, %bb.cs
  %.pn62.i = phi { ptr, i32 } [ %.pn59.pn.i, %bb.dl ], [ %i.kb, %bb.cs ], [ %i.kb, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !12746
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !12746
  br label %bb.by

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i.i, %bb.cr
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !12746
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !12746
  %i.le = load i64, ptr %i.ar, align 8, !range !57, !noalias !12746, !noundef !35 ; 2 uses
  switch i64 %i.le, label %bb.da [
    i64 -9223372036854775790, label %bb.cz
    i64 -9223372036854775802, label %bb.cz
  ]

bb.cz:                                            ; preds = %bb.da, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECs14kWLkQVSKO_14deltalake_core.exit.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECs14kWLkQVSKO_14deltalake_core.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar), !noalias !12746
  %.pre.i = load i64, ptr %i.fr, align 8, !noalias !12746
  %.pre254.i = load i64, ptr %i.ft, align 8, !noalias !12746
  br label %bb.am

bb.da:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECs14kWLkQVSKO_14deltalake_core.exit.i
  %3 = icmp ne i64 %i.le, -9223372036854775800
  call void @llvm.assume(i1 %3)
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCsjyY8HP3IvQ6_12object_store5ErrorECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(72) %i.ar)
          to label %bb.cz unwind label %bb.dj, !noalias !12747

bb.db:                                            ; preds = %bb.am
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ar), !noalias !12746
  %i.lf = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.lg = load ptr, ptr %i.lf, align 8, !noalias !12746, !nonnull !35, !align !42, !noundef !35
  %i.lh = getelementptr inbounds nuw i8, ptr %1, i64 176
  %i.li = load ptr, ptr %i.lh, align 8, !noalias !12746, !nonnull !35, !align !42, !noundef !35
  %.val136.i = load ptr, ptr %i.eg, align 8, !noalias !12746, !nonnull !35, !noundef !35 ; 2 uses
  %i.lj = getelementptr i8, ptr %1, i64 96
  %.val137.i = load i64, ptr %i.lj, align 8, !noalias !12746
  %i.lk = atomicrmw add ptr %.val136.i, i64 1 monotonic, align 8, !noalias !12747
  %i.ll = icmp slt i64 %i.lk, 0
  br i1 %i.ll, label %bb.dc, label %bb.di

bb.dc:                                            ; preds = %bb.db
  call void @llvm.trap()
  unreachable

bb.dd:                                            ; preds = %bb.de
  %i.lm = landingpad { ptr, i32 }
          cleanup
  br label %bb.dg

bb.de:                                            ; preds = %bb.am
  invoke void @_RNvNtCsbvkFyIu7lgC_4core9panicking9panic_fmt(ptr noundef nonnull @78, ptr noundef nonnull inttoptr (i64 211 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @79) #57
          to label %bb.df unwind label %bb.dd, !noalias !12747

bb.df:                                            ; preds = %bb.de
  unreachable

bb.dg:                                            ; preds = %bb.dd, %.body.i
  %.pn72.pn.pn.pn.pn.pn.i = phi { ptr, i32 } [ %.pn72.pn.pn.pn.pn.i, %.body.i ], [ %i.lm, %bb.dd ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !12759)
  call void @llvm.experimental.noalias.scope.decl(metadata !12760)
  call void @llvm.experimental.noalias.scope.decl(metadata !12761)
  %i.ln = load ptr, ptr %i.eg, align 8, !alias.scope !12762, !noalias !12746, !nonnull !35, !noundef !35
  %i.lo = atomicrmw add ptr %i.ln, i64 -1 release, align 8, !noalias !12763
  %i.lp = icmp eq i64 %i.lo, 1
  br i1 %i.lp, label %bb.dh, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store7payload10PutPayloadECs14kWLkQVSKO_14deltalake_core.exit167.i

bb.dh:                                            ; preds = %bb.dg
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcSNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesE9drop_slowCsjyY8HP3IvQ6_12object_store(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.eg) #58
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store7payload10PutPayloadECs14kWLkQVSKO_14deltalake_core.exit167.i unwind label %bb.bw, !noalias !12747

bb.di:                                            ; preds = %bb.db
  %i.lq = invoke { ptr, ptr } @_RNvXsc_CsjyY8HP3IvQ6_12object_storeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtB5_11ObjectStoreEL_EB16_3put(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.lg, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.li, ptr noundef nonnull %.val136.i, i64 noundef %.val137.i)
          to label %bb.dk unwind label %bb.dj, !noalias !12747 ; 2 uses

bb.dj:                                            ; preds = %bb.di, %bb.da
  %i.lr = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

bb.dk:                                            ; preds = %bb.di
  %i.ls = extractvalue { ptr, ptr } %i.lq, 0
  %i.lt = extractvalue { ptr, ptr } %i.lq, 1
  %i.lu = getelementptr inbounds nuw i8, ptr %1, i64 104
  store ptr %i.ls, ptr %i.lu, align 8, !noalias !12746
  %i.lv = getelementptr inbounds nuw i8, ptr %1, i64 112
  store ptr %i.lt, ptr %i.lv, align 8, !noalias !12746
  br label %bb.aq

bb.dl:                                            ; preds = %bb.cx, %bb.cn, %bb.ck
  %.pn59.pn.i = phi { ptr, i32 } [ %i.ld, %bb.cx ], [ %i.jk, %bb.ck ], [ %i.js, %bb.cn ]
  %.val.i = load ptr, ptr %i.w, align 16, !noalias !12746
  %.val101.i = load ptr, ptr %i.in, align 8, !noalias !12746, !nonnull !35, !align !42, !noundef !35
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECs14kWLkQVSKO_14deltalake_core(ptr %.val.i, ptr nonnull %.val101.i) #54
          to label %.body154.i unwind label %bb.bw, !noalias !12747

bb.dm:                                            ; preds = %bb.bz
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !12746
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.m, ptr noundef nonnull align 8 dereferenceable(72) %i.ar, i64 72, i1 false), !noalias !12746
  %i.lw = load atomic i64, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core8metadata9MAX_LEVEL monotonic, align 8, !noalias !12746
  %i.lx = icmp samesign ult i64 %i.lw, 5
  br i1 %i.lx, label %bb.dn, label %bb.ds

bb.dn:                                            ; preds = %bb.dm
  %i.ly = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNCNCNvNtNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage9retry_ext19ObjectStoreRetryExt16put_with_retries00s1_10___CALLSITE, i64 16) monotonic, align 8, !noalias !12746 ; 2 uses
  %i.lz = icmp ult i8 %i.ly, 3
  br i1 %i.lz, label %bb.dp, label %bb.do, !prof !12742

bb.do:                                            ; preds = %bb.dn
  %i.ma = invoke noundef i8 @_RNvMNtCs2y6mmZ7bjoM_12tracing_core8callsiteNtB2_15DefaultCallsite8register(ptr noundef nonnull align 8 @_RNvNCNCNvNtNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage9retry_ext19ObjectStoreRetryExt16put_with_retries00s1_10___CALLSITE) #58
          to label %bb.dp unwind label %bb.dw, !noalias !12747

bb.dp:                                            ; preds = %bb.do, %bb.dn
  %.sroa.0.0.i168.i = phi i8 [ %i.ly, %bb.dn ], [ %i.ma, %bb.do ] ; 2 uses
  %i.mb = icmp eq i8 %.sroa.0.0.i168.i, 0
  br i1 %i.mb, label %bb.ds, label %bb.dq

bb.dq:                                            ; preds = %bb.dp
  %i.mc = load ptr, ptr @_RNvNCNCNvNtNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage9retry_ext19ObjectStoreRetryExt16put_with_retries00s1_10___CALLSITE, align 8, !noalias !12746, !nonnull !35, !align !42, !noundef !35
  %i.md = invoke noundef zeroext i1 @_RNvNtCscTw95cGIolY_7tracing15___macro_support12___is_enabled(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.mc, i8 noundef %.sroa.0.0.i168.i)
          to label %bb.dr unwind label %bb.dw, !noalias !12747

bb.dr:                                            ; preds = %bb.dq
  br i1 %i.md, label %bb.ec, label %bb.ds

bb.ds:                                            ; preds = %bb.dr, %bb.dp, %bb.dm
  %i.me = load atomic i8, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher6EXISTS monotonic, align 1, !noalias !12746
  %.not247.i = icmp eq i8 %i.me, 0
  br i1 %.not247.i, label %bb.dt, label %bb.eb

bb.dt:                                            ; preds = %bb.ds
  %i.mf = load atomic i64, ptr @_RNvCsaljjC7ZTCQu_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8, !noalias !12746 ; 2 uses
  %i.mg = icmp ult i64 %i.mf, 6
  call void @llvm.assume(i1 %i.mg)
  %.not248.i = icmp eq i64 %i.mf, 0
  br i1 %.not248.i, label %bb.eb, label %bb.du

bb.du:                                            ; preds = %bb.dt
  %i.mh = load ptr, ptr @_RNvNCNCNvNtNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage9retry_ext19ObjectStoreRetryExt16put_with_retries00s1_10___CALLSITE, align 8, !noalias !12746, !nonnull !35, !align !42, !noundef !35 ; 3 uses
  %i.mi = getelementptr i8, ptr %i.mh, i64 32
  %.val130.i = load ptr, ptr %i.mi, align 8, !noalias !12747, !nonnull !35, !noundef !35
  %i.mj = getelementptr i8, ptr %i.mh, i64 40
  %.val131.i = load i64, ptr %i.mj, align 8, !noalias !12747, !noundef !35
  store i64 1, ptr %i.h, align 8, !alias.scope !12764, !noalias !12746
  %.sroa.6242.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr %.val130.i, ptr %.sroa.6242.0..sroa_idx.i, align 8, !alias.scope !12764, !noalias !12746
  %.sroa.8243.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store i64 %.val131.i, ptr %.sroa.8243.0..sroa_idx.i, align 8, !alias.scope !12764, !noalias !12746
  %i.mk = invoke { ptr, ptr } @_RNvCsaljjC7ZTCQu_3log6logger()
          to label %bb.dv unwind label %bb.dw, !noalias !12747 ; 2 uses

bb.dv:                                            ; preds = %bb.du
  %i.ml = extractvalue { ptr, ptr } %i.mk, 0      ; 2 uses
  %i.mm = extractvalue { ptr, ptr } %i.mk, 1      ; 2 uses
  %i.mn = getelementptr inbounds nuw i8, ptr %i.mm, i64 24
  %i.mo = load ptr, ptr %i.mn, align 8, !invariant.load !35, !noalias !12747, !nonnull !35
  %i.mp = invoke noundef zeroext i1 %i.mo(ptr noundef %i.ml, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.h)
          to label %bb.dx unwind label %bb.dw, !noalias !12747

bb.dw:                                            ; preds = %bb.dv, %bb.du, %bb.dq, %bb.do
  %i.mq = landingpad { ptr, i32 }
          cleanup
  br label %bb.ef

bb.dx:                                            ; preds = %bb.dv
  br i1 %i.mp, label %bb.dy, label %bb.eb

bb.dy:                                            ; preds = %bb.dx
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !12746
  %i.mr = load ptr, ptr @_RNvNCNCNvNtNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage9retry_ext19ObjectStoreRetryExt16put_with_retries00s1_10___CALLSITE, align 8, !noalias !12746, !nonnull !35, !align !42, !noundef !35
  %i.ms = getelementptr inbounds nuw i8, ptr %i.mr, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !12746
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !12746
  store ptr @80, ptr %i.e, align 8, !noalias !12746
  %i.mt = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr inttoptr (i64 91 to ptr), ptr %i.mt, align 8, !noalias !12746
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !12746
  store ptr %i.m, ptr %i.d, align 8, !noalias !12746
  store ptr %i.e, ptr %i.f, align 8, !noalias !12746
  %i.mu = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr @75, ptr %i.mu, align 8, !noalias !12746
  %i.mv = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store ptr %i.fr, ptr %i.mv, align 8, !noalias !12746
  %i.mw = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  store ptr @76, ptr %i.mw, align 8, !noalias !12746
  %i.mx = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  store ptr %i.d, ptr %i.mx, align 8, !noalias !12746
  %i.my = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  store ptr @81, ptr %i.my, align 8, !noalias !12746
  store i64 1, ptr %i.g, align 8, !alias.scope !12765, !noalias !12746
  %.sroa.4.0..sroa_idx.i173.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr %i.f, ptr %.sroa.4.0..sroa_idx.i173.i, align 8, !alias.scope !12765, !noalias !12746
  %.sroa.5.0..sroa_idx.i174.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store i64 3, ptr %.sroa.5.0..sroa_idx.i174.i, align 8, !alias.scope !12765, !noalias !12746
  %i.mz = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  store ptr %i.ms, ptr %i.mz, align 8, !alias.scope !12765, !noalias !12746
  invoke void @_RNvNtCscTw95cGIolY_7tracing15___macro_support13___tracing_log(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.mh, ptr noundef nonnull %i.ml, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.mm, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.h, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.g)
          to label %bb.ea unwind label %bb.dz, !noalias !12747

bb.dz:                                            ; preds = %bb.dy
  %i.na = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !12746
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !12746
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !12746
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !12746
  br label %bb.ef

bb.ea:                                            ; preds = %bb.dy
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !12746
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !12746
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !12746
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !12746
  br label %bb.eb

bb.eb:                                            ; preds = %bb.ee, %bb.ea, %bb.dx, %bb.dt, %bb.ds
  %.sroa.022.0.copyload.i = load i64, ptr %i.m, align 8, !noalias !12746
  %.sroa.423.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.413.i, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.423.0..sroa_idx.i, i64 48, i1 false), !noalias !12746
  %.sroa.524.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.m, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.516.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.524.0..sroa_idx.i, i64 16, i1 false), !noalias !12746
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !12746
  br label %bb.bt

end_hunk_0
begin_hunk_1_@_RNCNvYINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_ENtNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage9retry_ext19ObjectStoreRetryExt16put_with_retries0B1w_:bb.a
  %.not250.i = icmp eq i8 %i.ns, 0
  br i1 %.not250.i, label %bb.eo, label %bb.ew

bb.eo:                                            ; preds = %bb.en
  %i.nt = load atomic i64, ptr @_RNvCsaljjC7ZTCQu_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8, !noalias !12746 ; 2 uses
  %i.nu = icmp ult i64 %i.nt, 6
  call void @llvm.assume(i1 %i.nu)
  %i.nv = icmp samesign ugt i64 %i.nt, 1
  br i1 %i.nv, label %bb.ep, label %bb.ew

bb.ep:                                            ; preds = %bb.eo
  %i.nw = load ptr, ptr @_RNvNCNCNvNtNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage9retry_ext19ObjectStoreRetryExt16put_with_retries00s_10___CALLSITE, align 8, !noalias !12746, !nonnull !35, !align !42, !noundef !35 ; 3 uses
  %i.nx = getelementptr i8, ptr %i.nw, i64 32
  %.val128.i = load ptr, ptr %i.nx, align 8, !noalias !12747, !nonnull !35, !noundef !35
  %i.ny = getelementptr i8, ptr %i.nw, i64 40
  %.val129.i = load i64, ptr %i.ny, align 8, !noalias !12747, !noundef !35
  store i64 2, ptr %i.ac, align 8, !alias.scope !12766, !noalias !12746
  %.sroa.6207.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  store ptr %.val128.i, ptr %.sroa.6207.0..sroa_idx.i, align 8, !alias.scope !12766, !noalias !12746
  %.sroa.8208.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  store i64 %.val129.i, ptr %.sroa.8208.0..sroa_idx.i, align 8, !alias.scope !12766, !noalias !12746
  %i.nz = invoke { ptr, ptr } @_RNvCsaljjC7ZTCQu_3log6logger()
          to label %bb.eq unwind label %bb.er, !noalias !12747 ; 2 uses

bb.eq:                                            ; preds = %bb.ep
  %i.oa = extractvalue { ptr, ptr } %i.nz, 0      ; 2 uses
  %i.ob = extractvalue { ptr, ptr } %i.nz, 1      ; 2 uses
  %i.oc = getelementptr inbounds nuw i8, ptr %i.ob, i64 24
  %i.od = load ptr, ptr %i.oc, align 8, !invariant.load !35, !noalias !12747, !nonnull !35
  %i.oe = invoke noundef zeroext i1 %i.od(ptr noundef %i.oa, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ac)
          to label %bb.es unwind label %bb.er, !noalias !12747

bb.er:                                            ; preds = %bb.eq, %bb.ep, %bb.el, %bb.ej
  %i.of = landingpad { ptr, i32 }
          cleanup
  br label %bb.fe

bb.es:                                            ; preds = %bb.eq
  br i1 %i.oe, label %bb.et, label %bb.ew

bb.et:                                            ; preds = %bb.es
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !noalias !12746
  %i.og = load ptr, ptr @_RNvNCNCNvNtNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage9retry_ext19ObjectStoreRetryExt16put_with_retries00s_10___CALLSITE, align 8, !noalias !12746, !nonnull !35, !align !42, !noundef !35
  %i.oh = getelementptr inbounds nuw i8, ptr %i.og, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !noalias !12746
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !12746
  store ptr @82, ptr %i.z, align 8, !noalias !12746
  %i.oi = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  store ptr inttoptr (i64 77 to ptr), ptr %i.oi, align 8, !noalias !12746
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !12746
  store ptr %i.ah, ptr %i.y, align 8, !noalias !12746
  store ptr %i.z, ptr %i.aa, align 8, !noalias !12746
  %i.oj = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  store ptr @75, ptr %i.oj, align 8, !noalias !12746
  %i.ok = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  store ptr %i.fr, ptr %i.ok, align 8, !noalias !12746
  %i.ol = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  store ptr @76, ptr %i.ol, align 8, !noalias !12746
  %i.om = getelementptr inbounds nuw i8, ptr %i.aa, i64 32
  store ptr %i.y, ptr %i.om, align 8, !noalias !12746
  %i.on = getelementptr inbounds nuw i8, ptr %i.aa, i64 40
  store ptr @81, ptr %i.on, align 8, !noalias !12746
  store i64 1, ptr %i.ab, align 8, !alias.scope !12767, !noalias !12746
  %.sroa.4.0..sroa_idx.i182.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  store ptr %i.aa, ptr %.sroa.4.0..sroa_idx.i182.i, align 8, !alias.scope !12767, !noalias !12746
  %.sroa.5.0..sroa_idx.i183.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  store i64 3, ptr %.sroa.5.0..sroa_idx.i183.i, align 8, !alias.scope !12767, !noalias !12746
  %i.oo = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  store ptr %i.oh, ptr %i.oo, align 8, !alias.scope !12767, !noalias !12746
  invoke void @_RNvNtCscTw95cGIolY_7tracing15___macro_support13___tracing_log(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.nw, ptr noundef nonnull %i.oa, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ob, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.ac, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.ab)
          to label %bb.ev unwind label %bb.eu, !noalias !12747

bb.eu:                                            ; preds = %bb.et
  %i.op = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !12746
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !12746
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !12746
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !12746
  br label %bb.fe

bb.ev:                                            ; preds = %bb.et
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !12746
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !12746
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !12746
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !12746
  br label %bb.ew

bb.ew:                                            ; preds = %bb.ez, %bb.ev, %bb.es, %bb.eo, %bb.en
  %.sroa.019.0.copyload.i = load i64, ptr %i.ah, align 8, !noalias !12746
  %.sroa.420.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.413.i, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.420.0..sroa_idx.i, i64 48, i1 false), !noalias !12746
  %.sroa.521.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ah, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.516.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.521.0..sroa_idx.i, i64 16, i1 false), !noalias !12746
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah), !noalias !12746
  br label %bb.bt

bb.ex:                                            ; preds = %bb.em
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag), !noalias !12746
  %i.oq = load ptr, ptr @_RNvNCNCNvNtNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage9retry_ext19ObjectStoreRetryExt16put_with_retries00s_10___CALLSITE, align 8, !noalias !12746, !nonnull !35, !align !42, !noundef !35
  %i.or = getelementptr inbounds nuw i8, ptr %i.oq, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af), !noalias !12746
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae), !noalias !12746
  store ptr @82, ptr %i.ae, align 8, !noalias !12746
  %i.os = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  store ptr inttoptr (i64 77 to ptr), ptr %i.os, align 8, !noalias !12746
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad), !noalias !12746
  store ptr %i.ah, ptr %i.ad, align 8, !noalias !12746
  store ptr %i.ae, ptr %i.af, align 8, !noalias !12746
  %i.ot = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  store ptr @75, ptr %i.ot, align 8, !noalias !12746
  %i.ou = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  store ptr %i.fr, ptr %i.ou, align 8, !noalias !12746
  %i.ov = getelementptr inbounds nuw i8, ptr %i.af, i64 24
  store ptr @76, ptr %i.ov, align 8, !noalias !12746
  %i.ow = getelementptr inbounds nuw i8, ptr %i.af, i64 32
  store ptr %i.ad, ptr %i.ow, align 8, !noalias !12746
  %i.ox = getelementptr inbounds nuw i8, ptr %i.af, i64 40
  store ptr @81, ptr %i.ox, align 8, !noalias !12746
  store i64 1, ptr %i.ag, align 8, !noalias !12746
  %.sroa.7200.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  store ptr %i.af, ptr %.sroa.7200.0..sroa_idx.i, align 8, !noalias !12746
  %.sroa.8201.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  store i64 3, ptr %.sroa.8201.0..sroa_idx.i, align 8, !noalias !12746
  %.sroa.9202.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 24
  store ptr %i.or, ptr %.sroa.9202.0..sroa_idx.i, align 8, !noalias !12746
  invoke fastcc void @_RNCNCNCNvYINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_ENtNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage9retry_ext19ObjectStoreRetryExt16put_with_retries00s_0B1A_(ptr noalias noundef readonly align 8 captures(address) dereferenceable(32) %i.ag)
          to label %bb.ez unwind label %bb.ey, !noalias !12747

bb.ey:                                            ; preds = %bb.ex
  %i.oy = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !noalias !12746
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !12746
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !12746
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !noalias !12746
  br label %bb.fe

bb.ez:                                            ; preds = %bb.ex
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !noalias !12746
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !12746
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !12746
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !noalias !12746
  br label %bb.ew

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store7payload10PutPayloadECs14kWLkQVSKO_14deltalake_core.exit167.i: ; preds = %bb.fa, %bb.dh, %bb.dg
  %.pn79.i = phi { ptr, i32 } [ %i.pc, %bb.fa ], [ %.pn72.pn.pn.pn.pn.pn.i, %bb.dh ], [ %.pn72.pn.pn.pn.pn.pn.i, %bb.dg ] ; 3 uses
  %i.oz = getelementptr inbounds nuw i8, ptr %1, i64 184
  %i.pa = load i8, ptr %i.oz, align 8, !range !56, !noalias !12746, !noundef !35
  %i.pb = trunc nuw i8 %i.pa to i1
  br i1 %i.pb, label %bb.fh, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store7payload10PutPayloadECs14kWLkQVSKO_14deltalake_core.exit189.i

bb.fa:                                            ; preds = %bb.bu
  %i.pc = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store7payload10PutPayloadECs14kWLkQVSKO_14deltalake_core.exit167.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store7payload10PutPayloadECs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %bb.bu, %bb.bt
  %i.pd = getelementptr inbounds nuw i8, ptr %1, i64 184
  %i.pe = load i8, ptr %i.pd, align 8, !range !56, !noalias !12746, !noundef !35
  %i.pf = trunc nuw i8 %i.pe to i1
  br i1 %i.pf, label %bb.fb, label %bb.fk

bb.fb:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store7payload10PutPayloadECs14kWLkQVSKO_14deltalake_core.exit.i
  %i.pg = getelementptr inbounds nuw i8, ptr %1, i64 120 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !12768)
  call void @llvm.experimental.noalias.scope.decl(metadata !12769)
  call void @llvm.experimental.noalias.scope.decl(metadata !12770)
  %i.ph = load ptr, ptr %i.pg, align 8, !alias.scope !12771, !noalias !12746, !nonnull !35, !noundef !35
  %i.pi = atomicrmw add ptr %i.ph, i64 -1 release, align 8, !noalias !12772
  %i.pj = icmp eq i64 %i.pi, 1
  br i1 %i.pj, label %bb.fc, label %bb.fk

bb.fc:                                            ; preds = %bb.fb
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcSNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesE9drop_slowCsjyY8HP3IvQ6_12object_store(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.pg) #58
          to label %bb.fk unwind label %bb.fd, !noalias !12747

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store7payload10PutPayloadECs14kWLkQVSKO_14deltalake_core.exit189.i: ; preds = %bb.fi, %bb.fh, %bb.fd, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store7payload10PutPayloadECs14kWLkQVSKO_14deltalake_core.exit167.i
  %.pn81.i = phi { ptr, i32 } [ %i.pk, %bb.fd ], [ %.pn79.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store7payload10PutPayloadECs14kWLkQVSKO_14deltalake_core.exit167.i ], [ %.pn79.i, %bb.fi ], [ %.pn79.i, %bb.fh ]
  store i8 2, ptr %i.eh, align 1, !noalias !12746
  br label %.body37

bb.fd:                                            ; preds = %bb.fc
  %i.pk = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store7payload10PutPayloadECs14kWLkQVSKO_14deltalake_core.exit189.i

bb.fe:                                            ; preds = %bb.ey, %bb.eu, %bb.er
  %.pn72.pn.pn.i = phi { ptr, i32 } [ %i.oy, %bb.ey ], [ %i.of, %bb.er ], [ %i.op, %bb.eu ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCsjyY8HP3IvQ6_12object_store5ErrorECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(72) %i.ah) #54
          to label %bb.ff unwind label %bb.bw, !noalias !12747

bb.ff:                                            ; preds = %bb.fe
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah), !noalias !12746
  br label %.body.i

bb.fg:                                            ; preds = %bb.by
  %i.pl = icmp ne i64 %i.ie, -9223372036854775800
  call void @llvm.assume(i1 %i.pl)
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCsjyY8HP3IvQ6_12object_store5ErrorECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(72) %i.ar) #54
          to label %.body.i unwind label %bb.bw, !noalias !12747

bb.fh:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store7payload10PutPayloadECs14kWLkQVSKO_14deltalake_core.exit167.i
  %i.pm = getelementptr inbounds nuw i8, ptr %1, i64 120 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !12773)
  call void @llvm.experimental.noalias.scope.decl(metadata !12774)
  call void @llvm.experimental.noalias.scope.decl(metadata !12775)
  %i.pn = load ptr, ptr %i.pm, align 8, !alias.scope !12776, !noalias !12746, !nonnull !35, !noundef !35
  %i.po = atomicrmw add ptr %i.pn, i64 -1 release, align 8, !noalias !12777
  %i.pp = icmp eq i64 %i.po, 1
  br i1 %i.pp, label %bb.fi, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store7payload10PutPayloadECs14kWLkQVSKO_14deltalake_core.exit189.i

bb.fi:                                            ; preds = %bb.fh
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcSNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesE9drop_slowCsjyY8HP3IvQ6_12object_store(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.pm) #58
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store7payload10PutPayloadECs14kWLkQVSKO_14deltalake_core.exit189.i unwind label %bb.bw, !noalias !12747

bb.fj:                                            ; preds = %bb.ao, %bb.an
  %i.pq = landingpad { ptr, i32 }
          cleanup
  br label %.body37

.body37:                                          ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store7payload10PutPayloadECs14kWLkQVSKO_14deltalake_core.exit189.i, %bb.fj
  %eh.lpad-body38 = phi { ptr, i32 } [ %i.pq, %bb.fj ], [ %.pn81.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store7payload10PutPayloadECs14kWLkQVSKO_14deltalake_core.exit189.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9)
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNCNvYINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_ENtNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage9retry_ext19ObjectStoreRetryExt16put_with_retries00EB2f_(ptr noundef nonnull align 8 %i.eg) #54
          to label %.body unwind label %bb.q

bb.fk:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store7payload10PutPayloadECs14kWLkQVSKO_14deltalake_core.exit.i, %bb.fb, %bb.fc
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.8, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.413.i, i64 48, i1 false), !noalias !12778
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.9, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.516.i, i64 16, i1 false), !noalias !12778
  store i8 1, ptr %i.eh, align 1, !noalias !12746
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.413.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.516.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al)
  %i.pr = icmp eq i64 %.sroa.010.0.i, -9223372036854775789
  br i1 %i.pr, label %bb.fl, label %bb.fm

bb.fl:                                            ; preds = %.thread, %bb.fk
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9)
  store i64 -9223372036854775789, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au)
  br label %common.ret

bb.fm:                                            ; preds = %bb.fk
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.3, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.8, i64 48, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.9, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9)
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNCNvYINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_ENtNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage9retry_ext19ObjectStoreRetryExt16put_with_retries00EB2f_(ptr noundef nonnull align 8 %i.eg)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCscTw95cGIolY_7tracing10instrument12InstrumentedNCNCNvYINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_ENtNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage9retry_ext19ObjectStoreRetryExt16put_with_retries00EEB36_.exit unwind label %bb.fn

bb.fn:                                            ; preds = %bb.ah, %bb.fm
  %i.ps = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.fo:                                            ; preds = %bb.fp, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCscTw95cGIolY_7tracing10instrument12InstrumentedNCNCNvYINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_ENtNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage9retry_ext19ObjectStoreRetryExt16put_with_retries00EEB36_.exit
  store i8 0, ptr %i.ed, align 8
  store i64 %.sroa.048.0, ptr %0, align 8
  %.sroa.3.0..sroa_idx50 = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.3.0..sroa_idx50, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.3, i64 48, i1 false)
  %.sroa.4.0..sroa_idx51 = getelementptr inbounds nuw i8, ptr %0, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.0..sroa_idx51, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4, i64 16, i1 false)
  br label %common.ret

bb.fp:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCscTw95cGIolY_7tracing10instrument12InstrumentedNCNCNvYINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_ENtNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage9retry_ext19ObjectStoreRetryExt16put_with_retries00EEB36_.exit
  %i.pt = getelementptr inbounds nuw i8, ptr %1, i64 24
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCscTw95cGIolY_7tracing4span4SpanECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(40) %i.pt)
          to label %bb.fo unwind label %bb.fq

bb.fq:                                            ; preds = %bb.h, %bb.f, %bb.fp
  %i.pu = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

bb.fr:                                            ; preds = %bb.fs, %.body
  store i8 0, ptr %i.dp, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au)
  %i.pv = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.pw = load i8, ptr %i.pv, align 8, !range !56, !noundef !35
  %i.px = trunc nuw i8 %i.pw to i1
  br i1 %i.px, label %bb.ft, label %bb.y

bb.fs:                                            ; preds = %.body
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNCNvYINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_ENtNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage9retry_ext19ObjectStoreRetryExt16put_with_retries00EB2f_(ptr noundef nonnull align 8 %i.au) #54
          to label %bb.fr unwind label %bb.q

bb.ft:                                            ; preds = %bb.fr
  %i.py = getelementptr inbounds nuw i8, ptr %1, i64 24
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCscTw95cGIolY_7tracing4span4SpanECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(40) %i.py) #54
          to label %bb.y unwind label %bb.q

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store7payload10PutPayloadECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.fu, %bb.fv, %bb.y
  store i8 2, ptr %i.bg, align 1
  resume { ptr, i32 } %.pn24

bb.fu:                                            ; preds = %bb.y
  call void @llvm.experimental.noalias.scope.decl(metadata !12779)
  call void @llvm.experimental.noalias.scope.decl(metadata !12780)
  call void @llvm.experimental.noalias.scope.decl(metadata !12781)
  %i.pz = load ptr, ptr %1, align 8, !alias.scope !12782, !nonnull !35, !noundef !35
  %i.qa = atomicrmw add ptr %i.pz, i64 -1 release, align 8, !noalias !12782
  %i.qb = icmp eq i64 %i.qa, 1
  br i1 %i.qb, label %bb.fv, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store7payload10PutPayloadECs14kWLkQVSKO_14deltalake_core.exit

bb.fv:                                            ; preds = %bb.fu
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcSNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesE9drop_slowCsjyY8HP3IvQ6_12object_store(ptr noalias noundef nonnull align 8 dereferenceable(16) %1) #58
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store7payload10PutPayloadECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.q
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNCNvYNtNtCsjyY8HP3IvQ6_12object_store3aws8AmazonS3NtB8_11ObjectStore10get_ranges0Cs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr noundef nonnull align 8 %1, ptr noalias noundef align 8 dereferenceable(32) %2) unnamed_addr #3 personality ptr @rust_eh_personality !guid !12797 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  %.sroa.331.i = alloca [24 x i8], align 8        ; 7 uses
  %.sroa.532.i = alloca [40 x i8], align 8        ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  %.sroa.3.i = alloca [24 x i8], align 8          ; 7 uses
  %.sroa.5.i = alloca [40 x i8], align 8          ; 6 uses
  %i.c = alloca [72 x i8], align 8                ; 8 uses
  %i.d = alloca [32 x i8], align 8                ; 7 uses
  %i.e = alloca [112 x i8], align 8               ; 5 uses
  %i.f = alloca [136 x i8], align 8               ; 5 uses
  %i.g = alloca [24 x i8], align 8                ; 12 uses
  %.sroa.814 = alloca [24 x i8], align 8          ; 2 uses
  %.sroa.915 = alloca [40 x i8], align 8          ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 256 ; 3 uses
  %i.i = load i8, ptr %i.h, align 8, !range !41, !noundef !35
  switch i8 %i.i, label %default.unreachable19 [
    i8 0, label %.thread
    i8 1, label %bb.c
    i8 2, label %bb.d
    i8 3, label %bb.e
  ]

default.unreachable19:                            ; preds = %bb.e, %bb.a
  unreachable

.thread:                                          ; preds = %bb.a
  %i.j = load ptr, ptr %1, align 8, !nonnull !35, !align !42, !noundef !35
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !nonnull !35, !align !42, !noundef !35
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.n = load i64, ptr %i.m, align 8, !noundef !35
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.p = load ptr, ptr %i.o, align 8, !nonnull !35, !align !42, !noundef !35
  %.sroa.79.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 48
  store ptr %i.l, ptr %.sroa.79.0..sroa_idx, align 8
  %.sroa.810.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 56
  store i64 %i.n, ptr %.sroa.810.0..sroa_idx, align 8
  %.sroa.911.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 64
  store ptr %i.j, ptr %.sroa.911.0..sroa_idx, align 8
  %.sroa.1012.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 72
  store ptr %i.p, ptr %.sroa.1012.0..sroa_idx, align 8
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 80
  store i64 1048576, ptr %.sroa.11.0..sroa_idx, align 8
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 249
  store i8 0, ptr %.sroa.13.0..sroa_idx, align 1
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.331.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.532.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.3.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i)
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 249
  br label %bb.f

bb.b:                                             ; preds = %.body, %bb.am
  %.pn4 = phi { ptr, i32 } [ %i.ca, %bb.am ], [ %eh.lpad-body, %.body ]
  store i8 2, ptr %i.h, align 8
  resume { ptr, i32 } %.pn4

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @111) #55
  unreachable

bb.d:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @111) #55
  unreachable

bb.e:                                             ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 249
  %.pre = load i8, ptr %.phi.trans.insert, align 1, !range !41, !noalias !12798
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.331.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.532.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.3.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i)
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 249 ; 2 uses
  switch i8 %.pre, label %default.unreachable19 [
    i8 0, label %bb.f
    i8 1, label %bb.p
    i8 2, label %bb.q
end_hunk_1
