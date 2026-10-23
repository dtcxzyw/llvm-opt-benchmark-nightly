Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/foundations-rs/original/foundations-0829c0e58918e871.foundations.822e5dc8be635b49-cgu.12?download=true
inline.NumInlined: 969
inline.NumDeleted: 445
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_RNvMs1_NtCslVf3eO13on1_7matchit4treeINtB5_4NodeINtNtCs1xwejQucwHj_5alloc4sync3ArcDINtNtNtCs3oUPovFnLWP_4core3ops8function2FnTINtNtCs74LoFwSioHw_4http7request7RequestNtNtNtCsaCYLheajBls_5hyper4body8incoming8IncomingEIBK_NtNtNtCsbaWXNhtWAp9_11foundations9telemetry8settings17TelemetrySettingsEEEp6OutputINtNtB1p_3pin3PinINtNtBO_5boxed3BoxDNtNtNtB1p_6future6future6Futurep6OutputINtNtB1p_6result6ResultINtNtB24_8response8ResponseINtNtNtCsefgzIPu8p8D_14http_body_util11combinators8box_body7BoxBodyNtNtCs8QTyv2gZm5j_5bytes5bytes5BytesIB57_DNtNtB1p_5error5ErrorNtNtB1p_6marker4SendNtB8X_4SyncEL_EEEzEB8V_EL_EEB8V_B9f_EL_EE12insert_routeB3B_:bb.a
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcDINtNtNtB4_3ops8function2FnTINtNtCs74LoFwSioHw_4http7request7RequestNtNtNtCsaCYLheajBls_5hyper4body8incoming8IncomingEIBC_NtNtNtCsbaWXNhtWAp9_11foundations9telemetry8settings17TelemetrySettingsEEEp6OutputINtNtB4_3pin3PinINtNtBG_5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB1G_8response8ResponseINtNtNtCsefgzIPu8p8D_14http_body_util11combinators8box_body7BoxBodyNtNtCs8QTyv2gZm5j_5bytes5bytes5BytesIB4I_DNtNtB4_5error5ErrorNtNtB4_6marker4SendNtB8v_4SyncEL_EEEzEB8t_EL_EEB8t_B8M_EL_EEB3d_.exit, !dbg !9382

bb.ci:                                            ; preds = %bb.h
  %i.hg = landingpad { ptr, i32 }
          cleanup
  store i64 1, ptr %.sroa.0.0, align 8, !dbg !9364
  %i.hh = extractelement <2 x ptr> %i.br, i64 0, !dbg !9364
  store ptr %i.hh, ptr %i.bu, align 8, !dbg !9364
  %.sroa.6.0..sroa.0.0.24.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 16, !dbg !9364
  %i.hi = extractelement <2 x ptr> %i.br, i64 1, !dbg !9364
  store ptr %i.hi, ptr %.sroa.6.0..sroa.0.0.24.sroa_idx, align 8, !dbg !9364
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcDINtNtNtB4_3ops8function2FnTINtNtCs74LoFwSioHw_4http7request7RequestNtNtNtCsaCYLheajBls_5hyper4body8incoming8IncomingEIBC_NtNtNtCsbaWXNhtWAp9_11foundations9telemetry8settings17TelemetrySettingsEEEp6OutputINtNtB4_3pin3PinINtNtBG_5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB1G_8response8ResponseINtNtNtCsefgzIPu8p8D_14http_body_util11combinators8box_body7BoxBodyNtNtCs8QTyv2gZm5j_5bytes5bytes5BytesIB4I_DNtNtB4_5error5ErrorNtNtB4_6marker4SendNtB8v_4SyncEL_EEEzEB8t_EL_EEB8t_B8M_EL_EEB3d_.exit221, !dbg !9364

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_4cell10UnsafeCellINtNtCs1xwejQucwHj_5alloc4sync3ArcDINtNtNtB4_3ops8function2FnTINtNtCs74LoFwSioHw_4http7request7RequestNtNtNtCsaCYLheajBls_5hyper4body8incoming8IncomingEIB1n_NtNtNtCsbaWXNhtWAp9_11foundations9telemetry8settings17TelemetrySettingsEEEp6OutputINtNtB4_3pin3PinINtNtB1r_5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB2r_8response8ResponseINtNtNtCsefgzIPu8p8D_14http_body_util11combinators8box_body7BoxBodyNtNtCs8QTyv2gZm5j_5bytes5bytes5BytesIB5u_DNtNtB4_5error5ErrorNtNtB4_6marker4SendNtB9i_4SyncEL_EEEzEB9g_EL_EEB9g_B9z_EL_EEEEB3Z_.exit: ; preds = %bb.g, %bb.f, %bb.h
  store i64 1, ptr %.sroa.0.0, align 8, !dbg !9364
  %.sroa.5.0..sroa.0.0.25.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 8, !dbg !9364
  store <2 x ptr> %i.br, ptr %.sroa.5.0..sroa.0.0.25.sroa_idx, align 8, !dbg !9364
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !dbg !9543
  call void @_RNvMs1_NtCslVf3eO13on1_7matchit6escapeNtB5_12UnescapedRef8to_owned(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.y, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %2), !dbg !9544
  %i.hj = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 24, !dbg !9545 ; 3 uses
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslVf3eO13on1_7matchit6escape14UnescapedRouteECsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef align 8 dereferenceable(48) %i.hj)
          to label %bb.ck unwind label %bb.cj, !dbg !9545

bb.cj:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_4cell10UnsafeCellINtNtCs1xwejQucwHj_5alloc4sync3ArcDINtNtNtB4_3ops8function2FnTINtNtCs74LoFwSioHw_4http7request7RequestNtNtNtCsaCYLheajBls_5hyper4body8incoming8IncomingEIB1n_NtNtNtCsbaWXNhtWAp9_11foundations9telemetry8settings17TelemetrySettingsEEEp6OutputINtNtB4_3pin3PinINtNtB1r_5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB2r_8response8ResponseINtNtNtCsefgzIPu8p8D_14http_body_util11combinators8box_body7BoxBodyNtNtCs8QTyv2gZm5j_5bytes5bytes5BytesIB5u_DNtNtB4_5error5ErrorNtNtB4_6marker4SendNtB9i_4SyncEL_EEEzEB9g_EL_EEB9g_B9z_EL_EEEEB3Z_.exit
  %i.hk = landingpad { ptr, i32 }
          cleanup
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.hj, ptr noundef nonnull align 8 dereferenceable(48) %i.y, i64 48, i1 false), !dbg !9545
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcDINtNtNtB4_3ops8function2FnTINtNtCs74LoFwSioHw_4http7request7RequestNtNtNtCsaCYLheajBls_5hyper4body8incoming8IncomingEIBC_NtNtNtCsbaWXNhtWAp9_11foundations9telemetry8settings17TelemetrySettingsEEEp6OutputINtNtB4_3pin3PinINtNtBG_5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB1G_8response8ResponseINtNtNtCsefgzIPu8p8D_14http_body_util11combinators8box_body7BoxBodyNtNtCs8QTyv2gZm5j_5bytes5bytes5BytesIB4I_DNtNtB4_5error5ErrorNtNtB4_6marker4SendNtB8v_4SyncEL_EEEzEB8t_EL_EEB8t_B8M_EL_EEB3d_.exit221, !dbg !9546

bb.ck:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_4cell10UnsafeCellINtNtCs1xwejQucwHj_5alloc4sync3ArcDINtNtNtB4_3ops8function2FnTINtNtCs74LoFwSioHw_4http7request7RequestNtNtNtCsaCYLheajBls_5hyper4body8incoming8IncomingEIB1n_NtNtNtCsbaWXNhtWAp9_11foundations9telemetry8settings17TelemetrySettingsEEEp6OutputINtNtB4_3pin3PinINtNtB1r_5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB2r_8response8ResponseINtNtNtCsefgzIPu8p8D_14http_body_util11combinators8box_body7BoxBodyNtNtCs8QTyv2gZm5j_5bytes5bytes5BytesIB5u_DNtNtB4_5error5ErrorNtNtB4_6marker4SendNtB9i_4SyncEL_EEEzEB9g_EL_EEB9g_B9z_EL_EEEEB3Z_.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.hj, ptr noundef nonnull align 8 dereferenceable(48) %i.y, i64 48, i1 false), !dbg !9545
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !dbg !9546
  %i.hl = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !9547
  store ptr %.sroa.0.0, ptr %i.hl, align 8, !dbg !9547
  store i64 -1, ptr %0, align 8, !dbg !9547
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcDINtNtNtB4_3ops8function2FnTINtNtCs74LoFwSioHw_4http7request7RequestNtNtNtCsaCYLheajBls_5hyper4body8incoming8IncomingEIBC_NtNtNtCsbaWXNhtWAp9_11foundations9telemetry8settings17TelemetrySettingsEEEp6OutputINtNtB4_3pin3PinINtNtBG_5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB1G_8response8ResponseINtNtNtCsefgzIPu8p8D_14http_body_util11combinators8box_body7BoxBodyNtNtCs8QTyv2gZm5j_5bytes5bytes5BytesIB4I_DNtNtB4_5error5ErrorNtNtB4_6marker4SendNtB8v_4SyncEL_EEEzEB8t_EL_EEB8t_B8M_EL_EEB3d_.exit, !dbg !9548

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcDINtNtNtB4_3ops8function2FnTINtNtCs74LoFwSioHw_4http7request7RequestNtNtNtCsaCYLheajBls_5hyper4body8incoming8IncomingEIBC_NtNtNtCsbaWXNhtWAp9_11foundations9telemetry8settings17TelemetrySettingsEEEp6OutputINtNtB4_3pin3PinINtNtBG_5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB1G_8response8ResponseINtNtNtCsefgzIPu8p8D_14http_body_util11combinators8box_body7BoxBodyNtNtCs8QTyv2gZm5j_5bytes5bytes5BytesIB4I_DNtNtB4_5error5ErrorNtNtB4_6marker4SendNtB8v_4SyncEL_EEEzEB8t_EL_EEB8t_B8M_EL_EEB3d_.exit: ; preds = %bb.cm, %bb.cl, %bb.ah, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_4cell10UnsafeCellINtNtCs1xwejQucwHj_5alloc4sync3ArcDINtNtNtB4_3ops8function2FnTINtNtCs74LoFwSioHw_4http7request7RequestNtNtNtCsaCYLheajBls_5hyper4body8incoming8IncomingEIB1n_NtNtNtCsbaWXNhtWAp9_11foundations9telemetry8settings17TelemetrySettingsEEEp6OutputINtNtB4_3pin3PinINtNtB1r_5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB2r_8response8ResponseINtNtNtCsefgzIPu8p8D_14http_body_util11combinators8box_body7BoxBodyNtNtCs8QTyv2gZm5j_5bytes5bytes5BytesIB5u_DNtNtB4_5error5ErrorNtNtB4_6marker4SendNtB9i_4SyncEL_EEEzEB9g_EL_EEB9g_B9z_EL_EEEEB3Z_.exit218, %bb.ck
  ret void, !dbg !9549

bb.cl:                                            ; preds = %bb.q, %bb.bf, %bb.d
  call void @llvm.experimental.noalias.scope.decl(metadata !9347), !dbg !9550
  call void @llvm.experimental.noalias.scope.decl(metadata !9348), !dbg !9551
  %i.hm = load ptr, ptr %i.z, align 16, !dbg !9552, !alias.scope !9349, !nonnull !465, !noundef !465
  %i.hn = atomicrmw add ptr %i.hm, i64 -1 release, align 8, !dbg !9553, !noalias !9349
  %i.ho = icmp eq i64 %i.hn, 1, !dbg !9554
  br i1 %i.ho, label %bb.cm, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcDINtNtNtB4_3ops8function2FnTINtNtCs74LoFwSioHw_4http7request7RequestNtNtNtCsaCYLheajBls_5hyper4body8incoming8IncomingEIBC_NtNtNtCsbaWXNhtWAp9_11foundations9telemetry8settings17TelemetrySettingsEEEp6OutputINtNtB4_3pin3PinINtNtBG_5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB1G_8response8ResponseINtNtNtCsefgzIPu8p8D_14http_body_util11combinators8box_body7BoxBodyNtNtCs8QTyv2gZm5j_5bytes5bytes5BytesIB4I_DNtNtB4_5error5ErrorNtNtB4_6marker4SendNtB8v_4SyncEL_EEEzEB8t_EL_EEB8t_B8M_EL_EEB3d_.exit, !dbg !9554

bb.cm:                                            ; preds = %bb.cl
  fence acquire, !dbg !9555
  call void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcDINtNtNtCs3oUPovFnLWP_4core3ops8function2FnTINtNtCs74LoFwSioHw_4http7request7RequestNtNtNtCsaCYLheajBls_5hyper4body8incoming8IncomingEIBx_NtNtNtCsbaWXNhtWAp9_11foundations9telemetry8settings17TelemetrySettingsEEEp6OutputINtNtBO_3pin3PinINtNtB7_5boxed3BoxDNtNtNtBO_6future6future6Futurep6OutputINtNtBO_6result6ResultINtNtB1t_8response8ResponseINtNtNtCsefgzIPu8p8D_14http_body_util11combinators8box_body7BoxBodyNtNtCs8QTyv2gZm5j_5bytes5bytes5BytesIB4v_DNtNtBO_5error5ErrorNtNtBO_6marker4SendNtB8i_4SyncEL_EEEzEB8g_EL_EEB8g_B8z_EL_E9drop_slowB30_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.z) #33, !dbg !9556
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcDINtNtNtB4_3ops8function2FnTINtNtCs74LoFwSioHw_4http7request7RequestNtNtNtCsaCYLheajBls_5hyper4body8incoming8IncomingEIBC_NtNtNtCsbaWXNhtWAp9_11foundations9telemetry8settings17TelemetrySettingsEEEp6OutputINtNtB4_3pin3PinINtNtBG_5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB1G_8response8ResponseINtNtNtCsefgzIPu8p8D_14http_body_util11combinators8box_body7BoxBodyNtNtCs8QTyv2gZm5j_5bytes5bytes5BytesIB4I_DNtNtB4_5error5ErrorNtNtB4_6marker4SendNtB8v_4SyncEL_EEEzEB8t_EL_EEB8t_B8M_EL_EEB3d_.exit, !dbg !9556

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcDINtNtNtB4_3ops8function2FnTINtNtCs74LoFwSioHw_4http7request7RequestNtNtNtCsaCYLheajBls_5hyper4body8incoming8IncomingEIBC_NtNtNtCsbaWXNhtWAp9_11foundations9telemetry8settings17TelemetrySettingsEEEp6OutputINtNtB4_3pin3PinINtNtBG_5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB1G_8response8ResponseINtNtNtCsefgzIPu8p8D_14http_body_util11combinators8box_body7BoxBodyNtNtCs8QTyv2gZm5j_5bytes5bytes5BytesIB4I_DNtNtB4_5error5ErrorNtNtB4_6marker4SendNtB8v_4SyncEL_EEEzEB8t_EL_EEB8t_B8M_EL_EEB3d_.exit221: ; preds = %bb.al, %bb.ak, %bb.am, %bb.ac, %bb.ab, %bb.ad, %bb.ci, %bb.cj, %bb.ch, %.thread233, %bb.cn
  %.pn226 = phi { ptr, i32 } [ %.pn232, %.thread233 ], [ %i.cz, %bb.al ], [ %.pn232, %bb.cn ], [ %i.hg, %bb.ci ], [ %i.hk, %bb.cj ], [ %i.hc, %bb.ch ], [ %i.da, %bb.ac ], [ %i.da, %bb.ad ], [ %i.da, %bb.ab ], [ %i.cz, %bb.am ], [ %i.cz, %bb.ak ]
  resume { ptr, i32 } %.pn226, !dbg !9424

.thread233:                                       ; preds = %.thread240.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.at, %bb.v, %bb.bk, %bb.br, %bb.bd
  %.pn232 = phi { ptr, i32 } [ %i.ew, %bb.bd ], [ %i.fq, %bb.br ], [ %i.eo, %bb.at ], [ %i.ci, %bb.v ], [ %i.ff, %bb.bk ], [ %lpad.loopexit.split-lp561, %.thread240.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !9350), !dbg !9550
  call void @llvm.experimental.noalias.scope.decl(metadata !9351), !dbg !9557
  %i.hp = load ptr, ptr %i.z, align 16, !dbg !9558, !alias.scope !9352, !nonnull !465, !noundef !465
  %i.hq = atomicrmw add ptr %i.hp, i64 -1 release, align 8, !dbg !9559, !noalias !9352
  %i.hr = icmp eq i64 %i.hq, 1, !dbg !9560
  br i1 %i.hr, label %bb.cn, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcDINtNtNtB4_3ops8function2FnTINtNtCs74LoFwSioHw_4http7request7RequestNtNtNtCsaCYLheajBls_5hyper4body8incoming8IncomingEIBC_NtNtNtCsbaWXNhtWAp9_11foundations9telemetry8settings17TelemetrySettingsEEEp6OutputINtNtB4_3pin3PinINtNtBG_5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB1G_8response8ResponseINtNtNtCsefgzIPu8p8D_14http_body_util11combinators8box_body7BoxBodyNtNtCs8QTyv2gZm5j_5bytes5bytes5BytesIB4I_DNtNtB4_5error5ErrorNtNtB4_6marker4SendNtB8v_4SyncEL_EEEzEB8t_EL_EEB8t_B8M_EL_EEB3d_.exit221, !dbg !9560

bb.cn:                                            ; preds = %.thread233
  fence acquire, !dbg !9561
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcDINtNtNtCs3oUPovFnLWP_4core3ops8function2FnTINtNtCs74LoFwSioHw_4http7request7RequestNtNtNtCsaCYLheajBls_5hyper4body8incoming8IncomingEIBx_NtNtNtCsbaWXNhtWAp9_11foundations9telemetry8settings17TelemetrySettingsEEEp6OutputINtNtBO_3pin3PinINtNtB7_5boxed3BoxDNtNtNtBO_6future6future6Futurep6OutputINtNtBO_6result6ResultINtNtB1t_8response8ResponseINtNtNtCsefgzIPu8p8D_14http_body_util11combinators8box_body7BoxBodyNtNtCs8QTyv2gZm5j_5bytes5bytes5BytesIB4v_DNtNtBO_5error5ErrorNtNtBO_6marker4SendNtB8i_4SyncEL_EEEzEB8g_EL_EEB8g_B8z_EL_E9drop_slowB30_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.z) #33
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcDINtNtNtB4_3ops8function2FnTINtNtCs74LoFwSioHw_4http7request7RequestNtNtNtCsaCYLheajBls_5hyper4body8incoming8IncomingEIBC_NtNtNtCsbaWXNhtWAp9_11foundations9telemetry8settings17TelemetrySettingsEEEp6OutputINtNtB4_3pin3PinINtNtBG_5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB1G_8response8ResponseINtNtNtCsefgzIPu8p8D_14http_body_util11combinators8box_body7BoxBodyNtNtCs8QTyv2gZm5j_5bytes5bytes5BytesIB4I_DNtNtB4_5error5ErrorNtNtB4_6marker4SendNtB8v_4SyncEL_EEEzEB8t_EL_EEB8t_B8M_EL_EEB3d_.exit221 unwind label %bb.aj, !dbg !9562
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef range(i64 0, 60680079189834052) i64 @_RNvMs1_NtCslVf3eO13on1_7matchit4treeINtB5_4NodeINtNtCs1xwejQucwHj_5alloc4sync3ArcDINtNtNtCs3oUPovFnLWP_4core3ops8function2FnTINtNtCs74LoFwSioHw_4http7request7RequestNtNtNtCsaCYLheajBls_5hyper4body8incoming8IncomingEIBK_NtNtNtCsbaWXNhtWAp9_11foundations9telemetry8settings17TelemetrySettingsEEEp6OutputINtNtB1p_3pin3PinINtNtBO_5boxed3BoxDNtNtNtB1p_6future6future6Futurep6OutputINtNtB1p_6result6ResultINtNtB24_8response8ResponseINtNtNtCsefgzIPu8p8D_14http_body_util11combinators8box_body7BoxBodyNtNtCs8QTyv2gZm5j_5bytes5bytes5BytesIB57_DNtNtB1p_5error5ErrorNtNtB1p_6marker4SendNtB8X_4SyncEL_EEEzEB8V_EL_EEB8V_B9f_EL_EE16add_suffix_childB3B_(ptr noalias nofree noundef nonnull align 8 dereferenceable(152) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(152) %1) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !9563 {
bb.a:
  %i.a = alloca [152 x i8], align 8               ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 104, !dbg !9644 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !dbg !9644, !nonnull !465, !noundef !465 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 112, !dbg !9645 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !dbg !9645, !noundef !465 ; 10 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9634), !dbg !9646
  %i.f = icmp eq i64 %i.e, 0, !dbg !9647
  br i1 %i.f, label %_RINvMNtCs3oUPovFnLWP_4core5sliceSINtNtCslVf3eO13on1_7matchit4tree4NodeINtNtCs1xwejQucwHj_5alloc4sync3ArcDINtNtNtB5_3ops8function2FnTINtNtCs74LoFwSioHw_4http7request7RequestNtNtNtCsaCYLheajBls_5hyper4body8incoming8IncomingEIB17_NtNtNtCsbaWXNhtWAp9_11foundations9telemetry8settings17TelemetrySettingsEEEp6OutputINtNtB5_3pin3PinINtNtB1b_5boxed3BoxDNtNtNtB5_6future6future6Futurep6OutputINtNtB5_6result6ResultINtNtB2b_8response8ResponseINtNtNtCsefgzIPu8p8D_14http_body_util11combinators8box_body7BoxBodyNtNtCs8QTyv2gZm5j_5bytes5bytes5BytesIB5e_DNtNtB5_5error5ErrorNtNtB5_6marker4SendNtB92_4SyncEL_EEEzEB90_EL_EEB90_B9j_EL_EE15partition_pointNCNvMs1_By_Bv_16add_suffix_child0EB3J_.exit.thread, label %.preheader.i.i, !dbg !9647

_RINvMNtCs3oUPovFnLWP_4core5sliceSINtNtCslVf3eO13on1_7matchit4tree4NodeINtNtCs1xwejQucwHj_5alloc4sync3ArcDINtNtNtB5_3ops8function2FnTINtNtCs74LoFwSioHw_4http7request7RequestNtNtNtCsaCYLheajBls_5hyper4body8incoming8IncomingEIB17_NtNtNtCsbaWXNhtWAp9_11foundations9telemetry8settings17TelemetrySettingsEEEp6OutputINtNtB5_3pin3PinINtNtB1b_5boxed3BoxDNtNtNtB5_6future6future6Futurep6OutputINtNtB5_6result6ResultINtNtB2b_8response8ResponseINtNtNtCsefgzIPu8p8D_14http_body_util11combinators8box_body7BoxBodyNtNtCs8QTyv2gZm5j_5bytes5bytes5BytesIB5e_DNtNtB5_5error5ErrorNtNtB5_6marker4SendNtB92_4SyncEL_EEEzEB90_EL_EEB90_B9j_EL_EE15partition_pointNCNvMs1_By_Bv_16add_suffix_child0EB3J_.exit.thread: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !9648
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %i.a, ptr noundef nonnull align 8 dereferenceable(152) %1, i64 152, i1 false), !dbg !9648
  br label %bb.b, !dbg !9649

.preheader.i.i:                                   ; preds = %bb.a
  %.not.i.i = icmp eq i64 %i.e, 1, !dbg !9650
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.pre.i.i = load i64, ptr %.phi.trans.insert.i.i, align 8, !alias.scope !9634, !noalias !9636 ; 2 uses
  br i1 %.not.i.i, label %_RINvMNtCs3oUPovFnLWP_4core5sliceSINtNtCslVf3eO13on1_7matchit4tree4NodeINtNtCs1xwejQucwHj_5alloc4sync3ArcDINtNtNtB5_3ops8function2FnTINtNtCs74LoFwSioHw_4http7request7RequestNtNtNtCsaCYLheajBls_5hyper4body8incoming8IncomingEIB17_NtNtNtCsbaWXNhtWAp9_11foundations9telemetry8settings17TelemetrySettingsEEEp6OutputINtNtB5_3pin3PinINtNtB1b_5boxed3BoxDNtNtNtB5_6future6future6Futurep6OutputINtNtB5_6result6ResultINtNtB2b_8response8ResponseINtNtNtCsefgzIPu8p8D_14http_body_util11combinators8box_body7BoxBodyNtNtCs8QTyv2gZm5j_5bytes5bytes5BytesIB5e_DNtNtB5_5error5ErrorNtNtB5_6marker4SendNtB92_4SyncEL_EEEzEB90_EL_EEB90_B9j_EL_EE15partition_pointNCNvMs1_By_Bv_16add_suffix_child0EB3J_.exit, label %.lr.ph.i.i, !dbg !9650

.lr.ph.i.i:                                       ; preds = %.preheader.i.i, %.lr.ph.i.i
  %.sroa.01.019.i.i = phi i64 [ %i.m, %.lr.ph.i.i ], [ %i.e, %.preheader.i.i ] ; 2 uses
  %.sroa.05.018.i.i = phi i64 [ %i.l, %.lr.ph.i.i ], [ 0, %.preheader.i.i ] ; 2 uses
  %i.g = lshr i64 %.sroa.01.019.i.i, 1, !dbg !9651 ; 2 uses
  %i.h = add nuw nsw i64 %i.g, %.sroa.05.018.i.i, !dbg !9652 ; 3 uses
  %i.i = icmp ult i64 %i.h, %i.e, !dbg !9653
  tail call void @llvm.assume(i1 %i.i), !dbg !9654
  %i.j = getelementptr inbounds nuw [152 x i8], ptr %i.c, i64 %i.h, !dbg !9655
  %i.k = getelementptr i8, ptr %i.j, i64 40, !dbg !9656
  %.val12.i.i = load i64, ptr %i.k, align 8, !dbg !9656, !noalias !9637, !noundef !465
  %.not.i16.i.i = icmp ult i64 %.val12.i.i, %.pre.i.i, !dbg !9657
  %i.l = select i1 %.not.i16.i.i, i64 %.sroa.05.018.i.i, i64 %i.h, !dbg !9658, !unpredictable !465 ; 2 uses
  %i.m = sub nuw nsw i64 %.sroa.01.019.i.i, %i.g, !dbg !9659 ; 2 uses
  %i.n = icmp ugt i64 %i.m, 1, !dbg !9650
  br i1 %i.n, label %.lr.ph.i.i, label %_RINvMNtCs3oUPovFnLWP_4core5sliceSINtNtCslVf3eO13on1_7matchit4tree4NodeINtNtCs1xwejQucwHj_5alloc4sync3ArcDINtNtNtB5_3ops8function2FnTINtNtCs74LoFwSioHw_4http7request7RequestNtNtNtCsaCYLheajBls_5hyper4body8incoming8IncomingEIB17_NtNtNtCsbaWXNhtWAp9_11foundations9telemetry8settings17TelemetrySettingsEEEp6OutputINtNtB5_3pin3PinINtNtB1b_5boxed3BoxDNtNtNtB5_6future6future6Futurep6OutputINtNtB5_6result6ResultINtNtB2b_8response8ResponseINtNtNtCsefgzIPu8p8D_14http_body_util11combinators8box_body7BoxBodyNtNtCs8QTyv2gZm5j_5bytes5bytes5BytesIB5e_DNtNtB5_5error5ErrorNtNtB5_6marker4SendNtB92_4SyncEL_EEEzEB90_EL_EEB90_B9j_EL_EE15partition_pointNCNvMs1_By_Bv_16add_suffix_child0EB3J_.exit, !dbg !9650

_RINvMNtCs3oUPovFnLWP_4core5sliceSINtNtCslVf3eO13on1_7matchit4tree4NodeINtNtCs1xwejQucwHj_5alloc4sync3ArcDINtNtNtB5_3ops8function2FnTINtNtCs74LoFwSioHw_4http7request7RequestNtNtNtCsaCYLheajBls_5hyper4body8incoming8IncomingEIB17_NtNtNtCsbaWXNhtWAp9_11foundations9telemetry8settings17TelemetrySettingsEEEp6OutputINtNtB5_3pin3PinINtNtB1b_5boxed3BoxDNtNtNtB5_6future6future6Futurep6OutputINtNtB5_6result6ResultINtNtB2b_8response8ResponseINtNtNtCsefgzIPu8p8D_14http_body_util11combinators8box_body7BoxBodyNtNtCs8QTyv2gZm5j_5bytes5bytes5BytesIB5e_DNtNtB5_5error5ErrorNtNtB5_6marker4SendNtB92_4SyncEL_EEEzEB90_EL_EEB90_B9j_EL_EE15partition_pointNCNvMs1_By_Bv_16add_suffix_child0EB3J_.exit: ; preds = %.lr.ph.i.i, %.preheader.i.i
  %.sroa.05.0.lcssa.i.i = phi i64 [ 0, %.preheader.i.i ], [ %i.l, %.lr.ph.i.i ], !dbg !9660 ; 2 uses
  %i.o = getelementptr inbounds nuw [152 x i8], ptr %i.c, i64 %.sroa.05.0.lcssa.i.i, !dbg !9661
  %i.p = getelementptr i8, ptr %i.o, i64 40, !dbg !9662
  %.val14.i.i = load i64, ptr %i.p, align 8, !dbg !9662, !noalias !9637, !noundef !465
  %.not.i.i.i = icmp uge i64 %.val14.i.i, %.pre.i.i, !dbg !9663
  %i.q = zext i1 %.not.i.i.i to i64, !dbg !9664
  %i.r = add nuw nsw i64 %.sroa.05.0.lcssa.i.i, %i.q, !dbg !9665 ; 2 uses
  %i.s = icmp ule i64 %i.r, %i.e, !dbg !9666
  tail call void @llvm.assume(i1 %i.s), !dbg !9667
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !9648
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %i.a, ptr noundef nonnull align 8 dereferenceable(152) %1, i64 152, i1 false), !dbg !9648
  %i.t = icmp ult i64 %i.e, 60680079189834052, !dbg !9668
  tail call void @llvm.assume(i1 %i.t), !dbg !9669
  br label %bb.b, !dbg !9649

bb.b:                                             ; preds = %_RINvMNtCs3oUPovFnLWP_4core5sliceSINtNtCslVf3eO13on1_7matchit4tree4NodeINtNtCs1xwejQucwHj_5alloc4sync3ArcDINtNtNtB5_3ops8function2FnTINtNtCs74LoFwSioHw_4http7request7RequestNtNtNtCsaCYLheajBls_5hyper4body8incoming8IncomingEIB17_NtNtNtCsbaWXNhtWAp9_11foundations9telemetry8settings17TelemetrySettingsEEEp6OutputINtNtB5_3pin3PinINtNtB1b_5boxed3BoxDNtNtNtB5_6future6future6Futurep6OutputINtNtB5_6result6ResultINtNtB2b_8response8ResponseINtNtNtCsefgzIPu8p8D_14http_body_util11combinators8box_body7BoxBodyNtNtCs8QTyv2gZm5j_5bytes5bytes5BytesIB5e_DNtNtB5_5error5ErrorNtNtB5_6marker4SendNtB92_4SyncEL_EEEzEB90_EL_EEB90_B9j_EL_EE15partition_pointNCNvMs1_By_Bv_16add_suffix_child0EB3J_.exit, %_RINvMNtCs3oUPovFnLWP_4core5sliceSINtNtCslVf3eO13on1_7matchit4tree4NodeINtNtCs1xwejQucwHj_5alloc4sync3ArcDINtNtNtB5_3ops8function2FnTINtNtCs74LoFwSioHw_4http7request7RequestNtNtNtCsaCYLheajBls_5hyper4body8incoming8IncomingEIB17_NtNtNtCsbaWXNhtWAp9_11foundations9telemetry8settings17TelemetrySettingsEEEp6OutputINtNtB5_3pin3PinINtNtB1b_5boxed3BoxDNtNtNtB5_6future6future6Futurep6OutputINtNtB5_6result6ResultINtNtB2b_8response8ResponseINtNtNtCsefgzIPu8p8D_14http_body_util11combinators8box_body7BoxBodyNtNtCs8QTyv2gZm5j_5bytes5bytes5BytesIB5e_DNtNtB5_5error5ErrorNtNtB5_6marker4SendNtB92_4SyncEL_EEEzEB90_EL_EEB90_B9j_EL_EE15partition_pointNCNvMs1_By_Bv_16add_suffix_child0EB3J_.exit.thread
  %.sroa.4.0.i.i3 = phi i64 [ 0, %_RINvMNtCs3oUPovFnLWP_4core5sliceSINtNtCslVf3eO13on1_7matchit4tree4NodeINtNtCs1xwejQucwHj_5alloc4sync3ArcDINtNtNtB5_3ops8function2FnTINtNtCs74LoFwSioHw_4http7request7RequestNtNtNtCsaCYLheajBls_5hyper4body8incoming8IncomingEIB17_NtNtNtCsbaWXNhtWAp9_11foundations9telemetry8settings17TelemetrySettingsEEEp6OutputINtNtB5_3pin3PinINtNtB1b_5boxed3BoxDNtNtNtB5_6future6future6Futurep6OutputINtNtB5_6result6ResultINtNtB2b_8response8ResponseINtNtNtCsefgzIPu8p8D_14http_body_util11combinators8box_body7BoxBodyNtNtCs8QTyv2gZm5j_5bytes5bytes5BytesIB5e_DNtNtB5_5error5ErrorNtNtB5_6marker4SendNtB92_4SyncEL_EEEzEB90_EL_EEB90_B9j_EL_EE15partition_pointNCNvMs1_By_Bv_16add_suffix_child0EB3J_.exit.thread ], [ %i.r, %_RINvMNtCs3oUPovFnLWP_4core5sliceSINtNtCslVf3eO13on1_7matchit4tree4NodeINtNtCs1xwejQucwHj_5alloc4sync3ArcDINtNtNtB5_3ops8function2FnTINtNtCs74LoFwSioHw_4http7request7RequestNtNtNtCsaCYLheajBls_5hyper4body8incoming8IncomingEIB17_NtNtNtCsbaWXNhtWAp9_11foundations9telemetry8settings17TelemetrySettingsEEEp6OutputINtNtB5_3pin3PinINtNtB1b_5boxed3BoxDNtNtNtB5_6future6future6Futurep6OutputINtNtB5_6result6ResultINtNtB2b_8response8ResponseINtNtNtCsefgzIPu8p8D_14http_body_util11combinators8box_body7BoxBodyNtNtCs8QTyv2gZm5j_5bytes5bytes5BytesIB5e_DNtNtB5_5error5ErrorNtNtB5_6marker4SendNtB92_4SyncEL_EEEzEB90_EL_EEB90_B9j_EL_EE15partition_pointNCNvMs1_By_Bv_16add_suffix_child0EB3J_.exit ] ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 96, !dbg !9644 ; 2 uses
  %i.v = load i64, ptr %i.u, align 8, !dbg !9670, !range !495, !alias.scope !9641, !noundef !465
  %i.w = icmp eq i64 %i.e, %i.v, !dbg !9671
  br i1 %i.w, label %bb.c, label %bb.d, !dbg !9671

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecINtNtCslVf3eO13on1_7matchit4tree4NodeINtNtB7_4sync3ArcDINtNtNtCs3oUPovFnLWP_4core3ops8function2FnTINtNtCs74LoFwSioHw_4http7request7RequestNtNtNtCsaCYLheajBls_5hyper4body8incoming8IncomingEIB1o_NtNtNtCsbaWXNhtWAp9_11foundations9telemetry8settings17TelemetrySettingsEEEp6OutputINtNtB1M_3pin3PinINtNtB7_5boxed3BoxDNtNtNtB1M_6future6future6Futurep6OutputINtNtB1M_6result6ResultINtNtB2r_8response8ResponseINtNtNtCsefgzIPu8p8D_14http_body_util11combinators8box_body7BoxBodyNtNtCs8QTyv2gZm5j_5bytes5bytes5BytesIB5v_DNtNtB1M_5error5ErrorNtNtB1M_6marker4SendNtB9l_4SyncEL_EEEzEB9j_EL_EEB9j_B9D_EL_EEE8grow_oneB3Z_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.u)
          to label %._crit_edge unwind label %bb.e, !dbg !9672, !noalias !9642

._crit_edge:                                      ; preds = %bb.c
  %.pre = load ptr, ptr %i.b, align 8, !dbg !9673, !alias.scope !9641
  br label %bb.d, !dbg !9672

bb.d:                                             ; preds = %._crit_edge, %bb.b
  %i.x = phi ptr [ %.pre, %._crit_edge ], [ %i.c, %bb.b ], !dbg !9673
  %i.y = getelementptr inbounds nuw [152 x i8], ptr %i.x, i64 %.sroa.4.0.i.i3, !dbg !9674 ; 3 uses
  %i.z = icmp samesign ult i64 %.sroa.4.0.i.i3, %i.e, !dbg !9675
  br i1 %i.z, label %bb.f, label %bb.h, !dbg !9675

bb.e:                                             ; preds = %bb.c
  %i.aa = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCslVf3eO13on1_7matchit4tree4NodeINtNtCs1xwejQucwHj_5alloc4sync3ArcDINtNtNtB4_3ops8function2FnTINtNtCs74LoFwSioHw_4http7request7RequestNtNtNtCsaCYLheajBls_5hyper4body8incoming8IncomingEIB1d_NtNtNtCsbaWXNhtWAp9_11foundations9telemetry8settings17TelemetrySettingsEEEp6OutputINtNtB4_3pin3PinINtNtB1h_5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB2h_8response8ResponseINtNtNtCsefgzIPu8p8D_14http_body_util11combinators8box_body7BoxBodyNtNtCs8QTyv2gZm5j_5bytes5bytes5BytesIB5k_DNtNtB4_5error5ErrorNtNtB4_6marker4SendNtB98_4SyncEL_EEEzEB96_EL_EEB96_B9p_EL_EEEB3P_(ptr noalias nofree noundef nonnull align 8 dereferenceable(152) %i.a) #31
          to label %.body unwind label %bb.g, !dbg !9676

bb.f:                                             ; preds = %bb.d
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 152, !dbg !9677
  %i.ac = sub nuw nsw i64 %i.e, %.sroa.4.0.i.i3, !dbg !9678
  %i.ad = mul nuw nsw i64 %i.ac, 152, !dbg !9679
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ab, ptr nonnull align 8 %i.y, i64 %i.ad, i1 false), !dbg !9679, !noalias !9642
  br label %bb.h, !dbg !9680

bb.g:                                             ; preds = %bb.e
  %i.ae = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #32, !dbg !9681
  unreachable, !dbg !9681

bb.h:                                             ; preds = %bb.f, %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %i.y, ptr noundef nonnull align 8 dereferenceable(152) %i.a, i64 152, i1 false), !dbg !9682, !noalias !9643
  %i.af = add nuw nsw i64 %i.e, 1, !dbg !9683
  store i64 %i.af, ptr %i.d, align 8, !dbg !9684, !alias.scope !9641
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !9685
  ret i64 %.sroa.4.0.i.i3, !dbg !9686

.body:                                            ; preds = %bb.e
  resume { ptr, i32 } %i.aa, !dbg !9687
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef range(i64 0, 9223372036854775807) i64 @_RNvMs1_NtCslVf3eO13on1_7matchit4treeINtB5_4NodeINtNtCs1xwejQucwHj_5alloc4sync3ArcDINtNtNtCs3oUPovFnLWP_4core3ops8function2FnTINtNtCs74LoFwSioHw_4http7request7RequestNtNtNtCsaCYLheajBls_5hyper4body8incoming8IncomingEIBK_NtNtNtCsbaWXNhtWAp9_11foundations9telemetry8settings17TelemetrySettingsEEEp6OutputINtNtB1p_3pin3PinINtNtBO_5boxed3BoxDNtNtNtB1p_6future6future6Futurep6OutputINtNtB1p_6result6ResultINtNtB24_8response8ResponseINtNtNtCsefgzIPu8p8D_14http_body_util11combinators8box_body7BoxBodyNtNtCs8QTyv2gZm5j_5bytes5bytes5BytesIB57_DNtNtB1p_5error5ErrorNtNtB1p_6marker4SendNtB8X_4SyncEL_EEEzEB8V_EL_EEB8V_B9f_EL_EE21update_child_priorityB3B_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(152) %0, i64 noundef range(i64 0, 9223372036854775807) %1) unnamed_addr #1 !dbg !9688 {
bb.a:
  %i.a = alloca [152 x i8], align 8               ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 112, !dbg !9771
  %i.c = load i64, ptr %i.b, align 8, !dbg !9771, !noundef !465 ; 2 uses
  %i.d = icmp ult i64 %1, %i.c, !dbg !9772
  br i1 %i.d, label %.split, label %bb.b, !dbg !9772

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking18panic_bounds_check(i64 noundef %1, i64 noundef %i.c, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @121) #36, !dbg !9772
  unreachable, !dbg !9772

.split:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 104, !dbg !9773
  %i.f = load ptr, ptr %i.e, align 8, !dbg !9773, !nonnull !465, !noundef !465 ; 3 uses
  %i.g = getelementptr inbounds nuw [152 x i8], ptr %i.f, i64 %1, !dbg !9774
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 144, !dbg !9775 ; 2 uses
  %i.i = load i32, ptr %i.h, align 8, !dbg !9775, !noundef !465
  %i.j = add i32 %i.i, 1, !dbg !9775              ; 2 uses
  store i32 %i.j, ptr %i.h, align 8, !dbg !9775
  %.not16 = icmp eq i64 %1, 0, !dbg !9776
  br i1 %.not16, label %bb.f, label %.lr.ph, !dbg !9776

.lr.ph:                                           ; preds = %.split, %bb.g
  %.sroa.0.017 = phi i64 [ %i.k, %bb.g ], [ %1, %.split ] ; 3 uses
  %i.k = add nsw i64 %.sroa.0.017, -1, !dbg !9777 ; 3 uses
  %i.l = getelementptr inbounds nuw [152 x i8], ptr %i.f, i64 %i.k, !dbg !9778 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 144, !dbg !9779
  %i.n = load i32, ptr %i.m, align 8, !dbg !9779, !noundef !465
  %i.o = icmp ult i32 %i.n, %i.j, !dbg !9779
  br i1 %i.o, label %bb.g, label %._crit_edge, !dbg !9779

._crit_edge:                                      ; preds = %bb.g, %.lr.ph
  %.sroa.0.0.lcssa = phi i64 [ %.sroa.0.017, %.lr.ph ], [ 0, %bb.g ], !dbg !9780 ; 7 uses
  %.not12 = icmp eq i64 %.sroa.0.0.lcssa, %1, !dbg !9781
  br i1 %.not12, label %bb.f, label %bb.c, !dbg !9781

bb.c:                                             ; preds = %._crit_edge
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 80, !dbg !9782
  %i.q = load ptr, ptr %i.p, align 8, !dbg !9782, !nonnull !465, !noundef !465
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 88, !dbg !9783
  %i.s = load i64, ptr %i.r, align 8, !dbg !9783, !noundef !465 ; 2 uses
  %i.t = icmp ult i64 %1, %i.s, !dbg !9784
  br i1 %i.t, label %bb.d, label %bb.e, !dbg !9784, !prof !468

bb.d:                                             ; preds = %bb.c
  %i.u = add nuw nsw i64 %1, 1, !dbg !9785        ; 3 uses
  %i.v = icmp ult i64 %i.u, %.sroa.0.0.lcssa, !dbg !9786
  br i1 %i.v, label %bb.e, label %_RNvXs8_NtNtCs3oUPovFnLWP_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexShE9index_mutCsbaWXNhtWAp9_11foundations.exit, !dbg !9786, !prof !527

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.03.0.i = phi i64 [ %1, %bb.c ], [ %i.u, %bb.d ], !dbg !9787
  tail call void @_RNvNtNtCs3oUPovFnLWP_4core5slice5index16slice_index_fail(i64 noundef %.sroa.0.0.lcssa, i64 noundef %.sroa.03.0.i, i64 noundef range(i64 0, -9223372036854775808) %i.s, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @122) #36, !dbg !9788, !noalias !9763
  unreachable, !dbg !9788

_RNvXs8_NtNtCs3oUPovFnLWP_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexShE9index_mutCsbaWXNhtWAp9_11foundations.exit: ; preds = %bb.d
  %i.w = sub nuw nsw i64 %i.u, %.sroa.0.0.lcssa, !dbg !9789
  %i.x = getelementptr inbounds nuw i8, ptr %i.q, i64 %.sroa.0.0.lcssa, !dbg !9790
  tail call void @_RNvMNtCs3oUPovFnLWP_4core5sliceSh12rotate_rightCsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef nonnull %i.x, i64 noundef %i.w, i64 noundef 1), !dbg !9791
  br label %bb.f, !dbg !9792

bb.f:                                             ; preds = %.split, %._crit_edge, %_RNvXs8_NtNtCs3oUPovFnLWP_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexShE9index_mutCsbaWXNhtWAp9_11foundations.exit
  %.sroa.0.0.lcssa25 = phi i64 [ %.sroa.0.0.lcssa, %_RNvXs8_NtNtCs3oUPovFnLWP_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexShE9index_mutCsbaWXNhtWAp9_11foundations.exit ], [ %.sroa.0.0.lcssa, %._crit_edge ], [ 0, %.split ]
  ret i64 %.sroa.0.0.lcssa25, !dbg !9793

bb.g:                                             ; preds = %.lr.ph
  %i.y = getelementptr inbounds nuw [152 x i8], ptr %i.f, i64 %.sroa.0.017, !dbg !9794 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !9795
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %i.a, ptr noundef nonnull align 8 dereferenceable(152) %i.l, i64 152, i1 false), !dbg !9796
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %i.l, ptr noundef nonnull align 8 dereferenceable(152) %i.y, i64 152, i1 false), !dbg !9797
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %i.y, ptr noundef nonnull align 8 dereferenceable(152) %i.a, i64 152, i1 false), !dbg !9798
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !9799
  %.not = icmp eq i64 %i.k, 0, !dbg !9776
  br i1 %.not, label %._crit_edge, label %.lr.ph, !dbg !9776
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNvMs1_NtCslVf3eO13on1_7matchit4treeINtB5_4NodeINtNtCs1xwejQucwHj_5alloc4sync3ArcDINtNtNtCs3oUPovFnLWP_4core3ops8function2FnTINtNtCs74LoFwSioHw_4http7request7RequestNtNtNtCsaCYLheajBls_5hyper4body8incoming8IncomingEIBK_NtNtNtCsbaWXNhtWAp9_11foundations9telemetry8settings17TelemetrySettingsEEEp6OutputINtNtB1p_3pin3PinINtNtBO_5boxed3BoxDNtNtNtB1p_6future6future6Futurep6OutputINtNtB1p_6result6ResultINtNtB24_8response8ResponseINtNtNtCsefgzIPu8p8D_14http_body_util11combinators8box_body7BoxBodyNtNtCs8QTyv2gZm5j_5bytes5bytes5BytesIB57_DNtNtB1p_5error5ErrorNtNtB1p_6marker4SendNtB8X_4SyncEL_EEEzEB8V_EL_EEB8V_B9f_EL_EE21wild_child_in_segmentB3B_(ptr nofree noundef nonnull readonly align 8 captures(none) %0) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !9800 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !9861
  %i.b = load ptr, ptr %i.a, align 8, !dbg !9861, !nonnull !465, !noundef !465 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40, !dbg !9862
  %i.d = load i64, ptr %i.c, align 8, !dbg !9862, !noundef !465 ; 5 uses
  %i.e = icmp samesign ult i64 %i.d, 16, !dbg !9863
  br i1 %i.e, label %.preheader.i.i, label %bb.b, !dbg !9863

.preheader.i.i:                                   ; preds = %bb.a
  %.not.i.i = icmp eq i64 %i.d, 0, !dbg !9864
  br i1 %.not.i.i, label %.loopexit, label %.lr.ph.i.i, !dbg !9864

bb.b:                                             ; preds = %bb.a
  %i.f = tail call { i64, i64 } @_RNvNtNtCs3oUPovFnLWP_4core5slice6memchr14memchr_aligned(i8 noundef 47, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.b, i64 noundef range(i64 0, -9223372036854775808) %i.d), !dbg !9865 ; 2 uses
  %i.g = extractvalue { i64, i64 } %i.f, 0, !dbg !9865
  %i.h = extractvalue { i64, i64 } %i.f, 1, !dbg !9865
  %i.i = trunc nuw i64 %i.g to i1, !dbg !9866
  br i1 %i.i, label %_RNvXsg_NtNtCs3oUPovFnLWP_4core5slice3cmphNtB5_13SliceContains14slice_containsCsbaWXNhtWAp9_11foundations.exit, label %.loopexit, !dbg !9866

.lr.ph.i.i:                                       ; preds = %.preheader.i.i, %bb.c
  %.sroa.04.011.i.i = phi i64 [ %i.m, %bb.c ], [ 0, %.preheader.i.i ] ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 %.sroa.04.011.i.i, !dbg !9867
  %i.k = load i8, ptr %i.j, align 1, !dbg !9867, !alias.scope !9844, !noundef !465
  %i.l = icmp eq i8 %i.k, 47, !dbg !9867
  br i1 %i.l, label %_RNvXsg_NtNtCs3oUPovFnLWP_4core5slice3cmphNtB5_13SliceContains14slice_containsCsbaWXNhtWAp9_11foundations.exit, label %bb.c, !dbg !9867

bb.c:                                             ; preds = %.lr.ph.i.i
  %i.m = add nuw nsw i64 %.sroa.04.011.i.i, 1, !dbg !9868 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.m, %i.d, !dbg !9864
  br i1 %exitcond.not.i.i, label %.loopexit, label %.lr.ph.i.i, !dbg !9864

_RNvXsg_NtNtCs3oUPovFnLWP_4core5slice3cmphNtB5_13SliceContains14slice_containsCsbaWXNhtWAp9_11foundations.exit: ; preds = %.lr.ph.i.i, %bb.b
  %.sroa.5.0.i.i = phi i64 [ %i.h, %bb.b ], [ %.sroa.04.011.i.i, %.lr.ph.i.i ], !dbg !9869
  %i.n = icmp ult i64 %.sroa.5.0.i.i, %i.d, !dbg !9870
  tail call void @llvm.assume(i1 %i.n), !dbg !9871
  br label %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterINtNtCslVf3eO13on1_7matchit4tree4NodeINtNtCs1xwejQucwHj_5alloc4sync3ArcDINtNtNtBb_3ops8function2FnTINtNtCs74LoFwSioHw_4http7request7RequestNtNtNtCsaCYLheajBls_5hyper4body8incoming8IncomingEIB1s_NtNtNtCsbaWXNhtWAp9_11foundations9telemetry8settings17TelemetrySettingsEEEp6OutputINtNtBb_3pin3PinINtNtB1w_5boxed3BoxDNtNtNtBb_6future6future6Futurep6OutputINtNtBb_6result6ResultINtNtB2w_8response8ResponseINtNtNtCsefgzIPu8p8D_14http_body_util11combinators8box_body7BoxBodyNtNtCs8QTyv2gZm5j_5bytes5bytes5BytesIB5z_DNtNtBb_5error5ErrorNtNtBb_6marker4SendNtB9n_4SyncEL_EEEzEB9l_EL_EEB9l_B9E_EL_EEENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNvMs1_BT_BQ_21wild_child_in_segmentEB44_.exit, !dbg !9836

.loopexit:                                        ; preds = %bb.c, %bb.b, %.preheader.i.i
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 149, !dbg !9872
  %i.p = load i8, ptr %i.o, align 1, !dbg !9872, !range !719, !noundef !465 ; 2 uses
  %i.q = icmp ne i8 %i.p, 3, !dbg !9872
  tail call void @llvm.assume(i1 %i.q), !dbg !9872
  %i.r = icmp samesign ult i8 %i.p, 2, !dbg !9872
  br i1 %i.r, label %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterINtNtCslVf3eO13on1_7matchit4tree4NodeINtNtCs1xwejQucwHj_5alloc4sync3ArcDINtNtNtBb_3ops8function2FnTINtNtCs74LoFwSioHw_4http7request7RequestNtNtNtCsaCYLheajBls_5hyper4body8incoming8IncomingEIB1s_NtNtNtCsbaWXNhtWAp9_11foundations9telemetry8settings17TelemetrySettingsEEEp6OutputINtNtBb_3pin3PinINtNtB1w_5boxed3BoxDNtNtNtBb_6future6future6Futurep6OutputINtNtBb_6result6ResultINtNtB2w_8response8ResponseINtNtNtCsefgzIPu8p8D_14http_body_util11combinators8box_body7BoxBodyNtNtCs8QTyv2gZm5j_5bytes5bytes5BytesIB5z_DNtNtBb_5error5ErrorNtNtBb_6marker4SendNtB9n_4SyncEL_EEEzEB9l_EL_EEB9l_B9E_EL_EEENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNvMs1_BT_BQ_21wild_child_in_segmentEB44_.exit, label %bb.d, !dbg !9873

bb.d:                                             ; preds = %.loopexit
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 104, !dbg !9874
  %i.t = load ptr, ptr %i.s, align 8, !dbg !9874, !nonnull !465, !noundef !465 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 112, !dbg !9875
  %i.v = load i64, ptr %i.u, align 8, !dbg !9875, !noundef !465 ; 2 uses
  %.idx = mul nuw nsw i64 %i.v, 152, !dbg !9876
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 %.idx, !dbg !9876
  %.not.not8 = icmp eq i64 %i.v, 0, !dbg !9877
  br i1 %.not.not8, label %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterINtNtCslVf3eO13on1_7matchit4tree4NodeINtNtCs1xwejQucwHj_5alloc4sync3ArcDINtNtNtBb_3ops8function2FnTINtNtCs74LoFwSioHw_4http7request7RequestNtNtNtCsaCYLheajBls_5hyper4body8incoming8IncomingEIB1s_NtNtNtCsbaWXNhtWAp9_11foundations9telemetry8settings17TelemetrySettingsEEEp6OutputINtNtBb_3pin3PinINtNtB1w_5boxed3BoxDNtNtNtBb_6future6future6Futurep6OutputINtNtBb_6result6ResultINtNtB2w_8response8ResponseINtNtNtCsefgzIPu8p8D_14http_body_util11combinators8box_body7BoxBodyNtNtCs8QTyv2gZm5j_5bytes5bytes5BytesIB5z_DNtNtBb_5error5ErrorNtNtBb_6marker4SendNtB9n_4SyncEL_EEEzEB9l_EL_EEB9l_B9E_EL_EEENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNvMs1_BT_BQ_21wild_child_in_segmentEB44_.exit, label %.lr.ph, !dbg !9878

.lr.ph:                                           ; preds = %.lr.ph, %bb.d
  %.sroa.0.029 = phi ptr [ %i.y, %.lr.ph ], [ %i.t, %bb.d ] ; 2 uses
  %i.x = tail call fastcc noundef zeroext i1 @_RNvMs1_NtCslVf3eO13on1_7matchit4treeINtB5_4NodeINtNtCs1xwejQucwHj_5alloc4sync3ArcDINtNtNtCs3oUPovFnLWP_4core3ops8function2FnTINtNtCs74LoFwSioHw_4http7request7RequestNtNtNtCsaCYLheajBls_5hyper4body8incoming8IncomingEIBK_NtNtNtCsbaWXNhtWAp9_11foundations9telemetry8settings17TelemetrySettingsEEEp6OutputINtNtB1p_3pin3PinINtNtBO_5boxed3BoxDNtNtNtB1p_6future6future6Futurep6OutputINtNtB1p_6result6ResultINtNtB24_8response8ResponseINtNtNtCsefgzIPu8p8D_14http_body_util11combinators8box_body7BoxBodyNtNtCs8QTyv2gZm5j_5bytes5bytes5BytesIB57_DNtNtB1p_5error5ErrorNtNtB1p_6marker4SendNtB8X_4SyncEL_EEEzEB8V_EL_EEB8V_B9f_EL_EE21wild_child_in_segmentB3B_(ptr noundef nonnull align 8 %.sroa.0.029), !dbg !9879, !noalias !9860, !inline_history !378 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.0.029, i64 152 ; 2 uses
  %.not.not = icmp eq ptr %i.y, %i.w
  %or.cond = select i1 %i.x, i1 true, i1 %.not.not, !dbg !9880
  br i1 %or.cond, label %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterINtNtCslVf3eO13on1_7matchit4tree4NodeINtNtCs1xwejQucwHj_5alloc4sync3ArcDINtNtNtBb_3ops8function2FnTINtNtCs74LoFwSioHw_4http7request7RequestNtNtNtCsaCYLheajBls_5hyper4body8incoming8IncomingEIB1s_NtNtNtCsbaWXNhtWAp9_11foundations9telemetry8settings17TelemetrySettingsEEEp6OutputINtNtBb_3pin3PinINtNtB1w_5boxed3BoxDNtNtNtBb_6future6future6Futurep6OutputINtNtBb_6result6ResultINtNtB2w_8response8ResponseINtNtNtCsefgzIPu8p8D_14http_body_util11combinators8box_body7BoxBodyNtNtCs8QTyv2gZm5j_5bytes5bytes5BytesIB5z_DNtNtBb_5error5ErrorNtNtBb_6marker4SendNtB9n_4SyncEL_EEEzEB9l_EL_EEB9l_B9E_EL_EEENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNvMs1_BT_BQ_21wild_child_in_segmentEB44_.exit, label %.lr.ph, !dbg !9880

_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterINtNtCslVf3eO13on1_7matchit4tree4NodeINtNtCs1xwejQucwHj_5alloc4sync3ArcDINtNtNtBb_3ops8function2FnTINtNtCs74LoFwSioHw_4http7request7RequestNtNtNtCsaCYLheajBls_5hyper4body8incoming8IncomingEIB1s_NtNtNtCsbaWXNhtWAp9_11foundations9telemetry8settings17TelemetrySettingsEEEp6OutputINtNtBb_3pin3PinINtNtB1w_5boxed3BoxDNtNtNtBb_6future6future6Futurep6OutputINtNtBb_6result6ResultINtNtB2w_8response8ResponseINtNtNtCsefgzIPu8p8D_14http_body_util11combinators8box_body7BoxBodyNtNtCs8QTyv2gZm5j_5bytes5bytes5BytesIB5z_DNtNtBb_5error5ErrorNtNtBb_6marker4SendNtB9n_4SyncEL_EEEzEB9l_EL_EEB9l_B9E_EL_EEENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNvMs1_BT_BQ_21wild_child_in_segmentEB44_.exit: ; preds = %.lr.ph, %bb.d, %_RNvXsg_NtNtCs3oUPovFnLWP_4core5slice3cmphNtB5_13SliceContains14slice_containsCsbaWXNhtWAp9_11foundations.exit, %.loopexit
  %.sroa.0.0 = phi i1 [ true, %.loopexit ], [ false, %_RNvXsg_NtNtCs3oUPovFnLWP_4core5slice3cmphNtB5_13SliceContains14slice_containsCsbaWXNhtWAp9_11foundations.exit ], [ false, %bb.d ], [ %i.x, %.lr.ph ], !dbg !9881
  ret i1 %.sroa.0.0, !dbg !9882
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNvMs1_NtCslVf3eO13on1_7matchit4treeINtB5_4NodeINtNtCs1xwejQucwHj_5alloc4sync3ArcDINtNtNtCs3oUPovFnLWP_4core3ops8function2FnTINtNtCs74LoFwSioHw_4http7request7RequestNtNtNtCsaCYLheajBls_5hyper4body8incoming8IncomingEIBK_NtNtNtCsbaWXNhtWAp9_11foundations9telemetry8settings17TelemetrySettingsEEEp6OutputINtNtB1p_3pin3PinINtNtBO_5boxed3BoxDNtNtNtB1p_6future6future6Futurep6OutputINtNtB1p_6result6ResultINtNtB24_8response8ResponseINtNtNtCsefgzIPu8p8D_14http_body_util11combinators8box_body7BoxBodyNtNtCs8QTyv2gZm5j_5bytes5bytes5BytesIB57_DNtNtB1p_5error5ErrorNtNtB1p_6marker4SendNtB8X_4SyncEL_EEEzEB8V_EL_EEB8V_B9f_EL_EE28prefix_wild_child_in_segmentB3B_(ptr nofree noundef nonnull readonly align 8 captures(none) %0) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !9883 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 149, !dbg !9944
  %i.b = load i8, ptr %i.a, align 1, !dbg !9944, !range !719, !noundef !465 ; 2 uses
  %i.c = icmp ne i8 %i.b, 3, !dbg !9944
  tail call void @llvm.assume(i1 %i.c), !dbg !9944
  %i.d = icmp eq i8 %i.b, 2, !dbg !9945
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.f = load i64, ptr %i.e, align 8, !dbg !9946  ; 2 uses
  %i.g = icmp eq i64 %i.f, 0
  %or.cond = select i1 %i.d, i1 %i.g, i1 false, !dbg !9945
  br i1 %or.cond, label %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterINtNtCslVf3eO13on1_7matchit4tree4NodeINtNtCs1xwejQucwHj_5alloc4sync3ArcDINtNtNtBb_3ops8function2FnTINtNtCs74LoFwSioHw_4http7request7RequestNtNtNtCsaCYLheajBls_5hyper4body8incoming8IncomingEIB1s_NtNtNtCsbaWXNhtWAp9_11foundations9telemetry8settings17TelemetrySettingsEEEp6OutputINtNtBb_3pin3PinINtNtB1w_5boxed3BoxDNtNtNtBb_6future6future6Futurep6OutputINtNtBb_6result6ResultINtNtB2w_8response8ResponseINtNtNtCsefgzIPu8p8D_14http_body_util11combinators8box_body7BoxBodyNtNtCs8QTyv2gZm5j_5bytes5bytes5BytesIB5z_DNtNtBb_5error5ErrorNtNtBb_6marker4SendNtB9n_4SyncEL_EEEzEB9l_EL_EEB9l_B9E_EL_EEENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNvMs1_BT_BQ_21wild_child_in_segmentEB44_.exit, label %._crit_edge, !dbg !9945

._crit_edge:                                      ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !9947
  %i.i = load ptr, ptr %i.h, align 8, !dbg !9947, !nonnull !465, !noundef !465
  %i.j = tail call noundef zeroext i1 @_RNvMNtCs3oUPovFnLWP_4core5sliceSh9ends_withCsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.i, i64 noundef %i.f, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @103, i64 noundef 1), !dbg !9948
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 104, !dbg !9949
  %i.l = load ptr, ptr %i.k, align 8, !dbg !9949, !nonnull !465, !noundef !465 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 112, !dbg !9950
  %i.n = load i64, ptr %i.m, align 8, !dbg !9950, !noundef !465 ; 2 uses
  %.idx = mul nuw nsw i64 %i.n, 152, !dbg !9951
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 %.idx, !dbg !9951 ; 2 uses
  %.not.not18 = icmp eq i64 %i.n, 0, !dbg !9919   ; 2 uses
  br i1 %i.j, label %.preheader, label %.preheader12, !dbg !9928

.preheader12:                                     ; preds = %._crit_edge
  br i1 %.not.not18, label %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterINtNtCslVf3eO13on1_7matchit4tree4NodeINtNtCs1xwejQucwHj_5alloc4sync3ArcDINtNtNtBb_3ops8function2FnTINtNtCs74LoFwSioHw_4http7request7RequestNtNtNtCsaCYLheajBls_5hyper4body8incoming8IncomingEIB1s_NtNtNtCsbaWXNhtWAp9_11foundations9telemetry8settings17TelemetrySettingsEEEp6OutputINtNtBb_3pin3PinINtNtB1w_5boxed3BoxDNtNtNtBb_6future6future6Futurep6OutputINtNtBb_6result6ResultINtNtB2w_8response8ResponseINtNtNtCsefgzIPu8p8D_14http_body_util11combinators8box_body7BoxBodyNtNtCs8QTyv2gZm5j_5bytes5bytes5BytesIB5z_DNtNtBb_5error5ErrorNtNtBb_6marker4SendNtB9n_4SyncEL_EEEzEB9l_EL_EEB9l_B9E_EL_EEENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNvMs1_BT_BQ_21wild_child_in_segmentEB44_.exit, label %.lr.ph, !dbg !9952

.preheader:                                       ; preds = %._crit_edge
  br i1 %.not.not18, label %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterINtNtCslVf3eO13on1_7matchit4tree4NodeINtNtCs1xwejQucwHj_5alloc4sync3ArcDINtNtNtBb_3ops8function2FnTINtNtCs74LoFwSioHw_4http7request7RequestNtNtNtCsaCYLheajBls_5hyper4body8incoming8IncomingEIB1s_NtNtNtCsbaWXNhtWAp9_11foundations9telemetry8settings17TelemetrySettingsEEEp6OutputINtNtBb_3pin3PinINtNtB1w_5boxed3BoxDNtNtNtBb_6future6future6Futurep6OutputINtNtBb_6result6ResultINtNtB2w_8response8ResponseINtNtNtCsefgzIPu8p8D_14http_body_util11combinators8box_body7BoxBodyNtNtCs8QTyv2gZm5j_5bytes5bytes5BytesIB5z_DNtNtBb_5error5ErrorNtNtBb_6marker4SendNtB9n_4SyncEL_EEEzEB9l_EL_EEB9l_B9E_EL_EEENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNvMs1_BT_BQ_21wild_child_in_segmentEB44_.exit, label %.lr.ph20, !dbg !9953

_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterINtNtCslVf3eO13on1_7matchit4tree4NodeINtNtCs1xwejQucwHj_5alloc4sync3ArcDINtNtNtBb_3ops8function2FnTINtNtCs74LoFwSioHw_4http7request7RequestNtNtNtCsaCYLheajBls_5hyper4body8incoming8IncomingEIB1s_NtNtNtCsbaWXNhtWAp9_11foundations9telemetry8settings17TelemetrySettingsEEEp6OutputINtNtBb_3pin3PinINtNtB1w_5boxed3BoxDNtNtNtBb_6future6future6Futurep6OutputINtNtBb_6result6ResultINtNtB2w_8response8ResponseINtNtNtCsefgzIPu8p8D_14http_body_util11combinators8box_body7BoxBodyNtNtCs8QTyv2gZm5j_5bytes5bytes5BytesIB5z_DNtNtBb_5error5ErrorNtNtBb_6marker4SendNtB9n_4SyncEL_EEEzEB9l_EL_EEB9l_B9E_EL_EEENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNvMs1_BT_BQ_21wild_child_in_segmentEB44_.exit: ; preds = %.lr.ph, %.lr.ph20, %.preheader12, %.preheader, %bb.a
  %.sroa.0.0.shrunk = phi i1 [ false, %bb.a ], [ false, %.preheader12 ], [ false, %.preheader ], [ %i.q, %.lr.ph ], [ %i.s, %.lr.ph20 ]
  ret i1 %.sroa.0.0.shrunk, !dbg !9954

.lr.ph:                                           ; preds = %.lr.ph, %.preheader12
  %i.p = phi ptr [ %i.r, %.lr.ph ], [ %i.l, %.preheader12 ] ; 2 uses
  %i.q = tail call fastcc noundef zeroext i1 @_RNvMs1_NtCslVf3eO13on1_7matchit4treeINtB5_4NodeINtNtCs1xwejQucwHj_5alloc4sync3ArcDINtNtNtCs3oUPovFnLWP_4core3ops8function2FnTINtNtCs74LoFwSioHw_4http7request7RequestNtNtNtCsaCYLheajBls_5hyper4body8incoming8IncomingEIBK_NtNtNtCsbaWXNhtWAp9_11foundations9telemetry8settings17TelemetrySettingsEEEp6OutputINtNtB1p_3pin3PinINtNtBO_5boxed3BoxDNtNtNtB1p_6future6future6Futurep6OutputINtNtB1p_6result6ResultINtNtB24_8response8ResponseINtNtNtCsefgzIPu8p8D_14http_body_util11combinators8box_body7BoxBodyNtNtCs8QTyv2gZm5j_5bytes5bytes5BytesIB57_DNtNtB1p_5error5ErrorNtNtB1p_6marker4SendNtB8X_4SyncEL_EEEzEB8V_EL_EEB8V_B9f_EL_EE21wild_child_in_segmentB3B_(ptr noundef nonnull align 8 %i.p), !dbg !9955, !noalias !9942, !inline_history !378 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 152 ; 2 uses
  %.not.not.not.i.not.not = icmp eq ptr %i.r, %i.o
  %or.cond27 = select i1 %i.q, i1 true, i1 %.not.not.not.i.not.not, !dbg !9956
  br i1 %or.cond27, label %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterINtNtCslVf3eO13on1_7matchit4tree4NodeINtNtCs1xwejQucwHj_5alloc4sync3ArcDINtNtNtBb_3ops8function2FnTINtNtCs74LoFwSioHw_4http7request7RequestNtNtNtCsaCYLheajBls_5hyper4body8incoming8IncomingEIB1s_NtNtNtCsbaWXNhtWAp9_11foundations9telemetry8settings17TelemetrySettingsEEEp6OutputINtNtBb_3pin3PinINtNtB1w_5boxed3BoxDNtNtNtBb_6future6future6Futurep6OutputINtNtBb_6result6ResultINtNtB2w_8response8ResponseINtNtNtCsefgzIPu8p8D_14http_body_util11combinators8box_body7BoxBodyNtNtCs8QTyv2gZm5j_5bytes5bytes5BytesIB5z_DNtNtBb_5error5ErrorNtNtBb_6marker4SendNtB9n_4SyncEL_EEEzEB9l_EL_EEB9l_B9E_EL_EEENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNvMs1_BT_BQ_21wild_child_in_segmentEB44_.exit, label %.lr.ph, !dbg !9956

.lr.ph20:                                         ; preds = %.lr.ph20, %.preheader
  %.sroa.0.019 = phi ptr [ %i.t, %.lr.ph20 ], [ %i.l, %.preheader ] ; 2 uses
  %i.s = tail call fastcc noundef zeroext i1 @_RNvMs1_NtCslVf3eO13on1_7matchit4treeINtB5_4NodeINtNtCs1xwejQucwHj_5alloc4sync3ArcDINtNtNtCs3oUPovFnLWP_4core3ops8function2FnTINtNtCs74LoFwSioHw_4http7request7RequestNtNtNtCsaCYLheajBls_5hyper4body8incoming8IncomingEIBK_NtNtNtCsbaWXNhtWAp9_11foundations9telemetry8settings17TelemetrySettingsEEEp6OutputINtNtB1p_3pin3PinINtNtBO_5boxed3BoxDNtNtNtB1p_6future6future6Futurep6OutputINtNtB1p_6result6ResultINtNtB24_8response8ResponseINtNtNtCsefgzIPu8p8D_14http_body_util11combinators8box_body7BoxBodyNtNtCs8QTyv2gZm5j_5bytes5bytes5BytesIB57_DNtNtB1p_5error5ErrorNtNtB1p_6marker4SendNtB8X_4SyncEL_EEEzEB8V_EL_EEB8V_B9f_EL_EE28prefix_wild_child_in_segmentB3B_(ptr noundef nonnull align 8 %.sroa.0.019), !dbg !9957, !noalias !9943, !inline_history !9915 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.0.019, i64 152 ; 2 uses
  %.not.not = icmp eq ptr %i.t, %i.o
  %or.cond28 = select i1 %i.s, i1 true, i1 %.not.not, !dbg !9958
  br i1 %or.cond28, label %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterINtNtCslVf3eO13on1_7matchit4tree4NodeINtNtCs1xwejQucwHj_5alloc4sync3ArcDINtNtNtBb_3ops8function2FnTINtNtCs74LoFwSioHw_4http7request7RequestNtNtNtCsaCYLheajBls_5hyper4body8incoming8IncomingEIB1s_NtNtNtCsbaWXNhtWAp9_11foundations9telemetry8settings17TelemetrySettingsEEEp6OutputINtNtBb_3pin3PinINtNtB1w_5boxed3BoxDNtNtNtBb_6future6future6Futurep6OutputINtNtBb_6result6ResultINtNtB2w_8response8ResponseINtNtNtCsefgzIPu8p8D_14http_body_util11combinators8box_body7BoxBodyNtNtCs8QTyv2gZm5j_5bytes5bytes5BytesIB5z_DNtNtBb_5error5ErrorNtNtBb_6marker4SendNtB9n_4SyncEL_EEEzEB9l_EL_EEB9l_B9E_EL_EEENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNvMs1_BT_BQ_21wild_child_in_segmentEB44_.exit, label %.lr.ph20, !dbg !9958
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNvMs1_NtCslVf3eO13on1_7matchit4treeINtB5_4NodeINtNtCs1xwejQucwHj_5alloc4sync3ArcDINtNtNtCs3oUPovFnLWP_4core3ops8function2FnTINtNtCs74LoFwSioHw_4http7request7RequestNtNtNtCsaCYLheajBls_5hyper4body8incoming8IncomingEIBK_NtNtNtCsbaWXNhtWAp9_11foundations9telemetry8settings17TelemetrySettingsEEEp6OutputINtNtB1p_3pin3PinINtNtBO_5boxed3BoxDNtNtNtB1p_6future6future6Futurep6OutputINtNtB1p_6result6ResultINtNtB24_8response8ResponseINtNtNtCsefgzIPu8p8D_14http_body_util11combinators8box_body7BoxBodyNtNtCs8QTyv2gZm5j_5bytes5bytes5BytesIB57_DNtNtB1p_5error5ErrorNtNtB1p_6marker4SendNtB8X_4SyncEL_EEEzEB8V_EL_EEB8V_B9f_EL_EE28suffix_wild_child_in_segmentB3B_(ptr nofree noundef nonnull readonly align 8 captures(none) %0) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !325 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 149, !dbg !9971
  %i.b = load i8, ptr %i.a, align 1, !dbg !9971, !range !719, !noundef !465 ; 2 uses
  %i.c = icmp ne i8 %i.b, 3, !dbg !9971
  tail call void @llvm.assume(i1 %i.c), !dbg !9971
  %or.cond = icmp eq i8 %i.b, 1, !dbg !9972
  br i1 %or.cond, label %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterINtNtCslVf3eO13on1_7matchit4tree4NodeINtNtCs1xwejQucwHj_5alloc4sync3ArcDINtNtNtBb_3ops8function2FnTINtNtCs74LoFwSioHw_4http7request7RequestNtNtNtCsaCYLheajBls_5hyper4body8incoming8IncomingEIB1s_NtNtNtCsbaWXNhtWAp9_11foundations9telemetry8settings17TelemetrySettingsEEEp6OutputINtNtBb_3pin3PinINtNtB1w_5boxed3BoxDNtNtNtBb_6future6future6Futurep6OutputINtNtBb_6result6ResultINtNtB2w_8response8ResponseINtNtNtCsefgzIPu8p8D_14http_body_util11combinators8box_body7BoxBodyNtNtCs8QTyv2gZm5j_5bytes5bytes5BytesIB5z_DNtNtBb_5error5ErrorNtNtBb_6marker4SendNtB9n_4SyncEL_EEEzEB9l_EL_EEB9l_B9E_EL_EEENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvMs1_BT_BQ_28suffix_wild_child_in_segment0EB44_.exit, label %bb.b, !dbg !9972

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 104, !dbg !9973
  %i.e = load ptr, ptr %i.d, align 8, !dbg !9973, !nonnull !465, !noundef !465 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 112, !dbg !9974
  %i.g = load i64, ptr %i.f, align 8, !dbg !9974, !noundef !465 ; 2 uses
  %.idx = mul nuw nsw i64 %i.g, 152, !dbg !9975
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 %.idx, !dbg !9975
  %.not.not3 = icmp eq i64 %i.g, 0, !dbg !9976
  br i1 %.not.not3, label %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterINtNtCslVf3eO13on1_7matchit4tree4NodeINtNtCs1xwejQucwHj_5alloc4sync3ArcDINtNtNtBb_3ops8function2FnTINtNtCs74LoFwSioHw_4http7request7RequestNtNtNtCsaCYLheajBls_5hyper4body8incoming8IncomingEIB1s_NtNtNtCsbaWXNhtWAp9_11foundations9telemetry8settings17TelemetrySettingsEEEp6OutputINtNtBb_3pin3PinINtNtB1w_5boxed3BoxDNtNtNtBb_6future6future6Futurep6OutputINtNtBb_6result6ResultINtNtB2w_8response8ResponseINtNtNtCsefgzIPu8p8D_14http_body_util11combinators8box_body7BoxBodyNtNtCs8QTyv2gZm5j_5bytes5bytes5BytesIB5z_DNtNtBb_5error5ErrorNtNtBb_6marker4SendNtB9n_4SyncEL_EEEzEB9l_EL_EEB9l_B9E_EL_EEENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvMs1_BT_BQ_28suffix_wild_child_in_segment0EB44_.exit, label %.lr.ph, !dbg !9977

.lr.ph:                                           ; preds = %.lr.ph, %bb.b
  %.sroa.0.024 = phi ptr [ %i.j, %.lr.ph ], [ %i.e, %bb.b ] ; 2 uses
  %i.i = tail call fastcc noundef zeroext i1 @_RNCNvMs1_NtCslVf3eO13on1_7matchit4treeINtB7_4NodeINtNtCs1xwejQucwHj_5alloc4sync3ArcDINtNtNtCs3oUPovFnLWP_4core3ops8function2FnTINtNtCs74LoFwSioHw_4http7request7RequestNtNtNtCsaCYLheajBls_5hyper4body8incoming8IncomingEIBM_NtNtNtCsbaWXNhtWAp9_11foundations9telemetry8settings17TelemetrySettingsEEEp6OutputINtNtB1r_3pin3PinINtNtBQ_5boxed3BoxDNtNtNtB1r_6future6future6Futurep6OutputINtNtB1r_6result6ResultINtNtB26_8response8ResponseINtNtNtCsefgzIPu8p8D_14http_body_util11combinators8box_body7BoxBodyNtNtCs8QTyv2gZm5j_5bytes5bytes5BytesIB59_DNtNtB1r_5error5ErrorNtNtB1r_6marker4SendNtB8Z_4SyncEL_EEEzEB8X_EL_EEB8X_B9h_EL_EE28suffix_wild_child_in_segment0B3D_(ptr noundef nonnull align 8 %.sroa.0.024) #37, !dbg !9978 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.0.024, i64 152 ; 2 uses
  %.not.not = icmp eq ptr %i.j, %i.h
  %or.cond7 = select i1 %i.i, i1 true, i1 %.not.not, !dbg !9978
  br i1 %or.cond7, label %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterINtNtCslVf3eO13on1_7matchit4tree4NodeINtNtCs1xwejQucwHj_5alloc4sync3ArcDINtNtNtBb_3ops8function2FnTINtNtCs74LoFwSioHw_4http7request7RequestNtNtNtCsaCYLheajBls_5hyper4body8incoming8IncomingEIB1s_NtNtNtCsbaWXNhtWAp9_11foundations9telemetry8settings17TelemetrySettingsEEEp6OutputINtNtBb_3pin3PinINtNtB1w_5boxed3BoxDNtNtNtBb_6future6future6Futurep6OutputINtNtBb_6result6ResultINtNtB2w_8response8ResponseINtNtNtCsefgzIPu8p8D_14http_body_util11combinators8box_body7BoxBodyNtNtCs8QTyv2gZm5j_5bytes5bytes5BytesIB5z_DNtNtBb_5error5ErrorNtNtBb_6marker4SendNtB9n_4SyncEL_EEEzEB9l_EL_EEB9l_B9E_EL_EEENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvMs1_BT_BQ_28suffix_wild_child_in_segment0EB44_.exit, label %.lr.ph, !dbg !9978

_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterINtNtCslVf3eO13on1_7matchit4tree4NodeINtNtCs1xwejQucwHj_5alloc4sync3ArcDINtNtNtBb_3ops8function2FnTINtNtCs74LoFwSioHw_4http7request7RequestNtNtNtCsaCYLheajBls_5hyper4body8incoming8IncomingEIB1s_NtNtNtCsbaWXNhtWAp9_11foundations9telemetry8settings17TelemetrySettingsEEEp6OutputINtNtBb_3pin3PinINtNtB1w_5boxed3BoxDNtNtNtBb_6future6future6Futurep6OutputINtNtBb_6result6ResultINtNtB2w_8response8ResponseINtNtNtCsefgzIPu8p8D_14http_body_util11combinators8box_body7BoxBodyNtNtCs8QTyv2gZm5j_5bytes5bytes5BytesIB5z_DNtNtBb_5error5ErrorNtNtBb_6marker4SendNtB9n_4SyncEL_EEEzEB9l_EL_EEB9l_B9E_EL_EEENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvMs1_BT_BQ_28suffix_wild_child_in_segment0EB44_.exit: ; preds = %.lr.ph, %bb.b, %bb.a
  %.sroa.0.0 = phi i1 [ true, %bb.a ], [ false, %bb.b ], [ %i.i, %.lr.ph ], !dbg !9979
  ret i1 %.sroa.0.0, !dbg !9980
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs1_NtCslVf3eO13on1_7matchit4treeINtB5_4NodeINtNtCs1xwejQucwHj_5alloc4sync3ArcDINtNtNtCs3oUPovFnLWP_4core3ops8function2FnTINtNtCs74LoFwSioHw_4http7request7RequestNtNtNtCsaCYLheajBls_5hyper4body8incoming8IncomingEIBK_NtNtNtCsbaWXNhtWAp9_11foundations9telemetry8settings17TelemetrySettingsEEEp6OutputINtNtB1p_3pin3PinINtNtBO_5boxed3BoxDNtNtNtB1p_6future6future6Futurep6OutputINtNtB1p_6result6ResultINtNtB24_8response8ResponseINtNtNtCsefgzIPu8p8D_14http_body_util11combinators8box_body7BoxBodyNtNtCs8QTyv2gZm5j_5bytes5bytes5BytesIB57_DNtNtB1p_5error5ErrorNtNtB1p_6marker4SendNtB8X_4SyncEL_EEEzEB8V_EL_EEB8V_B9f_EL_EE6insertB3B_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(152) %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2, ptr noundef nonnull %3, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %4) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !9981 {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 7 uses
  %i.b = alloca [40 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 2 uses
  %i.d = alloca [24 x i8], align 8                ; 5 uses
  %i.e = alloca [40 x i8], align 8                ; 4 uses
  %i.f = alloca [24 x i8], align 8                ; 7 uses
  %i.g = alloca [40 x i8], align 8                ; 4 uses
  %i.h = alloca [24 x i8], align 8                ; 4 uses
  %i.i = alloca [40 x i8], align 8                ; 4 uses
  %i.j = alloca [24 x i8], align 8                ; 4 uses
  %i.k = alloca [40 x i8], align 8                ; 6 uses
  %i.l = alloca [40 x i8], align 8                ; 4 uses
  %i.m = alloca [32 x i8], align 8                ; 11 uses
  %i.n = alloca [40 x i8], align 8                ; 4 uses
  %i.o = alloca [24 x i8], align 8                ; 4 uses
  %i.p = alloca [40 x i8], align 8                ; 6 uses
  %i.q = alloca [40 x i8], align 8                ; 4 uses
  %i.r = alloca [32 x i8], align 8                ; 10 uses
  %i.s = alloca [40 x i8], align 8                ; 4 uses
  %i.t = alloca [24 x i8], align 8                ; 4 uses
  %i.u = alloca [40 x i8], align 8                ; 4 uses
  %i.v = alloca [24 x i8], align 8                ; 4 uses
  %i.w = alloca [24 x i8], align 8                ; 5 uses
  %i.x = alloca [40 x i8], align 8                ; 4 uses
  %i.y = alloca [24 x i8], align 8                ; 7 uses
  %i.z = alloca [152 x i8], align 8               ; 19 uses
  %i.aa = alloca [40 x i8], align 8               ; 4 uses
  %i.ab = alloca [24 x i8], align 8               ; 4 uses
end_hunk_0
