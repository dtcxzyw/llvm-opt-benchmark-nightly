Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/delta-rs/original/deltalake_aws-9485bf1ee3f83c6f.deltalake_aws.6e131cb766b7c8d6-cgu.09?download=true
inline.NumInlined: 1606
inline.NumDeleted: 619
begin_hunk_0_@_RNCNvYDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_NtNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage9retry_ext19ObjectStoreRetryExt19delete_with_retries0Cs9rVkZwOUgsI_13deltalake_aws:bb.a
  unreachable

bb.y:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @66) #33
  unreachable

bb.z:                                             ; preds = %bb.b, %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ar)
  %i.dh = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 5 uses
  invoke void @_RNvXs0_NtCscTw95cGIolY_7tracing10instrumentINtB5_12InstrumentedNCNCNvYDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_NtNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage9retry_ext19ObjectStoreRetryExt19delete_with_retries00ENtNtNtCsbvkFyIu7lgC_4core6future6future6Future4pollCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %i.ar, ptr noundef nonnull align 8 %i.dh, ptr noalias noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.ab unwind label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.di = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar)
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCscTw95cGIolY_7tracing10instrument12InstrumentedNCNCNvYDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_NtNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage9retry_ext19ObjectStoreRetryExt19delete_with_retries00EECs9rVkZwOUgsI_13deltalake_aws(ptr noundef nonnull align 8 %i.dh) #30
          to label %.body unwind label %bb.p

bb.ab:                                            ; preds = %bb.z
  %i.dj = load i64, ptr %i.ar, align 8, !range !30, !noundef !6 ; 2 uses
  %i.dk = icmp eq i64 %i.dj, -9223372036854775789
  br i1 %i.dk, label %bb.ac, label %bb.ad

common.ret:                                       ; preds = %bb.ff, %bb.fd, %bb.ac
  %.sink = phi i8 [ 1, %bb.ff ], [ 4, %bb.fd ], [ 3, %bb.ac ]
  store i8 %.sink, ptr %i.bd, align 2
  ret void

bb.ac:                                            ; preds = %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar)
  store i64 -9223372036854775789, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at)
  br label %common.ret

bb.ad:                                            ; preds = %bb.ab
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.3, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.3.0..sroa_idx, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar)
  invoke void @_RNvXs0_NvNtCscTw95cGIolY_7tracing10instruments_1__INtB7_12InstrumentedNCNCNvYDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_NtNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage9retry_ext19ObjectStoreRetryExt19delete_with_retries00ENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noundef nonnull align 8 %i.dh)
          to label %bb.af unwind label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.dl = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCscTw95cGIolY_7tracing4span4SpanECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.dh) #30
          to label %.body unwind label %bb.ag

bb.af:                                            ; preds = %bb.ad
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCscTw95cGIolY_7tracing4span4SpanECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.dh)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCscTw95cGIolY_7tracing10instrument12InstrumentedNCNCNvYDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_NtNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage9retry_ext19ObjectStoreRetryExt19delete_with_retries00EECs9rVkZwOUgsI_13deltalake_aws.exit unwind label %bb.ah

bb.ag:                                            ; preds = %bb.ae
  %i.dm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #32
  unreachable

bb.ah:                                            ; preds = %bb.af
  %i.dn = landingpad { ptr, i32 }
          cleanup
  br label %.body

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCscTw95cGIolY_7tracing10instrument12InstrumentedNCNCNvYDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_NtNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage9retry_ext19ObjectStoreRetryExt19delete_with_retries00EECs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %bb.af, %bb.fe
  %.sroa.044.0 = phi i64 [ %.sroa.013.0245.i51, %bb.fe ], [ %i.dj, %bb.af ]
  %i.do = getelementptr inbounds nuw i8, ptr %1, i64 73
  store i8 0, ptr %i.do, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at)
  %i.dp = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.dq = load i8, ptr %i.dp, align 8, !range !16, !noundef !6
  %i.dr = trunc nuw i8 %i.dq to i1
  br i1 %i.dr, label %bb.fg, label %bb.ff

bb.ai:                                            ; preds = %bb.c, %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8)
  %i.ds = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.416.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al)
  %i.dt = getelementptr inbounds nuw i8, ptr %1, i64 160 ; 5 uses
  %i.du = load i8, ptr %i.dt, align 8, !range !23, !noalias !4126, !noundef !6
  switch i8 %i.du, label %default.unreachable68 [
    i8 0, label %bb.aj
    i8 1, label %bb.am
    i8 2, label %bb.an
    i8 3, label %bb.ak
  ]

bb.aj:                                            ; preds = %bb.ai
  %i.dv = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.dw = load <2 x ptr>, ptr %i.ds, align 8, !noalias !4126
  store <2 x ptr> %i.dw, ptr %i.dv, align 8, !noalias !4126
  %i.dx = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.dy = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.dz = load i64, ptr %i.dy, align 8, !noalias !4126, !noundef !6 ; 2 uses
  store i64 %i.dz, ptr %i.dx, align 8, !noalias !4126
  %i.ea = getelementptr inbounds nuw i8, ptr %1, i64 136
  store i64 1, ptr %i.ea, align 8, !noalias !4126
  br label %bb.al

bb.ak:                                            ; preds = %bb.ai
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aq), !noalias !4126
  br label %bb.ap

bb.al:                                            ; preds = %bb.cy, %bb.aj
  %i.eb = phi i64 [ %.pre259.i, %bb.cy ], [ %i.dz, %bb.aj ]
  %i.ec = phi i64 [ %.pre.i, %bb.cy ], [ 1, %bb.aj ]
  %.not.i31 = icmp ugt i64 %i.ec, %i.eb
  br i1 %.not.i31, label %bb.dc, label %bb.da

bb.am:                                            ; preds = %bb.ai
  invoke void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @54) #33
          to label %.noexc33 unwind label %bb.fb

.noexc33:                                         ; preds = %bb.am
  unreachable

bb.an:                                            ; preds = %bb.ai
  invoke void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @54) #33
          to label %.noexc34 unwind label %bb.fb

.noexc34:                                         ; preds = %bb.an
  unreachable

bb.ao:                                            ; preds = %bb.ap
  %i.ed = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap), !noalias !4126
  %.val100.i = load ptr, ptr %i.ef, align 8, !noalias !4126
  %i.ee = getelementptr i8, ptr %1, i64 152
  %.val101.i = load ptr, ptr %i.ee, align 8, !noalias !4126, !nonnull !6, !align !13, !noundef !6
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultuNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB4_6marker4SendEL_EEECs9rVkZwOUgsI_13deltalake_aws(ptr %.val100.i, ptr nonnull %.val101.i) #30
          to label %.body.i unwind label %bb.di, !noalias !4127

bb.ap:                                            ; preds = %bb.dg, %bb.ak
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap), !noalias !4126
  %i.ef = getelementptr inbounds nuw i8, ptr %1, i64 144 ; 3 uses
  invoke void @_RNvXs_NtNtCsbvkFyIu7lgC_4core6future6futureINtNtB8_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtB4_6Futurep6OutputINtNtB8_6result6ResultuNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB8_6marker4SendEL_EEB1v_4pollCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %i.ap, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.ef, ptr noalias noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.aq unwind label %bb.ao, !noalias !4127

bb.aq:                                            ; preds = %bb.ap
  %i.eg = load i64, ptr %i.ap, align 8, !range !30, !noalias !4126, !noundef !6
  %i.eh = icmp eq i64 %i.eg, -9223372036854775789
  br i1 %i.eh, label %.thread, label %bb.ar

.thread:                                          ; preds = %bb.aq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap), !noalias !4126
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq), !noalias !4126
  store i8 3, ptr %i.dt, align 8, !noalias !4126
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.416.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al)
  br label %bb.fd

bb.ar:                                            ; preds = %bb.aq
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.aq, ptr noundef nonnull align 8 dereferenceable(72) %i.ap, i64 72, i1 false), !noalias !4126
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap), !noalias !4126
  %.val98.i = load ptr, ptr %i.ef, align 8, !noalias !4126 ; 5 uses
  %i.ei = getelementptr i8, ptr %1, i64 152
  %.val99.i = load ptr, ptr %i.ei, align 8, !noalias !4126, !nonnull !6, !align !13, !noundef !6 ; 5 uses
  %i.ej = load ptr, ptr %.val99.i, align 8, !invariant.load !6, !noalias !4127 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ej, null
  br i1 %.not.i.i.i, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val98.i) ]
  invoke void %i.ej(ptr noundef nonnull %.val98.i)
          to label %bb.at unwind label %bb.av, !noalias !4127

bb.at:                                            ; preds = %bb.as, %bb.ar
  %i.ek = getelementptr inbounds nuw i8, ptr %.val99.i, i64 8
  %i.el = load i64, ptr %i.ek, align 8, !range !21, !invariant.load !6, !noalias !4127 ; 2 uses
  %i.em = icmp eq i64 %i.el, 0
  br i1 %i.em, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultuNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB4_6marker4SendEL_EEECs9rVkZwOUgsI_13deltalake_aws.exit.i, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.en = getelementptr inbounds nuw i8, ptr %.val99.i, i64 16
  %i.eo = load i64, ptr %i.en, align 8, !range !22, !invariant.load !6, !noalias !4127
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val98.i) ]
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val98.i, i64 noundef range(i64 1, 0) %i.el, i64 noundef range(i64 1, 536870913) %i.eo) #22, !noalias !4127
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultuNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB4_6marker4SendEL_EEECs9rVkZwOUgsI_13deltalake_aws.exit.i

bb.av:                                            ; preds = %bb.as
  %i.ep = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %.val99.i, i64 8
  %i.er = load i64, ptr %i.eq, align 8, !range !21, !invariant.load !6, !noalias !4127 ; 2 uses
  %i.es = icmp eq i64 %i.er, 0
  br i1 %i.es, label %.body.i, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.et = getelementptr inbounds nuw i8, ptr %.val99.i, i64 16
  %i.eu = load i64, ptr %i.et, align 8, !range !22, !invariant.load !6, !noalias !4127
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val98.i, i64 noundef range(i64 1, 0) %i.er, i64 noundef range(i64 1, 536870913) %i.eu) #22, !noalias !4127
  br label %.body.i

.body.i:                                          ; preds = %9, %bb.fa, %bb.ez, %bb.ed, %bb.df, %bb.bv, %bb.aw, %bb.av, %bb.ao
  %.pn74.i = phi { ptr, i32 } [ %i.ep, %bb.av ], [ %.pn70.pn.pn.i, %bb.fa ], [ %.pn70.pn.pn.i, %9 ], [ %.pn70.pn.pn.i, %bb.bv ], [ %i.ed, %bb.ao ], [ %i.ku, %bb.df ], [ %i.ep, %bb.aw ], [ %.pn60.pn.pn.i, %bb.ez ], [ %.pn31.pn.pn.i, %bb.ed ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq), !noalias !4126
  br label %bb.de

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultuNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB4_6marker4SendEL_EEECs9rVkZwOUgsI_13deltalake_aws.exit.i: ; preds = %bb.au, %bb.at
  %i.ev = load i64, ptr %i.aq, align 8, !range !24, !noalias !4126, !noundef !6 ; 4 uses
  %.not24.i = icmp eq i64 %i.ev, -9223372036854775790
  br i1 %.not24.i, label %bb.az, label %bb.ax

bb.ax:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultuNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB4_6marker4SendEL_EEECs9rVkZwOUgsI_13deltalake_aws.exit.i
  %i.ew = icmp ne i64 %i.ev, -9223372036854775800
  call void @llvm.assume(i1 %i.ew)
  %i.ex = add nsw i64 %i.ev, 9223372036854775802
  %i.ey = icmp ugt i64 %i.ev, -9223372036854775803
  %i.ez = select i1 %i.ey, i64 %i.ex, i64 2       ; 2 uses
  %i.fa = icmp eq i64 %i.ez, 1
  br i1 %i.fa, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.fb = getelementptr inbounds nuw i8, ptr %1, i64 136 ; 10 uses
  %i.fc = load i64, ptr %i.fb, align 8, !noalias !4126, !noundef !6
  %i.fd = getelementptr inbounds nuw i8, ptr %1, i64 128 ; 2 uses
  %i.fe = load i64, ptr %i.fd, align 8, !noalias !4126, !noundef !6
  %i.ff = icmp eq i64 %i.fc, %i.fe
  br i1 %i.ff, label %bb.ee, label %bb.bw

bb.az:                                            ; preds = %bb.ax, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultuNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB4_6marker4SendEL_EEECs9rVkZwOUgsI_13deltalake_aws.exit.i
  %i.fg = load atomic i64, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core8metadata9MAX_LEVEL monotonic, align 8, !noalias !4126
  %i.fh = icmp samesign ult i64 %i.fg, 2
  br i1 %i.fh, label %bb.ba, label %bb.bf

bb.ba:                                            ; preds = %bb.az
  %i.fi = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNCNCNvNtNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage9retry_ext19ObjectStoreRetryExt19delete_with_retries0010___CALLSITE, i64 16) monotonic, align 8, !noalias !4126 ; 2 uses
  %i.fj = icmp ult i8 %i.fi, 3
  br i1 %i.fj, label %bb.bc, label %bb.bb, !prof !4122

bb.bb:                                            ; preds = %bb.ba
  %i.fk = invoke noundef i8 @_RNvMNtCs2y6mmZ7bjoM_12tracing_core8callsiteNtB2_15DefaultCallsite8register(ptr noundef nonnull align 8 @_RNvNCNCNvNtNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage9retry_ext19ObjectStoreRetryExt19delete_with_retries0010___CALLSITE) #31
          to label %bb.bc unwind label %bb.bj, !noalias !4127

bb.bc:                                            ; preds = %bb.bb, %bb.ba
  %.sroa.0.0.i.i = phi i8 [ %i.fi, %bb.ba ], [ %i.fk, %bb.bb ] ; 2 uses
  %i.fl = icmp eq i8 %.sroa.0.0.i.i, 0
  br i1 %i.fl, label %bb.bf, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.fm = load ptr, ptr @_RNvNCNCNvNtNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage9retry_ext19ObjectStoreRetryExt19delete_with_retries0010___CALLSITE, align 8, !noalias !4126, !nonnull !6, !align !13, !noundef !6
  %i.fn = invoke noundef zeroext i1 @_RNvNtCscTw95cGIolY_7tracing15___macro_support12___is_enabled(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.fm, i8 noundef %.sroa.0.0.i.i)
          to label %bb.be unwind label %bb.bj, !noalias !4127

bb.be:                                            ; preds = %bb.bd
  br i1 %i.fn, label %bb.bo, label %bb.bf

bb.bf:                                            ; preds = %bb.be, %bb.bc, %bb.az
  %i.fo = load atomic i8, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher6EXISTS monotonic, align 1, !noalias !4126
  %.not255.i = icmp eq i8 %i.fo, 0
  br i1 %.not255.i, label %bb.bg, label %bb.bu

bb.bg:                                            ; preds = %bb.bf
  %i.fp = load atomic i64, ptr @_RNvCsaljjC7ZTCQu_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8, !noalias !4126 ; 2 uses
  %i.fq = icmp ult i64 %i.fp, 6
  call void @llvm.assume(i1 %i.fq)
  %i.fr = icmp samesign ugt i64 %i.fp, 3
  br i1 %i.fr, label %bb.bh, label %bb.bu

bb.bh:                                            ; preds = %bb.bg
  %i.fs = load ptr, ptr @_RNvNCNCNvNtNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage9retry_ext19ObjectStoreRetryExt19delete_with_retries0010___CALLSITE, align 8, !noalias !4126, !nonnull !6, !align !13, !noundef !6 ; 3 uses
  %i.ft = getelementptr i8, ptr %i.fs, i64 32
  %.val128.i = load ptr, ptr %i.ft, align 8, !noalias !4127, !nonnull !6, !noundef !6
  %i.fu = getelementptr i8, ptr %i.fs, i64 40
  %.val129.i = load i64, ptr %i.fu, align 8, !noalias !4127, !noundef !6
  store i64 4, ptr %i.al, align 8, !alias.scope !4128, !noalias !4126
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  store ptr %.val128.i, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !4128, !noalias !4126
  %.sroa.8194.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  store i64 %.val129.i, ptr %.sroa.8194.0..sroa_idx.i, align 8, !alias.scope !4128, !noalias !4126
  %i.fv = invoke { ptr, ptr } @_RNvCsaljjC7ZTCQu_3log6logger()
          to label %bb.bi unwind label %bb.bj, !noalias !4127 ; 2 uses

bb.bi:                                            ; preds = %bb.bh
  %i.fw = extractvalue { ptr, ptr } %i.fv, 0      ; 2 uses
  %i.fx = extractvalue { ptr, ptr } %i.fv, 1      ; 2 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fx, i64 24
  %i.fz = load ptr, ptr %i.fy, align 8, !invariant.load !6, !noalias !4127, !nonnull !6
  %i.ga = invoke noundef zeroext i1 %i.fz(ptr noundef %i.fw, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.al)
          to label %bb.bk unwind label %bb.bj, !noalias !4127

bb.bj:                                            ; preds = %bb.bi, %bb.bh, %bb.bd, %bb.bb
  %i.gb = landingpad { ptr, i32 }
          cleanup
  br label %bb.bv

bb.bk:                                            ; preds = %bb.bi
  br i1 %i.ga, label %bb.bl, label %bb.bu

bb.bl:                                            ; preds = %bb.bk
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak), !noalias !4126
  %i.gc = load ptr, ptr @_RNvNCNCNvNtNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage9retry_ext19ObjectStoreRetryExt19delete_with_retries0010___CALLSITE, align 8, !noalias !4126, !nonnull !6, !align !13, !noundef !6
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gc, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj), !noalias !4126
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai), !noalias !4126
  store ptr @55, ptr %i.ai, align 8, !noalias !4126
  %i.ge = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  store ptr inttoptr (i64 53 to ptr), ptr %i.ge, align 8, !noalias !4126
  %i.gf = getelementptr inbounds nuw i8, ptr %1, i64 136
  store ptr %i.ai, ptr %i.aj, align 8, !noalias !4126
  %i.gg = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  store ptr @56, ptr %i.gg, align 8, !noalias !4126
  %i.gh = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  store ptr %i.gf, ptr %i.gh, align 8, !noalias !4126
  %i.gi = getelementptr inbounds nuw i8, ptr %i.aj, i64 24
  store ptr @57, ptr %i.gi, align 8, !noalias !4126
  store i64 1, ptr %i.ak, align 8, !alias.scope !4129, !noalias !4126
  %.sroa.4.0..sroa_idx.i131.i = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  store ptr %i.aj, ptr %.sroa.4.0..sroa_idx.i131.i, align 8, !alias.scope !4129, !noalias !4126
  %.sroa.5.0..sroa_idx.i132.i = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  store i64 2, ptr %.sroa.5.0..sroa_idx.i132.i, align 8, !alias.scope !4129, !noalias !4126
  %i.gj = getelementptr inbounds nuw i8, ptr %i.ak, i64 24
  store ptr %i.gd, ptr %i.gj, align 8, !alias.scope !4129, !noalias !4126
  invoke void @_RNvNtCscTw95cGIolY_7tracing15___macro_support13___tracing_log(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.fs, ptr noundef nonnull %i.fw, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.fx, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.al, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.ak)
          to label %bb.bn unwind label %bb.bm, !noalias !4127

bb.bm:                                            ; preds = %bb.bl
  %i.gk = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai), !noalias !4126
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj), !noalias !4126
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak), !noalias !4126
  br label %bb.bv

bb.bn:                                            ; preds = %bb.bl
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai), !noalias !4126
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj), !noalias !4126
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak), !noalias !4126
  br label %bb.bu

bb.bo:                                            ; preds = %bb.be
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao), !noalias !4126
  %i.gl = load ptr, ptr @_RNvNCNCNvNtNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage9retry_ext19ObjectStoreRetryExt19delete_with_retries0010___CALLSITE, align 8, !noalias !4126, !nonnull !6, !align !13, !noundef !6 ; 2 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gl, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an), !noalias !4126
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am), !noalias !4126
  store ptr @55, ptr %i.am, align 8, !noalias !4126
  %i.gn = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  store ptr inttoptr (i64 53 to ptr), ptr %i.gn, align 8, !noalias !4126
  %i.go = getelementptr inbounds nuw i8, ptr %1, i64 136
  store ptr %i.am, ptr %i.an, align 8, !noalias !4126
  %i.gp = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  store ptr @56, ptr %i.gp, align 8, !noalias !4126
  %i.gq = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  store ptr %i.go, ptr %i.gq, align 8, !noalias !4126
  %i.gr = getelementptr inbounds nuw i8, ptr %i.an, i64 24
  store ptr @57, ptr %i.gr, align 8, !noalias !4126
  store i64 1, ptr %i.ao, align 8, !noalias !4126
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  store ptr %i.an, ptr %.sroa.7.0..sroa_idx.i, align 8, !noalias !4126
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  store i64 2, ptr %.sroa.8.0..sroa_idx.i, align 8, !noalias !4126
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ao, i64 24
  store ptr %i.gm, ptr %.sroa.9.0..sroa_idx.i, align 8, !noalias !4126
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !4126
  invoke void @_RNvMNtCs2y6mmZ7bjoM_12tracing_core5eventNtB2_5Event8dispatch(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.gl, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.ao)
          to label %.noexc136.i unwind label %bb.bs, !noalias !4127

.noexc136.i:                                      ; preds = %bb.bo
  %i.gs = load atomic i8, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher6EXISTS monotonic, align 1, !noalias !4130
  %i.gt = icmp eq i8 %i.gs, 0
  br i1 %i.gt, label %bb.bp, label %bb.bt

bb.bp:                                            ; preds = %.noexc136.i
  %i.gu = load atomic i64, ptr @_RNvCsaljjC7ZTCQu_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8, !noalias !4130 ; 2 uses
  %i.gv = icmp ult i64 %i.gu, 6
  call void @llvm.assume(i1 %i.gv)
  %i.gw = icmp samesign ugt i64 %i.gu, 3
  br i1 %i.gw, label %bb.bq, label %bb.bt

bb.bq:                                            ; preds = %bb.bp
  %i.gx = load ptr, ptr @_RNvNCNCNvNtNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage9retry_ext19ObjectStoreRetryExt19delete_with_retries0010___CALLSITE, align 8, !noalias !4130, !nonnull !6, !align !13, !noundef !6 ; 3 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gx, i64 32
  %i.gz = load ptr, ptr %i.gy, align 8, !noalias !4127, !nonnull !6, !noundef !6
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gx, i64 40
  %i.hb = load i64, ptr %i.ha, align 8, !noalias !4127, !noundef !6
  store i64 4, ptr %i.b, align 8, !noalias !4130
  %.sroa.3.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.gz, ptr %.sroa.3.0..sroa_idx.i.i, align 8, !noalias !4130
  %.sroa.5.0..sroa_idx.i135.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %i.hb, ptr %.sroa.5.0..sroa_idx.i135.i, align 8, !noalias !4130
  %i.hc = invoke { ptr, ptr } @_RNvCsaljjC7ZTCQu_3log6logger()
          to label %.noexc137.i unwind label %bb.bs, !noalias !4127 ; 2 uses

.noexc137.i:                                      ; preds = %bb.bq
  %i.hd = extractvalue { ptr, ptr } %i.hc, 0      ; 2 uses
  %i.he = extractvalue { ptr, ptr } %i.hc, 1      ; 2 uses
  %i.hf = getelementptr inbounds nuw i8, ptr %i.he, i64 24
  %i.hg = load ptr, ptr %i.hf, align 8, !invariant.load !6, !noalias !4127, !nonnull !6
  %i.hh = invoke noundef zeroext i1 %i.hg(ptr noundef %i.hd, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.b) #35
          to label %.noexc138.i unwind label %bb.bs, !noalias !4127, !inline_history !4102

.noexc138.i:                                      ; preds = %.noexc137.i
  br i1 %i.hh, label %bb.br, label %bb.bt

bb.br:                                            ; preds = %.noexc138.i
  invoke void @_RNvNtCscTw95cGIolY_7tracing15___macro_support13___tracing_log(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.gx, ptr noundef nonnull %i.hd, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.he, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.ao)
          to label %bb.bt unwind label %bb.bs, !noalias !4127

bb.bs:                                            ; preds = %bb.br, %.noexc137.i, %bb.bq, %bb.bo
  %i.hi = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao), !noalias !4126
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am), !noalias !4126
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an), !noalias !4126
  br label %bb.bv

bb.bt:                                            ; preds = %bb.br, %.noexc138.i, %bb.bp, %.noexc136.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !4126
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao), !noalias !4126
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am), !noalias !4126
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an), !noalias !4126
  br label %bb.bu

bb.bu:                                            ; preds = %bb.bt, %bb.bn, %bb.bk, %bb.bg, %bb.bf
  %i.hj = load i64, ptr %i.aq, align 8, !range !24, !noalias !4126, !noundef !6 ; 3 uses
  %.not257.i = icmp eq i64 %i.hj, -9223372036854775790
  br i1 %.not257.i, label %.thread49, label %bb.ex

bb.bv:                                            ; preds = %.body153.i, %bb.bs, %bb.bm, %bb.bj
  %.pn70.pn.pn.i = phi { ptr, i32 } [ %i.hi, %bb.bs ], [ %.pn50.i, %.body153.i ], [ %i.gb, %bb.bj ], [ %i.gk, %bb.bm ] ; 3 uses
  %i.hk = load i64, ptr %i.aq, align 8, !range !24, !noalias !4126, !noundef !6 ; 3 uses
  %.not256.i = icmp eq i64 %i.hk, -9223372036854775790
  br i1 %.not256.i, label %.body.i, label %bb.fa

bb.bw:                                            ; preds = %bb.ay
  %i.hl = icmp eq i64 %i.ez, 0
  br i1 %i.hl, label %bb.bx, label %bb.dj

bb.bx:                                            ; preds = %bb.bw
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !4126
  %i.hm = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.hn = load ptr, ptr %i.hm, align 8, !noalias !4126, !nonnull !6, !noundef !6
  %i.ho = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  %i.hp = load i64, ptr %i.ho, align 8, !noalias !4126, !noundef !6
  store ptr %i.hn, ptr %i.x, align 8, !noalias !4126
  %i.hq = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  store i64 %i.hp, ptr %i.hq, align 8, !noalias !4126
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !4126
  %i.hr = getelementptr inbounds nuw i8, ptr %i.aq, i64 24
  %i.hs = getelementptr inbounds nuw i8, ptr %i.w, i64 8 ; 2 uses
  %i.ht = load <2 x ptr>, ptr %i.hr, align 8, !noalias !4126
  store <2 x ptr> %i.ht, ptr %i.w, align 16, !noalias !4126
  %i.hu = load atomic i64, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core8metadata9MAX_LEVEL monotonic, align 8, !noalias !4126
  %i.hv = icmp samesign ult i64 %i.hu, 2
  br i1 %i.hv, label %bb.by, label %bb.cd

bb.by:                                            ; preds = %bb.bx
  %i.hw = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNCNCNvNtNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage9retry_ext19ObjectStoreRetryExt19delete_with_retries00s0_10___CALLSITE, i64 16) monotonic, align 8, !noalias !4126 ; 2 uses
  %i.hx = icmp ult i8 %i.hw, 3
  br i1 %i.hx, label %bb.ca, label %bb.bz, !prof !4122

bb.bz:                                            ; preds = %bb.by
  %i.hy = invoke noundef i8 @_RNvMNtCs2y6mmZ7bjoM_12tracing_core8callsiteNtB2_15DefaultCallsite8register(ptr noundef nonnull align 8 @_RNvNCNCNvNtNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage9retry_ext19ObjectStoreRetryExt19delete_with_retries00s0_10___CALLSITE) #31
          to label %bb.ca unwind label %bb.ch, !noalias !4127

bb.ca:                                            ; preds = %bb.bz, %bb.by
  %.sroa.0.0.i141.i = phi i8 [ %i.hw, %bb.by ], [ %i.hy, %bb.bz ] ; 2 uses
  %i.hz = icmp eq i8 %.sroa.0.0.i141.i, 0
  br i1 %i.hz, label %bb.cd, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.ia = load ptr, ptr @_RNvNCNCNvNtNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage9retry_ext19ObjectStoreRetryExt19delete_with_retries00s0_10___CALLSITE, align 8, !noalias !4126, !nonnull !6, !align !13, !noundef !6
  %i.ib = invoke noundef zeroext i1 @_RNvNtCscTw95cGIolY_7tracing15___macro_support12___is_enabled(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.ia, i8 noundef %.sroa.0.0.i141.i)
          to label %bb.cc unwind label %bb.ch, !noalias !4127

bb.cc:                                            ; preds = %bb.cb
  br i1 %i.ib, label %bb.cs, label %bb.cd

bb.cd:                                            ; preds = %bb.cc, %bb.ca, %bb.bx
  %i.ic = load atomic i8, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher6EXISTS monotonic, align 1, !noalias !4126
  %.not253.i = icmp eq i8 %i.ic, 0
  br i1 %.not253.i, label %bb.ce, label %bb.cm

bb.ce:                                            ; preds = %bb.cd
  %i.id = load atomic i64, ptr @_RNvCsaljjC7ZTCQu_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8, !noalias !4126 ; 2 uses
  %i.ie = icmp ult i64 %i.id, 6
  call void @llvm.assume(i1 %i.ie)
  %i.if = icmp samesign ugt i64 %i.id, 3
  br i1 %i.if, label %bb.cf, label %bb.cm

bb.cf:                                            ; preds = %bb.ce
  %i.ig = load ptr, ptr @_RNvNCNCNvNtNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage9retry_ext19ObjectStoreRetryExt19delete_with_retries00s0_10___CALLSITE, align 8, !noalias !4126, !nonnull !6, !align !13, !noundef !6 ; 3 uses
  %i.ih = getelementptr i8, ptr %i.ig, i64 32
  %.val126.i = load ptr, ptr %i.ih, align 8, !noalias !4127, !nonnull !6, !noundef !6
  %i.ii = getelementptr i8, ptr %i.ig, i64 40
  %.val127.i = load i64, ptr %i.ii, align 8, !noalias !4127, !noundef !6
  store i64 4, ptr %i.r, align 8, !alias.scope !4131, !noalias !4126
  %.sroa.6222.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store ptr %.val126.i, ptr %.sroa.6222.0..sroa_idx.i, align 8, !alias.scope !4131, !noalias !4126
  %.sroa.8223.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  store i64 %.val127.i, ptr %.sroa.8223.0..sroa_idx.i, align 8, !alias.scope !4131, !noalias !4126
  %i.ij = invoke { ptr, ptr } @_RNvCsaljjC7ZTCQu_3log6logger()
          to label %bb.cg unwind label %bb.ch, !noalias !4127 ; 2 uses

bb.cg:                                            ; preds = %bb.cf
  %i.ik = extractvalue { ptr, ptr } %i.ij, 0      ; 2 uses
  %i.il = extractvalue { ptr, ptr } %i.ij, 1      ; 2 uses
  %i.im = getelementptr inbounds nuw i8, ptr %i.il, i64 24
  %i.in = load ptr, ptr %i.im, align 8, !invariant.load !6, !noalias !4127, !nonnull !6
  %i.io = invoke noundef zeroext i1 %i.in(ptr noundef %i.ik, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.r)
          to label %bb.ci unwind label %bb.ch, !noalias !4127

bb.ch:                                            ; preds = %bb.cg, %bb.cf, %bb.cb, %bb.bz
  %i.ip = landingpad { ptr, i32 }
          cleanup
  br label %bb.dh

bb.ci:                                            ; preds = %bb.cg
  br i1 %i.io, label %bb.cj, label %bb.cm

bb.cj:                                            ; preds = %bb.ci
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !4126
  %i.iq = load ptr, ptr @_RNvNCNCNvNtNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage9retry_ext19ObjectStoreRetryExt19delete_with_retries00s0_10___CALLSITE, align 8, !noalias !4126, !nonnull !6, !align !13, !noundef !6
  %i.ir = getelementptr inbounds nuw i8, ptr %i.iq, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !4126
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !4126
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !4126
  store ptr %i.fb, ptr %i.n, align 8, !noalias !4126
  %.sroa.5225.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store ptr @_RNvXsi_NtNtNtCsbvkFyIu7lgC_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.5225.0..sroa_idx.i, align 8, !noalias !4126
  %i.is = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  store ptr %i.x, ptr %i.is, align 8, !noalias !4126
  %.sroa.5227.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  store ptr @_RNvXs1i_NtCsbvkFyIu7lgC_4core3fmtReNtB6_7Display3fmtCs9rVkZwOUgsI_13deltalake_aws, ptr %.sroa.5227.0..sroa_idx.i, align 8, !noalias !4126
  %i.it = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  store ptr %i.w, ptr %i.it, align 8, !noalias !4126
  %.sroa.5229.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 40
  store ptr @_RNvXsm_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtCsbvkFyIu7lgC_4core5error5ErrorNtNtBM_6marker4SyncNtB1j_4SendEL_ENtNtBM_3fmt7Display3fmtCs9rVkZwOUgsI_13deltalake_aws, ptr %.sroa.5229.0..sroa_idx.i, align 8, !noalias !4126
  store ptr @58, ptr %i.o, align 8, !noalias !4126
  %i.iu = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store ptr %i.n, ptr %i.iu, align 8, !noalias !4126
  store ptr %i.o, ptr %i.p, align 8, !noalias !4126
  %i.iv = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store ptr @56, ptr %i.iv, align 8, !noalias !4126
  store i64 1, ptr %i.q, align 8, !alias.scope !4132, !noalias !4126
  %.sroa.4.0..sroa_idx.i150.i = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store ptr %i.p, ptr %.sroa.4.0..sroa_idx.i150.i, align 8, !alias.scope !4132, !noalias !4126
  %.sroa.5.0..sroa_idx.i151.i = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store i64 1, ptr %.sroa.5.0..sroa_idx.i151.i, align 8, !alias.scope !4132, !noalias !4126
  %i.iw = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  store ptr %i.ir, ptr %i.iw, align 8, !alias.scope !4132, !noalias !4126
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !4126
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %i.r, i64 24, i1 false), !noalias !4126
  invoke void @_RNvNtCscTw95cGIolY_7tracing15___macro_support13___tracing_log(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.ig, ptr noundef nonnull %i.ik, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.il, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.q)
          to label %bb.cl unwind label %bb.ck, !noalias !4127

bb.ck:                                            ; preds = %bb.cj
  %i.ix = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !4126
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !4126
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !4126
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !4126
  br label %bb.dh

bb.cl:                                            ; preds = %bb.cj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !4126
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !4126
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !4126
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !4126
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !4126
  br label %bb.cm

bb.cm:                                            ; preds = %bb.cx, %bb.cl, %bb.ci, %bb.ce, %bb.cd
  %i.iy = load i64, ptr %i.fb, align 8, !noalias !4126, !noundef !6
  %i.iz = add i64 %i.iy, 1
  store i64 %i.iz, ptr %i.fb, align 8, !noalias !4126
  %.val96.i = load ptr, ptr %i.w, align 16, !noalias !4126 ; 5 uses
  %.val97.i = load ptr, ptr %i.hs, align 8, !noalias !4126, !nonnull !6, !align !13, !noundef !6 ; 5 uses
  %i.ja = load ptr, ptr %.val97.i, align 8, !invariant.load !6, !noalias !4127 ; 2 uses
  %.not.i152.i = icmp eq ptr %i.ja, null
  br i1 %.not.i152.i, label %bb.co, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val96.i) ]
  invoke void %i.ja(ptr noundef nonnull %.val96.i)
          to label %bb.co unwind label %bb.cq, !noalias !4127

bb.co:                                            ; preds = %bb.cn, %bb.cm
  %i.jb = getelementptr inbounds nuw i8, ptr %.val97.i, i64 8
  %i.jc = load i64, ptr %i.jb, align 8, !range !21, !invariant.load !6, !noalias !4127 ; 2 uses
  %i.jd = icmp eq i64 %i.jc, 0
  br i1 %i.jd, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECs9rVkZwOUgsI_13deltalake_aws.exit.i, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  %i.je = getelementptr inbounds nuw i8, ptr %.val97.i, i64 16
  %i.jf = load i64, ptr %i.je, align 8, !range !22, !invariant.load !6, !noalias !4127
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val96.i) ]
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val96.i, i64 noundef range(i64 1, 0) %i.jc, i64 noundef range(i64 1, 536870913) %i.jf) #22, !noalias !4127
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECs9rVkZwOUgsI_13deltalake_aws.exit.i

bb.cq:                                            ; preds = %bb.cn
  %i.jg = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.jh = getelementptr inbounds nuw i8, ptr %.val97.i, i64 8
  %i.ji = load i64, ptr %i.jh, align 8, !range !21, !invariant.load !6, !noalias !4127 ; 2 uses
  %i.jj = icmp eq i64 %i.ji, 0
  br i1 %i.jj, label %.body153.i, label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  %i.jk = getelementptr inbounds nuw i8, ptr %.val97.i, i64 16
  %i.jl = load i64, ptr %i.jk, align 8, !range !22, !invariant.load !6, !noalias !4127
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val96.i, i64 noundef range(i64 1, 0) %i.ji, i64 noundef range(i64 1, 536870913) %i.jl) #22, !noalias !4127
  br label %.body153.i

bb.cs:                                            ; preds = %bb.cc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !4126
  %i.jm = load ptr, ptr @_RNvNCNCNvNtNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage9retry_ext19ObjectStoreRetryExt19delete_with_retries00s0_10___CALLSITE, align 8, !noalias !4126, !nonnull !6, !align !13, !noundef !6 ; 2 uses
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jm, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !4126
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !4126
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !4126
  store ptr %i.fb, ptr %i.s, align 8, !noalias !4126
  %.sroa.5.0..sroa_idx.i32 = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store ptr @_RNvXsi_NtNtNtCsbvkFyIu7lgC_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.5.0..sroa_idx.i32, align 8, !noalias !4126
  %i.jo = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  store ptr %i.x, ptr %i.jo, align 8, !noalias !4126
  %.sroa.5215.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  store ptr @_RNvXs1i_NtCsbvkFyIu7lgC_4core3fmtReNtB6_7Display3fmtCs9rVkZwOUgsI_13deltalake_aws, ptr %.sroa.5215.0..sroa_idx.i, align 8, !noalias !4126
  %i.jp = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  store ptr %i.w, ptr %i.jp, align 8, !noalias !4126
  %.sroa.5217.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.s, i64 40
  store ptr @_RNvXsm_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtCsbvkFyIu7lgC_4core5error5ErrorNtNtBM_6marker4SyncNtB1j_4SendEL_ENtNtBM_3fmt7Display3fmtCs9rVkZwOUgsI_13deltalake_aws, ptr %.sroa.5217.0..sroa_idx.i, align 8, !noalias !4126
  store ptr @58, ptr %i.t, align 8, !noalias !4126
  %i.jq = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store ptr %i.s, ptr %i.jq, align 8, !noalias !4126
  store ptr %i.t, ptr %i.u, align 8, !noalias !4126
  %i.jr = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store ptr @56, ptr %i.jr, align 8, !noalias !4126
  store i64 1, ptr %i.v, align 8, !noalias !4126
  %.sroa.6210.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  store ptr %i.u, ptr %.sroa.6210.0..sroa_idx.i, align 8, !noalias !4126
  %.sroa.7211.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  store i64 1, ptr %.sroa.7211.0..sroa_idx.i, align 8, !noalias !4126
  %.sroa.8212.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  store ptr %i.jn, ptr %.sroa.8212.0..sroa_idx.i, align 8, !noalias !4126
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !4126
  invoke void @_RNvMNtCs2y6mmZ7bjoM_12tracing_core5eventNtB2_5Event8dispatch(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.jm, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.v)
          to label %.noexc162.i unwind label %bb.cw, !noalias !4127

.noexc162.i:                                      ; preds = %bb.cs
  %i.js = load atomic i8, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher6EXISTS monotonic, align 1, !noalias !4133
  %i.jt = icmp eq i8 %i.js, 0
  br i1 %i.jt, label %bb.ct, label %bb.cx

bb.ct:                                            ; preds = %.noexc162.i
  %i.ju = load atomic i64, ptr @_RNvCsaljjC7ZTCQu_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8, !noalias !4133 ; 2 uses
  %i.jv = icmp ult i64 %i.ju, 6
  call void @llvm.assume(i1 %i.jv)
  %i.jw = icmp samesign ugt i64 %i.ju, 3
  br i1 %i.jw, label %bb.cu, label %bb.cx

bb.cu:                                            ; preds = %bb.ct
  %i.jx = load ptr, ptr @_RNvNCNCNvNtNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage9retry_ext19ObjectStoreRetryExt19delete_with_retries00s0_10___CALLSITE, align 8, !noalias !4133, !nonnull !6, !align !13, !noundef !6 ; 3 uses
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jx, i64 32
  %i.jz = load ptr, ptr %i.jy, align 8, !noalias !4127, !nonnull !6, !noundef !6
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jx, i64 40
  %i.kb = load i64, ptr %i.ka, align 8, !noalias !4127, !noundef !6
  store i64 4, ptr %i.a, align 8, !noalias !4133
  %.sroa.3.0..sroa_idx.i160.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.jz, ptr %.sroa.3.0..sroa_idx.i160.i, align 8, !noalias !4133
  %.sroa.5.0..sroa_idx.i161.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.kb, ptr %.sroa.5.0..sroa_idx.i161.i, align 8, !noalias !4133
  %i.kc = invoke { ptr, ptr } @_RNvCsaljjC7ZTCQu_3log6logger()
          to label %.noexc163.i unwind label %bb.cw, !noalias !4127 ; 2 uses

.noexc163.i:                                      ; preds = %bb.cu
  %i.kd = extractvalue { ptr, ptr } %i.kc, 0      ; 2 uses
  %i.ke = extractvalue { ptr, ptr } %i.kc, 1      ; 2 uses
  %i.kf = getelementptr inbounds nuw i8, ptr %i.ke, i64 24
  %i.kg = load ptr, ptr %i.kf, align 8, !invariant.load !6, !noalias !4127, !nonnull !6
  %i.kh = invoke noundef zeroext i1 %i.kg(ptr noundef %i.kd, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.a) #35
          to label %.noexc164.i unwind label %bb.cw, !noalias !4127, !inline_history !4110

.noexc164.i:                                      ; preds = %.noexc163.i
  br i1 %i.kh, label %bb.cv, label %bb.cx

bb.cv:                                            ; preds = %.noexc164.i
  invoke void @_RNvNtCscTw95cGIolY_7tracing15___macro_support13___tracing_log(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.jx, ptr noundef nonnull %i.kd, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ke, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.v)
          to label %bb.cx unwind label %bb.cw, !noalias !4127

bb.cw:                                            ; preds = %bb.cv, %.noexc163.i, %bb.cu, %bb.cs
  %i.ki = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !4126
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !4126
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !4126
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !4126
  br label %bb.dh

bb.cx:                                            ; preds = %bb.cv, %.noexc164.i, %bb.ct, %.noexc162.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !4126
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !4126
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !4126
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !4126
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !4126
  br label %bb.cm

.body153.i:                                       ; preds = %bb.dh, %bb.cr, %bb.cq
  %.pn50.i = phi { ptr, i32 } [ %.pn47.pn.i, %bb.dh ], [ %i.jg, %bb.cq ], [ %i.jg, %bb.cr ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !4126
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !4126
  br label %bb.bv

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECs9rVkZwOUgsI_13deltalake_aws.exit.i: ; preds = %bb.cp, %bb.co
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !4126
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !4126
  %i.kj = load i64, ptr %i.aq, align 8, !range !24, !noalias !4126, !noundef !6 ; 3 uses
  %.not52.i = icmp eq i64 %i.kj, -9223372036854775790
  br i1 %.not52.i, label %bb.cy, label %3

3:                                                ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECs9rVkZwOUgsI_13deltalake_aws.exit.i
  %4 = icmp ne i64 %i.kj, -9223372036854775800
  call void @llvm.assume(i1 %4)
  %5 = icmp eq i64 %i.kj, -9223372036854775802
  br i1 %5, label %bb.cy, label %bb.cz

bb.cy:                                            ; preds = %bb.cz, %3, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECs9rVkZwOUgsI_13deltalake_aws.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq), !noalias !4126
  %.pre.i = load i64, ptr %i.fb, align 8, !noalias !4126
  %.pre259.i = load i64, ptr %i.fd, align 8, !noalias !4126
  br label %bb.al

bb.cz:                                            ; preds = %3
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCsjyY8HP3IvQ6_12object_store5ErrorECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(72) %i.aq)
          to label %bb.cy unwind label %bb.df, !noalias !4127

bb.da:                                            ; preds = %bb.al
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aq), !noalias !4126
  %i.kk = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.kl = load ptr, ptr %i.kk, align 8, !noalias !4126, !nonnull !6, !noundef !6
  %i.km = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.kn = load ptr, ptr %i.km, align 8, !noalias !4126, !nonnull !6, !align !13, !noundef !6
  %i.ko = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.kp = load ptr, ptr %i.ko, align 8, !noalias !4126, !nonnull !6, !align !13, !noundef !6
  %i.kq = getelementptr inbounds nuw i8, ptr %i.kn, i64 120
  %i.kr = load ptr, ptr %i.kq, align 8, !invariant.load !6, !noalias !4127, !nonnull !6
  %i.ks = invoke { ptr, ptr } %i.kr(ptr noundef nonnull %i.kl, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.kp)
          to label %bb.dg unwind label %bb.df, !noalias !4127 ; 2 uses

bb.db:                                            ; preds = %bb.dc
  %i.kt = landingpad { ptr, i32 }
          cleanup
  br label %bb.de

bb.dc:                                            ; preds = %bb.al
  invoke void @_RNvNtCsbvkFyIu7lgC_4core9panicking9panic_fmt(ptr noundef nonnull @59, ptr noundef nonnull inttoptr (i64 211 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @60) #34
          to label %bb.dd unwind label %bb.db, !noalias !4127

bb.dd:                                            ; preds = %bb.dc
  unreachable

bb.de:                                            ; preds = %bb.db, %.body.i
  %.pn74.pn.i = phi { ptr, i32 } [ %.pn74.i, %.body.i ], [ %i.kt, %bb.db ]
  store i8 2, ptr %i.dt, align 8, !noalias !4126
  br label %.body35

bb.df:                                            ; preds = %7, %bb.da, %bb.cz
  %i.ku = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

bb.dg:                                            ; preds = %bb.da
  %i.kv = extractvalue { ptr, ptr } %i.ks, 0
  %i.kw = extractvalue { ptr, ptr } %i.ks, 1
  %i.kx = getelementptr inbounds nuw i8, ptr %1, i64 144
  store ptr %i.kv, ptr %i.kx, align 8, !noalias !4126
  %i.ky = getelementptr inbounds nuw i8, ptr %1, i64 152
  store ptr %i.kw, ptr %i.ky, align 8, !noalias !4126
  br label %bb.ap

bb.dh:                                            ; preds = %bb.cw, %bb.ck, %bb.ch
  %.pn47.pn.i = phi { ptr, i32 } [ %i.ki, %bb.cw ], [ %i.ip, %bb.ch ], [ %i.ix, %bb.ck ]
  %.val.i = load ptr, ptr %i.w, align 16, !noalias !4126
  %.val95.i = load ptr, ptr %i.hs, align 8, !noalias !4126, !nonnull !6, !align !13, !noundef !6
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECs9rVkZwOUgsI_13deltalake_aws(ptr %.val.i, ptr nonnull %.val95.i) #30
          to label %.body153.i unwind label %bb.di, !noalias !4127

bb.di:                                            ; preds = %9, %bb.ey, %bb.ec, %bb.dh, %bb.ao
  %i.kz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #32, !noalias !4127
  unreachable

bb.dj:                                            ; preds = %bb.bw
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !4126
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.m, ptr noundef nonnull align 8 dereferenceable(72) %i.aq, i64 72, i1 false), !noalias !4126
  %i.la = load atomic i64, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core8metadata9MAX_LEVEL monotonic, align 8, !noalias !4126
  %i.lb = icmp samesign ult i64 %i.la, 5
  br i1 %i.lb, label %bb.dk, label %bb.dp

bb.dk:                                            ; preds = %bb.dj
  %i.lc = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNCNCNvNtNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage9retry_ext19ObjectStoreRetryExt19delete_with_retries00s1_10___CALLSITE, i64 16) monotonic, align 8, !noalias !4126 ; 2 uses
  %i.ld = icmp ult i8 %i.lc, 3
  br i1 %i.ld, label %bb.dm, label %bb.dl, !prof !4122

bb.dl:                                            ; preds = %bb.dk
  %i.le = invoke noundef i8 @_RNvMNtCs2y6mmZ7bjoM_12tracing_core8callsiteNtB2_15DefaultCallsite8register(ptr noundef nonnull align 8 @_RNvNCNCNvNtNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage9retry_ext19ObjectStoreRetryExt19delete_with_retries00s1_10___CALLSITE) #31
          to label %bb.dm unwind label %bb.dt, !noalias !4127

bb.dm:                                            ; preds = %bb.dl, %bb.dk
  %.sroa.0.0.i167.i = phi i8 [ %i.lc, %bb.dk ], [ %i.le, %bb.dl ] ; 2 uses
  %i.lf = icmp eq i8 %.sroa.0.0.i167.i, 0
  br i1 %i.lf, label %bb.dp, label %bb.dn

bb.dn:                                            ; preds = %bb.dm
  %i.lg = load ptr, ptr @_RNvNCNCNvNtNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage9retry_ext19ObjectStoreRetryExt19delete_with_retries00s1_10___CALLSITE, align 8, !noalias !4126, !nonnull !6, !align !13, !noundef !6
  %i.lh = invoke noundef zeroext i1 @_RNvNtCscTw95cGIolY_7tracing15___macro_support12___is_enabled(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.lg, i8 noundef %.sroa.0.0.i167.i)
          to label %bb.do unwind label %bb.dt, !noalias !4127

bb.do:                                            ; preds = %bb.dn
  br i1 %i.lh, label %bb.dz, label %bb.dp

bb.dp:                                            ; preds = %bb.do, %bb.dm, %bb.dj
  %i.li = load atomic i8, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher6EXISTS monotonic, align 1, !noalias !4126
  %.not251.i = icmp eq i8 %i.li, 0
  br i1 %.not251.i, label %bb.dq, label %bb.dy

bb.dq:                                            ; preds = %bb.dp
  %i.lj = load atomic i64, ptr @_RNvCsaljjC7ZTCQu_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8, !noalias !4126 ; 2 uses
  %i.lk = icmp ult i64 %i.lj, 6
  call void @llvm.assume(i1 %i.lk)
  %.not252.i = icmp eq i64 %i.lj, 0
  br i1 %.not252.i, label %bb.dy, label %bb.dr

bb.dr:                                            ; preds = %bb.dq
  %i.ll = load ptr, ptr @_RNvNCNCNvNtNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage9retry_ext19ObjectStoreRetryExt19delete_with_retries00s1_10___CALLSITE, align 8, !noalias !4126, !nonnull !6, !align !13, !noundef !6 ; 3 uses
  %i.lm = getelementptr i8, ptr %i.ll, i64 32
  %.val124.i = load ptr, ptr %i.lm, align 8, !noalias !4127, !nonnull !6, !noundef !6
  %i.ln = getelementptr i8, ptr %i.ll, i64 40
  %.val125.i = load i64, ptr %i.ln, align 8, !noalias !4127, !noundef !6
  store i64 1, ptr %i.h, align 8, !alias.scope !4134, !noalias !4126
  %.sroa.6240.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr %.val124.i, ptr %.sroa.6240.0..sroa_idx.i, align 8, !alias.scope !4134, !noalias !4126
  %.sroa.8241.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store i64 %.val125.i, ptr %.sroa.8241.0..sroa_idx.i, align 8, !alias.scope !4134, !noalias !4126
  %i.lo = invoke { ptr, ptr } @_RNvCsaljjC7ZTCQu_3log6logger()
          to label %bb.ds unwind label %bb.dt, !noalias !4127 ; 2 uses

bb.ds:                                            ; preds = %bb.dr
  %i.lp = extractvalue { ptr, ptr } %i.lo, 0      ; 2 uses
  %i.lq = extractvalue { ptr, ptr } %i.lo, 1      ; 2 uses
  %i.lr = getelementptr inbounds nuw i8, ptr %i.lq, i64 24
  %i.ls = load ptr, ptr %i.lr, align 8, !invariant.load !6, !noalias !4127, !nonnull !6
  %i.lt = invoke noundef zeroext i1 %i.ls(ptr noundef %i.lp, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.h)
          to label %bb.du unwind label %bb.dt, !noalias !4127

bb.dt:                                            ; preds = %bb.ds, %bb.dr, %bb.dn, %bb.dl
  %i.lu = landingpad { ptr, i32 }
          cleanup
  br label %bb.ec

bb.du:                                            ; preds = %bb.ds
  br i1 %i.lt, label %bb.dv, label %bb.dy

bb.dv:                                            ; preds = %bb.du
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !4126
  %i.lv = load ptr, ptr @_RNvNCNCNvNtNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage9retry_ext19ObjectStoreRetryExt19delete_with_retries00s1_10___CALLSITE, align 8, !noalias !4126, !nonnull !6, !align !13, !noundef !6
  %i.lw = getelementptr inbounds nuw i8, ptr %i.lv, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !4126
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !4126
  store ptr @61, ptr %i.e, align 8, !noalias !4126
  %i.lx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr inttoptr (i64 97 to ptr), ptr %i.lx, align 8, !noalias !4126
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !4126
  store ptr %i.m, ptr %i.d, align 8, !noalias !4126
  store ptr %i.e, ptr %i.f, align 8, !noalias !4126
  %i.ly = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr @56, ptr %i.ly, align 8, !noalias !4126
  %i.lz = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store ptr %i.fb, ptr %i.lz, align 8, !noalias !4126
  %i.ma = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  store ptr @57, ptr %i.ma, align 8, !noalias !4126
  %i.mb = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  store ptr %i.d, ptr %i.mb, align 8, !noalias !4126
  %i.mc = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  store ptr @62, ptr %i.mc, align 8, !noalias !4126
  store i64 1, ptr %i.g, align 8, !alias.scope !4135, !noalias !4126
  %.sroa.4.0..sroa_idx.i173.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr %i.f, ptr %.sroa.4.0..sroa_idx.i173.i, align 8, !alias.scope !4135, !noalias !4126
  %.sroa.5.0..sroa_idx.i174.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store i64 3, ptr %.sroa.5.0..sroa_idx.i174.i, align 8, !alias.scope !4135, !noalias !4126
  %i.md = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  store ptr %i.lw, ptr %i.md, align 8, !alias.scope !4135, !noalias !4126
  invoke void @_RNvNtCscTw95cGIolY_7tracing15___macro_support13___tracing_log(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.ll, ptr noundef nonnull %i.lp, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.lq, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.h, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.g)
          to label %bb.dx unwind label %bb.dw, !noalias !4127

bb.dw:                                            ; preds = %bb.dv
  %i.me = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !4126
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !4126
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !4126
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !4126
  br label %bb.ec

bb.dx:                                            ; preds = %bb.dv
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !4126
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !4126
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !4126
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !4126
  br label %bb.dy

bb.dy:                                            ; preds = %bb.eb, %bb.dx, %bb.du, %bb.dq, %bb.dp
  %.sroa.021.0.copyload.i = load i64, ptr %i.m, align 8, !noalias !4126
  %.sroa.422.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.416.i, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.422.0..sroa_idx.i, i64 64, i1 false), !noalias !4126
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !4126
  br label %bb.fc

bb.dz:                                            ; preds = %bb.do
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !4126
  %i.mf = load ptr, ptr @_RNvNCNCNvNtNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage9retry_ext19ObjectStoreRetryExt19delete_with_retries00s1_10___CALLSITE, align 8, !noalias !4126, !nonnull !6, !align !13, !noundef !6
  %i.mg = getelementptr inbounds nuw i8, ptr %i.mf, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !4126
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !4126
  store ptr @61, ptr %i.j, align 8, !noalias !4126
  %i.mh = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr inttoptr (i64 97 to ptr), ptr %i.mh, align 8, !noalias !4126
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !4126
  store ptr %i.m, ptr %i.i, align 8, !noalias !4126
  store ptr %i.j, ptr %i.k, align 8, !noalias !4126
  %i.mi = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr @56, ptr %i.mi, align 8, !noalias !4126
  %i.mj = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  store ptr %i.fb, ptr %i.mj, align 8, !noalias !4126
  %i.mk = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  store ptr @57, ptr %i.mk, align 8, !noalias !4126
  %i.ml = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  store ptr %i.i, ptr %i.ml, align 8, !noalias !4126
  %i.mm = getelementptr inbounds nuw i8, ptr %i.k, i64 40
  store ptr @62, ptr %i.mm, align 8, !noalias !4126
  store i64 1, ptr %i.l, align 8, !noalias !4126
  %.sroa.7233.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store ptr %i.k, ptr %.sroa.7233.0..sroa_idx.i, align 8, !noalias !4126
  %.sroa.8234.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  store i64 3, ptr %.sroa.8234.0..sroa_idx.i, align 8, !noalias !4126
  %.sroa.9235.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  store ptr %i.mg, ptr %.sroa.9235.0..sroa_idx.i, align 8, !noalias !4126
  invoke fastcc void @_RNCNCNCNvYDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_NtNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage9retry_ext19ObjectStoreRetryExt19delete_with_retries00s1_0Cs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 captures(address) dereferenceable(32) %i.l)
          to label %bb.eb unwind label %bb.ea, !noalias !4127

bb.ea:                                            ; preds = %bb.dz
  %i.mn = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !4126
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !4126
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !4126
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !4126
  br label %bb.ec

bb.eb:                                            ; preds = %bb.dz
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !4126
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !4126
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !4126
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !4126
  br label %bb.dy

bb.ec:                                            ; preds = %bb.ea, %bb.dw, %bb.dt
  %.pn31.pn.pn.i = phi { ptr, i32 } [ %i.mn, %bb.ea ], [ %i.lu, %bb.dt ], [ %i.me, %bb.dw ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCsjyY8HP3IvQ6_12object_store5ErrorECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(72) %i.m) #30
          to label %bb.ed unwind label %bb.di, !noalias !4127

bb.ed:                                            ; preds = %bb.ec
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !4126
  br label %.body.i

bb.ee:                                            ; preds = %bb.ay
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah), !noalias !4126
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.ah, ptr noundef nonnull align 8 dereferenceable(72) %i.aq, i64 72, i1 false), !noalias !4126
  %i.mo = load atomic i64, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core8metadata9MAX_LEVEL monotonic, align 8, !noalias !4126
  %i.mp = icmp samesign ult i64 %i.mo, 4
  br i1 %i.mp, label %bb.ef, label %bb.ek

bb.ef:                                            ; preds = %bb.ee
  %i.mq = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNCNCNvNtNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage9retry_ext19ObjectStoreRetryExt19delete_with_retries00s_10___CALLSITE, i64 16) monotonic, align 8, !noalias !4126 ; 2 uses
  %i.mr = icmp ult i8 %i.mq, 3
  br i1 %i.mr, label %bb.eh, label %bb.eg, !prof !4122

bb.eg:                                            ; preds = %bb.ef
  %i.ms = invoke noundef i8 @_RNvMNtCs2y6mmZ7bjoM_12tracing_core8callsiteNtB2_15DefaultCallsite8register(ptr noundef nonnull align 8 @_RNvNCNCNvNtNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage9retry_ext19ObjectStoreRetryExt19delete_with_retries00s_10___CALLSITE) #31
          to label %bb.eh unwind label %bb.eo, !noalias !4127

bb.eh:                                            ; preds = %bb.eg, %bb.ef
  %.sroa.0.0.i178.i = phi i8 [ %i.mq, %bb.ef ], [ %i.ms, %bb.eg ] ; 2 uses
  %i.mt = icmp eq i8 %.sroa.0.0.i178.i, 0
  br i1 %i.mt, label %bb.ek, label %bb.ei

bb.ei:                                            ; preds = %bb.eh
  %i.mu = load ptr, ptr @_RNvNCNCNvNtNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage9retry_ext19ObjectStoreRetryExt19delete_with_retries00s_10___CALLSITE, align 8, !noalias !4126, !nonnull !6, !align !13, !noundef !6
  %i.mv = invoke noundef zeroext i1 @_RNvNtCscTw95cGIolY_7tracing15___macro_support12___is_enabled(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.mu, i8 noundef %.sroa.0.0.i178.i)
          to label %bb.ej unwind label %bb.eo, !noalias !4127

bb.ej:                                            ; preds = %bb.ei
  br i1 %i.mv, label %bb.eu, label %bb.ek

bb.ek:                                            ; preds = %bb.ej, %bb.eh, %bb.ee
  %i.mw = load atomic i8, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher6EXISTS monotonic, align 1, !noalias !4126
  %.not254.i = icmp eq i8 %i.mw, 0
  br i1 %.not254.i, label %bb.el, label %bb.et

bb.el:                                            ; preds = %bb.ek
  %i.mx = load atomic i64, ptr @_RNvCsaljjC7ZTCQu_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8, !noalias !4126 ; 2 uses
  %i.my = icmp ult i64 %i.mx, 6
  call void @llvm.assume(i1 %i.my)
  %i.mz = icmp samesign ugt i64 %i.mx, 1
  br i1 %i.mz, label %bb.em, label %bb.et

bb.em:                                            ; preds = %bb.el
  %i.na = load ptr, ptr @_RNvNCNCNvNtNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage9retry_ext19ObjectStoreRetryExt19delete_with_retries00s_10___CALLSITE, align 8, !noalias !4126, !nonnull !6, !align !13, !noundef !6 ; 3 uses
  %i.nb = getelementptr i8, ptr %i.na, i64 32
  %.val122.i = load ptr, ptr %i.nb, align 8, !noalias !4127, !nonnull !6, !noundef !6
  %i.nc = getelementptr i8, ptr %i.na, i64 40
  %.val123.i = load i64, ptr %i.nc, align 8, !noalias !4127, !noundef !6
  store i64 2, ptr %i.ac, align 8, !alias.scope !4136, !noalias !4126
  %.sroa.6205.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  store ptr %.val122.i, ptr %.sroa.6205.0..sroa_idx.i, align 8, !alias.scope !4136, !noalias !4126
  %.sroa.8206.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  store i64 %.val123.i, ptr %.sroa.8206.0..sroa_idx.i, align 8, !alias.scope !4136, !noalias !4126
  %i.nd = invoke { ptr, ptr } @_RNvCsaljjC7ZTCQu_3log6logger()
          to label %bb.en unwind label %bb.eo, !noalias !4127 ; 2 uses

bb.en:                                            ; preds = %bb.em
  %i.ne = extractvalue { ptr, ptr } %i.nd, 0      ; 2 uses
  %i.nf = extractvalue { ptr, ptr } %i.nd, 1      ; 2 uses
  %i.ng = getelementptr inbounds nuw i8, ptr %i.nf, i64 24
  %i.nh = load ptr, ptr %i.ng, align 8, !invariant.load !6, !noalias !4127, !nonnull !6
  %i.ni = invoke noundef zeroext i1 %i.nh(ptr noundef %i.ne, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ac)
          to label %bb.ep unwind label %bb.eo, !noalias !4127

bb.eo:                                            ; preds = %bb.en, %bb.em, %bb.ei, %bb.eg
  %i.nj = landingpad { ptr, i32 }
          cleanup
  br label %bb.ey

bb.ep:                                            ; preds = %bb.en
  br i1 %i.ni, label %bb.eq, label %bb.et

bb.eq:                                            ; preds = %bb.ep
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !noalias !4126
  %i.nk = load ptr, ptr @_RNvNCNCNvNtNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage9retry_ext19ObjectStoreRetryExt19delete_with_retries00s_10___CALLSITE, align 8, !noalias !4126, !nonnull !6, !align !13, !noundef !6
  %i.nl = getelementptr inbounds nuw i8, ptr %i.nk, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !noalias !4126
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !4126
  store ptr @63, ptr %i.z, align 8, !noalias !4126
  %i.nm = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  store ptr inttoptr (i64 83 to ptr), ptr %i.nm, align 8, !noalias !4126
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !4126
  store ptr %i.ah, ptr %i.y, align 8, !noalias !4126
  store ptr %i.z, ptr %i.aa, align 8, !noalias !4126
  %i.nn = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  store ptr @56, ptr %i.nn, align 8, !noalias !4126
  %i.no = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  store ptr %i.fb, ptr %i.no, align 8, !noalias !4126
  %i.np = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  store ptr @57, ptr %i.np, align 8, !noalias !4126
  %i.nq = getelementptr inbounds nuw i8, ptr %i.aa, i64 32
  store ptr %i.y, ptr %i.nq, align 8, !noalias !4126
  %i.nr = getelementptr inbounds nuw i8, ptr %i.aa, i64 40
  store ptr @62, ptr %i.nr, align 8, !noalias !4126
  store i64 1, ptr %i.ab, align 8, !alias.scope !4137, !noalias !4126
  %.sroa.4.0..sroa_idx.i184.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  store ptr %i.aa, ptr %.sroa.4.0..sroa_idx.i184.i, align 8, !alias.scope !4137, !noalias !4126
  %.sroa.5.0..sroa_idx.i185.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  store i64 3, ptr %.sroa.5.0..sroa_idx.i185.i, align 8, !alias.scope !4137, !noalias !4126
  %i.ns = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  store ptr %i.nl, ptr %i.ns, align 8, !alias.scope !4137, !noalias !4126
  invoke void @_RNvNtCscTw95cGIolY_7tracing15___macro_support13___tracing_log(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.na, ptr noundef nonnull %i.ne, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.nf, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.ac, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.ab)
          to label %bb.es unwind label %bb.er, !noalias !4127

bb.er:                                            ; preds = %bb.eq
  %i.nt = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !4126
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !4126
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !4126
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !4126
  br label %bb.ey

bb.es:                                            ; preds = %bb.eq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !4126
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !4126
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !4126
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !4126
  br label %bb.et

bb.et:                                            ; preds = %bb.ew, %bb.es, %bb.ep, %bb.el, %bb.ek
  %.sroa.019.0.copyload.i = load i64, ptr %i.ah, align 8, !noalias !4126
  %.sroa.420.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.416.i, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.420.0..sroa_idx.i, i64 64, i1 false), !noalias !4126
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah), !noalias !4126
  br label %bb.fc

bb.eu:                                            ; preds = %bb.ej
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag), !noalias !4126
  %i.nu = load ptr, ptr @_RNvNCNCNvNtNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage9retry_ext19ObjectStoreRetryExt19delete_with_retries00s_10___CALLSITE, align 8, !noalias !4126, !nonnull !6, !align !13, !noundef !6
  %i.nv = getelementptr inbounds nuw i8, ptr %i.nu, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af), !noalias !4126
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae), !noalias !4126
  store ptr @63, ptr %i.ae, align 8, !noalias !4126
  %i.nw = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  store ptr inttoptr (i64 83 to ptr), ptr %i.nw, align 8, !noalias !4126
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad), !noalias !4126
  store ptr %i.ah, ptr %i.ad, align 8, !noalias !4126
  store ptr %i.ae, ptr %i.af, align 8, !noalias !4126
  %i.nx = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  store ptr @56, ptr %i.nx, align 8, !noalias !4126
  %i.ny = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  store ptr %i.fb, ptr %i.ny, align 8, !noalias !4126
  %i.nz = getelementptr inbounds nuw i8, ptr %i.af, i64 24
  store ptr @57, ptr %i.nz, align 8, !noalias !4126
  %i.oa = getelementptr inbounds nuw i8, ptr %i.af, i64 32
  store ptr %i.ad, ptr %i.oa, align 8, !noalias !4126
  %i.ob = getelementptr inbounds nuw i8, ptr %i.af, i64 40
  store ptr @62, ptr %i.ob, align 8, !noalias !4126
  store i64 1, ptr %i.ag, align 8, !noalias !4126
  %.sroa.7198.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  store ptr %i.af, ptr %.sroa.7198.0..sroa_idx.i, align 8, !noalias !4126
  %.sroa.8199.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  store i64 3, ptr %.sroa.8199.0..sroa_idx.i, align 8, !noalias !4126
  %.sroa.9200.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 24
  store ptr %i.nv, ptr %.sroa.9200.0..sroa_idx.i, align 8, !noalias !4126
  invoke fastcc void @_RNCNCNCNvYDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_NtNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage9retry_ext19ObjectStoreRetryExt19delete_with_retries00s_0Cs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 captures(address) dereferenceable(32) %i.ag)
          to label %bb.ew unwind label %bb.ev, !noalias !4127

bb.ev:                                            ; preds = %bb.eu
  %i.oc = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !noalias !4126
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !4126
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !4126
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !noalias !4126
  br label %bb.ey

bb.ew:                                            ; preds = %bb.eu
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !noalias !4126
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !4126
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !4126
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !noalias !4126
  br label %bb.et

bb.ex:                                            ; preds = %bb.bu
  %i.od = icmp ne i64 %i.hj, -9223372036854775800
  call void @llvm.assume(i1 %i.od)
  %6 = icmp eq i64 %i.hj, -9223372036854775802
  br i1 %6, label %.thread49, label %7

7:                                                ; preds = %bb.ex
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCsjyY8HP3IvQ6_12object_store5ErrorECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(72) %i.aq)
          to label %.thread49 unwind label %bb.df, !noalias !4127

bb.ey:                                            ; preds = %bb.ev, %bb.er, %bb.eo
  %.pn60.pn.pn.i = phi { ptr, i32 } [ %i.oc, %bb.ev ], [ %i.nj, %bb.eo ], [ %i.nt, %bb.er ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCsjyY8HP3IvQ6_12object_store5ErrorECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(72) %i.ah) #30
          to label %bb.ez unwind label %bb.di, !noalias !4127

bb.ez:                                            ; preds = %bb.ey
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah), !noalias !4126
  br label %.body.i

bb.fa:                                            ; preds = %bb.bv
  %i.oe = icmp ne i64 %i.hk, -9223372036854775800
  call void @llvm.assume(i1 %i.oe)
  %8 = icmp eq i64 %i.hk, -9223372036854775802
  br i1 %8, label %.body.i, label %9

9:                                                ; preds = %bb.fa
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCsjyY8HP3IvQ6_12object_store5ErrorECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(72) %i.aq) #30
          to label %.body.i unwind label %bb.di, !noalias !4127

bb.fb:                                            ; preds = %bb.an, %bb.am
  %i.of = landingpad { ptr, i32 }
          cleanup
  br label %.body35

.body35:                                          ; preds = %bb.de, %bb.fb
  %eh.lpad-body36 = phi { ptr, i32 } [ %i.of, %bb.fb ], [ %.pn74.pn.i, %bb.de ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8)
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNCNvYDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_NtNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage9retry_ext19ObjectStoreRetryExt19delete_with_retries00ECs9rVkZwOUgsI_13deltalake_aws(ptr noundef nonnull align 8 %i.ds) #30
          to label %.body unwind label %bb.p

.thread49:                                        ; preds = %bb.bu, %7, %bb.ex
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq), !noalias !4126
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.8, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.416.i, i64 64, i1 false), !noalias !4138
  store i8 1, ptr %i.dt, align 8, !noalias !4126
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.416.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al)
  br label %bb.fe

bb.fc:                                            ; preds = %bb.dy, %bb.et
  %.sroa.013.0245.i = phi i64 [ %.sroa.021.0.copyload.i, %bb.dy ], [ %.sroa.019.0.copyload.i, %bb.et ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq), !noalias !4126
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.8, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.416.i, i64 64, i1 false), !noalias !4138
  store i8 1, ptr %i.dt, align 8, !noalias !4126
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.416.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al)
  %i.og = icmp eq i64 %.sroa.013.0245.i, -9223372036854775789
  br i1 %i.og, label %bb.fd, label %bb.fe

bb.fd:                                            ; preds = %.thread, %bb.fc
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8)
  store i64 -9223372036854775789, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at)
  br label %common.ret

bb.fe:                                            ; preds = %.thread49, %bb.fc
  %.sroa.013.0245.i51 = phi i64 [ -9223372036854775790, %.thread49 ], [ %.sroa.013.0245.i, %bb.fc ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.3, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.8, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCscTw95cGIolY_7tracing10instrument12InstrumentedNCNCNvYDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_NtNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage9retry_ext19ObjectStoreRetryExt19delete_with_retries00EECs9rVkZwOUgsI_13deltalake_aws.exit

bb.ff:                                            ; preds = %bb.fg, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCscTw95cGIolY_7tracing10instrument12InstrumentedNCNCNvYDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_NtNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage9retry_ext19ObjectStoreRetryExt19delete_with_retries00EECs9rVkZwOUgsI_13deltalake_aws.exit
  store i8 0, ptr %i.dp, align 8
  store i64 %.sroa.044.0, ptr %0, align 8
  %.sroa.3.0..sroa_idx46 = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.3.0..sroa_idx46, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.3, i64 64, i1 false)
  br label %common.ret

bb.fg:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCscTw95cGIolY_7tracing10instrument12InstrumentedNCNCNvYDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_NtNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage9retry_ext19ObjectStoreRetryExt19delete_with_retries00EECs9rVkZwOUgsI_13deltalake_aws.exit
  %i.oh = getelementptr inbounds nuw i8, ptr %1, i64 24
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCscTw95cGIolY_7tracing4span4SpanECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(40) %i.oh)
          to label %bb.ff unwind label %bb.fh

bb.fh:                                            ; preds = %bb.h, %bb.f, %bb.fg
  %i.oi = landingpad { ptr, i32 }
          cleanup
  br label %bb.w

bb.fi:                                            ; preds = %bb.fj, %.body
  store i8 0, ptr %i.dd, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at)
  %i.oj = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.ok = load i8, ptr %i.oj, align 8, !range !16, !noundef !6
  %i.ol = trunc nuw i8 %i.ok to i1
  br i1 %i.ol, label %bb.fk, label %bb.w

bb.fj:                                            ; preds = %.body
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNCNvYDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_NtNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage9retry_ext19ObjectStoreRetryExt19delete_with_retries00ECs9rVkZwOUgsI_13deltalake_aws(ptr noundef nonnull align 8 %i.at) #30
          to label %bb.fi unwind label %bb.p

bb.fk:                                            ; preds = %bb.fi
  %i.om = getelementptr inbounds nuw i8, ptr %1, i64 24
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCscTw95cGIolY_7tracing4span4SpanECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(40) %i.om) #30
          to label %bb.w unwind label %bb.p
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNSNvYNCINvNtNtCs2pqxYH9ZEk8_3std6thread9lifecycle15spawn_uncheckedNCNCINvNtCs9rVkZwOUgsI_13deltalake_aws7storage18execute_sdk_futureNCNvNtB1c_11credentials19resolve_credentials0INtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCsjPG5xYjJYir_9aws_types10sdk_config9SdkConfigNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEEs_00uEs_0INtNtNtB2V_3ops8function6FnOnceuE9call_once6vtableB1c_(ptr noundef %0) unnamed_addr #5 personality ptr @rust_eh_personality !guid !4153 {
bb.a:
  %i.a = alloca [9968 x i8], align 8              ; 7 uses
  %i.b = alloca [9968 x i8], align 8              ; 6 uses
  %.sroa.536.i = alloca [9952 x i8], align 8      ; 6 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4154)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.536.i)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.sroa.536.32..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.536.i, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(9936) %.sroa.536.32..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(9936) %i.d, i64 9936, i1 false)
  %.sroa.034.0.copyload.i = load ptr, ptr %0, align 8, !alias.scope !4154 ; 2 uses
  %.sroa.435.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.435.0.copyload.i = load ptr, ptr %.sroa.435.0..sroa_idx.i, align 8, !alias.scope !4154 ; 2 uses
  %.sroa.536.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.536.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.536.0..sroa_idx.i, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !4154
  store ptr %.sroa.034.0.copyload.i, ptr %i.b, align 8, !noalias !4154
  %.sroa.7.0..sroa_idx20.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %.sroa.435.0.copyload.i, ptr %.sroa.7.0..sroa_idx20.i, align 8, !noalias !4154
  %.sroa.9.0..sroa_idx24.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(9952) %.sroa.9.0..sroa_idx24.i, ptr noundef nonnull align 8 dereferenceable(9952) %.sroa.536.i, i64 9952, i1 false), !noalias !4154
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !4155
  store ptr %.sroa.034.0.copyload.i, ptr %i.a, align 8, !noalias !4154
  %.sroa.7.0..sroa_idx22.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %.sroa.435.0.copyload.i, ptr %.sroa.7.0..sroa_idx22.i, align 8, !noalias !4154
  %.sroa.9.0..sroa_idx25.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(9952) %.sroa.9.0..sroa_idx25.i, ptr noundef nonnull align 8 dereferenceable(9952) %.sroa.536.i, i64 9952, i1 false), !noalias !4154
  invoke void @_RINvNtNtCs2pqxYH9ZEk8_3std3sys9backtrace28___rust_begin_short_backtraceNCNCNCINvNtNtB6_6thread9lifecycle15spawn_uncheckedNCNCINvNtCs9rVkZwOUgsI_13deltalake_aws7storage18execute_sdk_futureNCNvNtB24_11credentials19resolve_credentials0INtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCsjPG5xYjJYir_9aws_types10sdk_config9SdkConfigNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEEs_00uEs_000uEB24_(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(9968) %i.b)
          to label %_RNvXsl_NtNtCsbvkFyIu7lgC_4core5panic11unwind_safeINtB5_16AssertUnwindSafeNCNCINvNtNtCs2pqxYH9ZEk8_3std6thread9lifecycle15spawn_uncheckedNCNCINvNtCs9rVkZwOUgsI_13deltalake_aws7storage18execute_sdk_futureNCNvNtB2j_11credentials19resolve_credentials0INtNtB9_6result6ResultNtNtCsjPG5xYjJYir_9aws_types10sdk_config9SdkConfigNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEEs_00uEs_00EINtNtNtB9_3ops8function6FnOnceuE9call_onceB2j_.exit.i.i unwind label %bb.b, !noalias !4154

bb.b:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
          catch ptr null
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvNtCs9rVkZwOUgsI_13deltalake_aws11credentials19resolve_credentials0EBM_(ptr noundef nonnull align 8 %i.f)
          to label %.body15.i unwind label %bb.c, !noalias !4155

bb.c:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #32, !noalias !4155
  unreachable

_RNvXsl_NtNtCsbvkFyIu7lgC_4core5panic11unwind_safeINtB5_16AssertUnwindSafeNCNCINvNtNtCs2pqxYH9ZEk8_3std6thread9lifecycle15spawn_uncheckedNCNCINvNtCs9rVkZwOUgsI_13deltalake_aws7storage18execute_sdk_futureNCNvNtB2j_11credentials19resolve_credentials0INtNtB9_6result6ResultNtNtCsjPG5xYjJYir_9aws_types10sdk_config9SdkConfigNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEEs_00uEs_00EINtNtNtB9_3ops8function6FnOnceuE9call_onceB2j_.exit.i.i: ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  invoke void @_RINvNtNtCs2pqxYH9ZEk8_3std3sys9backtrace28___rust_begin_short_backtraceNCNCINvNtCs9rVkZwOUgsI_13deltalake_aws7storage18execute_sdk_futureNCNvNtB1g_11credentials19resolve_credentials0INtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCsjPG5xYjJYir_9aws_types10sdk_config9SdkConfigNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEEs_00uEB1g_(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(9936) %i.h)
          to label %bb.g unwind label %bb.d, !noalias !4154

bb.d:                                             ; preds = %_RNvXsl_NtNtCsbvkFyIu7lgC_4core5panic11unwind_safeINtB5_16AssertUnwindSafeNCNCINvNtNtCs2pqxYH9ZEk8_3std6thread9lifecycle15spawn_uncheckedNCNCINvNtCs9rVkZwOUgsI_13deltalake_aws7storage18execute_sdk_futureNCNvNtB2j_11credentials19resolve_credentials0INtNtB9_6result6ResultNtNtCsjPG5xYjJYir_9aws_types10sdk_config9SdkConfigNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEEs_00uEs_00EINtNtNtB9_3ops8function6FnOnceuE9call_onceB2j_.exit.i.i
  %i.i = landingpad { ptr, i32 }
          catch ptr null
  br label %.body15.i

.body15.i:                                        ; preds = %bb.d, %bb.b
  %eh.lpad-body16.i = phi { ptr, i32 } [ %i.i, %bb.d ], [ %i.e, %bb.b ]
  %i.j = extractvalue { ptr, i32 } %eh.lpad-body16.i, 0
  %i.k = invoke { ptr, ptr } @_RNvNvNtCs2pqxYH9ZEk8_3std9panicking12catch_unwind7cleanup(ptr noundef %i.j)
          to label %bb.f unwind label %bb.e, !noalias !4154 ; 2 uses

bb.e:                                             ; preds = %.body15.i
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking19panic_cannot_unwind() #32, !noalias !4154
  unreachable

bb.f:                                             ; preds = %.body15.i
  %i.m = extractvalue { ptr, ptr } %i.k, 0
  %i.n = extractvalue { ptr, ptr } %i.k, 1
  br label %bb.h

bb.g:                                             ; preds = %_RNvXsl_NtNtCsbvkFyIu7lgC_4core5panic11unwind_safeINtB5_16AssertUnwindSafeNCNCINvNtNtCs2pqxYH9ZEk8_3std6thread9lifecycle15spawn_uncheckedNCNCINvNtCs9rVkZwOUgsI_13deltalake_aws7storage18execute_sdk_futureNCNvNtB2j_11credentials19resolve_credentials0INtNtB9_6result6ResultNtNtCsjPG5xYjJYir_9aws_types10sdk_config9SdkConfigNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEEs_00uEs_00EINtNtNtB9_3ops8function6FnOnceuE9call_onceB2j_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !4155
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !4154
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.o = phi ptr [ undef, %bb.g ], [ %i.n, %bb.f ] ; 2 uses
  %i.p = phi ptr [ null, %bb.g ], [ %i.m, %bb.f ] ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !alias.scope !4154, !nonnull !6, !noundef !6 ; 8 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 24 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !4156)
  %i.t = load i64, ptr %i.s, align 8, !range !7, !alias.scope !4156, !noalias !4154, !noundef !6
  %i.u = icmp eq i64 %i.t, 0
  br i1 %i.u, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultuINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEEECs9rVkZwOUgsI_13deltalake_aws.exit.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.v = getelementptr inbounds nuw i8, ptr %i.r, i64 32 ; 2 uses
  %.val.i.i = load ptr, ptr %i.v, align 8, !alias.scope !4156, !noalias !4154, !noundef !6 ; 4 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.r, i64 40 ; 2 uses
  %.val1.i.i = load ptr, ptr %i.w, align 8, !alias.scope !4156, !noalias !4154 ; 6 uses
  %i.x = icmp eq ptr %.val.i.i, null
  br i1 %i.x, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultuINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEEECs9rVkZwOUgsI_13deltalake_aws.exit.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1.i.i) ]
  %i.y = load ptr, ptr %.val1.i.i, align 8, !invariant.load !6, !noalias !4157 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.y, null
  br i1 %.not.i.i.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  invoke void %i.y(ptr noundef nonnull %.val.i.i)
          to label %bb.l unwind label %bb.n, !noalias !4157

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.z = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 8
  %i.aa = load i64, ptr %i.z, align 8, !range !21, !invariant.load !6, !noalias !4157 ; 2 uses
  %i.ab = icmp eq i64 %i.aa, 0
  br i1 %i.ab, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultuINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEEECs9rVkZwOUgsI_13deltalake_aws.exit.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ac = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 16
  %i.ad = load i64, ptr %i.ac, align 8, !range !22, !invariant.load !6, !noalias !4157
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef range(i64 1, 0) %i.aa, i64 noundef range(i64 1, 536870913) %i.ad) #22, !noalias !4157
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultuINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEEECs9rVkZwOUgsI_13deltalake_aws.exit.i

bb.n:                                             ; preds = %bb.k
  %i.ae = landingpad { ptr, i32 }
          cleanup
  %i.af = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 8
  %i.ag = load i64, ptr %i.af, align 8, !range !21, !invariant.load !6, !noalias !4157 ; 2 uses
  %i.ah = icmp eq i64 %i.ag, 0
  br i1 %i.ah, label %bb.q, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ai = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 16
  %i.aj = load i64, ptr %i.ai, align 8, !range !22, !invariant.load !6, !noalias !4157
end_hunk_0
