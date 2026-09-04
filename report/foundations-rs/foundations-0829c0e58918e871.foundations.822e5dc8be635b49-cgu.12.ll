Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/foundations-rs/original/foundations-0829c0e58918e871.foundations.822e5dc8be635b49-cgu.12?download=true
inline.NumInlined: 969
inline.NumDeleted: 445
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_RNvMs1_NtCslVf3eO13on1_7matchit4treeINtB5_4NodeINtNtCs1xwejQucwHj_5alloc4sync3ArcDINtNtNtCs3oUPovFnLWP_4core3ops8function2FnTINtNtCs74LoFwSioHw_4http7request7RequestNtNtNtCsaCYLheajBls_5hyper4body8incoming8IncomingEIBK_NtNtNtCsbaWXNhtWAp9_11foundations9telemetry8settings17TelemetrySettingsEEEp6OutputINtNtB1p_3pin3PinINtNtBO_5boxed3BoxDNtNtNtB1p_6future6future6Futurep6OutputINtNtB1p_6result6ResultINtNtB24_8response8ResponseINtNtNtCsefgzIPu8p8D_14http_body_util11combinators8box_body7BoxBodyNtNtCs8QTyv2gZm5j_5bytes5bytes5BytesIB57_DNtNtB1p_5error5ErrorNtNtB1p_6marker4SendNtB8X_4SyncEL_EEEzEB8V_EL_EEB8V_B9f_EL_EE12insert_routeB3B_:bb.a
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcDINtNtNtB4_3ops8function2FnTINtNtCs74LoFwSioHw_4http7request7RequestNtNtNtCsaCYLheajBls_5hyper4body8incoming8IncomingEIBC_NtNtNtCsbaWXNhtWAp9_11foundations9telemetry8settings17TelemetrySettingsEEEp6OutputINtNtB4_3pin3PinINtNtBG_5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB1G_8response8ResponseINtNtNtCsefgzIPu8p8D_14http_body_util11combinators8box_body7BoxBodyNtNtCs8QTyv2gZm5j_5bytes5bytes5BytesIB4I_DNtNtB4_5error5ErrorNtNtB4_6marker4SendNtB8v_4SyncEL_EEEzEB8t_EL_EEB8t_B8M_EL_EEB3d_.exit, !dbg !9411

bb.ci:                                            ; preds = %bb.h
  %i.hg = landingpad { ptr, i32 }
          cleanup
  store i64 1, ptr %.sroa.0.0, align 8, !dbg !9392
  %i.hh = extractelement <2 x ptr> %i.br, i64 0, !dbg !9392
  store ptr %i.hh, ptr %i.bu, align 8, !dbg !9392
  %.sroa.6.0..sroa.0.0.24.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 16, !dbg !9392
  %i.hi = extractelement <2 x ptr> %i.br, i64 1, !dbg !9392
  store ptr %i.hi, ptr %.sroa.6.0..sroa.0.0.24.sroa_idx, align 8, !dbg !9392
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcDINtNtNtB4_3ops8function2FnTINtNtCs74LoFwSioHw_4http7request7RequestNtNtNtCsaCYLheajBls_5hyper4body8incoming8IncomingEIBC_NtNtNtCsbaWXNhtWAp9_11foundations9telemetry8settings17TelemetrySettingsEEEp6OutputINtNtB4_3pin3PinINtNtBG_5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB1G_8response8ResponseINtNtNtCsefgzIPu8p8D_14http_body_util11combinators8box_body7BoxBodyNtNtCs8QTyv2gZm5j_5bytes5bytes5BytesIB4I_DNtNtB4_5error5ErrorNtNtB4_6marker4SendNtB8v_4SyncEL_EEEzEB8t_EL_EEB8t_B8M_EL_EEB3d_.exit221, !dbg !9392

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_4cell10UnsafeCellINtNtCs1xwejQucwHj_5alloc4sync3ArcDINtNtNtB4_3ops8function2FnTINtNtCs74LoFwSioHw_4http7request7RequestNtNtNtCsaCYLheajBls_5hyper4body8incoming8IncomingEIB1n_NtNtNtCsbaWXNhtWAp9_11foundations9telemetry8settings17TelemetrySettingsEEEp6OutputINtNtB4_3pin3PinINtNtB1r_5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB2r_8response8ResponseINtNtNtCsefgzIPu8p8D_14http_body_util11combinators8box_body7BoxBodyNtNtCs8QTyv2gZm5j_5bytes5bytes5BytesIB5u_DNtNtB4_5error5ErrorNtNtB4_6marker4SendNtB9i_4SyncEL_EEEzEB9g_EL_EEB9g_B9z_EL_EEEEB3Z_.exit: ; preds = %bb.g, %bb.f, %bb.h
  store i64 1, ptr %.sroa.0.0, align 8, !dbg !9392
  %.sroa.5.0..sroa.0.0.25.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 8, !dbg !9392
  store <2 x ptr> %i.br, ptr %.sroa.5.0..sroa.0.0.25.sroa_idx, align 8, !dbg !9392
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !dbg !9571
  call void @_RNvMs1_NtCslVf3eO13on1_7matchit6escapeNtB5_12UnescapedRef8to_owned(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.y, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %2), !dbg !9572
  %i.hj = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 24, !dbg !9573 ; 3 uses
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslVf3eO13on1_7matchit6escape14UnescapedRouteECsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef align 8 dereferenceable(48) %i.hj)
          to label %bb.ck unwind label %bb.cj, !dbg !9573

bb.cj:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_4cell10UnsafeCellINtNtCs1xwejQucwHj_5alloc4sync3ArcDINtNtNtB4_3ops8function2FnTINtNtCs74LoFwSioHw_4http7request7RequestNtNtNtCsaCYLheajBls_5hyper4body8incoming8IncomingEIB1n_NtNtNtCsbaWXNhtWAp9_11foundations9telemetry8settings17TelemetrySettingsEEEp6OutputINtNtB4_3pin3PinINtNtB1r_5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB2r_8response8ResponseINtNtNtCsefgzIPu8p8D_14http_body_util11combinators8box_body7BoxBodyNtNtCs8QTyv2gZm5j_5bytes5bytes5BytesIB5u_DNtNtB4_5error5ErrorNtNtB4_6marker4SendNtB9i_4SyncEL_EEEzEB9g_EL_EEB9g_B9z_EL_EEEEB3Z_.exit
  %i.hk = landingpad { ptr, i32 }
          cleanup
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.hj, ptr noundef nonnull align 8 dereferenceable(48) %i.y, i64 48, i1 false), !dbg !9573
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcDINtNtNtB4_3ops8function2FnTINtNtCs74LoFwSioHw_4http7request7RequestNtNtNtCsaCYLheajBls_5hyper4body8incoming8IncomingEIBC_NtNtNtCsbaWXNhtWAp9_11foundations9telemetry8settings17TelemetrySettingsEEEp6OutputINtNtB4_3pin3PinINtNtBG_5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB1G_8response8ResponseINtNtNtCsefgzIPu8p8D_14http_body_util11combinators8box_body7BoxBodyNtNtCs8QTyv2gZm5j_5bytes5bytes5BytesIB4I_DNtNtB4_5error5ErrorNtNtB4_6marker4SendNtB8v_4SyncEL_EEEzEB8t_EL_EEB8t_B8M_EL_EEB3d_.exit221, !dbg !9574

bb.ck:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_4cell10UnsafeCellINtNtCs1xwejQucwHj_5alloc4sync3ArcDINtNtNtB4_3ops8function2FnTINtNtCs74LoFwSioHw_4http7request7RequestNtNtNtCsaCYLheajBls_5hyper4body8incoming8IncomingEIB1n_NtNtNtCsbaWXNhtWAp9_11foundations9telemetry8settings17TelemetrySettingsEEEp6OutputINtNtB4_3pin3PinINtNtB1r_5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB2r_8response8ResponseINtNtNtCsefgzIPu8p8D_14http_body_util11combinators8box_body7BoxBodyNtNtCs8QTyv2gZm5j_5bytes5bytes5BytesIB5u_DNtNtB4_5error5ErrorNtNtB4_6marker4SendNtB9i_4SyncEL_EEEzEB9g_EL_EEB9g_B9z_EL_EEEEB3Z_.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.hj, ptr noundef nonnull align 8 dereferenceable(48) %i.y, i64 48, i1 false), !dbg !9573
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !dbg !9574
  %i.hl = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !9575
  store ptr %.sroa.0.0, ptr %i.hl, align 8, !dbg !9575
  store i64 -1, ptr %0, align 8, !dbg !9575
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcDINtNtNtB4_3ops8function2FnTINtNtCs74LoFwSioHw_4http7request7RequestNtNtNtCsaCYLheajBls_5hyper4body8incoming8IncomingEIBC_NtNtNtCsbaWXNhtWAp9_11foundations9telemetry8settings17TelemetrySettingsEEEp6OutputINtNtB4_3pin3PinINtNtBG_5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB1G_8response8ResponseINtNtNtCsefgzIPu8p8D_14http_body_util11combinators8box_body7BoxBodyNtNtCs8QTyv2gZm5j_5bytes5bytes5BytesIB4I_DNtNtB4_5error5ErrorNtNtB4_6marker4SendNtB8v_4SyncEL_EEEzEB8t_EL_EEB8t_B8M_EL_EEB3d_.exit, !dbg !9576

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcDINtNtNtB4_3ops8function2FnTINtNtCs74LoFwSioHw_4http7request7RequestNtNtNtCsaCYLheajBls_5hyper4body8incoming8IncomingEIBC_NtNtNtCsbaWXNhtWAp9_11foundations9telemetry8settings17TelemetrySettingsEEEp6OutputINtNtB4_3pin3PinINtNtBG_5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB1G_8response8ResponseINtNtNtCsefgzIPu8p8D_14http_body_util11combinators8box_body7BoxBodyNtNtCs8QTyv2gZm5j_5bytes5bytes5BytesIB4I_DNtNtB4_5error5ErrorNtNtB4_6marker4SendNtB8v_4SyncEL_EEEzEB8t_EL_EEB8t_B8M_EL_EEB3d_.exit: ; preds = %bb.cm, %bb.cl, %bb.ah, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_4cell10UnsafeCellINtNtCs1xwejQucwHj_5alloc4sync3ArcDINtNtNtB4_3ops8function2FnTINtNtCs74LoFwSioHw_4http7request7RequestNtNtNtCsaCYLheajBls_5hyper4body8incoming8IncomingEIB1n_NtNtNtCsbaWXNhtWAp9_11foundations9telemetry8settings17TelemetrySettingsEEEp6OutputINtNtB4_3pin3PinINtNtB1r_5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB2r_8response8ResponseINtNtNtCsefgzIPu8p8D_14http_body_util11combinators8box_body7BoxBodyNtNtCs8QTyv2gZm5j_5bytes5bytes5BytesIB5u_DNtNtB4_5error5ErrorNtNtB4_6marker4SendNtB9i_4SyncEL_EEEzEB9g_EL_EEB9g_B9z_EL_EEEEB3Z_.exit218, %bb.ck
  ret void, !dbg !9577

bb.cl:                                            ; preds = %bb.q, %bb.bf, %bb.d
  call void @llvm.experimental.noalias.scope.decl(metadata !9375), !dbg !9578
  call void @llvm.experimental.noalias.scope.decl(metadata !9376), !dbg !9579
  %i.hm = load ptr, ptr %i.z, align 16, !dbg !9580, !alias.scope !9377, !nonnull !465, !noundef !465
  %i.hn = atomicrmw sub ptr %i.hm, i64 1 release, align 8, !dbg !9581, !noalias !9377
  %i.ho = icmp eq i64 %i.hn, 1, !dbg !9582
  br i1 %i.ho, label %bb.cm, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcDINtNtNtB4_3ops8function2FnTINtNtCs74LoFwSioHw_4http7request7RequestNtNtNtCsaCYLheajBls_5hyper4body8incoming8IncomingEIBC_NtNtNtCsbaWXNhtWAp9_11foundations9telemetry8settings17TelemetrySettingsEEEp6OutputINtNtB4_3pin3PinINtNtBG_5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB1G_8response8ResponseINtNtNtCsefgzIPu8p8D_14http_body_util11combinators8box_body7BoxBodyNtNtCs8QTyv2gZm5j_5bytes5bytes5BytesIB4I_DNtNtB4_5error5ErrorNtNtB4_6marker4SendNtB8v_4SyncEL_EEEzEB8t_EL_EEB8t_B8M_EL_EEB3d_.exit, !dbg !9582

bb.cm:                                            ; preds = %bb.cl
  fence acquire, !dbg !9583
  call void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcDINtNtNtCs3oUPovFnLWP_4core3ops8function2FnTINtNtCs74LoFwSioHw_4http7request7RequestNtNtNtCsaCYLheajBls_5hyper4body8incoming8IncomingEIBx_NtNtNtCsbaWXNhtWAp9_11foundations9telemetry8settings17TelemetrySettingsEEEp6OutputINtNtBO_3pin3PinINtNtB7_5boxed3BoxDNtNtNtBO_6future6future6Futurep6OutputINtNtBO_6result6ResultINtNtB1t_8response8ResponseINtNtNtCsefgzIPu8p8D_14http_body_util11combinators8box_body7BoxBodyNtNtCs8QTyv2gZm5j_5bytes5bytes5BytesIB4v_DNtNtBO_5error5ErrorNtNtBO_6marker4SendNtB8i_4SyncEL_EEEzEB8g_EL_EEB8g_B8z_EL_E9drop_slowB30_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.z) #33, !dbg !9584
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcDINtNtNtB4_3ops8function2FnTINtNtCs74LoFwSioHw_4http7request7RequestNtNtNtCsaCYLheajBls_5hyper4body8incoming8IncomingEIBC_NtNtNtCsbaWXNhtWAp9_11foundations9telemetry8settings17TelemetrySettingsEEEp6OutputINtNtB4_3pin3PinINtNtBG_5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB1G_8response8ResponseINtNtNtCsefgzIPu8p8D_14http_body_util11combinators8box_body7BoxBodyNtNtCs8QTyv2gZm5j_5bytes5bytes5BytesIB4I_DNtNtB4_5error5ErrorNtNtB4_6marker4SendNtB8v_4SyncEL_EEEzEB8t_EL_EEB8t_B8M_EL_EEB3d_.exit, !dbg !9584

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcDINtNtNtB4_3ops8function2FnTINtNtCs74LoFwSioHw_4http7request7RequestNtNtNtCsaCYLheajBls_5hyper4body8incoming8IncomingEIBC_NtNtNtCsbaWXNhtWAp9_11foundations9telemetry8settings17TelemetrySettingsEEEp6OutputINtNtB4_3pin3PinINtNtBG_5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB1G_8response8ResponseINtNtNtCsefgzIPu8p8D_14http_body_util11combinators8box_body7BoxBodyNtNtCs8QTyv2gZm5j_5bytes5bytes5BytesIB4I_DNtNtB4_5error5ErrorNtNtB4_6marker4SendNtB8v_4SyncEL_EEEzEB8t_EL_EEB8t_B8M_EL_EEB3d_.exit221: ; preds = %bb.al, %bb.ak, %bb.am, %bb.ac, %bb.ab, %bb.ad, %bb.ci, %bb.cj, %bb.ch, %.thread233, %bb.cn
  %.pn226 = phi { ptr, i32 } [ %.pn232, %.thread233 ], [ %i.dc, %bb.al ], [ %.pn232, %bb.cn ], [ %i.hg, %bb.ci ], [ %i.hk, %bb.cj ], [ %i.hc, %bb.ch ], [ %i.dd, %bb.ac ], [ %i.dd, %bb.ad ], [ %i.dd, %bb.ab ], [ %i.dc, %bb.am ], [ %i.dc, %bb.ak ]
  resume { ptr, i32 } %.pn226, !dbg !9453

.thread233:                                       ; preds = %.thread240.loopexit, %.thread240.loopexit.split-lp, %bb.at, %bb.v, %bb.bk, %bb.br, %bb.bd
  %.pn232 = phi { ptr, i32 } [ %i.ez, %bb.bd ], [ %i.ft, %bb.br ], [ %i.er, %bb.at ], [ %i.cl, %bb.v ], [ %i.fi, %bb.bk ], [ %lpad.loopexit, %.thread240.loopexit ], [ %lpad.loopexit.split-lp, %.thread240.loopexit.split-lp ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !9378), !dbg !9578
  call void @llvm.experimental.noalias.scope.decl(metadata !9379), !dbg !9585
  %i.hp = load ptr, ptr %i.z, align 16, !dbg !9586, !alias.scope !9380, !nonnull !465, !noundef !465
  %i.hq = atomicrmw sub ptr %i.hp, i64 1 release, align 8, !dbg !9587, !noalias !9380
  %i.hr = icmp eq i64 %i.hq, 1, !dbg !9588
  br i1 %i.hr, label %bb.cn, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcDINtNtNtB4_3ops8function2FnTINtNtCs74LoFwSioHw_4http7request7RequestNtNtNtCsaCYLheajBls_5hyper4body8incoming8IncomingEIBC_NtNtNtCsbaWXNhtWAp9_11foundations9telemetry8settings17TelemetrySettingsEEEp6OutputINtNtB4_3pin3PinINtNtBG_5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB1G_8response8ResponseINtNtNtCsefgzIPu8p8D_14http_body_util11combinators8box_body7BoxBodyNtNtCs8QTyv2gZm5j_5bytes5bytes5BytesIB4I_DNtNtB4_5error5ErrorNtNtB4_6marker4SendNtB8v_4SyncEL_EEEzEB8t_EL_EEB8t_B8M_EL_EEB3d_.exit221, !dbg !9588

bb.cn:                                            ; preds = %.thread233
  fence acquire, !dbg !9589
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcDINtNtNtCs3oUPovFnLWP_4core3ops8function2FnTINtNtCs74LoFwSioHw_4http7request7RequestNtNtNtCsaCYLheajBls_5hyper4body8incoming8IncomingEIBx_NtNtNtCsbaWXNhtWAp9_11foundations9telemetry8settings17TelemetrySettingsEEEp6OutputINtNtBO_3pin3PinINtNtB7_5boxed3BoxDNtNtNtBO_6future6future6Futurep6OutputINtNtBO_6result6ResultINtNtB1t_8response8ResponseINtNtNtCsefgzIPu8p8D_14http_body_util11combinators8box_body7BoxBodyNtNtCs8QTyv2gZm5j_5bytes5bytes5BytesIB4v_DNtNtBO_5error5ErrorNtNtBO_6marker4SendNtB8i_4SyncEL_EEEzEB8g_EL_EEB8g_B8z_EL_E9drop_slowB30_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.z) #33
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcDINtNtNtB4_3ops8function2FnTINtNtCs74LoFwSioHw_4http7request7RequestNtNtNtCsaCYLheajBls_5hyper4body8incoming8IncomingEIBC_NtNtNtCsbaWXNhtWAp9_11foundations9telemetry8settings17TelemetrySettingsEEEp6OutputINtNtB4_3pin3PinINtNtBG_5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB1G_8response8ResponseINtNtNtCsefgzIPu8p8D_14http_body_util11combinators8box_body7BoxBodyNtNtCs8QTyv2gZm5j_5bytes5bytes5BytesIB4I_DNtNtB4_5error5ErrorNtNtB4_6marker4SendNtB8v_4SyncEL_EEEzEB8t_EL_EEB8t_B8M_EL_EEB3d_.exit221 unwind label %bb.aj, !dbg !9590
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef range(i64 0, 60680079189834052) i64 @_RNvMs1_NtCslVf3eO13on1_7matchit4treeINtB5_4NodeINtNtCs1xwejQucwHj_5alloc4sync3ArcDINtNtNtCs3oUPovFnLWP_4core3ops8function2FnTINtNtCs74LoFwSioHw_4http7request7RequestNtNtNtCsaCYLheajBls_5hyper4body8incoming8IncomingEIBK_NtNtNtCsbaWXNhtWAp9_11foundations9telemetry8settings17TelemetrySettingsEEEp6OutputINtNtB1p_3pin3PinINtNtBO_5boxed3BoxDNtNtNtB1p_6future6future6Futurep6OutputINtNtB1p_6result6ResultINtNtB24_8response8ResponseINtNtNtCsefgzIPu8p8D_14http_body_util11combinators8box_body7BoxBodyNtNtCs8QTyv2gZm5j_5bytes5bytes5BytesIB57_DNtNtB1p_5error5ErrorNtNtB1p_6marker4SendNtB8X_4SyncEL_EEEzEB8V_EL_EEB8V_B9f_EL_EE16add_suffix_childB3B_(ptr noalias nofree noundef nonnull align 8 dereferenceable(152) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(152) %1) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !9591 {
bb.a:
  %i.a = alloca [152 x i8], align 8               ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 104, !dbg !9672 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !dbg !9672, !nonnull !465, !noundef !465 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 112, !dbg !9673 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !dbg !9673, !noundef !465 ; 10 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9662), !dbg !9674
  %i.f = icmp eq i64 %i.e, 0, !dbg !9675
  br i1 %i.f, label %_RINvMNtCs3oUPovFnLWP_4core5sliceSINtNtCslVf3eO13on1_7matchit4tree4NodeINtNtCs1xwejQucwHj_5alloc4sync3ArcDINtNtNtB5_3ops8function2FnTINtNtCs74LoFwSioHw_4http7request7RequestNtNtNtCsaCYLheajBls_5hyper4body8incoming8IncomingEIB17_NtNtNtCsbaWXNhtWAp9_11foundations9telemetry8settings17TelemetrySettingsEEEp6OutputINtNtB5_3pin3PinINtNtB1b_5boxed3BoxDNtNtNtB5_6future6future6Futurep6OutputINtNtB5_6result6ResultINtNtB2b_8response8ResponseINtNtNtCsefgzIPu8p8D_14http_body_util11combinators8box_body7BoxBodyNtNtCs8QTyv2gZm5j_5bytes5bytes5BytesIB5e_DNtNtB5_5error5ErrorNtNtB5_6marker4SendNtB92_4SyncEL_EEEzEB90_EL_EEB90_B9j_EL_EE15partition_pointNCNvMs1_By_Bv_16add_suffix_child0EB3J_.exit.thread, label %.preheader.i.i, !dbg !9675

_RINvMNtCs3oUPovFnLWP_4core5sliceSINtNtCslVf3eO13on1_7matchit4tree4NodeINtNtCs1xwejQucwHj_5alloc4sync3ArcDINtNtNtB5_3ops8function2FnTINtNtCs74LoFwSioHw_4http7request7RequestNtNtNtCsaCYLheajBls_5hyper4body8incoming8IncomingEIB17_NtNtNtCsbaWXNhtWAp9_11foundations9telemetry8settings17TelemetrySettingsEEEp6OutputINtNtB5_3pin3PinINtNtB1b_5boxed3BoxDNtNtNtB5_6future6future6Futurep6OutputINtNtB5_6result6ResultINtNtB2b_8response8ResponseINtNtNtCsefgzIPu8p8D_14http_body_util11combinators8box_body7BoxBodyNtNtCs8QTyv2gZm5j_5bytes5bytes5BytesIB5e_DNtNtB5_5error5ErrorNtNtB5_6marker4SendNtB92_4SyncEL_EEEzEB90_EL_EEB90_B9j_EL_EE15partition_pointNCNvMs1_By_Bv_16add_suffix_child0EB3J_.exit.thread: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !9676
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %i.a, ptr noundef nonnull align 8 dereferenceable(152) %1, i64 152, i1 false), !dbg !9676
  br label %bb.b, !dbg !9677

.preheader.i.i:                                   ; preds = %bb.a
  %.not.i.i = icmp eq i64 %i.e, 1, !dbg !9678
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.pre.i.i = load i64, ptr %.phi.trans.insert.i.i, align 8, !alias.scope !9662, !noalias !9664 ; 2 uses
  br i1 %.not.i.i, label %_RINvMNtCs3oUPovFnLWP_4core5sliceSINtNtCslVf3eO13on1_7matchit4tree4NodeINtNtCs1xwejQucwHj_5alloc4sync3ArcDINtNtNtB5_3ops8function2FnTINtNtCs74LoFwSioHw_4http7request7RequestNtNtNtCsaCYLheajBls_5hyper4body8incoming8IncomingEIB17_NtNtNtCsbaWXNhtWAp9_11foundations9telemetry8settings17TelemetrySettingsEEEp6OutputINtNtB5_3pin3PinINtNtB1b_5boxed3BoxDNtNtNtB5_6future6future6Futurep6OutputINtNtB5_6result6ResultINtNtB2b_8response8ResponseINtNtNtCsefgzIPu8p8D_14http_body_util11combinators8box_body7BoxBodyNtNtCs8QTyv2gZm5j_5bytes5bytes5BytesIB5e_DNtNtB5_5error5ErrorNtNtB5_6marker4SendNtB92_4SyncEL_EEEzEB90_EL_EEB90_B9j_EL_EE15partition_pointNCNvMs1_By_Bv_16add_suffix_child0EB3J_.exit, label %.lr.ph.i.i, !dbg !9678

.lr.ph.i.i:                                       ; preds = %.preheader.i.i, %.lr.ph.i.i
  %.sroa.01.019.i.i = phi i64 [ %i.m, %.lr.ph.i.i ], [ %i.e, %.preheader.i.i ] ; 2 uses
  %.sroa.05.018.i.i = phi i64 [ %i.l, %.lr.ph.i.i ], [ 0, %.preheader.i.i ] ; 2 uses
  %i.g = lshr i64 %.sroa.01.019.i.i, 1, !dbg !9679 ; 2 uses
  %i.h = add nuw nsw i64 %i.g, %.sroa.05.018.i.i, !dbg !9680 ; 3 uses
  %i.i = icmp ult i64 %i.h, %i.e, !dbg !9681
  tail call void @llvm.assume(i1 %i.i), !dbg !9682
  %i.j = getelementptr inbounds nuw [152 x i8], ptr %i.c, i64 %i.h, !dbg !9683
  %i.k = getelementptr i8, ptr %i.j, i64 40, !dbg !9684
  %.val12.i.i = load i64, ptr %i.k, align 8, !dbg !9684, !noalias !9665, !noundef !465
  %.not.i16.i.i = icmp ult i64 %.val12.i.i, %.pre.i.i, !dbg !9685
  %i.l = select i1 %.not.i16.i.i, i64 %.sroa.05.018.i.i, i64 %i.h, !dbg !9686, !unpredictable !465 ; 2 uses
  %i.m = sub nuw nsw i64 %.sroa.01.019.i.i, %i.g, !dbg !9687 ; 2 uses
  %i.n = icmp ugt i64 %i.m, 1, !dbg !9678
  br i1 %i.n, label %.lr.ph.i.i, label %_RINvMNtCs3oUPovFnLWP_4core5sliceSINtNtCslVf3eO13on1_7matchit4tree4NodeINtNtCs1xwejQucwHj_5alloc4sync3ArcDINtNtNtB5_3ops8function2FnTINtNtCs74LoFwSioHw_4http7request7RequestNtNtNtCsaCYLheajBls_5hyper4body8incoming8IncomingEIB17_NtNtNtCsbaWXNhtWAp9_11foundations9telemetry8settings17TelemetrySettingsEEEp6OutputINtNtB5_3pin3PinINtNtB1b_5boxed3BoxDNtNtNtB5_6future6future6Futurep6OutputINtNtB5_6result6ResultINtNtB2b_8response8ResponseINtNtNtCsefgzIPu8p8D_14http_body_util11combinators8box_body7BoxBodyNtNtCs8QTyv2gZm5j_5bytes5bytes5BytesIB5e_DNtNtB5_5error5ErrorNtNtB5_6marker4SendNtB92_4SyncEL_EEEzEB90_EL_EEB90_B9j_EL_EE15partition_pointNCNvMs1_By_Bv_16add_suffix_child0EB3J_.exit, !dbg !9678

_RINvMNtCs3oUPovFnLWP_4core5sliceSINtNtCslVf3eO13on1_7matchit4tree4NodeINtNtCs1xwejQucwHj_5alloc4sync3ArcDINtNtNtB5_3ops8function2FnTINtNtCs74LoFwSioHw_4http7request7RequestNtNtNtCsaCYLheajBls_5hyper4body8incoming8IncomingEIB17_NtNtNtCsbaWXNhtWAp9_11foundations9telemetry8settings17TelemetrySettingsEEEp6OutputINtNtB5_3pin3PinINtNtB1b_5boxed3BoxDNtNtNtB5_6future6future6Futurep6OutputINtNtB5_6result6ResultINtNtB2b_8response8ResponseINtNtNtCsefgzIPu8p8D_14http_body_util11combinators8box_body7BoxBodyNtNtCs8QTyv2gZm5j_5bytes5bytes5BytesIB5e_DNtNtB5_5error5ErrorNtNtB5_6marker4SendNtB92_4SyncEL_EEEzEB90_EL_EEB90_B9j_EL_EE15partition_pointNCNvMs1_By_Bv_16add_suffix_child0EB3J_.exit: ; preds = %.lr.ph.i.i, %.preheader.i.i
  %.sroa.05.0.lcssa.i.i = phi i64 [ 0, %.preheader.i.i ], [ %i.l, %.lr.ph.i.i ], !dbg !9688 ; 2 uses
  %i.o = getelementptr inbounds nuw [152 x i8], ptr %i.c, i64 %.sroa.05.0.lcssa.i.i, !dbg !9689
  %i.p = getelementptr i8, ptr %i.o, i64 40, !dbg !9690
  %.val14.i.i = load i64, ptr %i.p, align 8, !dbg !9690, !noalias !9665, !noundef !465
  %.not.i.i.i = icmp uge i64 %.val14.i.i, %.pre.i.i, !dbg !9691
  %i.q = zext i1 %.not.i.i.i to i64, !dbg !9692
  %i.r = add nuw nsw i64 %.sroa.05.0.lcssa.i.i, %i.q, !dbg !9693 ; 2 uses
  %i.s = icmp ule i64 %i.r, %i.e, !dbg !9694
  tail call void @llvm.assume(i1 %i.s), !dbg !9695
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !9676
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %i.a, ptr noundef nonnull align 8 dereferenceable(152) %1, i64 152, i1 false), !dbg !9676
  %i.t = icmp ult i64 %i.e, 60680079189834052, !dbg !9696
  tail call void @llvm.assume(i1 %i.t), !dbg !9697
  br label %bb.b, !dbg !9677

bb.b:                                             ; preds = %_RINvMNtCs3oUPovFnLWP_4core5sliceSINtNtCslVf3eO13on1_7matchit4tree4NodeINtNtCs1xwejQucwHj_5alloc4sync3ArcDINtNtNtB5_3ops8function2FnTINtNtCs74LoFwSioHw_4http7request7RequestNtNtNtCsaCYLheajBls_5hyper4body8incoming8IncomingEIB17_NtNtNtCsbaWXNhtWAp9_11foundations9telemetry8settings17TelemetrySettingsEEEp6OutputINtNtB5_3pin3PinINtNtB1b_5boxed3BoxDNtNtNtB5_6future6future6Futurep6OutputINtNtB5_6result6ResultINtNtB2b_8response8ResponseINtNtNtCsefgzIPu8p8D_14http_body_util11combinators8box_body7BoxBodyNtNtCs8QTyv2gZm5j_5bytes5bytes5BytesIB5e_DNtNtB5_5error5ErrorNtNtB5_6marker4SendNtB92_4SyncEL_EEEzEB90_EL_EEB90_B9j_EL_EE15partition_pointNCNvMs1_By_Bv_16add_suffix_child0EB3J_.exit, %_RINvMNtCs3oUPovFnLWP_4core5sliceSINtNtCslVf3eO13on1_7matchit4tree4NodeINtNtCs1xwejQucwHj_5alloc4sync3ArcDINtNtNtB5_3ops8function2FnTINtNtCs74LoFwSioHw_4http7request7RequestNtNtNtCsaCYLheajBls_5hyper4body8incoming8IncomingEIB17_NtNtNtCsbaWXNhtWAp9_11foundations9telemetry8settings17TelemetrySettingsEEEp6OutputINtNtB5_3pin3PinINtNtB1b_5boxed3BoxDNtNtNtB5_6future6future6Futurep6OutputINtNtB5_6result6ResultINtNtB2b_8response8ResponseINtNtNtCsefgzIPu8p8D_14http_body_util11combinators8box_body7BoxBodyNtNtCs8QTyv2gZm5j_5bytes5bytes5BytesIB5e_DNtNtB5_5error5ErrorNtNtB5_6marker4SendNtB92_4SyncEL_EEEzEB90_EL_EEB90_B9j_EL_EE15partition_pointNCNvMs1_By_Bv_16add_suffix_child0EB3J_.exit.thread
  %.sroa.4.0.i.i3 = phi i64 [ 0, %_RINvMNtCs3oUPovFnLWP_4core5sliceSINtNtCslVf3eO13on1_7matchit4tree4NodeINtNtCs1xwejQucwHj_5alloc4sync3ArcDINtNtNtB5_3ops8function2FnTINtNtCs74LoFwSioHw_4http7request7RequestNtNtNtCsaCYLheajBls_5hyper4body8incoming8IncomingEIB17_NtNtNtCsbaWXNhtWAp9_11foundations9telemetry8settings17TelemetrySettingsEEEp6OutputINtNtB5_3pin3PinINtNtB1b_5boxed3BoxDNtNtNtB5_6future6future6Futurep6OutputINtNtB5_6result6ResultINtNtB2b_8response8ResponseINtNtNtCsefgzIPu8p8D_14http_body_util11combinators8box_body7BoxBodyNtNtCs8QTyv2gZm5j_5bytes5bytes5BytesIB5e_DNtNtB5_5error5ErrorNtNtB5_6marker4SendNtB92_4SyncEL_EEEzEB90_EL_EEB90_B9j_EL_EE15partition_pointNCNvMs1_By_Bv_16add_suffix_child0EB3J_.exit.thread ], [ %i.r, %_RINvMNtCs3oUPovFnLWP_4core5sliceSINtNtCslVf3eO13on1_7matchit4tree4NodeINtNtCs1xwejQucwHj_5alloc4sync3ArcDINtNtNtB5_3ops8function2FnTINtNtCs74LoFwSioHw_4http7request7RequestNtNtNtCsaCYLheajBls_5hyper4body8incoming8IncomingEIB17_NtNtNtCsbaWXNhtWAp9_11foundations9telemetry8settings17TelemetrySettingsEEEp6OutputINtNtB5_3pin3PinINtNtB1b_5boxed3BoxDNtNtNtB5_6future6future6Futurep6OutputINtNtB5_6result6ResultINtNtB2b_8response8ResponseINtNtNtCsefgzIPu8p8D_14http_body_util11combinators8box_body7BoxBodyNtNtCs8QTyv2gZm5j_5bytes5bytes5BytesIB5e_DNtNtB5_5error5ErrorNtNtB5_6marker4SendNtB92_4SyncEL_EEEzEB90_EL_EEB90_B9j_EL_EE15partition_pointNCNvMs1_By_Bv_16add_suffix_child0EB3J_.exit ] ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 96, !dbg !9672 ; 2 uses
  %i.v = load i64, ptr %i.u, align 8, !dbg !9698, !range !495, !alias.scope !9669, !noalias !9670, !noundef !465
  %i.w = icmp eq i64 %i.e, %i.v, !dbg !9699
  br i1 %i.w, label %bb.c, label %bb.d, !dbg !9699

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecINtNtCslVf3eO13on1_7matchit4tree4NodeINtNtB7_4sync3ArcDINtNtNtCs3oUPovFnLWP_4core3ops8function2FnTINtNtCs74LoFwSioHw_4http7request7RequestNtNtNtCsaCYLheajBls_5hyper4body8incoming8IncomingEIB1o_NtNtNtCsbaWXNhtWAp9_11foundations9telemetry8settings17TelemetrySettingsEEEp6OutputINtNtB1M_3pin3PinINtNtB7_5boxed3BoxDNtNtNtB1M_6future6future6Futurep6OutputINtNtB1M_6result6ResultINtNtB2r_8response8ResponseINtNtNtCsefgzIPu8p8D_14http_body_util11combinators8box_body7BoxBodyNtNtCs8QTyv2gZm5j_5bytes5bytes5BytesIB5v_DNtNtB1M_5error5ErrorNtNtB1M_6marker4SendNtB9l_4SyncEL_EEEzEB9j_EL_EEB9j_B9D_EL_EEE8grow_oneB3Z_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.u)
          to label %._crit_edge unwind label %bb.e, !dbg !9700, !noalias !9670

._crit_edge:                                      ; preds = %bb.c
  %.pre = load ptr, ptr %i.b, align 8, !dbg !9701, !alias.scope !9669, !noalias !9670
  br label %bb.d, !dbg !9700

bb.d:                                             ; preds = %._crit_edge, %bb.b
  %i.x = phi ptr [ %.pre, %._crit_edge ], [ %i.c, %bb.b ], !dbg !9701
  %i.y = getelementptr inbounds nuw [152 x i8], ptr %i.x, i64 %.sroa.4.0.i.i3, !dbg !9702 ; 3 uses
  %i.z = icmp samesign ult i64 %.sroa.4.0.i.i3, %i.e, !dbg !9703
  br i1 %i.z, label %bb.f, label %bb.h, !dbg !9703

bb.e:                                             ; preds = %bb.c
  %i.aa = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCslVf3eO13on1_7matchit4tree4NodeINtNtCs1xwejQucwHj_5alloc4sync3ArcDINtNtNtB4_3ops8function2FnTINtNtCs74LoFwSioHw_4http7request7RequestNtNtNtCsaCYLheajBls_5hyper4body8incoming8IncomingEIB1d_NtNtNtCsbaWXNhtWAp9_11foundations9telemetry8settings17TelemetrySettingsEEEp6OutputINtNtB4_3pin3PinINtNtB1h_5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB2h_8response8ResponseINtNtNtCsefgzIPu8p8D_14http_body_util11combinators8box_body7BoxBodyNtNtCs8QTyv2gZm5j_5bytes5bytes5BytesIB5k_DNtNtB4_5error5ErrorNtNtB4_6marker4SendNtB98_4SyncEL_EEEzEB96_EL_EEB96_B9p_EL_EEEB3P_(ptr noalias nofree noundef nonnull align 8 dereferenceable(152) %i.a) #31
          to label %.body unwind label %bb.g, !dbg !9704

bb.f:                                             ; preds = %bb.d
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 152, !dbg !9705
  %i.ac = sub nuw nsw i64 %i.e, %.sroa.4.0.i.i3, !dbg !9706
  %i.ad = mul nuw nsw i64 %i.ac, 152, !dbg !9707
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ab, ptr nonnull align 8 %i.y, i64 %i.ad, i1 false), !dbg !9707, !noalias !9670
  br label %bb.h, !dbg !9708

bb.g:                                             ; preds = %bb.e
  %i.ae = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #32, !dbg !9709
  unreachable, !dbg !9709

bb.h:                                             ; preds = %bb.f, %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %i.y, ptr noundef nonnull align 8 dereferenceable(152) %i.a, i64 152, i1 false), !dbg !9710, !noalias !9671
  %i.af = add nuw nsw i64 %i.e, 1, !dbg !9711
  store i64 %i.af, ptr %i.d, align 8, !dbg !9712, !alias.scope !9669, !noalias !9670
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !9713
  ret i64 %.sroa.4.0.i.i3, !dbg !9714

.body:                                            ; preds = %bb.e
  resume { ptr, i32 } %i.aa, !dbg !9715
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef range(i64 0, 9223372036854775807) i64 @_RNvMs1_NtCslVf3eO13on1_7matchit4treeINtB5_4NodeINtNtCs1xwejQucwHj_5alloc4sync3ArcDINtNtNtCs3oUPovFnLWP_4core3ops8function2FnTINtNtCs74LoFwSioHw_4http7request7RequestNtNtNtCsaCYLheajBls_5hyper4body8incoming8IncomingEIBK_NtNtNtCsbaWXNhtWAp9_11foundations9telemetry8settings17TelemetrySettingsEEEp6OutputINtNtB1p_3pin3PinINtNtBO_5boxed3BoxDNtNtNtB1p_6future6future6Futurep6OutputINtNtB1p_6result6ResultINtNtB24_8response8ResponseINtNtNtCsefgzIPu8p8D_14http_body_util11combinators8box_body7BoxBodyNtNtCs8QTyv2gZm5j_5bytes5bytes5BytesIB57_DNtNtB1p_5error5ErrorNtNtB1p_6marker4SendNtB8X_4SyncEL_EEEzEB8V_EL_EEB8V_B9f_EL_EE21update_child_priorityB3B_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(152) %0, i64 noundef range(i64 0, 9223372036854775807) %1) unnamed_addr #1 !dbg !9716 {
bb.a:
  %i.a = alloca [152 x i8], align 8               ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 112, !dbg !9799
  %i.c = load i64, ptr %i.b, align 8, !dbg !9799, !noundef !465 ; 2 uses
  %i.d = icmp ult i64 %1, %i.c, !dbg !9800
  br i1 %i.d, label %.split, label %bb.b, !dbg !9800

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking18panic_bounds_check(i64 noundef %1, i64 noundef %i.c, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @121) #36, !dbg !9800
  unreachable, !dbg !9800

.split:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 104, !dbg !9801
  %i.f = load ptr, ptr %i.e, align 8, !dbg !9801, !nonnull !465, !noundef !465 ; 3 uses
  %i.g = getelementptr inbounds nuw [152 x i8], ptr %i.f, i64 %1, !dbg !9802
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 144, !dbg !9803 ; 2 uses
  %i.i = load i32, ptr %i.h, align 8, !dbg !9803, !noundef !465
  %i.j = add i32 %i.i, 1, !dbg !9803              ; 2 uses
  store i32 %i.j, ptr %i.h, align 8, !dbg !9803
  %.not16 = icmp eq i64 %1, 0, !dbg !9804
  br i1 %.not16, label %._crit_edge, label %.lr.ph, !dbg !9804

.lr.ph:                                           ; preds = %.split, %bb.g
  %.sroa.0.017 = phi i64 [ %i.k, %bb.g ], [ %1, %.split ] ; 3 uses
  %i.k = add nsw i64 %.sroa.0.017, -1, !dbg !9805 ; 3 uses
  %i.l = getelementptr inbounds nuw [152 x i8], ptr %i.f, i64 %i.k, !dbg !9806 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 144, !dbg !9807
  %i.n = load i32, ptr %i.m, align 8, !dbg !9807, !noundef !465
  %i.o = icmp ult i32 %i.n, %i.j, !dbg !9807
  br i1 %i.o, label %bb.g, label %._crit_edge, !dbg !9807

._crit_edge:                                      ; preds = %bb.g, %.lr.ph, %.split
  %.sroa.0.0.lcssa = phi i64 [ 0, %.split ], [ %.sroa.0.017, %.lr.ph ], [ 0, %bb.g ], !dbg !9808 ; 6 uses
  %.not12 = icmp eq i64 %.sroa.0.0.lcssa, %1, !dbg !9809
  br i1 %.not12, label %bb.f, label %bb.c, !dbg !9809

bb.c:                                             ; preds = %._crit_edge
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 80, !dbg !9810
  %i.q = load ptr, ptr %i.p, align 8, !dbg !9810, !nonnull !465, !noundef !465
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 88, !dbg !9811
  %i.s = load i64, ptr %i.r, align 8, !dbg !9811, !noundef !465 ; 2 uses
  %i.t = icmp ult i64 %1, %i.s, !dbg !9812
  br i1 %i.t, label %bb.d, label %bb.e, !dbg !9812, !prof !468

bb.d:                                             ; preds = %bb.c
  %i.u = add nuw nsw i64 %1, 1, !dbg !9813        ; 3 uses
  %i.v = icmp ult i64 %i.u, %.sroa.0.0.lcssa, !dbg !9814
  br i1 %i.v, label %bb.e, label %_RNvXs8_NtNtCs3oUPovFnLWP_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexShE9index_mutCsbaWXNhtWAp9_11foundations.exit, !dbg !9814, !prof !527

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.03.0.i = phi i64 [ %1, %bb.c ], [ %i.u, %bb.d ], !dbg !9815
  tail call void @_RNvNtNtCs3oUPovFnLWP_4core5slice5index16slice_index_fail(i64 noundef %.sroa.0.0.lcssa, i64 noundef %.sroa.03.0.i, i64 noundef range(i64 0, -9223372036854775808) %i.s, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @122) #36, !dbg !9816, !noalias !9791
  unreachable, !dbg !9816

_RNvXs8_NtNtCs3oUPovFnLWP_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexShE9index_mutCsbaWXNhtWAp9_11foundations.exit: ; preds = %bb.d
  %i.w = sub nuw nsw i64 %i.u, %.sroa.0.0.lcssa, !dbg !9817
  %i.x = getelementptr inbounds nuw i8, ptr %i.q, i64 %.sroa.0.0.lcssa, !dbg !9818
  tail call void @_RNvMNtCs3oUPovFnLWP_4core5sliceSh12rotate_rightCsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef nonnull %i.x, i64 noundef %i.w, i64 noundef 1), !dbg !9819
  br label %bb.f, !dbg !9820

bb.f:                                             ; preds = %._crit_edge, %_RNvXs8_NtNtCs3oUPovFnLWP_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexShE9index_mutCsbaWXNhtWAp9_11foundations.exit
  ret i64 %.sroa.0.0.lcssa, !dbg !9821

bb.g:                                             ; preds = %.lr.ph
  %i.y = getelementptr inbounds nuw [152 x i8], ptr %i.f, i64 %.sroa.0.017, !dbg !9822 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !9823
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %i.a, ptr noundef nonnull align 8 dereferenceable(152) %i.l, i64 152, i1 false), !dbg !9824
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %i.l, ptr noundef nonnull align 8 dereferenceable(152) %i.y, i64 152, i1 false), !dbg !9825
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %i.y, ptr noundef nonnull align 8 dereferenceable(152) %i.a, i64 152, i1 false), !dbg !9826
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !9827
  %.not = icmp eq i64 %i.k, 0, !dbg !9804
  br i1 %.not, label %._crit_edge, label %.lr.ph, !dbg !9804
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNvMs1_NtCslVf3eO13on1_7matchit4treeINtB5_4NodeINtNtCs1xwejQucwHj_5alloc4sync3ArcDINtNtNtCs3oUPovFnLWP_4core3ops8function2FnTINtNtCs74LoFwSioHw_4http7request7RequestNtNtNtCsaCYLheajBls_5hyper4body8incoming8IncomingEIBK_NtNtNtCsbaWXNhtWAp9_11foundations9telemetry8settings17TelemetrySettingsEEEp6OutputINtNtB1p_3pin3PinINtNtBO_5boxed3BoxDNtNtNtB1p_6future6future6Futurep6OutputINtNtB1p_6result6ResultINtNtB24_8response8ResponseINtNtNtCsefgzIPu8p8D_14http_body_util11combinators8box_body7BoxBodyNtNtCs8QTyv2gZm5j_5bytes5bytes5BytesIB57_DNtNtB1p_5error5ErrorNtNtB1p_6marker4SendNtB8X_4SyncEL_EEEzEB8V_EL_EEB8V_B9f_EL_EE21wild_child_in_segmentB3B_(ptr nofree noundef nonnull readonly align 8 captures(none) %0) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !9828 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !9889
  %i.b = load ptr, ptr %i.a, align 8, !dbg !9889, !nonnull !465, !noundef !465 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40, !dbg !9890
  %i.d = load i64, ptr %i.c, align 8, !dbg !9890, !noundef !465 ; 5 uses
  %i.e = icmp samesign ult i64 %i.d, 16, !dbg !9891
  br i1 %i.e, label %.preheader.i.i, label %bb.b, !dbg !9891

.preheader.i.i:                                   ; preds = %bb.a
  %.not.i.i = icmp eq i64 %i.d, 0, !dbg !9892
  br i1 %.not.i.i, label %.loopexit, label %.lr.ph.i.i, !dbg !9892

bb.b:                                             ; preds = %bb.a
  %i.f = tail call { i64, i64 } @_RNvNtNtCs3oUPovFnLWP_4core5slice6memchr14memchr_aligned(i8 noundef 47, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.b, i64 noundef range(i64 0, -9223372036854775808) %i.d), !dbg !9893 ; 2 uses
  %i.g = extractvalue { i64, i64 } %i.f, 0, !dbg !9893
  %i.h = extractvalue { i64, i64 } %i.f, 1, !dbg !9893
  %i.i = trunc nuw i64 %i.g to i1, !dbg !9894
  br i1 %i.i, label %_RNvXsg_NtNtCs3oUPovFnLWP_4core5slice3cmphNtB5_13SliceContains14slice_containsCsbaWXNhtWAp9_11foundations.exit, label %.loopexit, !dbg !9894

.lr.ph.i.i:                                       ; preds = %.preheader.i.i, %bb.c
  %.sroa.04.011.i.i = phi i64 [ %i.m, %bb.c ], [ 0, %.preheader.i.i ] ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 %.sroa.04.011.i.i, !dbg !9895
  %i.k = load i8, ptr %i.j, align 1, !dbg !9895, !alias.scope !9872, !noundef !465
  %i.l = icmp eq i8 %i.k, 47, !dbg !9895
  br i1 %i.l, label %_RNvXsg_NtNtCs3oUPovFnLWP_4core5slice3cmphNtB5_13SliceContains14slice_containsCsbaWXNhtWAp9_11foundations.exit, label %bb.c, !dbg !9895

bb.c:                                             ; preds = %.lr.ph.i.i
  %i.m = add nuw nsw i64 %.sroa.04.011.i.i, 1, !dbg !9896 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.m, %i.d, !dbg !9892
  br i1 %exitcond.not.i.i, label %.loopexit, label %.lr.ph.i.i, !dbg !9892

_RNvXsg_NtNtCs3oUPovFnLWP_4core5slice3cmphNtB5_13SliceContains14slice_containsCsbaWXNhtWAp9_11foundations.exit: ; preds = %.lr.ph.i.i, %bb.b
  %.sroa.5.0.i.i = phi i64 [ %i.h, %bb.b ], [ %.sroa.04.011.i.i, %.lr.ph.i.i ], !dbg !9897
  %i.n = icmp ult i64 %.sroa.5.0.i.i, %i.d, !dbg !9898
  tail call void @llvm.assume(i1 %i.n), !dbg !9899
  br label %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterINtNtCslVf3eO13on1_7matchit4tree4NodeINtNtCs1xwejQucwHj_5alloc4sync3ArcDINtNtNtBb_3ops8function2FnTINtNtCs74LoFwSioHw_4http7request7RequestNtNtNtCsaCYLheajBls_5hyper4body8incoming8IncomingEIB1s_NtNtNtCsbaWXNhtWAp9_11foundations9telemetry8settings17TelemetrySettingsEEEp6OutputINtNtBb_3pin3PinINtNtB1w_5boxed3BoxDNtNtNtBb_6future6future6Futurep6OutputINtNtBb_6result6ResultINtNtB2w_8response8ResponseINtNtNtCsefgzIPu8p8D_14http_body_util11combinators8box_body7BoxBodyNtNtCs8QTyv2gZm5j_5bytes5bytes5BytesIB5z_DNtNtBb_5error5ErrorNtNtBb_6marker4SendNtB9n_4SyncEL_EEEzEB9l_EL_EEB9l_B9E_EL_EEENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNvMs1_BT_BQ_21wild_child_in_segmentEB44_.exit, !dbg !9864

.loopexit:                                        ; preds = %bb.c, %bb.b, %.preheader.i.i
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 149, !dbg !9900
  %i.p = load i8, ptr %i.o, align 1, !dbg !9900, !range !719, !noundef !465 ; 2 uses
  %i.q = icmp ne i8 %i.p, 3, !dbg !9900
  tail call void @llvm.assume(i1 %i.q), !dbg !9900
  %i.r = icmp samesign ult i8 %i.p, 2, !dbg !9900
  br i1 %i.r, label %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterINtNtCslVf3eO13on1_7matchit4tree4NodeINtNtCs1xwejQucwHj_5alloc4sync3ArcDINtNtNtBb_3ops8function2FnTINtNtCs74LoFwSioHw_4http7request7RequestNtNtNtCsaCYLheajBls_5hyper4body8incoming8IncomingEIB1s_NtNtNtCsbaWXNhtWAp9_11foundations9telemetry8settings17TelemetrySettingsEEEp6OutputINtNtBb_3pin3PinINtNtB1w_5boxed3BoxDNtNtNtBb_6future6future6Futurep6OutputINtNtBb_6result6ResultINtNtB2w_8response8ResponseINtNtNtCsefgzIPu8p8D_14http_body_util11combinators8box_body7BoxBodyNtNtCs8QTyv2gZm5j_5bytes5bytes5BytesIB5z_DNtNtBb_5error5ErrorNtNtBb_6marker4SendNtB9n_4SyncEL_EEEzEB9l_EL_EEB9l_B9E_EL_EEENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNvMs1_BT_BQ_21wild_child_in_segmentEB44_.exit, label %bb.d, !dbg !9901

bb.d:                                             ; preds = %.loopexit
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 104, !dbg !9902
  %i.t = load ptr, ptr %i.s, align 8, !dbg !9902, !nonnull !465, !noundef !465 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 112, !dbg !9903
  %i.v = load i64, ptr %i.u, align 8, !dbg !9903, !noundef !465 ; 2 uses
  %.idx = mul nuw nsw i64 %i.v, 152, !dbg !9904
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 %.idx, !dbg !9904
  %.not.not8 = icmp eq i64 %i.v, 0, !dbg !9905
  br i1 %.not.not8, label %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterINtNtCslVf3eO13on1_7matchit4tree4NodeINtNtCs1xwejQucwHj_5alloc4sync3ArcDINtNtNtBb_3ops8function2FnTINtNtCs74LoFwSioHw_4http7request7RequestNtNtNtCsaCYLheajBls_5hyper4body8incoming8IncomingEIB1s_NtNtNtCsbaWXNhtWAp9_11foundations9telemetry8settings17TelemetrySettingsEEEp6OutputINtNtBb_3pin3PinINtNtB1w_5boxed3BoxDNtNtNtBb_6future6future6Futurep6OutputINtNtBb_6result6ResultINtNtB2w_8response8ResponseINtNtNtCsefgzIPu8p8D_14http_body_util11combinators8box_body7BoxBodyNtNtCs8QTyv2gZm5j_5bytes5bytes5BytesIB5z_DNtNtBb_5error5ErrorNtNtBb_6marker4SendNtB9n_4SyncEL_EEEzEB9l_EL_EEB9l_B9E_EL_EEENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNvMs1_BT_BQ_21wild_child_in_segmentEB44_.exit, label %.lr.ph, !dbg !9906

.lr.ph:                                           ; preds = %.lr.ph, %bb.d
  %.sroa.0.029 = phi ptr [ %i.y, %.lr.ph ], [ %i.t, %bb.d ] ; 2 uses
  %i.x = tail call fastcc noundef zeroext i1 @_RNvMs1_NtCslVf3eO13on1_7matchit4treeINtB5_4NodeINtNtCs1xwejQucwHj_5alloc4sync3ArcDINtNtNtCs3oUPovFnLWP_4core3ops8function2FnTINtNtCs74LoFwSioHw_4http7request7RequestNtNtNtCsaCYLheajBls_5hyper4body8incoming8IncomingEIBK_NtNtNtCsbaWXNhtWAp9_11foundations9telemetry8settings17TelemetrySettingsEEEp6OutputINtNtB1p_3pin3PinINtNtBO_5boxed3BoxDNtNtNtB1p_6future6future6Futurep6OutputINtNtB1p_6result6ResultINtNtB24_8response8ResponseINtNtNtCsefgzIPu8p8D_14http_body_util11combinators8box_body7BoxBodyNtNtCs8QTyv2gZm5j_5bytes5bytes5BytesIB57_DNtNtB1p_5error5ErrorNtNtB1p_6marker4SendNtB8X_4SyncEL_EEEzEB8V_EL_EEB8V_B9f_EL_EE21wild_child_in_segmentB3B_(ptr noundef nonnull align 8 %.sroa.0.029), !dbg !9907, !noalias !9888, !inline_history !378 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.0.029, i64 152 ; 2 uses
  %.not.not = icmp eq ptr %i.y, %i.w
  %or.cond = select i1 %i.x, i1 true, i1 %.not.not, !dbg !9908
  br i1 %or.cond, label %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterINtNtCslVf3eO13on1_7matchit4tree4NodeINtNtCs1xwejQucwHj_5alloc4sync3ArcDINtNtNtBb_3ops8function2FnTINtNtCs74LoFwSioHw_4http7request7RequestNtNtNtCsaCYLheajBls_5hyper4body8incoming8IncomingEIB1s_NtNtNtCsbaWXNhtWAp9_11foundations9telemetry8settings17TelemetrySettingsEEEp6OutputINtNtBb_3pin3PinINtNtB1w_5boxed3BoxDNtNtNtBb_6future6future6Futurep6OutputINtNtBb_6result6ResultINtNtB2w_8response8ResponseINtNtNtCsefgzIPu8p8D_14http_body_util11combinators8box_body7BoxBodyNtNtCs8QTyv2gZm5j_5bytes5bytes5BytesIB5z_DNtNtBb_5error5ErrorNtNtBb_6marker4SendNtB9n_4SyncEL_EEEzEB9l_EL_EEB9l_B9E_EL_EEENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNvMs1_BT_BQ_21wild_child_in_segmentEB44_.exit, label %.lr.ph, !dbg !9908

_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterINtNtCslVf3eO13on1_7matchit4tree4NodeINtNtCs1xwejQucwHj_5alloc4sync3ArcDINtNtNtBb_3ops8function2FnTINtNtCs74LoFwSioHw_4http7request7RequestNtNtNtCsaCYLheajBls_5hyper4body8incoming8IncomingEIB1s_NtNtNtCsbaWXNhtWAp9_11foundations9telemetry8settings17TelemetrySettingsEEEp6OutputINtNtBb_3pin3PinINtNtB1w_5boxed3BoxDNtNtNtBb_6future6future6Futurep6OutputINtNtBb_6result6ResultINtNtB2w_8response8ResponseINtNtNtCsefgzIPu8p8D_14http_body_util11combinators8box_body7BoxBodyNtNtCs8QTyv2gZm5j_5bytes5bytes5BytesIB5z_DNtNtBb_5error5ErrorNtNtBb_6marker4SendNtB9n_4SyncEL_EEEzEB9l_EL_EEB9l_B9E_EL_EEENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNvMs1_BT_BQ_21wild_child_in_segmentEB44_.exit: ; preds = %.lr.ph, %bb.d, %_RNvXsg_NtNtCs3oUPovFnLWP_4core5slice3cmphNtB5_13SliceContains14slice_containsCsbaWXNhtWAp9_11foundations.exit, %.loopexit
  %.sroa.0.0 = phi i1 [ true, %.loopexit ], [ false, %_RNvXsg_NtNtCs3oUPovFnLWP_4core5slice3cmphNtB5_13SliceContains14slice_containsCsbaWXNhtWAp9_11foundations.exit ], [ false, %bb.d ], [ %i.x, %.lr.ph ], !dbg !9909
  ret i1 %.sroa.0.0, !dbg !9910
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNvMs1_NtCslVf3eO13on1_7matchit4treeINtB5_4NodeINtNtCs1xwejQucwHj_5alloc4sync3ArcDINtNtNtCs3oUPovFnLWP_4core3ops8function2FnTINtNtCs74LoFwSioHw_4http7request7RequestNtNtNtCsaCYLheajBls_5hyper4body8incoming8IncomingEIBK_NtNtNtCsbaWXNhtWAp9_11foundations9telemetry8settings17TelemetrySettingsEEEp6OutputINtNtB1p_3pin3PinINtNtBO_5boxed3BoxDNtNtNtB1p_6future6future6Futurep6OutputINtNtB1p_6result6ResultINtNtB24_8response8ResponseINtNtNtCsefgzIPu8p8D_14http_body_util11combinators8box_body7BoxBodyNtNtCs8QTyv2gZm5j_5bytes5bytes5BytesIB57_DNtNtB1p_5error5ErrorNtNtB1p_6marker4SendNtB8X_4SyncEL_EEEzEB8V_EL_EEB8V_B9f_EL_EE28prefix_wild_child_in_segmentB3B_(ptr nofree noundef nonnull readonly align 8 captures(none) %0) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !9911 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 149, !dbg !9972
  %i.b = load i8, ptr %i.a, align 1, !dbg !9972, !range !719, !noundef !465 ; 2 uses
  %i.c = icmp ne i8 %i.b, 3, !dbg !9972
  tail call void @llvm.assume(i1 %i.c), !dbg !9972
  %i.d = icmp eq i8 %i.b, 2, !dbg !9973
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.f = load i64, ptr %i.e, align 8, !dbg !9974  ; 2 uses
  %i.g = icmp eq i64 %i.f, 0
  %or.cond = select i1 %i.d, i1 %i.g, i1 false, !dbg !9973
  br i1 %or.cond, label %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterINtNtCslVf3eO13on1_7matchit4tree4NodeINtNtCs1xwejQucwHj_5alloc4sync3ArcDINtNtNtBb_3ops8function2FnTINtNtCs74LoFwSioHw_4http7request7RequestNtNtNtCsaCYLheajBls_5hyper4body8incoming8IncomingEIB1s_NtNtNtCsbaWXNhtWAp9_11foundations9telemetry8settings17TelemetrySettingsEEEp6OutputINtNtBb_3pin3PinINtNtB1w_5boxed3BoxDNtNtNtBb_6future6future6Futurep6OutputINtNtBb_6result6ResultINtNtB2w_8response8ResponseINtNtNtCsefgzIPu8p8D_14http_body_util11combinators8box_body7BoxBodyNtNtCs8QTyv2gZm5j_5bytes5bytes5BytesIB5z_DNtNtBb_5error5ErrorNtNtBb_6marker4SendNtB9n_4SyncEL_EEEzEB9l_EL_EEB9l_B9E_EL_EEENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNvMs1_BT_BQ_21wild_child_in_segmentEB44_.exit, label %._crit_edge, !dbg !9973

._crit_edge:                                      ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !9975
  %i.i = load ptr, ptr %i.h, align 8, !dbg !9975, !nonnull !465, !noundef !465
  %i.j = tail call noundef zeroext i1 @_RNvMNtCs3oUPovFnLWP_4core5sliceSh9ends_withCsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.i, i64 noundef %i.f, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @103, i64 noundef 1), !dbg !9976
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 104, !dbg !9977
  %i.l = load ptr, ptr %i.k, align 8, !dbg !9977, !nonnull !465, !noundef !465 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 112, !dbg !9978
  %i.n = load i64, ptr %i.m, align 8, !dbg !9978, !noundef !465 ; 2 uses
  %.idx = mul nuw nsw i64 %i.n, 152, !dbg !9979
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 %.idx, !dbg !9979 ; 2 uses
  %.not.not18 = icmp eq i64 %i.n, 0, !dbg !9947   ; 2 uses
  br i1 %i.j, label %.preheader, label %.preheader12, !dbg !9956

.preheader12:                                     ; preds = %._crit_edge
  br i1 %.not.not18, label %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterINtNtCslVf3eO13on1_7matchit4tree4NodeINtNtCs1xwejQucwHj_5alloc4sync3ArcDINtNtNtBb_3ops8function2FnTINtNtCs74LoFwSioHw_4http7request7RequestNtNtNtCsaCYLheajBls_5hyper4body8incoming8IncomingEIB1s_NtNtNtCsbaWXNhtWAp9_11foundations9telemetry8settings17TelemetrySettingsEEEp6OutputINtNtBb_3pin3PinINtNtB1w_5boxed3BoxDNtNtNtBb_6future6future6Futurep6OutputINtNtBb_6result6ResultINtNtB2w_8response8ResponseINtNtNtCsefgzIPu8p8D_14http_body_util11combinators8box_body7BoxBodyNtNtCs8QTyv2gZm5j_5bytes5bytes5BytesIB5z_DNtNtBb_5error5ErrorNtNtBb_6marker4SendNtB9n_4SyncEL_EEEzEB9l_EL_EEB9l_B9E_EL_EEENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNvMs1_BT_BQ_21wild_child_in_segmentEB44_.exit, label %.lr.ph, !dbg !9980

.preheader:                                       ; preds = %._crit_edge
  br i1 %.not.not18, label %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterINtNtCslVf3eO13on1_7matchit4tree4NodeINtNtCs1xwejQucwHj_5alloc4sync3ArcDINtNtNtBb_3ops8function2FnTINtNtCs74LoFwSioHw_4http7request7RequestNtNtNtCsaCYLheajBls_5hyper4body8incoming8IncomingEIB1s_NtNtNtCsbaWXNhtWAp9_11foundations9telemetry8settings17TelemetrySettingsEEEp6OutputINtNtBb_3pin3PinINtNtB1w_5boxed3BoxDNtNtNtBb_6future6future6Futurep6OutputINtNtBb_6result6ResultINtNtB2w_8response8ResponseINtNtNtCsefgzIPu8p8D_14http_body_util11combinators8box_body7BoxBodyNtNtCs8QTyv2gZm5j_5bytes5bytes5BytesIB5z_DNtNtBb_5error5ErrorNtNtBb_6marker4SendNtB9n_4SyncEL_EEEzEB9l_EL_EEB9l_B9E_EL_EEENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNvMs1_BT_BQ_21wild_child_in_segmentEB44_.exit, label %.lr.ph20, !dbg !9981

_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterINtNtCslVf3eO13on1_7matchit4tree4NodeINtNtCs1xwejQucwHj_5alloc4sync3ArcDINtNtNtBb_3ops8function2FnTINtNtCs74LoFwSioHw_4http7request7RequestNtNtNtCsaCYLheajBls_5hyper4body8incoming8IncomingEIB1s_NtNtNtCsbaWXNhtWAp9_11foundations9telemetry8settings17TelemetrySettingsEEEp6OutputINtNtBb_3pin3PinINtNtB1w_5boxed3BoxDNtNtNtBb_6future6future6Futurep6OutputINtNtBb_6result6ResultINtNtB2w_8response8ResponseINtNtNtCsefgzIPu8p8D_14http_body_util11combinators8box_body7BoxBodyNtNtCs8QTyv2gZm5j_5bytes5bytes5BytesIB5z_DNtNtBb_5error5ErrorNtNtBb_6marker4SendNtB9n_4SyncEL_EEEzEB9l_EL_EEB9l_B9E_EL_EEENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNvMs1_BT_BQ_21wild_child_in_segmentEB44_.exit: ; preds = %.lr.ph, %.lr.ph20, %.preheader12, %.preheader, %bb.a
  %.sroa.0.0.shrunk = phi i1 [ false, %bb.a ], [ false, %.preheader12 ], [ false, %.preheader ], [ %i.q, %.lr.ph ], [ %i.s, %.lr.ph20 ]
  ret i1 %.sroa.0.0.shrunk, !dbg !9982

.lr.ph:                                           ; preds = %.lr.ph, %.preheader12
  %i.p = phi ptr [ %i.r, %.lr.ph ], [ %i.l, %.preheader12 ] ; 2 uses
  %i.q = tail call fastcc noundef zeroext i1 @_RNvMs1_NtCslVf3eO13on1_7matchit4treeINtB5_4NodeINtNtCs1xwejQucwHj_5alloc4sync3ArcDINtNtNtCs3oUPovFnLWP_4core3ops8function2FnTINtNtCs74LoFwSioHw_4http7request7RequestNtNtNtCsaCYLheajBls_5hyper4body8incoming8IncomingEIBK_NtNtNtCsbaWXNhtWAp9_11foundations9telemetry8settings17TelemetrySettingsEEEp6OutputINtNtB1p_3pin3PinINtNtBO_5boxed3BoxDNtNtNtB1p_6future6future6Futurep6OutputINtNtB1p_6result6ResultINtNtB24_8response8ResponseINtNtNtCsefgzIPu8p8D_14http_body_util11combinators8box_body7BoxBodyNtNtCs8QTyv2gZm5j_5bytes5bytes5BytesIB57_DNtNtB1p_5error5ErrorNtNtB1p_6marker4SendNtB8X_4SyncEL_EEEzEB8V_EL_EEB8V_B9f_EL_EE21wild_child_in_segmentB3B_(ptr noundef nonnull align 8 %i.p), !dbg !9983, !noalias !9970, !inline_history !378 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 152 ; 2 uses
  %.not.not.not.i.not.not = icmp eq ptr %i.r, %i.o
  %or.cond27 = select i1 %i.q, i1 true, i1 %.not.not.not.i.not.not, !dbg !9984
  br i1 %or.cond27, label %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterINtNtCslVf3eO13on1_7matchit4tree4NodeINtNtCs1xwejQucwHj_5alloc4sync3ArcDINtNtNtBb_3ops8function2FnTINtNtCs74LoFwSioHw_4http7request7RequestNtNtNtCsaCYLheajBls_5hyper4body8incoming8IncomingEIB1s_NtNtNtCsbaWXNhtWAp9_11foundations9telemetry8settings17TelemetrySettingsEEEp6OutputINtNtBb_3pin3PinINtNtB1w_5boxed3BoxDNtNtNtBb_6future6future6Futurep6OutputINtNtBb_6result6ResultINtNtB2w_8response8ResponseINtNtNtCsefgzIPu8p8D_14http_body_util11combinators8box_body7BoxBodyNtNtCs8QTyv2gZm5j_5bytes5bytes5BytesIB5z_DNtNtBb_5error5ErrorNtNtBb_6marker4SendNtB9n_4SyncEL_EEEzEB9l_EL_EEB9l_B9E_EL_EEENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNvMs1_BT_BQ_21wild_child_in_segmentEB44_.exit, label %.lr.ph, !dbg !9984

.lr.ph20:                                         ; preds = %.lr.ph20, %.preheader
  %.sroa.0.019 = phi ptr [ %i.t, %.lr.ph20 ], [ %i.l, %.preheader ] ; 2 uses
  %i.s = tail call fastcc noundef zeroext i1 @_RNvMs1_NtCslVf3eO13on1_7matchit4treeINtB5_4NodeINtNtCs1xwejQucwHj_5alloc4sync3ArcDINtNtNtCs3oUPovFnLWP_4core3ops8function2FnTINtNtCs74LoFwSioHw_4http7request7RequestNtNtNtCsaCYLheajBls_5hyper4body8incoming8IncomingEIBK_NtNtNtCsbaWXNhtWAp9_11foundations9telemetry8settings17TelemetrySettingsEEEp6OutputINtNtB1p_3pin3PinINtNtBO_5boxed3BoxDNtNtNtB1p_6future6future6Futurep6OutputINtNtB1p_6result6ResultINtNtB24_8response8ResponseINtNtNtCsefgzIPu8p8D_14http_body_util11combinators8box_body7BoxBodyNtNtCs8QTyv2gZm5j_5bytes5bytes5BytesIB57_DNtNtB1p_5error5ErrorNtNtB1p_6marker4SendNtB8X_4SyncEL_EEEzEB8V_EL_EEB8V_B9f_EL_EE28prefix_wild_child_in_segmentB3B_(ptr noundef nonnull align 8 %.sroa.0.019), !dbg !9985, !noalias !9971, !inline_history !9943 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.0.019, i64 152 ; 2 uses
  %.not.not = icmp eq ptr %i.t, %i.o
  %or.cond28 = select i1 %i.s, i1 true, i1 %.not.not, !dbg !9986
  br i1 %or.cond28, label %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterINtNtCslVf3eO13on1_7matchit4tree4NodeINtNtCs1xwejQucwHj_5alloc4sync3ArcDINtNtNtBb_3ops8function2FnTINtNtCs74LoFwSioHw_4http7request7RequestNtNtNtCsaCYLheajBls_5hyper4body8incoming8IncomingEIB1s_NtNtNtCsbaWXNhtWAp9_11foundations9telemetry8settings17TelemetrySettingsEEEp6OutputINtNtBb_3pin3PinINtNtB1w_5boxed3BoxDNtNtNtBb_6future6future6Futurep6OutputINtNtBb_6result6ResultINtNtB2w_8response8ResponseINtNtNtCsefgzIPu8p8D_14http_body_util11combinators8box_body7BoxBodyNtNtCs8QTyv2gZm5j_5bytes5bytes5BytesIB5z_DNtNtBb_5error5ErrorNtNtBb_6marker4SendNtB9n_4SyncEL_EEEzEB9l_EL_EEB9l_B9E_EL_EEENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNvMs1_BT_BQ_21wild_child_in_segmentEB44_.exit, label %.lr.ph20, !dbg !9986
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNvMs1_NtCslVf3eO13on1_7matchit4treeINtB5_4NodeINtNtCs1xwejQucwHj_5alloc4sync3ArcDINtNtNtCs3oUPovFnLWP_4core3ops8function2FnTINtNtCs74LoFwSioHw_4http7request7RequestNtNtNtCsaCYLheajBls_5hyper4body8incoming8IncomingEIBK_NtNtNtCsbaWXNhtWAp9_11foundations9telemetry8settings17TelemetrySettingsEEEp6OutputINtNtB1p_3pin3PinINtNtBO_5boxed3BoxDNtNtNtB1p_6future6future6Futurep6OutputINtNtB1p_6result6ResultINtNtB24_8response8ResponseINtNtNtCsefgzIPu8p8D_14http_body_util11combinators8box_body7BoxBodyNtNtCs8QTyv2gZm5j_5bytes5bytes5BytesIB57_DNtNtB1p_5error5ErrorNtNtB1p_6marker4SendNtB8X_4SyncEL_EEEzEB8V_EL_EEB8V_B9f_EL_EE28suffix_wild_child_in_segmentB3B_(ptr nofree noundef nonnull readonly align 8 captures(none) %0) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !325 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 149, !dbg !9999
  %i.b = load i8, ptr %i.a, align 1, !dbg !9999, !range !719, !noundef !465 ; 2 uses
  %i.c = icmp ne i8 %i.b, 3, !dbg !9999
  tail call void @llvm.assume(i1 %i.c), !dbg !9999
  %or.cond = icmp eq i8 %i.b, 1, !dbg !10000
  br i1 %or.cond, label %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterINtNtCslVf3eO13on1_7matchit4tree4NodeINtNtCs1xwejQucwHj_5alloc4sync3ArcDINtNtNtBb_3ops8function2FnTINtNtCs74LoFwSioHw_4http7request7RequestNtNtNtCsaCYLheajBls_5hyper4body8incoming8IncomingEIB1s_NtNtNtCsbaWXNhtWAp9_11foundations9telemetry8settings17TelemetrySettingsEEEp6OutputINtNtBb_3pin3PinINtNtB1w_5boxed3BoxDNtNtNtBb_6future6future6Futurep6OutputINtNtBb_6result6ResultINtNtB2w_8response8ResponseINtNtNtCsefgzIPu8p8D_14http_body_util11combinators8box_body7BoxBodyNtNtCs8QTyv2gZm5j_5bytes5bytes5BytesIB5z_DNtNtBb_5error5ErrorNtNtBb_6marker4SendNtB9n_4SyncEL_EEEzEB9l_EL_EEB9l_B9E_EL_EEENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvMs1_BT_BQ_28suffix_wild_child_in_segment0EB44_.exit, label %bb.b, !dbg !10000

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 104, !dbg !10001
  %i.e = load ptr, ptr %i.d, align 8, !dbg !10001, !nonnull !465, !noundef !465 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 112, !dbg !10002
  %i.g = load i64, ptr %i.f, align 8, !dbg !10002, !noundef !465 ; 2 uses
  %.idx = mul nuw nsw i64 %i.g, 152, !dbg !10003
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 %.idx, !dbg !10003
  %.not.not3 = icmp eq i64 %i.g, 0, !dbg !10004
  br i1 %.not.not3, label %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterINtNtCslVf3eO13on1_7matchit4tree4NodeINtNtCs1xwejQucwHj_5alloc4sync3ArcDINtNtNtBb_3ops8function2FnTINtNtCs74LoFwSioHw_4http7request7RequestNtNtNtCsaCYLheajBls_5hyper4body8incoming8IncomingEIB1s_NtNtNtCsbaWXNhtWAp9_11foundations9telemetry8settings17TelemetrySettingsEEEp6OutputINtNtBb_3pin3PinINtNtB1w_5boxed3BoxDNtNtNtBb_6future6future6Futurep6OutputINtNtBb_6result6ResultINtNtB2w_8response8ResponseINtNtNtCsefgzIPu8p8D_14http_body_util11combinators8box_body7BoxBodyNtNtCs8QTyv2gZm5j_5bytes5bytes5BytesIB5z_DNtNtBb_5error5ErrorNtNtBb_6marker4SendNtB9n_4SyncEL_EEEzEB9l_EL_EEB9l_B9E_EL_EEENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvMs1_BT_BQ_28suffix_wild_child_in_segment0EB44_.exit, label %.lr.ph, !dbg !10005

.lr.ph:                                           ; preds = %.lr.ph, %bb.b
  %.sroa.0.024 = phi ptr [ %i.j, %.lr.ph ], [ %i.e, %bb.b ] ; 2 uses
  %i.i = tail call fastcc noundef zeroext i1 @_RNCNvMs1_NtCslVf3eO13on1_7matchit4treeINtB7_4NodeINtNtCs1xwejQucwHj_5alloc4sync3ArcDINtNtNtCs3oUPovFnLWP_4core3ops8function2FnTINtNtCs74LoFwSioHw_4http7request7RequestNtNtNtCsaCYLheajBls_5hyper4body8incoming8IncomingEIBM_NtNtNtCsbaWXNhtWAp9_11foundations9telemetry8settings17TelemetrySettingsEEEp6OutputINtNtB1r_3pin3PinINtNtBQ_5boxed3BoxDNtNtNtB1r_6future6future6Futurep6OutputINtNtB1r_6result6ResultINtNtB26_8response8ResponseINtNtNtCsefgzIPu8p8D_14http_body_util11combinators8box_body7BoxBodyNtNtCs8QTyv2gZm5j_5bytes5bytes5BytesIB59_DNtNtB1r_5error5ErrorNtNtB1r_6marker4SendNtB8Z_4SyncEL_EEEzEB8X_EL_EEB8X_B9h_EL_EE28suffix_wild_child_in_segment0B3D_(ptr noundef nonnull align 8 %.sroa.0.024) #37, !dbg !10006 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.0.024, i64 152 ; 2 uses
  %.not.not = icmp eq ptr %i.j, %i.h
  %or.cond7 = select i1 %i.i, i1 true, i1 %.not.not, !dbg !10006
  br i1 %or.cond7, label %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterINtNtCslVf3eO13on1_7matchit4tree4NodeINtNtCs1xwejQucwHj_5alloc4sync3ArcDINtNtNtBb_3ops8function2FnTINtNtCs74LoFwSioHw_4http7request7RequestNtNtNtCsaCYLheajBls_5hyper4body8incoming8IncomingEIB1s_NtNtNtCsbaWXNhtWAp9_11foundations9telemetry8settings17TelemetrySettingsEEEp6OutputINtNtBb_3pin3PinINtNtB1w_5boxed3BoxDNtNtNtBb_6future6future6Futurep6OutputINtNtBb_6result6ResultINtNtB2w_8response8ResponseINtNtNtCsefgzIPu8p8D_14http_body_util11combinators8box_body7BoxBodyNtNtCs8QTyv2gZm5j_5bytes5bytes5BytesIB5z_DNtNtBb_5error5ErrorNtNtBb_6marker4SendNtB9n_4SyncEL_EEEzEB9l_EL_EEB9l_B9E_EL_EEENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvMs1_BT_BQ_28suffix_wild_child_in_segment0EB44_.exit, label %.lr.ph, !dbg !10006

_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterINtNtCslVf3eO13on1_7matchit4tree4NodeINtNtCs1xwejQucwHj_5alloc4sync3ArcDINtNtNtBb_3ops8function2FnTINtNtCs74LoFwSioHw_4http7request7RequestNtNtNtCsaCYLheajBls_5hyper4body8incoming8IncomingEIB1s_NtNtNtCsbaWXNhtWAp9_11foundations9telemetry8settings17TelemetrySettingsEEEp6OutputINtNtBb_3pin3PinINtNtB1w_5boxed3BoxDNtNtNtBb_6future6future6Futurep6OutputINtNtBb_6result6ResultINtNtB2w_8response8ResponseINtNtNtCsefgzIPu8p8D_14http_body_util11combinators8box_body7BoxBodyNtNtCs8QTyv2gZm5j_5bytes5bytes5BytesIB5z_DNtNtBb_5error5ErrorNtNtBb_6marker4SendNtB9n_4SyncEL_EEEzEB9l_EL_EEB9l_B9E_EL_EEENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvMs1_BT_BQ_28suffix_wild_child_in_segment0EB44_.exit: ; preds = %.lr.ph, %bb.b, %bb.a
  %.sroa.0.0 = phi i1 [ true, %bb.a ], [ false, %bb.b ], [ %i.i, %.lr.ph ], !dbg !10007
  ret i1 %.sroa.0.0, !dbg !10008
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs1_NtCslVf3eO13on1_7matchit4treeINtB5_4NodeINtNtCs1xwejQucwHj_5alloc4sync3ArcDINtNtNtCs3oUPovFnLWP_4core3ops8function2FnTINtNtCs74LoFwSioHw_4http7request7RequestNtNtNtCsaCYLheajBls_5hyper4body8incoming8IncomingEIBK_NtNtNtCsbaWXNhtWAp9_11foundations9telemetry8settings17TelemetrySettingsEEEp6OutputINtNtB1p_3pin3PinINtNtBO_5boxed3BoxDNtNtNtB1p_6future6future6Futurep6OutputINtNtB1p_6result6ResultINtNtB24_8response8ResponseINtNtNtCsefgzIPu8p8D_14http_body_util11combinators8box_body7BoxBodyNtNtCs8QTyv2gZm5j_5bytes5bytes5BytesIB57_DNtNtB1p_5error5ErrorNtNtB1p_6marker4SendNtB8X_4SyncEL_EEEzEB8V_EL_EEB8V_B9f_EL_EE6insertB3B_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(152) %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2, ptr noundef nonnull %3, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %4) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !10009 {
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
