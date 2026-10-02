Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/foundations-rs/original/foundations-0829c0e58918e871.foundations.822e5dc8be635b49-cgu.03?download=true
inline.NumInlined: 1263
inline.NumDeleted: 629
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_RNvMNtCskt5MLIAl8nl_9hashbrown11rustc_entryINtNtB4_3map7HashMapNtNtCs74LoFwSioHw_4http6method6MethodINtNtCslVf3eO13on1_7matchit6router6RouterINtNtCs1xwejQucwHj_5alloc4sync3ArcDINtNtNtCs3oUPovFnLWP_4core3ops8function2FnTINtNtB13_7request7RequestNtNtNtCsaCYLheajBls_5hyper4body8incoming8IncomingEIB2g_NtNtNtCsbaWXNhtWAp9_11foundations9telemetry8settings17TelemetrySettingsEEEp6OutputINtNtB2V_3pin3PinINtNtB2k_5boxed3BoxDNtNtNtB2V_6future6future6Futurep6OutputINtNtB2V_6result6ResultINtNtB13_8response8ResponseINtNtNtCsefgzIPu8p8D_14http_body_util11combinators8box_body7BoxBodyNtNtCs8QTyv2gZm5j_5bytes5bytes5BytesIB6p_DNtNtB2V_5error5ErrorNtNtB2V_6marker4SendNtBag_4SyncEL_EEEzEBae_EL_EEBae_Bay_EL_EENtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateE11rustc_entryB4T_:bb.a
._crit_edge.i.us:                                 ; preds = %_RNCINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB8_8RawTableTNtNtCs74LoFwSioHw_4http6method6MethodINtNtCslVf3eO13on1_7matchit6router6RouterINtNtCs1xwejQucwHj_5alloc4sync3ArcDINtNtNtCs3oUPovFnLWP_4core3ops8function2FnTINtNtBW_7request7RequestNtNtNtCsaCYLheajBls_5hyper4body8incoming8IncomingEIB29_NtNtNtCsbaWXNhtWAp9_11foundations9telemetry8settings17TelemetrySettingsEEEp6OutputINtNtB2O_3pin3PinINtNtB2d_5boxed3BoxDNtNtNtB2O_6future6future6Futurep6OutputINtNtB2O_6result6ResultINtNtBW_8response8ResponseINtNtNtCsefgzIPu8p8D_14http_body_util11combinators8box_body7BoxBodyNtNtCs8QTyv2gZm5j_5bytes5bytes5BytesIB6h_DNtNtB2O_5error5ErrorNtNtB2O_6marker4SendNtBa7_4SyncEL_EEEzEBa5_EL_EEBa5_Bap_EL_EEEE4findNCNvMNtBa_11rustc_entryINtNtBa_3map7HashMapBS_B1t_NtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateE11rustc_entry0E0B4L_.exit.thread.i.us.us, %.split.us18
  %i.am = icmp eq <16 x i8> %.sroa.0.0.copyload.i27.i.us, splat (i8 -1), !dbg !12056
  %i.an = bitcast <16 x i1> %i.am to i16, !dbg !12057
  %i.ao = icmp eq i16 %i.an, 0, !dbg !12058
  br i1 %i.ao, label %bb.e, label %_RINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB6_8RawTableTNtNtCs74LoFwSioHw_4http6method6MethodINtNtCslVf3eO13on1_7matchit6router6RouterINtNtCs1xwejQucwHj_5alloc4sync3ArcDINtNtNtCs3oUPovFnLWP_4core3ops8function2FnTINtNtBU_7request7RequestNtNtNtCsaCYLheajBls_5hyper4body8incoming8IncomingEIB27_NtNtNtCsbaWXNhtWAp9_11foundations9telemetry8settings17TelemetrySettingsEEEp6OutputINtNtB2M_3pin3PinINtNtB2b_5boxed3BoxDNtNtNtB2M_6future6future6Futurep6OutputINtNtB2M_6result6ResultINtNtBU_8response8ResponseINtNtNtCsefgzIPu8p8D_14http_body_util11combinators8box_body7BoxBodyNtNtCs8QTyv2gZm5j_5bytes5bytes5BytesIB6f_DNtNtB2M_5error5ErrorNtNtB2M_6marker4SendNtBa5_4SyncEL_EEEzEBa3_EL_EEBa3_Ban_EL_EEEE4findNCNvMNtB8_11rustc_entryINtNtB8_3map7HashMapBQ_B1r_NtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateE11rustc_entry0EB4J_.exit, !dbg !12058, !prof !863

bb.e:                                             ; preds = %._crit_edge.i.us
  %i.ap = add i64 %.sroa.9.0.i.i.us, 16, !dbg !12059 ; 2 uses
  %i.aq = add i64 %.sroa.01.0.i.i.us, %i.ap, !dbg !12060
  br label %.split.us18, !dbg !12061

.split.us21:                                      ; preds = %bb.c, %bb.g
  %.sroa.9.0.i.i.us22 = phi i64 [ %i.bo, %bb.g ], [ 0, %bb.c ], !dbg !12034
  %.pn.i.us23 = phi i64 [ %i.bp, %bb.g ], [ %i.b, %bb.c ]
  %.sroa.01.0.i.i.us24 = and i64 %.pn.i.us23, %i.g, !dbg !12034 ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.h, i64 %.sroa.01.0.i.i.us24, !dbg !12035
  %.sroa.0.0.copyload.i27.i.us25 = load <16 x i8>, ptr %i.ar, align 1, !dbg !12036, !noalias !12003 ; 2 uses
  %i.as = icmp eq <16 x i8> %.sroa.0.0.copyload.i27.i.us25, %i.j, !dbg !12037
  %i.at = bitcast <16 x i1> %i.as to i16, !dbg !12038 ; 2 uses
  %.not.i.not33.i.us26 = icmp eq i16 %i.at, 0, !dbg !12039
  br i1 %.not.i.not33.i.us26, label %._crit_edge.i.us30, label %.lr.ph.i.us10.us, !dbg !12040

.lr.ph.i.us10.us:                                 ; preds = %.split.us21, %_RNCINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB8_8RawTableTNtNtCs74LoFwSioHw_4http6method6MethodINtNtCslVf3eO13on1_7matchit6router6RouterINtNtCs1xwejQucwHj_5alloc4sync3ArcDINtNtNtCs3oUPovFnLWP_4core3ops8function2FnTINtNtBW_7request7RequestNtNtNtCsaCYLheajBls_5hyper4body8incoming8IncomingEIB29_NtNtNtCsbaWXNhtWAp9_11foundations9telemetry8settings17TelemetrySettingsEEEp6OutputINtNtB2O_3pin3PinINtNtB2d_5boxed3BoxDNtNtNtB2O_6future6future6Futurep6OutputINtNtB2O_6result6ResultINtNtBW_8response8ResponseINtNtNtCsefgzIPu8p8D_14http_body_util11combinators8box_body7BoxBodyNtNtCs8QTyv2gZm5j_5bytes5bytes5BytesIB6h_DNtNtB2O_5error5ErrorNtNtB2O_6marker4SendNtBa7_4SyncEL_EEEzEBa5_EL_EEBa5_Bap_EL_EEEE4findNCNvMNtBa_11rustc_entryINtNtBa_3map7HashMapBS_B1t_NtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateE11rustc_entry0E0B4L_.exit.thread.i.us12.us
  %.sroa.06.0.i34.i.us11.us = phi i16 [ %i.bk, %_RNCINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB8_8RawTableTNtNtCs74LoFwSioHw_4http6method6MethodINtNtCslVf3eO13on1_7matchit6router6RouterINtNtCs1xwejQucwHj_5alloc4sync3ArcDINtNtNtCs3oUPovFnLWP_4core3ops8function2FnTINtNtBW_7request7RequestNtNtNtCsaCYLheajBls_5hyper4body8incoming8IncomingEIB29_NtNtNtCsbaWXNhtWAp9_11foundations9telemetry8settings17TelemetrySettingsEEEp6OutputINtNtB2O_3pin3PinINtNtB2d_5boxed3BoxDNtNtNtB2O_6future6future6Futurep6OutputINtNtB2O_6result6ResultINtNtBW_8response8ResponseINtNtNtCsefgzIPu8p8D_14http_body_util11combinators8box_body7BoxBodyNtNtCs8QTyv2gZm5j_5bytes5bytes5BytesIB6h_DNtNtB2O_5error5ErrorNtNtB2O_6marker4SendNtBa7_4SyncEL_EEEzEBa5_EL_EEBa5_Bap_EL_EEEE4findNCNvMNtBa_11rustc_entryINtNtBa_3map7HashMapBS_B1t_NtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateE11rustc_entry0E0B4L_.exit.thread.i.us12.us ], [ %i.at, %.split.us21 ] ; 3 uses
  %i.au = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i34.i.us11.us, i1 true), !dbg !12041
  %i.av = zext nneg i16 %i.au to i64, !dbg !12042
  %i.aw = add i64 %.sroa.01.0.i.i.us24, %i.av, !dbg !12043
  %i.ax = and i64 %i.aw, %i.g, !dbg !12043
  %i.ay = sub nsw i64 0, %i.ax, !dbg !12044
  %i.az = getelementptr inbounds [176 x i8], ptr %i.h, i64 %i.ay, !dbg !12045 ; 4 uses
  %i.ba = getelementptr inbounds i8, ptr %i.az, i64 -176, !dbg !12046
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12004), !dbg !12047, !noalias !12005
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12006), !dbg !12048, !noalias !12005
  %i.bb = load i8, ptr %i.ba, align 8, !dbg !12049, !range !1083, !alias.scope !12010, !noalias !12011, !noundef !786
  %i.bc = icmp eq i8 %i.bb, 11, !dbg !12050
  br i1 %i.bc, label %bb.f, label %_RNCINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB8_8RawTableTNtNtCs74LoFwSioHw_4http6method6MethodINtNtCslVf3eO13on1_7matchit6router6RouterINtNtCs1xwejQucwHj_5alloc4sync3ArcDINtNtNtCs3oUPovFnLWP_4core3ops8function2FnTINtNtBW_7request7RequestNtNtNtCsaCYLheajBls_5hyper4body8incoming8IncomingEIB29_NtNtNtCsbaWXNhtWAp9_11foundations9telemetry8settings17TelemetrySettingsEEEp6OutputINtNtB2O_3pin3PinINtNtB2d_5boxed3BoxDNtNtNtB2O_6future6future6Futurep6OutputINtNtB2O_6result6ResultINtNtBW_8response8ResponseINtNtNtCsefgzIPu8p8D_14http_body_util11combinators8box_body7BoxBodyNtNtCs8QTyv2gZm5j_5bytes5bytes5BytesIB6h_DNtNtB2O_5error5ErrorNtNtB2O_6marker4SendNtBa7_4SyncEL_EEEzEBa5_EL_EEBa5_Bap_EL_EEEE4findNCNvMNtBa_11rustc_entryINtNtBa_3map7HashMapBS_B1t_NtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateE11rustc_entry0E0B4L_.exit.thread.i.us12.us, !dbg !12050, !prof !939

bb.f:                                             ; preds = %.lr.ph.i.us10.us
  %i.bd = getelementptr inbounds i8, ptr %i.az, i64 -160, !dbg !12062
  %i.be = load i64, ptr %i.bd, align 8, !dbg !12062, !alias.scope !12010, !noalias !12011, !noundef !786
  %i.bf = icmp eq i64 %i.be, %i.m, !dbg !12063
  br i1 %i.bf, label %.split.i.us.us, label %_RNCINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB8_8RawTableTNtNtCs74LoFwSioHw_4http6method6MethodINtNtCslVf3eO13on1_7matchit6router6RouterINtNtCs1xwejQucwHj_5alloc4sync3ArcDINtNtNtCs3oUPovFnLWP_4core3ops8function2FnTINtNtBW_7request7RequestNtNtNtCsaCYLheajBls_5hyper4body8incoming8IncomingEIB29_NtNtNtCsbaWXNhtWAp9_11foundations9telemetry8settings17TelemetrySettingsEEEp6OutputINtNtB2O_3pin3PinINtNtB2d_5boxed3BoxDNtNtNtB2O_6future6future6Futurep6OutputINtNtB2O_6result6ResultINtNtBW_8response8ResponseINtNtNtCsefgzIPu8p8D_14http_body_util11combinators8box_body7BoxBodyNtNtCs8QTyv2gZm5j_5bytes5bytes5BytesIB6h_DNtNtB2O_5error5ErrorNtNtB2O_6marker4SendNtBa7_4SyncEL_EEEzEBa5_EL_EEBa5_Bap_EL_EEEE4findNCNvMNtBa_11rustc_entryINtNtBa_3map7HashMapBS_B1t_NtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateE11rustc_entry0E0B4L_.exit.thread.i.us12.us, !dbg !12063, !prof !939

.split.i.us.us:                                   ; preds = %bb.f
  %i.bg = getelementptr inbounds i8, ptr %i.az, i64 -168, !dbg !12062
  %i.bh = load ptr, ptr %i.bg, align 8, !dbg !12062, !alias.scope !12010, !noalias !12011, !nonnull !786, !noundef !786
  %bcmp.i.i.i.i.i.us.us = tail call i32 @bcmp(ptr nonnull %i.bh, ptr nonnull %i.o, i64 %i.m), !dbg !12064, !noalias !12022
  %i.bi = icmp eq i32 %bcmp.i.i.i.i.i.us.us, 0, !dbg !12064
  br i1 %i.bi, label %.split.us, label %_RNCINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB8_8RawTableTNtNtCs74LoFwSioHw_4http6method6MethodINtNtCslVf3eO13on1_7matchit6router6RouterINtNtCs1xwejQucwHj_5alloc4sync3ArcDINtNtNtCs3oUPovFnLWP_4core3ops8function2FnTINtNtBW_7request7RequestNtNtNtCsaCYLheajBls_5hyper4body8incoming8IncomingEIB29_NtNtNtCsbaWXNhtWAp9_11foundations9telemetry8settings17TelemetrySettingsEEEp6OutputINtNtB2O_3pin3PinINtNtB2d_5boxed3BoxDNtNtNtB2O_6future6future6Futurep6OutputINtNtB2O_6result6ResultINtNtBW_8response8ResponseINtNtNtCsefgzIPu8p8D_14http_body_util11combinators8box_body7BoxBodyNtNtCs8QTyv2gZm5j_5bytes5bytes5BytesIB6h_DNtNtB2O_5error5ErrorNtNtB2O_6marker4SendNtBa7_4SyncEL_EEEzEBa5_EL_EEBa5_Bap_EL_EEEE4findNCNvMNtBa_11rustc_entryINtNtBa_3map7HashMapBS_B1t_NtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateE11rustc_entry0E0B4L_.exit.thread.i.us12.us, !dbg !12053, !prof !941

_RNCINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB8_8RawTableTNtNtCs74LoFwSioHw_4http6method6MethodINtNtCslVf3eO13on1_7matchit6router6RouterINtNtCs1xwejQucwHj_5alloc4sync3ArcDINtNtNtCs3oUPovFnLWP_4core3ops8function2FnTINtNtBW_7request7RequestNtNtNtCsaCYLheajBls_5hyper4body8incoming8IncomingEIB29_NtNtNtCsbaWXNhtWAp9_11foundations9telemetry8settings17TelemetrySettingsEEEp6OutputINtNtB2O_3pin3PinINtNtB2d_5boxed3BoxDNtNtNtB2O_6future6future6Futurep6OutputINtNtB2O_6result6ResultINtNtBW_8response8ResponseINtNtNtCsefgzIPu8p8D_14http_body_util11combinators8box_body7BoxBodyNtNtCs8QTyv2gZm5j_5bytes5bytes5BytesIB6h_DNtNtB2O_5error5ErrorNtNtB2O_6marker4SendNtBa7_4SyncEL_EEEzEBa5_EL_EEBa5_Bap_EL_EEEE4findNCNvMNtBa_11rustc_entryINtNtBa_3map7HashMapBS_B1t_NtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateE11rustc_entry0E0B4L_.exit.thread.i.us12.us: ; preds = %.split.i.us.us, %bb.f, %.lr.ph.i.us10.us
  %i.bj = add i16 %.sroa.06.0.i34.i.us11.us, -1, !dbg !12054
  %i.bk = and i16 %i.bj, %.sroa.06.0.i34.i.us11.us, !dbg !12055 ; 2 uses
  %.not.i.not.i.us13.us = icmp eq i16 %i.bk, 0, !dbg !12039
  br i1 %.not.i.not.i.us13.us, label %._crit_edge.i.us30, label %.lr.ph.i.us10.us, !dbg !12040

._crit_edge.i.us30:                               ; preds = %_RNCINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB8_8RawTableTNtNtCs74LoFwSioHw_4http6method6MethodINtNtCslVf3eO13on1_7matchit6router6RouterINtNtCs1xwejQucwHj_5alloc4sync3ArcDINtNtNtCs3oUPovFnLWP_4core3ops8function2FnTINtNtBW_7request7RequestNtNtNtCsaCYLheajBls_5hyper4body8incoming8IncomingEIB29_NtNtNtCsbaWXNhtWAp9_11foundations9telemetry8settings17TelemetrySettingsEEEp6OutputINtNtB2O_3pin3PinINtNtB2d_5boxed3BoxDNtNtNtB2O_6future6future6Futurep6OutputINtNtB2O_6result6ResultINtNtBW_8response8ResponseINtNtNtCsefgzIPu8p8D_14http_body_util11combinators8box_body7BoxBodyNtNtCs8QTyv2gZm5j_5bytes5bytes5BytesIB6h_DNtNtB2O_5error5ErrorNtNtB2O_6marker4SendNtBa7_4SyncEL_EEEzEBa5_EL_EEBa5_Bap_EL_EEEE4findNCNvMNtBa_11rustc_entryINtNtBa_3map7HashMapBS_B1t_NtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateE11rustc_entry0E0B4L_.exit.thread.i.us12.us, %.split.us21
  %i.bl = icmp eq <16 x i8> %.sroa.0.0.copyload.i27.i.us25, splat (i8 -1), !dbg !12056
  %i.bm = bitcast <16 x i1> %i.bl to i16, !dbg !12057
  %i.bn = icmp eq i16 %i.bm, 0, !dbg !12058
  br i1 %i.bn, label %bb.g, label %_RINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB6_8RawTableTNtNtCs74LoFwSioHw_4http6method6MethodINtNtCslVf3eO13on1_7matchit6router6RouterINtNtCs1xwejQucwHj_5alloc4sync3ArcDINtNtNtCs3oUPovFnLWP_4core3ops8function2FnTINtNtBU_7request7RequestNtNtNtCsaCYLheajBls_5hyper4body8incoming8IncomingEIB27_NtNtNtCsbaWXNhtWAp9_11foundations9telemetry8settings17TelemetrySettingsEEEp6OutputINtNtB2M_3pin3PinINtNtB2b_5boxed3BoxDNtNtNtB2M_6future6future6Futurep6OutputINtNtB2M_6result6ResultINtNtBU_8response8ResponseINtNtNtCsefgzIPu8p8D_14http_body_util11combinators8box_body7BoxBodyNtNtCs8QTyv2gZm5j_5bytes5bytes5BytesIB6f_DNtNtB2M_5error5ErrorNtNtB2M_6marker4SendNtBa5_4SyncEL_EEEzEBa3_EL_EEBa3_Ban_EL_EEEE4findNCNvMNtB8_11rustc_entryINtNtB8_3map7HashMapBQ_B1r_NtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateE11rustc_entry0EB4J_.exit, !dbg !12058, !prof !863

bb.g:                                             ; preds = %._crit_edge.i.us30
  %i.bo = add i64 %.sroa.9.0.i.i.us22, 16, !dbg !12059 ; 2 uses
  %i.bp = add i64 %.sroa.01.0.i.i.us24, %i.bo, !dbg !12060
  br label %.split.us21, !dbg !12061

.split:                                           ; preds = %bb.c, %bb.h
  %.sroa.9.0.i.i = phi i64 [ %i.ch, %bb.h ], [ 0, %bb.c ], !dbg !12034
  %.pn.i = phi i64 [ %i.ci, %bb.h ], [ %i.b, %bb.c ]
  %.sroa.01.0.i.i = and i64 %.pn.i, %i.g, !dbg !12034 ; 3 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.h, i64 %.sroa.01.0.i.i, !dbg !12035
  %.sroa.0.0.copyload.i27.i = load <16 x i8>, ptr %i.bq, align 1, !dbg !12036, !noalias !12003 ; 2 uses
  %i.br = icmp eq <16 x i8> %.sroa.0.0.copyload.i27.i, %i.j, !dbg !12037
  %i.bs = bitcast <16 x i1> %i.br to i16, !dbg !12038 ; 2 uses
  %.not.i.not33.i = icmp eq i16 %i.bs, 0, !dbg !12039
  br i1 %.not.i.not33.i, label %._crit_edge.i, label %.lr.ph.i, !dbg !12040

.lr.ph.i:                                         ; preds = %.split, %_RNCINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB8_8RawTableTNtNtCs74LoFwSioHw_4http6method6MethodINtNtCslVf3eO13on1_7matchit6router6RouterINtNtCs1xwejQucwHj_5alloc4sync3ArcDINtNtNtCs3oUPovFnLWP_4core3ops8function2FnTINtNtBW_7request7RequestNtNtNtCsaCYLheajBls_5hyper4body8incoming8IncomingEIB29_NtNtNtCsbaWXNhtWAp9_11foundations9telemetry8settings17TelemetrySettingsEEEp6OutputINtNtB2O_3pin3PinINtNtB2d_5boxed3BoxDNtNtNtB2O_6future6future6Futurep6OutputINtNtB2O_6result6ResultINtNtBW_8response8ResponseINtNtNtCsefgzIPu8p8D_14http_body_util11combinators8box_body7BoxBodyNtNtCs8QTyv2gZm5j_5bytes5bytes5BytesIB6h_DNtNtB2O_5error5ErrorNtNtB2O_6marker4SendNtBa7_4SyncEL_EEEzEBa5_EL_EEBa5_Bap_EL_EEEE4findNCNvMNtBa_11rustc_entryINtNtBa_3map7HashMapBS_B1t_NtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateE11rustc_entry0E0B4L_.exit.thread.i
  %.sroa.06.0.i34.i = phi i16 [ %i.cg, %_RNCINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB8_8RawTableTNtNtCs74LoFwSioHw_4http6method6MethodINtNtCslVf3eO13on1_7matchit6router6RouterINtNtCs1xwejQucwHj_5alloc4sync3ArcDINtNtNtCs3oUPovFnLWP_4core3ops8function2FnTINtNtBW_7request7RequestNtNtNtCsaCYLheajBls_5hyper4body8incoming8IncomingEIB29_NtNtNtCsbaWXNhtWAp9_11foundations9telemetry8settings17TelemetrySettingsEEEp6OutputINtNtB2O_3pin3PinINtNtB2d_5boxed3BoxDNtNtNtB2O_6future6future6Futurep6OutputINtNtB2O_6result6ResultINtNtBW_8response8ResponseINtNtNtCsefgzIPu8p8D_14http_body_util11combinators8box_body7BoxBodyNtNtCs8QTyv2gZm5j_5bytes5bytes5BytesIB6h_DNtNtB2O_5error5ErrorNtNtB2O_6marker4SendNtBa7_4SyncEL_EEEzEBa5_EL_EEBa5_Bap_EL_EEEE4findNCNvMNtBa_11rustc_entryINtNtBa_3map7HashMapBS_B1t_NtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateE11rustc_entry0E0B4L_.exit.thread.i ], [ %i.bs, %.split ] ; 3 uses
  %i.bt = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i34.i, i1 true), !dbg !12041
  %i.bu = zext nneg i16 %i.bt to i64, !dbg !12042
  %i.bv = add i64 %.sroa.01.0.i.i, %i.bu, !dbg !12043
  %i.bw = and i64 %i.bv, %i.g, !dbg !12043
  %i.bx = sub nsw i64 0, %i.bw, !dbg !12044
  %i.by = getelementptr inbounds [176 x i8], ptr %i.h, i64 %i.bx, !dbg !12045 ; 2 uses
  %i.bz = getelementptr inbounds i8, ptr %i.by, i64 -176, !dbg !12046
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12004), !dbg !12047, !noalias !12005
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12006), !dbg !12048, !noalias !12005
  %i.ca = load i8, ptr %i.bz, align 8, !dbg !12049, !range !1083, !alias.scope !12010, !noalias !12011, !noundef !786
  %i.cb = icmp eq i8 %i.ca, %.fr, !dbg !12050
  br i1 %i.cb, label %.thread, label %_RNCINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB8_8RawTableTNtNtCs74LoFwSioHw_4http6method6MethodINtNtCslVf3eO13on1_7matchit6router6RouterINtNtCs1xwejQucwHj_5alloc4sync3ArcDINtNtNtCs3oUPovFnLWP_4core3ops8function2FnTINtNtBW_7request7RequestNtNtNtCsaCYLheajBls_5hyper4body8incoming8IncomingEIB29_NtNtNtCsbaWXNhtWAp9_11foundations9telemetry8settings17TelemetrySettingsEEEp6OutputINtNtB2O_3pin3PinINtNtB2d_5boxed3BoxDNtNtNtB2O_6future6future6Futurep6OutputINtNtB2O_6result6ResultINtNtBW_8response8ResponseINtNtNtCsefgzIPu8p8D_14http_body_util11combinators8box_body7BoxBodyNtNtCs8QTyv2gZm5j_5bytes5bytes5BytesIB6h_DNtNtB2O_5error5ErrorNtNtB2O_6marker4SendNtBa7_4SyncEL_EEEzEBa5_EL_EEBa5_Bap_EL_EEEE4findNCNvMNtBa_11rustc_entryINtNtBa_3map7HashMapBS_B1t_NtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateE11rustc_entry0E0B4L_.exit.thread.i, !dbg !12050, !prof !939

._crit_edge.i:                                    ; preds = %_RNCINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB8_8RawTableTNtNtCs74LoFwSioHw_4http6method6MethodINtNtCslVf3eO13on1_7matchit6router6RouterINtNtCs1xwejQucwHj_5alloc4sync3ArcDINtNtNtCs3oUPovFnLWP_4core3ops8function2FnTINtNtBW_7request7RequestNtNtNtCsaCYLheajBls_5hyper4body8incoming8IncomingEIB29_NtNtNtCsbaWXNhtWAp9_11foundations9telemetry8settings17TelemetrySettingsEEEp6OutputINtNtB2O_3pin3PinINtNtB2d_5boxed3BoxDNtNtNtB2O_6future6future6Futurep6OutputINtNtB2O_6result6ResultINtNtBW_8response8ResponseINtNtNtCsefgzIPu8p8D_14http_body_util11combinators8box_body7BoxBodyNtNtCs8QTyv2gZm5j_5bytes5bytes5BytesIB6h_DNtNtB2O_5error5ErrorNtNtB2O_6marker4SendNtBa7_4SyncEL_EEEzEBa5_EL_EEBa5_Bap_EL_EEEE4findNCNvMNtBa_11rustc_entryINtNtBa_3map7HashMapBS_B1t_NtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateE11rustc_entry0E0B4L_.exit.thread.i, %.split
  %i.cc = icmp eq <16 x i8> %.sroa.0.0.copyload.i27.i, splat (i8 -1), !dbg !12056
  %i.cd = bitcast <16 x i1> %i.cc to i16, !dbg !12057
  %i.ce = icmp eq i16 %i.cd, 0, !dbg !12058
  br i1 %i.ce, label %bb.h, label %_RINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB6_8RawTableTNtNtCs74LoFwSioHw_4http6method6MethodINtNtCslVf3eO13on1_7matchit6router6RouterINtNtCs1xwejQucwHj_5alloc4sync3ArcDINtNtNtCs3oUPovFnLWP_4core3ops8function2FnTINtNtBU_7request7RequestNtNtNtCsaCYLheajBls_5hyper4body8incoming8IncomingEIB27_NtNtNtCsbaWXNhtWAp9_11foundations9telemetry8settings17TelemetrySettingsEEEp6OutputINtNtB2M_3pin3PinINtNtB2b_5boxed3BoxDNtNtNtB2M_6future6future6Futurep6OutputINtNtB2M_6result6ResultINtNtBU_8response8ResponseINtNtNtCsefgzIPu8p8D_14http_body_util11combinators8box_body7BoxBodyNtNtCs8QTyv2gZm5j_5bytes5bytes5BytesIB6f_DNtNtB2M_5error5ErrorNtNtB2M_6marker4SendNtBa5_4SyncEL_EEEzEBa3_EL_EEBa3_Ban_EL_EEEE4findNCNvMNtB8_11rustc_entryINtNtB8_3map7HashMapBQ_B1r_NtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateE11rustc_entry0EB4J_.exit, !dbg !12058, !prof !863

_RNCINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB8_8RawTableTNtNtCs74LoFwSioHw_4http6method6MethodINtNtCslVf3eO13on1_7matchit6router6RouterINtNtCs1xwejQucwHj_5alloc4sync3ArcDINtNtNtCs3oUPovFnLWP_4core3ops8function2FnTINtNtBW_7request7RequestNtNtNtCsaCYLheajBls_5hyper4body8incoming8IncomingEIB29_NtNtNtCsbaWXNhtWAp9_11foundations9telemetry8settings17TelemetrySettingsEEEp6OutputINtNtB2O_3pin3PinINtNtB2d_5boxed3BoxDNtNtNtB2O_6future6future6Futurep6OutputINtNtB2O_6result6ResultINtNtBW_8response8ResponseINtNtNtCsefgzIPu8p8D_14http_body_util11combinators8box_body7BoxBodyNtNtCs8QTyv2gZm5j_5bytes5bytes5BytesIB6h_DNtNtB2O_5error5ErrorNtNtB2O_6marker4SendNtBa7_4SyncEL_EEEzEBa5_EL_EEBa5_Bap_EL_EEEE4findNCNvMNtBa_11rustc_entryINtNtBa_3map7HashMapBS_B1t_NtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateE11rustc_entry0E0B4L_.exit.thread.i: ; preds = %.lr.ph.i
  %i.cf = add i16 %.sroa.06.0.i34.i, -1, !dbg !12054
  %i.cg = and i16 %i.cf, %.sroa.06.0.i34.i, !dbg !12055 ; 2 uses
  %.not.i.not.i = icmp eq i16 %i.cg, 0, !dbg !12039
  br i1 %.not.i.not.i, label %._crit_edge.i, label %.lr.ph.i, !dbg !12040

bb.h:                                             ; preds = %._crit_edge.i
  %i.ch = add i64 %.sroa.9.0.i.i, 16, !dbg !12059 ; 2 uses
  %i.ci = add i64 %.sroa.01.0.i.i, %i.ch, !dbg !12060
  br label %.split, !dbg !12061

.thread:                                          ; preds = %_RNCINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB8_8RawTableTNtNtCs74LoFwSioHw_4http6method6MethodINtNtCslVf3eO13on1_7matchit6router6RouterINtNtCs1xwejQucwHj_5alloc4sync3ArcDINtNtNtCs3oUPovFnLWP_4core3ops8function2FnTINtNtBW_7request7RequestNtNtNtCsaCYLheajBls_5hyper4body8incoming8IncomingEIB29_NtNtNtCsbaWXNhtWAp9_11foundations9telemetry8settings17TelemetrySettingsEEEp6OutputINtNtB2O_3pin3PinINtNtB2d_5boxed3BoxDNtNtNtB2O_6future6future6Futurep6OutputINtNtB2O_6result6ResultINtNtBW_8response8ResponseINtNtNtCsefgzIPu8p8D_14http_body_util11combinators8box_body7BoxBodyNtNtCs8QTyv2gZm5j_5bytes5bytes5BytesIB6h_DNtNtB2O_5error5ErrorNtNtB2O_6marker4SendNtBa7_4SyncEL_EEEzEBa5_EL_EEBa5_Bap_EL_EEEE4findNCNvMNtBa_11rustc_entryINtNtBa_3map7HashMapBS_B1t_NtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateE11rustc_entry0E0B4L_.exit.i.us.us, %.lr.ph.i
  %.us-phi = phi ptr [ %i.by, %.lr.ph.i ], [ %i.aa, %_RNCINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB8_8RawTableTNtNtCs74LoFwSioHw_4http6method6MethodINtNtCslVf3eO13on1_7matchit6router6RouterINtNtCs1xwejQucwHj_5alloc4sync3ArcDINtNtNtCs3oUPovFnLWP_4core3ops8function2FnTINtNtBW_7request7RequestNtNtNtCsaCYLheajBls_5hyper4body8incoming8IncomingEIB29_NtNtNtCsbaWXNhtWAp9_11foundations9telemetry8settings17TelemetrySettingsEEEp6OutputINtNtB2O_3pin3PinINtNtB2d_5boxed3BoxDNtNtNtB2O_6future6future6Futurep6OutputINtNtB2O_6result6ResultINtNtBW_8response8ResponseINtNtNtCsefgzIPu8p8D_14http_body_util11combinators8box_body7BoxBodyNtNtCs8QTyv2gZm5j_5bytes5bytes5BytesIB6h_DNtNtB2O_5error5ErrorNtNtB2O_6marker4SendNtBa7_4SyncEL_EEEzEBa5_EL_EEBa5_Bap_EL_EEEE4findNCNvMNtBa_11rustc_entryINtNtBa_3map7HashMapBS_B1t_NtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateE11rustc_entry0E0B4L_.exit.i.us.us ], !dbg !12065
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !12065
  store ptr %.us-phi, ptr %i.cj, align 8, !dbg !12065
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !12065
  store ptr %1, ptr %i.ck, align 8, !dbg !12065
  store i8 -1, ptr %0, align 8, !dbg !12065
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs74LoFwSioHw_4http6method6MethodECsbaWXNhtWAp9_11foundations.exit, !dbg !12066

.split.us:                                        ; preds = %.split.i.us.us
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !12065
  store ptr %i.az, ptr %i.cl, align 8, !dbg !12065
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !12065
  store ptr %1, ptr %i.cm, align 8, !dbg !12065
  store i8 -1, ptr %0, align 8, !dbg !12065
  %i.cn = icmp eq i64 %i.m, 0, !dbg !12067
  br i1 %i.cn, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs74LoFwSioHw_4http6method6MethodECsbaWXNhtWAp9_11foundations.exit, label %bb.i, !dbg !12067

bb.i:                                             ; preds = %.split.us
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.o, i64 noundef range(i64 1, 0) %i.m, i64 noundef 1) #19, !dbg !12068, !noalias !12023
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs74LoFwSioHw_4http6method6MethodECsbaWXNhtWAp9_11foundations.exit, !dbg !12069

_RINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB6_8RawTableTNtNtCs74LoFwSioHw_4http6method6MethodINtNtCslVf3eO13on1_7matchit6router6RouterINtNtCs1xwejQucwHj_5alloc4sync3ArcDINtNtNtCs3oUPovFnLWP_4core3ops8function2FnTINtNtBU_7request7RequestNtNtNtCsaCYLheajBls_5hyper4body8incoming8IncomingEIB27_NtNtNtCsbaWXNhtWAp9_11foundations9telemetry8settings17TelemetrySettingsEEEp6OutputINtNtB2M_3pin3PinINtNtB2b_5boxed3BoxDNtNtNtB2M_6future6future6Futurep6OutputINtNtB2M_6result6ResultINtNtBU_8response8ResponseINtNtNtCsefgzIPu8p8D_14http_body_util11combinators8box_body7BoxBodyNtNtCs8QTyv2gZm5j_5bytes5bytes5BytesIB6f_DNtNtB2M_5error5ErrorNtNtB2M_6marker4SendNtBa5_4SyncEL_EEEzEBa3_EL_EEBa3_Ban_EL_EEEE4findNCNvMNtB8_11rustc_entryINtNtB8_3map7HashMapBQ_B1r_NtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateE11rustc_entry0EB4J_.exit: ; preds = %._crit_edge.i.us30, %._crit_edge.i.us, %._crit_edge.i
  invoke void @_RINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB6_8RawTableTNtNtCs74LoFwSioHw_4http6method6MethodINtNtCslVf3eO13on1_7matchit6router6RouterINtNtCs1xwejQucwHj_5alloc4sync3ArcDINtNtNtCs3oUPovFnLWP_4core3ops8function2FnTINtNtBU_7request7RequestNtNtNtCsaCYLheajBls_5hyper4body8incoming8IncomingEIB27_NtNtNtCsbaWXNhtWAp9_11foundations9telemetry8settings17TelemetrySettingsEEEp6OutputINtNtB2M_3pin3PinINtNtB2b_5boxed3BoxDNtNtNtB2M_6future6future6Futurep6OutputINtNtB2M_6result6ResultINtNtBU_8response8ResponseINtNtNtCsefgzIPu8p8D_14http_body_util11combinators8box_body7BoxBodyNtNtCs8QTyv2gZm5j_5bytes5bytes5BytesIB6f_DNtNtB2M_5error5ErrorNtNtB2M_6marker4SendNtBa5_4SyncEL_EEEzEBa3_EL_EEBa3_Ban_EL_EEEE7reserveNCINvNtB8_3map11make_hasherBQ_B1r_NtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateE0EB4J_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1, i64 noundef 1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.a)
          to label %bb.j unwind label %bb.b, !dbg !12070

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs74LoFwSioHw_4http6method6MethodECsbaWXNhtWAp9_11foundations.exit: ; preds = %bb.i, %.split.us, %.thread, %bb.j
  ret void, !dbg !12071

bb.j:                                             ; preds = %_RINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB6_8RawTableTNtNtCs74LoFwSioHw_4http6method6MethodINtNtCslVf3eO13on1_7matchit6router6RouterINtNtCs1xwejQucwHj_5alloc4sync3ArcDINtNtNtCs3oUPovFnLWP_4core3ops8function2FnTINtNtBU_7request7RequestNtNtNtCsaCYLheajBls_5hyper4body8incoming8IncomingEIB27_NtNtNtCsbaWXNhtWAp9_11foundations9telemetry8settings17TelemetrySettingsEEEp6OutputINtNtB2M_3pin3PinINtNtB2b_5boxed3BoxDNtNtNtB2M_6future6future6Futurep6OutputINtNtB2M_6result6ResultINtNtBU_8response8ResponseINtNtNtCsefgzIPu8p8D_14http_body_util11combinators8box_body7BoxBodyNtNtCs8QTyv2gZm5j_5bytes5bytes5BytesIB6f_DNtNtB2M_5error5ErrorNtNtB2M_6marker4SendNtBa5_4SyncEL_EEEzEBa3_EL_EEBa3_Ban_EL_EEEE4findNCNvMNtB8_11rustc_entryINtNtB8_3map7HashMapBQ_B1r_NtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateE11rustc_entry0EB4J_.exit
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !dbg !12072
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !12073
  store ptr %1, ptr %.sroa.4.0..sroa_idx, align 8, !dbg !12073
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !12073
  store i64 %i.b, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !12073
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs74LoFwSioHw_4http6method6MethodECsbaWXNhtWAp9_11foundations.exit, !dbg !12027
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMNtNtCsb6T6P0NKlCh_2h25frame4dataINtB2_4DataINtNtNtCsaCYLheajBls_5hyper5proto2h27SendBufNtNtCs8QTyv2gZm5j_5bytes5bytes5BytesEE3newCsbaWXNhtWAp9_11foundations(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, i32 noundef %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(40) %2) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !12074 {
bb.a:
  %i.a = icmp eq i32 %1, 0, !dbg !12078
  br i1 %i.a, label %bb.c, label %bb.b, !dbg !12079, !prof !863

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40, !dbg !12080
  store i32 %1, ptr %i.b, align 8, !dbg !12080
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %2, i64 40, i1 false), !dbg !12080
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 46, !dbg !12080
  store i8 0, ptr %i.c, align 2, !dbg !12080
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 44, !dbg !12080
  store i8 0, ptr %i.d, align 4, !dbg !12080
  ret void, !dbg !12081

bb.c:                                             ; preds = %bb.a
  invoke void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @59, i64 noundef 38, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @60) #28
          to label %bb.e unwind label %bb.d, !dbg !12082

bb.d:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsaCYLheajBls_5hyper5proto2h27SendBufNtNtCs8QTyv2gZm5j_5bytes5bytes5BytesEECsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef align 8 dereferenceable(40) %2) #27
          to label %bb.g unwind label %bb.f, !dbg !12083

bb.e:                                             ; preds = %bb.c
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.f = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #26, !dbg !12084
  unreachable, !dbg !12084

bb.g:                                             ; preds = %bb.d
  resume { ptr, i32 } %i.e, !dbg !12084
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMNtNtCsdra7vpBasQ9_7dashmap6mapref5entryINtB2_5EntryINtNtCs1xwejQucwHj_5alloc6borrow3CoweENtNtNtCsgtgatFLTNh8_8governor5state9in_memory13InMemoryStateE10or_defaultCsbaWXNhtWAp9_11foundations(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(48) %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !12085 {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 9 uses
  %i.b = load i64, ptr %1, align 8, !dbg !12196, !range !1078, !noundef !786
  %.not = icmp eq i64 %i.b, -2, !dbg !12196
  br i1 %.not, label %bb.b, label %bb.g, !dbg !12197

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !12198
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !12199
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.a, ptr noundef nonnull align 8 dereferenceable(40) %i.c, i64 40, i1 false), !dbg !12198
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 32, !dbg !12200
  %2 = load ptr, ptr %i.d, align 8, !dbg !12200, !nonnull !786, !noundef !786 ; 2 uses
  %3 = getelementptr inbounds i8, ptr %2, i64 -32, !dbg !12201
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 24, !dbg !12202
  %i.f = load ptr, ptr %i.e, align 8, !dbg !12202, !nonnull !786, !align !806, !noundef !786
  %4 = getelementptr inbounds i8, ptr %2, i64 -8, !dbg !12203
  store ptr %i.f, ptr %0, align 8, !dbg !12204
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !12204
  store ptr %3, ptr %i.g, align 8, !dbg !12204
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !12204
  store ptr %4, ptr %i.h, align 8, !dbg !12204
  %i.i = load i64, ptr %i.a, align 8, !dbg !12205, !range !1067, !alias.scope !12180, !noundef !786
  %i.j = icmp eq i64 %i.i, -1, !dbg !12205
  br i1 %i.j, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc6borrow3CoweEECsbaWXNhtWAp9_11foundations.exit, label %bb.c, !dbg !12205

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECsbaWXNhtWAp9_11foundations.exit.i unwind label %bb.d, !dbg !12206

bb.d:                                             ; preds = %bb.c
  %i.k = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVechEECsbaWXNhtWAp9_11foundations.exit.i.i.i unwind label %bb.e, !dbg !12207

bb.e:                                             ; preds = %bb.d
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #26, !dbg !12206
  unreachable, !dbg !12206

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVechEECsbaWXNhtWAp9_11foundations.exit.i.i.i: ; preds = %bb.d
  resume { ptr, i32 } %i.k, !dbg !12206

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECsbaWXNhtWAp9_11foundations.exit.i: ; preds = %bb.c
  call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a), !dbg !12208
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc6borrow3CoweEECsbaWXNhtWAp9_11foundations.exit, !dbg !12205

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc6borrow3CoweEECsbaWXNhtWAp9_11foundations.exit: ; preds = %bb.b, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECsbaWXNhtWAp9_11foundations.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !12209
  br label %bb.f, !dbg !12210

bb.f:                                             ; preds = %bb.g, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc6borrow3CoweEECsbaWXNhtWAp9_11foundations.exit
  ret void, !dbg !12211

bb.g:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12181), !dbg !12212
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12182), !dbg !12212
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 24, !dbg !12213
  %i.n = load ptr, ptr %i.m, align 8, !dbg !12213, !alias.scope !12182, !noalias !12181, !nonnull !786, !align !806, !noundef !786 ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8, !dbg !12214
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !12215
  %i.q = load i64, ptr %i.p, align 8, !dbg !12215, !alias.scope !12182, !noalias !12181, !noundef !786
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 40, !dbg !12216
  %i.s = load i64, ptr %i.r, align 8, !dbg !12216, !alias.scope !12182, !noalias !12181, !noundef !786 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12188), !dbg !12217
  %i.t = load ptr, ptr %i.o, align 8, !dbg !12218, !alias.scope !12188, !noalias !12189, !nonnull !786, !noundef !786 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.s, !dbg !12219 ; 2 uses
  %i.v = load i8, ptr %i.u, align 1, !dbg !12220, !noalias !12192, !noundef !786
  %i.w = and i8 %i.v, 1, !dbg !12221
  %i.x = zext nneg i8 %i.w to i64, !dbg !12221
  %i.y = getelementptr inbounds nuw i8, ptr %i.n, i64 24, !dbg !12222 ; 2 uses
  %i.z = lshr i64 %i.q, 57, !dbg !12223
  %i.aa = trunc nuw nsw i64 %i.z to i8, !dbg !12224 ; 2 uses
  %i.ab = add i64 %i.s, -16, !dbg !12225
  %i.ac = getelementptr inbounds nuw i8, ptr %i.n, i64 16, !dbg !12226
  %i.ad = load i64, ptr %i.ac, align 8, !dbg !12226, !alias.scope !12188, !noalias !12189, !noundef !786
  %i.ae = and i64 %i.ad, %i.ab, !dbg !12227
  store i8 %i.aa, ptr %i.u, align 1, !dbg !12228, !noalias !12192
  %i.af = getelementptr i8, ptr %i.t, i64 %i.ae, !dbg !12229
  %i.ag = getelementptr i8, ptr %i.af, i64 16, !dbg !12229
  store i8 %i.aa, ptr %i.ag, align 1, !dbg !12230, !noalias !12192
  %i.ah = load <2 x i64>, ptr %i.y, align 8, !dbg !12222, !alias.scope !12188, !noalias !12189
  %i.ai = insertelement <2 x i64> <i64 poison, i64 -1>, i64 %i.x, i64 0, !dbg !12222
  %i.aj = sub <2 x i64> %i.ah, %i.ai, !dbg !12222
  store <2 x i64> %i.aj, ptr %i.y, align 8, !dbg !12222, !alias.scope !12188, !noalias !12189
  %i.ak = sub nsw i64 0, %i.s, !dbg !12231
  %i.al = getelementptr inbounds [32 x i8], ptr %i.t, i64 %i.ak, !dbg !12232 ; 2 uses
  %i.am = getelementptr inbounds i8, ptr %i.al, i64 -32, !dbg !12233 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.am, ptr noundef nonnull readonly align 8 dereferenceable(48) %1, i64 24, i1 false), !dbg !12234, !noalias !12194
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds i8, ptr %i.al, i64 -8, !dbg !12234 ; 2 uses
  store i64 0, ptr %.sroa.4.0..sroa_idx.i, align 8, !dbg !12234, !noalias !12195
  store ptr %i.n, ptr %0, align 8, !dbg !12235, !alias.scope !12181, !noalias !12182
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !12235
  store ptr %i.am, ptr %i.an, align 8, !dbg !12235, !alias.scope !12181, !noalias !12182
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !12235
  store ptr %.sroa.4.0..sroa_idx.i, ptr %i.ao, align 8, !dbg !12235, !alias.scope !12181, !noalias !12182
  br label %bb.f, !dbg !12236
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvMNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5wakerNtB2_5Waker6notify(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !12237 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 10 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [40 x i8], align 8                ; 9 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !12344
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !12344
  call void @_RINvMs_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5waker5EntryE5drainNtNtNtCs3oUPovFnLWP_4core3ops5range9RangeFullECsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d), !dbg !12345
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !12346
  %i.f = load ptr, ptr %i.c, align 8, !dbg !12347, !nonnull !786, !noundef !786 ; 2 uses
  %i.g = load ptr, ptr %i.e, align 8, !dbg !12348, !nonnull !786, !noundef !786
  %i.h = icmp eq ptr %i.f, %i.g, !dbg !12349
  br i1 %i.h, label %._crit_edge, label %.lr.ph, !dbg !12312

.lr.ph:                                           ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  br label %bb.d, !dbg !12312

._crit_edge:                                      ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5waker5EntryECsbaWXNhtWAp9_11foundations.exit4, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !12350
  call void @_RNvXs5_NtNtCs1xwejQucwHj_5alloc3vec5drainINtB5_5DrainNtNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5waker5EntryENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.c), !dbg !12351
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !12352
  ret void, !dbg !12353

bb.b:                                             ; preds = %bb.h
  %i.j = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !12313), !dbg !12350
  call void @llvm.experimental.noalias.scope.decl(metadata !12314), !dbg !12354
  call void @llvm.experimental.noalias.scope.decl(metadata !12315), !dbg !12355
  call void @llvm.experimental.noalias.scope.decl(metadata !12316), !dbg !12356
  %i.k = load ptr, ptr %i.a, align 8, !dbg !12357, !alias.scope !12317, !nonnull !786, !noundef !786
  %i.l = atomicrmw sub ptr %i.k, i64 1 release, align 8, !dbg !12358, !noalias !12317
  %i.m = icmp eq i64 %i.l, 1, !dbg !12359
  br i1 %i.m, label %bb.c, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5waker5EntryECsbaWXNhtWAp9_11foundations.exit, !dbg !12359

bb.c:                                             ; preds = %bb.b
  fence acquire, !dbg !12360
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc7context5InnerE9drop_slowCs24u0wB4eMVt_17opentelemetry_sdk(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a) #25
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5waker5EntryECsbaWXNhtWAp9_11foundations.exit unwind label %bb.j, !dbg !12361

bb.d:                                             ; preds = %.lr.ph, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5waker5EntryECsbaWXNhtWAp9_11foundations.exit4
  %i.n = phi ptr [ %i.f, %.lr.ph ], [ %i.ad, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5waker5EntryECsbaWXNhtWAp9_11foundations.exit4 ] ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 24, !dbg !12362
  store ptr %i.o, ptr %i.c, align 8, !dbg !12363
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.n, i64 24, i1 false), !dbg !12364
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !12365
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !dbg !12365
  %i.p = load i64, ptr %i.i, align 8, !dbg !12366, !noundef !786
  %.val = load ptr, ptr %i.a, align 8, !dbg !12367, !nonnull !786, !noundef !786
  %i.q = getelementptr inbounds nuw i8, ptr %.val, i64 24, !dbg !12368
  %i.r = cmpxchg ptr %i.q, i64 0, i64 %i.p acq_rel acquire, align 8, !dbg !12369
  %.sroa.18.0.in.i.i = extractvalue { i64, i1 } %i.r, 1, !dbg !12370
  br i1 %.sroa.18.0.in.i.i, label %bb.e, label %bb.f, !dbg !12371

bb.e:                                             ; preds = %bb.d
  %i.s = load ptr, ptr %i.a, align 8, !dbg !12372, !nonnull !786, !noundef !786
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16, !dbg !12373
  %i.u = load ptr, ptr %i.t, align 8, !dbg !12373, !nonnull !786, !noundef !786
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 40, !dbg !12374 ; 2 uses
  %i.w = atomicrmw xchg ptr %i.v, i32 1 release, align 4, !dbg !12375
  %i.x = icmp eq i32 %i.w, -1, !dbg !12376
  br i1 %i.x, label %bb.h, label %bb.f, !dbg !12376

bb.f:                                             ; preds = %bb.e, %bb.h, %bb.d
  call void @llvm.experimental.noalias.scope.decl(metadata !12339), !dbg !12350
  call void @llvm.experimental.noalias.scope.decl(metadata !12340), !dbg !12377
  call void @llvm.experimental.noalias.scope.decl(metadata !12341), !dbg !12378
  call void @llvm.experimental.noalias.scope.decl(metadata !12342), !dbg !12379
  %i.y = load ptr, ptr %i.a, align 8, !dbg !12380, !alias.scope !12343, !nonnull !786, !noundef !786
  %i.z = atomicrmw sub ptr %i.y, i64 1 release, align 8, !dbg !12381, !noalias !12343
  %i.aa = icmp eq i64 %i.z, 1, !dbg !12382
  br i1 %i.aa, label %bb.g, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5waker5EntryECsbaWXNhtWAp9_11foundations.exit4, !dbg !12382

bb.g:                                             ; preds = %bb.f
  fence acquire, !dbg !12383
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc7context5InnerE9drop_slowCs24u0wB4eMVt_17opentelemetry_sdk(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a) #25
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5waker5EntryECsbaWXNhtWAp9_11foundations.exit4 unwind label %bb.i, !dbg !12384

bb.h:                                             ; preds = %bb.e
  %i.ab = invoke noundef zeroext i1 @_RNvNtNtNtNtCsaL1QbXo9JQH_3std3sys4sync5futex4unix10futex_wake(ptr noundef nonnull align 4 %i.v)
          to label %bb.f unwind label %bb.b, !dbg !12385 ; 0 uses

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5waker5EntryECsbaWXNhtWAp9_11foundations.exit: ; preds = %bb.b, %bb.c, %bb.i
  %.pn = phi { ptr, i32 } [ %i.ac, %bb.i ], [ %i.j, %bb.c ], [ %i.j, %bb.b ]
  invoke void @_RNvXs5_NtNtCs1xwejQucwHj_5alloc3vec5drainINtB5_5DrainNtNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5waker5EntryENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.c)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs1xwejQucwHj_5alloc3vec5drain5DrainNtNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5waker5EntryEECsbaWXNhtWAp9_11foundations.exit unwind label %bb.j, !dbg !12386

bb.i:                                             ; preds = %bb.g
  %i.ac = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5waker5EntryECsbaWXNhtWAp9_11foundations.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5waker5EntryECsbaWXNhtWAp9_11foundations.exit4: ; preds = %bb.f, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !12350
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !12350
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !12346
  %i.ad = load ptr, ptr %i.c, align 8, !dbg !12347, !nonnull !786, !noundef !786 ; 2 uses
  %i.ae = load ptr, ptr %i.e, align 8, !dbg !12348, !nonnull !786, !noundef !786
  %i.af = icmp eq ptr %i.ad, %i.ae, !dbg !12349
  br i1 %i.af, label %._crit_edge, label %bb.d, !dbg !12312

bb.j:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5waker5EntryECsbaWXNhtWAp9_11foundations.exit, %bb.c
  %i.ag = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #26, !dbg !12387
  unreachable, !dbg !12387

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs1xwejQucwHj_5alloc3vec5drain5DrainNtNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5waker5EntryEECsbaWXNhtWAp9_11foundations.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5waker5EntryECsbaWXNhtWAp9_11foundations.exit
  resume { ptr, i32 } %.pn, !dbg !12387
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMNtNtNtCsbaWXNhtWAp9_11foundations9telemetry7tracing7testingNtB2_9TestTrace4iter(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(128) %1) unnamed_addr #0 !dbg !12388 {
bb.a:
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #19, !dbg !12397
  %i.a = tail call noundef align 8 dereferenceable_or_null(8) ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef range(i64 8, 2313) 8, i64 noundef range(i64 8, 129) 8) #19, !dbg !12398 ; 3 uses
  %i.b = icmp eq ptr %i.a, null, !dbg !12399
  br i1 %i.b, label %bb.b, label %_RNvNtCs1xwejQucwHj_5alloc5boxed14box_new_uninit.exit, !dbg !12400, !prof !863
end_hunk_0
begin_hunk_1_@llvm.memset.p0.i64
!11890 = !DILocation(line: 1083, column: 14, scope: !11857, inlinedAt: !11864)
!11891 = !DILocation(line: 48, column: 13, scope: !11826)
!11892 = !DILocation(line: 0, scope: !11826)
!11893 = !DILocation(line: 54, column: 6, scope: !11822)
!11894 = distinct !DISubprogram(name: "rustc_entry<http::method::Method, matchit::router::Router<alloc::sync::Arc<(dyn core::ops::function::Fn<(http::request::Request<hyper::body::incoming::Incoming>, alloc::sync::Arc<foundations::telemetry::settings::TelemetrySettings, alloc::alloc::Global>), Output=core::pin::Pin<alloc::boxed::Box<(dyn core::future::future::Future<Output=core::result::Result<http::response::Response<http_body_util::combinators::box_body::BoxBody<bytes::bytes::Bytes, alloc::boxed::Box<(dyn core::error::Error + core::marker::Send + core::marker::Sync), alloc::alloc::Global>>>, !>> + core::marker::Send), alloc::alloc::Global>>> + core::marker::Send + core::marker::Sync), alloc::alloc::Global>>, std::hash::random::RandomState, alloc::alloc::Global>", linkageName: "_RNvMNtCskt5MLIAl8nl_9hashbrown11rustc_entryINtNtB4_3map7HashMapNtNtCs74LoFwSioHw_4http6method6MethodINtNtCslVf3eO13on1_7matchit6router6RouterINtNtCs1xwejQucwHj_5alloc4sync3ArcDINtNtNtCs3oUPovFnLWP_4core3ops8function2FnTINtNtB13_7request7RequestNtNtNtCsaCYLheajBls_5hyper4body8incoming8IncomingEIB2g_NtNtNtCsbaWXNhtWAp9_11foundations9telemetry8settings17TelemetrySettingsEEEp6OutputINtNtB2V_3pin3PinINtNtB2k_5boxed3BoxDNtNtNtB2V_6future6future6Futurep6OutputINtNtB2V_6result6ResultINtNtB13_8response8ResponseINtNtNtCsefgzIPu8p8D_14http_body_util11combinators8box_body7BoxBodyNtNtCs8QTyv2gZm5j_5bytes5bytes5BytesIB6p_DNtNtB2V_5error5ErrorNtNtB2V_6marker4SendNtBag_4SyncEL_EEEzEBae_EL_EEBae_Bay_EL_EENtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateE11rustc_entryB4T_", scope: !886, file: !1193, line: 35, type: !787, scopeLine: 35, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !786)
!11895 = distinct !DISubprogram(name: "make_hash<http::method::Method, std::hash::random::RandomState>", linkageName: "_RINvNtCskt5MLIAl8nl_9hashbrown3map9make_hashNtNtCs74LoFwSioHw_4http6method6MethodNtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateECsbaWXNhtWAp9_11foundations", scope: !885, file: !883, line: 236, type: !787, scopeLine: 236, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !786)
!11896 = distinct !{!11896, !"_RINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB6_8RawTableTNtNtCs74LoFwSioHw_4http6method6MethodINtNtCslVf3eO13on1_7matchit6router6RouterINtNtCs1xwejQucwHj_5alloc4sync3ArcDINtNtNtCs3oUPovFnLWP_4core3ops8function2FnTINtNtBU_7request7RequestNtNtNtCsaCYLheajBls_5hyper4body8incoming8IncomingEIB27_NtNtNtCsbaWXNhtWAp9_11foundations9telemetry8settings17TelemetrySettingsEEEp6OutputINtNtB2M_3pin3PinINtNtB2b_5boxed3BoxDNtNtNtB2M_6future6future6Futurep6OutputINtNtB2M_6result6ResultINtNtBU_8response8ResponseINtNtNtCsefgzIPu8p8D_14http_body_util11combinators8box_body7BoxBodyNtNtCs8QTyv2gZm5j_5bytes5bytes5BytesIB6f_DNtNtB2M_5error5ErrorNtNtB2M_6marker4SendNtBa5_4SyncEL_EEEzEBa3_EL_EEBa3_Ban_EL_EEEE4findNCNvMNtB8_11rustc_entryINtNtB8_3map7HashMapBQ_B1r_NtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateE11rustc_entry0EB4J_"}
!11897 = distinct !{!11897, !11896, !"_RINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB6_8RawTableTNtNtCs74LoFwSioHw_4http6method6MethodINtNtCslVf3eO13on1_7matchit6router6RouterINtNtCs1xwejQucwHj_5alloc4sync3ArcDINtNtNtCs3oUPovFnLWP_4core3ops8function2FnTINtNtBU_7request7RequestNtNtNtCsaCYLheajBls_5hyper4body8incoming8IncomingEIB27_NtNtNtCsbaWXNhtWAp9_11foundations9telemetry8settings17TelemetrySettingsEEEp6OutputINtNtB2M_3pin3PinINtNtB2b_5boxed3BoxDNtNtNtB2M_6future6future6Futurep6OutputINtNtB2M_6result6ResultINtNtBU_8response8ResponseINtNtNtCsefgzIPu8p8D_14http_body_util11combinators8box_body7BoxBodyNtNtCs8QTyv2gZm5j_5bytes5bytes5BytesIB6f_DNtNtB2M_5error5ErrorNtNtB2M_6marker4SendNtBa5_4SyncEL_EEEzEBa3_EL_EEBa3_Ban_EL_EEEE4findNCNvMNtB8_11rustc_entryINtNtB8_3map7HashMapBQ_B1r_NtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateE11rustc_entry0EB4J_: argument 0"}
!11898 = distinct !DILexicalBlock(scope: !11894, file: !1193, line: 36, column: 9)
!11899 = distinct !DILexicalBlock(scope: !11898, file: !1193, line: 37, column: 69)
!11900 = distinct !{!11900, !11896, !"_RINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB6_8RawTableTNtNtCs74LoFwSioHw_4http6method6MethodINtNtCslVf3eO13on1_7matchit6router6RouterINtNtCs1xwejQucwHj_5alloc4sync3ArcDINtNtNtCs3oUPovFnLWP_4core3ops8function2FnTINtNtBU_7request7RequestNtNtNtCsaCYLheajBls_5hyper4body8incoming8IncomingEIB27_NtNtNtCsbaWXNhtWAp9_11foundations9telemetry8settings17TelemetrySettingsEEEp6OutputINtNtB2M_3pin3PinINtNtB2b_5boxed3BoxDNtNtNtB2M_6future6future6Futurep6OutputINtNtB2M_6result6ResultINtNtBU_8response8ResponseINtNtNtCsefgzIPu8p8D_14http_body_util11combinators8box_body7BoxBodyNtNtCs8QTyv2gZm5j_5bytes5bytes5BytesIB6f_DNtNtB2M_5error5ErrorNtNtB2M_6marker4SendNtBa5_4SyncEL_EEEzEBa3_EL_EEBa3_Ban_EL_EEEE4findNCNvMNtB8_11rustc_entryINtNtB8_3map7HashMapBQ_B1r_NtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateE11rustc_entry0EB4J_: argument 1"}
!11901 = distinct !{!11901, !"_RNvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_13RawTableInner10find_inner"}
!11902 = distinct !{!11902, !11901, !"_RNvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_13RawTableInner10find_inner: argument 0"}
!11903 = distinct !DISubprogram(name: "find<(http::method::Method, matchit::router::Router<alloc::sync::Arc<(dyn core::ops::function::Fn<(http::request::Request<hyper::body::incoming::Incoming>, alloc::sync::Arc<foundations::telemetry::settings::TelemetrySettings, alloc::alloc::Global>), Output=core::pin::Pin<alloc::boxed::Box<(dyn core::future::future::Future<Output=core::result::Result<http::response::Response<http_body_util::combinators::box_body::BoxBody<bytes::bytes::Bytes, alloc::boxed::Box<(dyn core::error::Error + core::marker::Send + core::marker::Sync), alloc::alloc::Global>>>, !>> + core::marker::Send), alloc::alloc::Global>>> + core::marker::Send + core::marker::Sync), alloc::alloc::Global>>), alloc::alloc::Global, hashbrown::rustc_entry::{impl#0}::rustc_entry::{closure_env#0}<http::method::Method, matchit::router::Router<alloc::sync::Arc<(dyn core::ops::function::Fn<(http::request::Request<hyper::body::incoming::Incoming>, alloc::sync::Arc<foundations::telemetry::settings::TelemetrySettings, alloc::alloc::Global>), Output=core::pin::Pin<alloc::boxed::Box<(dyn core::future::future::Future<Output=core::result::Result<http::response::Response<http_body_util::combinators::box_body::BoxBody<bytes::bytes::Bytes, alloc::boxed::Box<(dyn core::error::Error + core::marker::Send + core::marker::Sync), alloc::alloc::Global>>>, !>> + core::marker::Send), alloc::alloc::Global>>> + core::marker::Send + core::marker::Sync), alloc::alloc::Global>>, std::hash::random::RandomState, alloc::alloc::Global>>", linkageName: "_RINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB6_8RawTableTNtNtCs74LoFwSioHw_4http6method6MethodINtNtCslVf3eO13on1_7matchit6router6RouterINtNtCs1xwejQucwHj_5alloc4sync3ArcDINtNtNtCs3oUPovFnLWP_4core3ops8function2FnTINtNtBU_7request7RequestNtNtNtCsaCYLheajBls_5hyper4body8incoming8IncomingEIB27_NtNtNtCsbaWXNhtWAp9_11foundations9telemetry8settings17TelemetrySettingsEEEp6OutputINtNtB2M_3pin3PinINtNtB2b_5boxed3BoxDNtNtNtB2M_6future6future6Futurep6OutputINtNtB2M_6result6ResultINtNtBU_8response8ResponseINtNtNtCsefgzIPu8p8D_14http_body_util11combinators8box_body7BoxBodyNtNtCs8QTyv2gZm5j_5bytes5bytes5BytesIB6f_DNtNtB2M_5error5ErrorNtNtB2M_6marker4SendNtBa5_4SyncEL_EEEzEBa3_EL_EEBa3_Ban_EL_EEEE4findNCNvMNtB8_11rustc_entryINtNtB8_3map7HashMapBQ_B1r_NtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateE11rustc_entry0EB4J_", scope: !889, file: !887, line: 1192, type: !787, scopeLine: 1192, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !786)
!11904 = distinct !DILocation(line: 37, column: 40, scope: !11899)
!11905 = distinct !DILocation(line: 1202, column: 18, scope: !11903, inlinedAt: !11904)
!11906 = distinct !DILocation(line: 2009, column: 24, scope: !37, inlinedAt: !11905)
!11907 = distinct !DILocation(line: 2010, column: 34, scope: !40, inlinedAt: !11905)
!11908 = distinct !{!11908, !11901, !"_RNvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_13RawTableInner10find_inner: argument 1"}
!11909 = distinct !DILocation(line: 2027, column: 51, scope: !43, inlinedAt: !11905)
!11910 = distinct !DILocation(line: 2624, column: 37, scope: !42, inlinedAt: !11909)
!11911 = distinct !{!11911, !"_RNvNtNtNtCs3oUPovFnLWP_4core9core_arch3x864sse215__mm_loadu_si128"}
!11912 = distinct !{!11912, !11911, !"_RNvNtNtNtCs3oUPovFnLWP_4core9core_arch3x864sse215__mm_loadu_si128: argument 0"}
!11913 = distinct !DILocation(line: 2027, column: 34, scope: !43, inlinedAt: !11905)
!11914 = distinct !DILocation(line: 49, column: 24, scope: !47, inlinedAt: !11913)
!11915 = distinct !DILocation(line: 1341, column: 5, scope: !46, inlinedAt: !11914)
!11916 = distinct !DILocation(line: 2029, column: 30, scope: !51, inlinedAt: !11905)
!11917 = distinct !DILocation(line: 83, column: 23, scope: !50, inlinedAt: !11916)
!11918 = distinct !DILocation(line: 84, column: 21, scope: !55, inlinedAt: !11916)
!11919 = distinct !DILocation(line: 2029, column: 24, scope: !911, inlinedAt: !11905)
!11920 = distinct !DILocation(line: 103, column: 26, scope: !58, inlinedAt: !11919)
!11921 = distinct !DILocation(line: 41, column: 18, scope: !57, inlinedAt: !11920)
!11922 = distinct !DILocation(line: 70, column: 21, scope: !61, inlinedAt: !11921)
!11923 = distinct !DISubprogram(name: "sub<(http::method::Method, matchit::router::Router<alloc::sync::Arc<(dyn core::ops::function::Fn<(http::request::Request<hyper::body::incoming::Incoming>, alloc::sync::Arc<foundations::telemetry::settings::TelemetrySettings, alloc::alloc::Global>), Output=core::pin::Pin<alloc::boxed::Box<(dyn core::future::future::Future<Output=core::result::Result<http::response::Response<http_body_util::combinators::box_body::BoxBody<bytes::bytes::Bytes, alloc::boxed::Box<(dyn core::error::Error + core::marker::Send + core::marker::Sync), alloc::alloc::Global>>>, !>> + core::marker::Send), alloc::alloc::Global>>> + core::marker::Send + core::marker::Sync), alloc::alloc::Global>>)>", linkageName: "_RNvMNtNtCs3oUPovFnLWP_4core3ptr7mut_ptrOTNtNtCs74LoFwSioHw_4http6method6MethodINtNtCslVf3eO13on1_7matchit6router6RouterINtNtCs1xwejQucwHj_5alloc4sync3ArcDINtNtNtB6_3ops8function2FnTINtNtBH_7request7RequestNtNtNtCsaCYLheajBls_5hyper4body8incoming8IncomingEIB1U_NtNtNtCsbaWXNhtWAp9_11foundations9telemetry8settings17TelemetrySettingsEEEp6OutputINtNtB6_3pin3PinINtNtB1Y_5boxed3BoxDNtNtNtB6_6future6future6Futurep6OutputINtNtB6_6result6ResultINtNtBH_8response8ResponseINtNtNtCsefgzIPu8p8D_14http_body_util11combinators8box_body7BoxBodyNtNtCs8QTyv2gZm5j_5bytes5bytes5BytesIB5L_DNtNtB6_5error5ErrorNtNtB6_6marker4SendNtB9y_4SyncEL_EEEzEB9w_EL_EEB9w_B9P_EL_EEE3subB4g_", scope: !898, file: !896, line: 1015, type: !787, scopeLine: 1015, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !786)
!11924 = distinct !DISubprogram(name: "from_base_index<(http::method::Method, matchit::router::Router<alloc::sync::Arc<(dyn core::ops::function::Fn<(http::request::Request<hyper::body::incoming::Incoming>, alloc::sync::Arc<foundations::telemetry::settings::TelemetrySettings, alloc::alloc::Global>), Output=core::pin::Pin<alloc::boxed::Box<(dyn core::future::future::Future<Output=core::result::Result<http::response::Response<http_body_util::combinators::box_body::BoxBody<bytes::bytes::Bytes, alloc::boxed::Box<(dyn core::error::Error + core::marker::Send + core::marker::Sync), alloc::alloc::Global>>>, !>> + core::marker::Send), alloc::alloc::Global>>> + core::marker::Send + core::marker::Sync), alloc::alloc::Global>>)>", linkageName: "_RNvMs4_NtCskt5MLIAl8nl_9hashbrown3rawINtB5_6BucketTNtNtCs74LoFwSioHw_4http6method6MethodINtNtCslVf3eO13on1_7matchit6router6RouterINtNtCs1xwejQucwHj_5alloc4sync3ArcDINtNtNtCs3oUPovFnLWP_4core3ops8function2FnTINtNtBR_7request7RequestNtNtNtCsaCYLheajBls_5hyper4body8incoming8IncomingEIB24_NtNtNtCsbaWXNhtWAp9_11foundations9telemetry8settings17TelemetrySettingsEEEp6OutputINtNtB2J_3pin3PinINtNtB28_5boxed3BoxDNtNtNtB2J_6future6future6Futurep6OutputINtNtB2J_6result6ResultINtNtBR_8response8ResponseINtNtNtCsefgzIPu8p8D_14http_body_util11combinators8box_body7BoxBodyNtNtCs8QTyv2gZm5j_5bytes5bytes5BytesIB6c_DNtNtB2J_5error5ErrorNtNtB2J_6marker4SendNtBa2_4SyncEL_EEEzEBa0_EL_EEBa0_Bak_EL_EEEE15from_base_indexB4G_", scope: !915, file: !887, line: 302, type: !787, scopeLine: 302, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !786)
!11925 = distinct !DISubprogram(name: "bucket<(http::method::Method, matchit::router::Router<alloc::sync::Arc<(dyn core::ops::function::Fn<(http::request::Request<hyper::body::incoming::Incoming>, alloc::sync::Arc<foundations::telemetry::settings::TelemetrySettings, alloc::alloc::Global>), Output=core::pin::Pin<alloc::boxed::Box<(dyn core::future::future::Future<Output=core::result::Result<http::response::Response<http_body_util::combinators::box_body::BoxBody<bytes::bytes::Bytes, alloc::boxed::Box<(dyn core::error::Error + core::marker::Send + core::marker::Sync), alloc::alloc::Global>>>, !>> + core::marker::Send), alloc::alloc::Global>>> + core::marker::Send + core::marker::Sync), alloc::alloc::Global>>), alloc::alloc::Global>", linkageName: "_RNvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB5_8RawTableTNtNtCs74LoFwSioHw_4http6method6MethodINtNtCslVf3eO13on1_7matchit6router6RouterINtNtCs1xwejQucwHj_5alloc4sync3ArcDINtNtNtCs3oUPovFnLWP_4core3ops8function2FnTINtNtBT_7request7RequestNtNtNtCsaCYLheajBls_5hyper4body8incoming8IncomingEIB26_NtNtNtCsbaWXNhtWAp9_11foundations9telemetry8settings17TelemetrySettingsEEEp6OutputINtNtB2L_3pin3PinINtNtB2a_5boxed3BoxDNtNtNtB2L_6future6future6Futurep6OutputINtNtB2L_6result6ResultINtNtBT_8response8ResponseINtNtNtCsefgzIPu8p8D_14http_body_util11combinators8box_body7BoxBodyNtNtCs8QTyv2gZm5j_5bytes5bytes5BytesIB6e_DNtNtB2L_5error5ErrorNtNtB2L_6marker4SendNtBa4_4SyncEL_EEEzEBa2_EL_EEBa2_Bam_EL_EEEE6bucketB4I_", scope: !889, file: !887, line: 738, type: !787, scopeLine: 738, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !786)
!11926 = distinct !DISubprogram(name: "{closure#0}<(http::method::Method, matchit::router::Router<alloc::sync::Arc<(dyn core::ops::function::Fn<(http::request::Request<hyper::body::incoming::Incoming>, alloc::sync::Arc<foundations::telemetry::settings::TelemetrySettings, alloc::alloc::Global>), Output=core::pin::Pin<alloc::boxed::Box<(dyn core::future::future::Future<Output=core::result::Result<http::response::Response<http_body_util::combinators::box_body::BoxBody<bytes::bytes::Bytes, alloc::boxed::Box<(dyn core::error::Error + core::marker::Send + core::marker::Sync), alloc::alloc::Global>>>, !>> + core::marker::Send), alloc::alloc::Global>>> + core::marker::Send + core::marker::Sync), alloc::alloc::Global>>), alloc::alloc::Global, hashbrown::rustc_entry::{impl#0}::rustc_entry::{closure_env#0}<http::method::Method, matchit::router::Router<alloc::sync::Arc<(dyn core::ops::function::Fn<(http::request::Request<hyper::body::incoming::Incoming>, alloc::sync::Arc<foundations::telemetry::settings::TelemetrySettings, alloc::alloc::Global>), Output=core::pin::Pin<alloc::boxed::Box<(dyn core::future::future::Future<Output=core::result::Result<http::response::Response<http_body_util::combinators::box_body::BoxBody<bytes::bytes::Bytes, alloc::boxed::Box<(dyn core::error::Error + core::marker::Send + core::marker::Sync), alloc::alloc::Global>>>, !>> + core::marker::Send), alloc::alloc::Global>>> + core::marker::Send + core::marker::Sync), alloc::alloc::Global>>, std::hash::random::RandomState, alloc::alloc::Global>>", linkageName: "_RNCINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB8_8RawTableTNtNtCs74LoFwSioHw_4http6method6MethodINtNtCslVf3eO13on1_7matchit6router6RouterINtNtCs1xwejQucwHj_5alloc4sync3ArcDINtNtNtCs3oUPovFnLWP_4core3ops8function2FnTINtNtBW_7request7RequestNtNtNtCsaCYLheajBls_5hyper4body8incoming8IncomingEIB29_NtNtNtCsbaWXNhtWAp9_11foundations9telemetry8settings17TelemetrySettingsEEEp6OutputINtNtB2O_3pin3PinINtNtB2d_5boxed3BoxDNtNtNtB2O_6future6future6Futurep6OutputINtNtB2O_6result6ResultINtNtBW_8response8ResponseINtNtNtCsefgzIPu8p8D_14http_body_util11combinators8box_body7BoxBodyNtNtCs8QTyv2gZm5j_5bytes5bytes5BytesIB6h_DNtNtB2O_5error5ErrorNtNtB2O_6marker4SendNtBa7_4SyncEL_EEEzEBa5_EL_EEBa5_Bap_EL_EEEE4findNCNvMNtBa_11rustc_entryINtNtBa_3map7HashMapBS_B1t_NtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateE11rustc_entry0E0B4L_", scope: !917, file: !887, line: 1202, type: !787, scopeLine: 1202, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !786)
!11927 = distinct !DILocation(line: 2034, column: 27, scope: !63, inlinedAt: !11905)
!11928 = distinct !DILocation(line: 1202, column: 56, scope: !11926, inlinedAt: !11927)
!11929 = distinct !DILocation(line: 765, column: 18, scope: !11925, inlinedAt: !11928)
!11930 = distinct !DILocation(line: 329, column: 36, scope: !11924, inlinedAt: !11929)
!11931 = distinct !DISubprogram(name: "as_ptr<(http::method::Method, matchit::router::Router<alloc::sync::Arc<(dyn core::ops::function::Fn<(http::request::Request<hyper::body::incoming::Incoming>, alloc::sync::Arc<foundations::telemetry::settings::TelemetrySettings, alloc::alloc::Global>), Output=core::pin::Pin<alloc::boxed::Box<(dyn core::future::future::Future<Output=core::result::Result<http::response::Response<http_body_util::combinators::box_body::BoxBody<bytes::bytes::Bytes, alloc::boxed::Box<(dyn core::error::Error + core::marker::Send + core::marker::Sync), alloc::alloc::Global>>>, !>> + core::marker::Send), alloc::alloc::Global>>> + core::marker::Send + core::marker::Sync), alloc::alloc::Global>>)>", linkageName: "_RNvMs4_NtCskt5MLIAl8nl_9hashbrown3rawINtB5_6BucketTNtNtCs74LoFwSioHw_4http6method6MethodINtNtCslVf3eO13on1_7matchit6router6RouterINtNtCs1xwejQucwHj_5alloc4sync3ArcDINtNtNtCs3oUPovFnLWP_4core3ops8function2FnTINtNtBR_7request7RequestNtNtNtCsaCYLheajBls_5hyper4body8incoming8IncomingEIB24_NtNtNtCsbaWXNhtWAp9_11foundations9telemetry8settings17TelemetrySettingsEEEp6OutputINtNtB2J_3pin3PinINtNtB28_5boxed3BoxDNtNtNtB2J_6future6future6Futurep6OutputINtNtB2J_6result6ResultINtNtBR_8response8ResponseINtNtNtCsefgzIPu8p8D_14http_body_util11combinators8box_body7BoxBodyNtNtCs8QTyv2gZm5j_5bytes5bytes5BytesIB6c_DNtNtB2J_5error5ErrorNtNtB2J_6marker4SendNtBa2_4SyncEL_EEEzEBa0_EL_EEBa0_Bak_EL_EEEE6as_ptrB4G_", scope: !915, file: !887, line: 412, type: !787, scopeLine: 412, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !786)
!11932 = distinct !DISubprogram(name: "as_ref<(http::method::Method, matchit::router::Router<alloc::sync::Arc<(dyn core::ops::function::Fn<(http::request::Request<hyper::body::incoming::Incoming>, alloc::sync::Arc<foundations::telemetry::settings::TelemetrySettings, alloc::alloc::Global>), Output=core::pin::Pin<alloc::boxed::Box<(dyn core::future::future::Future<Output=core::result::Result<http::response::Response<http_body_util::combinators::box_body::BoxBody<bytes::bytes::Bytes, alloc::boxed::Box<(dyn core::error::Error + core::marker::Send + core::marker::Sync), alloc::alloc::Global>>>, !>> + core::marker::Send), alloc::alloc::Global>>> + core::marker::Send + core::marker::Sync), alloc::alloc::Global>>)>", linkageName: "_RNvMs4_NtCskt5MLIAl8nl_9hashbrown3rawINtB5_6BucketTNtNtCs74LoFwSioHw_4http6method6MethodINtNtCslVf3eO13on1_7matchit6router6RouterINtNtCs1xwejQucwHj_5alloc4sync3ArcDINtNtNtCs3oUPovFnLWP_4core3ops8function2FnTINtNtBR_7request7RequestNtNtNtCsaCYLheajBls_5hyper4body8incoming8IncomingEIB24_NtNtNtCsbaWXNhtWAp9_11foundations9telemetry8settings17TelemetrySettingsEEEp6OutputINtNtB2J_3pin3PinINtNtB28_5boxed3BoxDNtNtNtB2J_6future6future6Futurep6OutputINtNtB2J_6result6ResultINtNtBR_8response8ResponseINtNtNtCsefgzIPu8p8D_14http_body_util11combinators8box_body7BoxBodyNtNtCs8QTyv2gZm5j_5bytes5bytes5BytesIB6c_DNtNtB2J_5error5ErrorNtNtB2J_6marker4SendNtBa2_4SyncEL_EEEzEBa0_EL_EEBa0_Bak_EL_EEEE6as_refB4G_", scope: !915, file: !887, line: 534, type: !787, scopeLine: 534, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !786)
!11933 = distinct !DILocation(line: 1202, column: 70, scope: !11926, inlinedAt: !11927)
!11934 = distinct !DILocation(line: 535, column: 25, scope: !11932, inlinedAt: !11933)
!11935 = distinct !DILocation(line: 418, column: 40, scope: !11931, inlinedAt: !11934)
!11936 = distinct !{!11936, !"_RNvXsl_NtCs74LoFwSioHw_4http6methodNtB5_6MethodNtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eq"}
!11937 = distinct !{!11937, !11936, !"_RNvXsl_NtCs74LoFwSioHw_4http6methodNtB5_6MethodNtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eq: argument 0"}
!11938 = distinct !DISubprogram(name: "{closure#0}<http::method::Method, matchit::router::Router<alloc::sync::Arc<(dyn core::ops::function::Fn<(http::request::Request<hyper::body::incoming::Incoming>, alloc::sync::Arc<foundations::telemetry::settings::TelemetrySettings, alloc::alloc::Global>), Output=core::pin::Pin<alloc::boxed::Box<(dyn core::future::future::Future<Output=core::result::Result<http::response::Response<http_body_util::combinators::box_body::BoxBody<bytes::bytes::Bytes, alloc::boxed::Box<(dyn core::error::Error + core::marker::Send + core::marker::Sync), alloc::alloc::Global>>>, !>> + core::marker::Send), alloc::alloc::Global>>> + core::marker::Send + core::marker::Sync), alloc::alloc::Global>>, std::hash::random::RandomState, alloc::alloc::Global>", linkageName: "_RNCNvMNtCskt5MLIAl8nl_9hashbrown11rustc_entryINtNtB6_3map7HashMapNtNtCs74LoFwSioHw_4http6method6MethodINtNtCslVf3eO13on1_7matchit6router6RouterINtNtCs1xwejQucwHj_5alloc4sync3ArcDINtNtNtCs3oUPovFnLWP_4core3ops8function2FnTINtNtB15_7request7RequestNtNtNtCsaCYLheajBls_5hyper4body8incoming8IncomingEIB2i_NtNtNtCsbaWXNhtWAp9_11foundations9telemetry8settings17TelemetrySettingsEEEp6OutputINtNtB2X_3pin3PinINtNtB2m_5boxed3BoxDNtNtNtB2X_6future6future6Futurep6OutputINtNtB2X_6result6ResultINtNtB15_8response8ResponseINtNtNtCsefgzIPu8p8D_14http_body_util11combinators8box_body7BoxBodyNtNtCs8QTyv2gZm5j_5bytes5bytes5BytesIB6r_DNtNtB2X_5error5ErrorNtNtB2X_6marker4SendNtBai_4SyncEL_EEEzEBag_EL_EEBag_BaA_EL_EENtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateE11rustc_entry0B4V_", scope: !1199, file: !1193, line: 37, type: !840, scopeLine: 37, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !786)
!11939 = distinct !DILocation(line: 1202, column: 48, scope: !11926, inlinedAt: !11927)
!11940 = distinct !{!11940, !"_RNvXsq_NtCs74LoFwSioHw_4http6methodNtB5_5InnerNtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eq"}
!11941 = distinct !{!11941, !11940, !"_RNvXsq_NtCs74LoFwSioHw_4http6methodNtB5_5InnerNtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eq: argument 0"}
!11942 = distinct !DISubprogram(name: "eq", linkageName: "_RNvXsl_NtCs74LoFwSioHw_4http6methodNtB5_6MethodNtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eq", scope: !12009, file: !12007, line: 44, type: !787, scopeLine: 44, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !786)
!11943 = distinct !DILocation(line: 37, column: 59, scope: !11938, inlinedAt: !11939)
!11944 = distinct !{!11944, !"_RNCINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB8_8RawTableTNtNtCs74LoFwSioHw_4http6method6MethodINtNtCslVf3eO13on1_7matchit6router6RouterINtNtCs1xwejQucwHj_5alloc4sync3ArcDINtNtNtCs3oUPovFnLWP_4core3ops8function2FnTINtNtBW_7request7RequestNtNtNtCsaCYLheajBls_5hyper4body8incoming8IncomingEIB29_NtNtNtCsbaWXNhtWAp9_11foundations9telemetry8settings17TelemetrySettingsEEEp6OutputINtNtB2O_3pin3PinINtNtB2d_5boxed3BoxDNtNtNtB2O_6future6future6Futurep6OutputINtNtB2O_6result6ResultINtNtBW_8response8ResponseINtNtNtCsefgzIPu8p8D_14http_body_util11combinators8box_body7BoxBodyNtNtCs8QTyv2gZm5j_5bytes5bytes5BytesIB6h_DNtNtB2O_5error5ErrorNtNtB2O_6marker4SendNtBa7_4SyncEL_EEEzEBa5_EL_EEBa5_Bap_EL_EEEE4findNCNvMNtBa_11rustc_entryINtNtBa_3map7HashMapBS_B1t_NtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateE11rustc_entry0E0B4L_"}
!11945 = distinct !{!11945, !11944, !"_RNCINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB8_8RawTableTNtNtCs74LoFwSioHw_4http6method6MethodINtNtCslVf3eO13on1_7matchit6router6RouterINtNtCs1xwejQucwHj_5alloc4sync3ArcDINtNtNtCs3oUPovFnLWP_4core3ops8function2FnTINtNtBW_7request7RequestNtNtNtCsaCYLheajBls_5hyper4body8incoming8IncomingEIB29_NtNtNtCsbaWXNhtWAp9_11foundations9telemetry8settings17TelemetrySettingsEEEp6OutputINtNtB2O_3pin3PinINtNtB2d_5boxed3BoxDNtNtNtB2O_6future6future6Futurep6OutputINtNtB2O_6result6ResultINtNtBW_8response8ResponseINtNtNtCsefgzIPu8p8D_14http_body_util11combinators8box_body7BoxBodyNtNtCs8QTyv2gZm5j_5bytes5bytes5BytesIB6h_DNtNtB2O_5error5ErrorNtNtB2O_6marker4SendNtBa7_4SyncEL_EEEzEBa5_EL_EEBa5_Bap_EL_EEEE4findNCNvMNtBa_11rustc_entryINtNtBa_3map7HashMapBS_B1t_NtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateE11rustc_entry0E0B4L_: argument 0"}
!11946 = distinct !{!11946, !11936, !"_RNvXsl_NtCs74LoFwSioHw_4http6methodNtB5_6MethodNtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eq: argument 1"}
!11947 = distinct !{!11947, !11940, !"_RNvXsq_NtCs74LoFwSioHw_4http6methodNtB5_5InnerNtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eq: argument 1"}
!11948 = distinct !DISubprogram(name: "eq", linkageName: "_RNvXsq_NtCs74LoFwSioHw_4http6methodNtB5_5InnerNtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eq", scope: !12012, file: !12007, line: 52, type: !787, scopeLine: 52, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !786)
!11949 = distinct !DILocation(line: 45, column: 19, scope: !11942, inlinedAt: !11943)
!11950 = distinct !DILexicalBlock(scope: !11948, file: !12007, line: 52, column: 17)
!11951 = distinct !DILexicalBlock(scope: !11950, file: !12007, line: 52, column: 17)
!11952 = distinct !DISubprogram(name: "eq", linkageName: "_RNvXs2_NtNtCs74LoFwSioHw_4http6method9extensionNtB5_15InlineExtensionNtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eq", scope: !12014, file: !12007, line: 331, type: !787, scopeLine: 331, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !786)
!11953 = distinct !DISubprogram(name: "eq<http::method::extension::InlineExtension, http::method::extension::InlineExtension>", linkageName: "_RNvXs7_NtNtCs3oUPovFnLWP_4core3cmp5implsRNtNtNtCs74LoFwSioHw_4http6method9extension15InlineExtensionNtB7_9PartialEq2eqCsbaWXNhtWAp9_11foundations", scope: !924, file: !921, line: 2398, type: !787, scopeLine: 2398, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !786)
!11954 = distinct !DILexicalBlock(scope: !11951, file: !12007, line: 52, column: 17)
!11955 = distinct !DILocation(line: 65, column: 21, scope: !11954, inlinedAt: !11949)
!11956 = distinct !DILocation(line: 2399, column: 13, scope: !12015, inlinedAt: !11955)
!11957 = distinct !DISubprogram(name: "spec_eq<u8, u8, 15>", linkageName: "_RNvXs7_NtNtCs3oUPovFnLWP_4core5array8equalityhINtB5_11SpecArrayEqhKjf_E7spec_eqCsbaWXNhtWAp9_11foundations", scope: !12018, file: !12016, line: 153, type: !787, scopeLine: 153, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !786)
!11958 = distinct !DISubprogram(name: "eq<u8, u8, 15>", linkageName: "_RNvXNtNtCs3oUPovFnLWP_4core5array8equalityAhjf_NtNtB6_3cmp9PartialEq2eqCsbaWXNhtWAp9_11foundations", scope: !12019, file: !12016, line: 10, type: !787, scopeLine: 10, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !786)
!11959 = distinct !DILocation(line: 331, column: 21, scope: !11952, inlinedAt: !11956)
!11960 = distinct !DILocation(line: 11, column: 9, scope: !11958, inlinedAt: !11959)
!11961 = distinct !DILocation(line: 2034, column: 20, scope: !63, inlinedAt: !11905)
!11962 = distinct !DILocation(line: 628, column: 51, scope: !60, inlinedAt: !11922)
!11963 = distinct !DILocation(line: 104, column: 25, scope: !68, inlinedAt: !11919)
!11964 = distinct !DILocation(line: 2039, column: 29, scope: !51, inlinedAt: !11905)
!11965 = distinct !DILocation(line: 92, column: 14, scope: !70, inlinedAt: !11964)
!11966 = distinct !DILocation(line: 83, column: 23, scope: !69, inlinedAt: !11965)
!11967 = distinct !DILocation(line: 84, column: 21, scope: !71, inlinedAt: !11965)
!11968 = distinct !DILocation(line: 2039, column: 16, scope: !51, inlinedAt: !11905)
!11969 = distinct !DILocation(line: 2043, column: 23, scope: !51, inlinedAt: !11905)
!11970 = distinct !DISubprogram(name: "eq<[u8], alloc::alloc::Global>", linkageName: "_RNvXsg_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxShENtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eqCsbaWXNhtWAp9_11foundations", scope: !12020, file: !848, line: 2161, type: !787, scopeLine: 2161, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !786)
!11971 = distinct !DISubprogram(name: "eq", linkageName: "_RNvXs7_NtNtCs74LoFwSioHw_4http6method9extensionNtB5_18AllocatedExtensionNtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eq", scope: !12021, file: !12007, line: 335, type: !787, scopeLine: 335, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !786)
!11972 = distinct !DISubprogram(name: "eq<http::method::extension::AllocatedExtension, http::method::extension::AllocatedExtension>", linkageName: "_RNvXs7_NtNtCs3oUPovFnLWP_4core3cmp5implsRNtNtNtCs74LoFwSioHw_4http6method9extension18AllocatedExtensionNtB7_9PartialEq2eqCsbaWXNhtWAp9_11foundations", scope: !924, file: !921, line: 2398, type: !787, scopeLine: 2398, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !786)
!11973 = distinct !DILexicalBlock(scope: !11951, file: !12007, line: 52, column: 17)
!11974 = distinct !DILocation(line: 67, column: 24, scope: !11973, inlinedAt: !11949)
!11975 = distinct !DILocation(line: 2399, column: 13, scope: !11972, inlinedAt: !11974)
!11976 = distinct !DILocation(line: 335, column: 21, scope: !11971, inlinedAt: !11975)
!11977 = distinct !DISubprogram(name: "eq<u8, u8>", linkageName: "_RNvXNtNtCs3oUPovFnLWP_4core5slice3cmpShNtNtB6_3cmp9PartialEq2eqCsbaWXNhtWAp9_11foundations", scope: !934, file: !931, line: 19, type: !787, scopeLine: 19, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !786)
!11978 = distinct !DILexicalBlock(scope: !11977, file: !931, line: 20, column: 9)
!11979 = distinct !DILocation(line: 2162, column: 9, scope: !11970, inlinedAt: !11976)
!11980 = distinct !DISubprogram(name: "equal_same_length<u8, u8>", linkageName: "_RNvXs3_NtNtCs3oUPovFnLWP_4core5slice3cmphINtB5_14SlicePartialEqhE17equal_same_lengthCsbaWXNhtWAp9_11foundations", scope: !940, file: !931, line: 151, type: !787, scopeLine: 151, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !786)
!11981 = distinct !DILexicalBlock(scope: !11980, file: !931, line: 156, column: 13)
!11982 = distinct !DILocation(line: 24, column: 22, scope: !11978, inlinedAt: !11979)
!11983 = distinct !DILocation(line: 54, column: 5, scope: !11894)
!11984 = distinct !DILocation(line: 848, column: 1, scope: !312, inlinedAt: !11983)
!11985 = distinct !DILocation(line: 848, column: 1, scope: !313, inlinedAt: !11984)
!11986 = distinct !DILocation(line: 848, column: 1, scope: !318, inlinedAt: !11985)
!11987 = distinct !DILocation(line: 848, column: 1, scope: !317, inlinedAt: !11986)
!11988 = distinct !{!11988, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs74LoFwSioHw_4http6method6MethodECsbaWXNhtWAp9_11foundations"}
!11989 = distinct !{!11989, !11988, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs74LoFwSioHw_4http6method6MethodECsbaWXNhtWAp9_11foundations: argument 0"}
!11990 = distinct !{!11990, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs74LoFwSioHw_4http6method5InnerECsbaWXNhtWAp9_11foundations"}
!11991 = distinct !{!11991, !11990, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs74LoFwSioHw_4http6method5InnerECsbaWXNhtWAp9_11foundations: argument 0"}
!11992 = distinct !DILocation(line: 1995, column: 24, scope: !316, inlinedAt: !11987)
!11993 = distinct !DILocation(line: 554, column: 23, scope: !17, inlinedAt: !11992)
!11994 = distinct !DILocation(line: 436, column: 9, scope: !16, inlinedAt: !11993)
!11995 = distinct !DILocation(line: 321, column: 22, scope: !15, inlinedAt: !11994)
!11996 = distinct !DISubprogram(name: "reserve<http::method::Method, matchit::router::Router<alloc::sync::Arc<(dyn core::ops::function::Fn<(http::request::Request<hyper::body::incoming::Incoming>, alloc::sync::Arc<foundations::telemetry::settings::TelemetrySettings, alloc::alloc::Global>), Output=core::pin::Pin<alloc::boxed::Box<(dyn core::future::future::Future<Output=core::result::Result<http::response::Response<http_body_util::combinators::box_body::BoxBody<bytes::bytes::Bytes, alloc::boxed::Box<(dyn core::error::Error + core::marker::Send + core::marker::Sync), alloc::alloc::Global>>>, !>> + core::marker::Send), alloc::alloc::Global>>> + core::marker::Send + core::marker::Sync), alloc::alloc::Global>>, std::hash::random::RandomState, alloc::alloc::Global>", linkageName: "_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB5_7HashMapNtNtCs74LoFwSioHw_4http6method6MethodINtNtCslVf3eO13on1_7matchit6router6RouterINtNtCs1xwejQucwHj_5alloc4sync3ArcDINtNtNtCs3oUPovFnLWP_4core3ops8function2FnTINtNtBR_7request7RequestNtNtNtCsaCYLheajBls_5hyper4body8incoming8IncomingEIB24_NtNtNtCsbaWXNhtWAp9_11foundations9telemetry8settings17TelemetrySettingsEEEp6OutputINtNtB2J_3pin3PinINtNtB28_5boxed3BoxDNtNtNtB2J_6future6future6Futurep6OutputINtNtB2J_6result6ResultINtNtBR_8response8ResponseINtNtNtCsefgzIPu8p8D_14http_body_util11combinators8box_body7BoxBodyNtNtCs8QTyv2gZm5j_5bytes5bytes5BytesIB6c_DNtNtB2J_5error5ErrorNtNtB2J_6marker4SendNtBa2_4SyncEL_EEEzEBa0_EL_EEBa0_Bak_EL_EENtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateE7reserveB4G_", scope: !886, file: !883, line: 1081, type: !787, scopeLine: 1081, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !786)
!11997 = !DILocation(line: 36, column: 20, scope: !11894)
!11998 = !{!11897}
!11999 = !{!11900}
!12000 = !{!11902}
!12001 = !{!11902, !11897}
!12002 = !{!11908, !11900}
!12003 = !{!11912, !11902, !11908, !11897, !11900}
!12004 = !{!11937}
!12005 = !{!11902, !11908}
!12006 = !{!11941}
!12007 = !DIFile(filename: "src/method.rs", directory: "/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/http-1.5.0", checksumkind: CSK_MD5, checksum: "b9376362ed9054ee26d6ca9c1e50732d")
!12008 = !DINamespace(name: "method", scope: !1200)
!12009 = !DINamespace(name: "{impl#23}", scope: !12008)
!12010 = !{!11941, !11937}
!12011 = !{!11947, !11946, !11945, !11902, !11908, !11897, !11900}
!12012 = !DINamespace(name: "{impl#28}", scope: !12008)
!12013 = !DINamespace(name: "extension", scope: !12008)
!12014 = !DINamespace(name: "{impl#4}", scope: !12013)
!12015 = !DILexicalBlockFile(scope: !11953, file: !921, discriminator: 2)
!12016 = !DIFile(filename: "library/core/src/array/equality.rs", directory: "/rustc/787af2b8c80638c51a4fc8e44f84e6891f243ec7", checksumkind: CSK_MD5, checksum: "2e8ad1e2d89117c8c3eff8a826c8ea1c")
!12017 = !DINamespace(name: "equality", scope: !1201)
!12018 = !DINamespace(name: "{impl#9}", scope: !12017)
!12019 = !DINamespace(name: "{impl#0}", scope: !12017)
!12020 = !DINamespace(name: "{impl#18}", scope: !849)
!12021 = !DINamespace(name: "{impl#9}", scope: !12013)
!12022 = !{!11941, !11947, !11937, !11946, !11945, !11902, !11908, !11897, !11900}
!12023 = !{!11991, !11989}
!12024 = !DILocation(line: 46, column: 18, scope: !11898)
!12025 = !DILocation(line: 36, column: 30, scope: !11894)
!12026 = !DILocation(line: 241, column: 18, scope: !11895, inlinedAt: !11997)
!12027 = !DILocation(line: 54, column: 5, scope: !11894)
!12028 = !DILocation(line: 35, column: 5, scope: !11894)
!12029 = !DILocation(line: 37, column: 40, scope: !11899)
!12030 = !DILocation(line: 1202, column: 18, scope: !11903, inlinedAt: !11904)
!12031 = !DILocation(line: 47, column: 20, scope: !36, inlinedAt: !11906)
!12032 = !DILocation(line: 48, column: 13, scope: !38, inlinedAt: !11906)
!12033 = !DILocation(line: 2452, column: 29, scope: !39, inlinedAt: !11907)
!12034 = !DILocation(line: 0, scope: !40, inlinedAt: !11905)
!12035 = !DILocation(line: 970, column: 18, scope: !41, inlinedAt: !11910)
!12036 = !DILocation(line: 574, column: 14, scope: !44, inlinedAt: !11915)
!12037 = !DILocation(line: 920, column: 36, scope: !48, inlinedAt: !11917)
!12038 = !DILocation(line: 1570, column: 9, scope: !54, inlinedAt: !11918)
!12039 = !DILocation(line: 40, column: 32, scope: !57, inlinedAt: !11920)
!12040 = !DILocation(line: 40, column: 16, scope: !57, inlinedAt: !11920)
!12041 = !DILocation(line: 628, column: 21, scope: !60, inlinedAt: !11922)
!12042 = !DILocation(line: 70, column: 13, scope: !61, inlinedAt: !11921)
!12043 = !DILocation(line: 2032, column: 29, scope: !62, inlinedAt: !11905)
!12044 = !DILocation(line: 1054, column: 47, scope: !11923, inlinedAt: !11930)
!12045 = !DILocation(line: 1054, column: 22, scope: !11923, inlinedAt: !11930)
!12046 = !DILocation(line: 1054, column: 22, scope: !11923, inlinedAt: !11935)
!12047 = !DILocation(line: 37, column: 59, scope: !11938, inlinedAt: !11939)
!12048 = !DILocation(line: 45, column: 19, scope: !11942, inlinedAt: !11943)
!12049 = !DILocation(line: 52, column: 17, scope: !11948, inlinedAt: !11949)
!12050 = !DILocation(line: 52, column: 17, scope: !11951, inlinedAt: !11949)
!12051 = !DILocation(line: 331, column: 21, scope: !11952, inlinedAt: !11956)
!12052 = !DILocation(line: 157, column: 18, scope: !11957, inlinedAt: !11960)
!12053 = !DILocation(line: 460, column: 8, scope: !65, inlinedAt: !11961)
!12054 = !DILocation(line: 486, column: 18, scope: !66, inlinedAt: !11962)
!12055 = !DILocation(line: 28, column: 17, scope: !67, inlinedAt: !11963)
!12056 = !DILocation(line: 920, column: 36, scope: !48, inlinedAt: !11966)
!12057 = !DILocation(line: 1570, column: 9, scope: !54, inlinedAt: !11967)
!12058 = !DILocation(line: 460, column: 8, scope: !65, inlinedAt: !11968)
!12059 = !DILocation(line: 89, column: 9, scope: !72, inlinedAt: !11969)
!12060 = !DILocation(line: 90, column: 9, scope: !72, inlinedAt: !11969)
!12061 = !DILocation(line: 2012, column: 9, scope: !43, inlinedAt: !11905)
!12062 = !DILocation(line: 2162, column: 23, scope: !11970, inlinedAt: !11976)
!12063 = !DILocation(line: 21, column: 12, scope: !11978, inlinedAt: !11979)
!12064 = !DILocation(line: 157, column: 13, scope: !11981, inlinedAt: !11982)
!12065 = !DILocation(line: 38, column: 13, scope: !11899)
!12066 = !DILocation(line: 848, column: 1, scope: !313, inlinedAt: !11984)
!12067 = !DILocation(line: 1994, column: 16, scope: !316, inlinedAt: !11987)
!12068 = !DILocation(line: 175, column: 14, scope: !14, inlinedAt: !11995)
!12069 = !DILocation(line: 1994, column: 13, scope: !316, inlinedAt: !11987)
!12070 = !DILocation(line: 1083, column: 14, scope: !11996, inlinedAt: !12024)
!12071 = !DILocation(line: 54, column: 6, scope: !11894)
!12072 = !DILocation(line: 50, column: 17, scope: !11898)
!12073 = !DILocation(line: 48, column: 13, scope: !11898)
!12074 = distinct !DISubprogram(name: "new<hyper::proto::h2::SendBuf<bytes::bytes::Bytes>>", linkageName: "_RNvMNtNtCsb6T6P0NKlCh_2h25frame4dataINtB2_4DataINtNtNtCsaCYLheajBls_5hyper5proto2h27SendBufNtNtCs8QTyv2gZm5j_5bytes5bytes5BytesEE3newCsbaWXNhtWAp9_11foundations", scope: !866, file: !864, line: 28, type: !787, scopeLine: 28, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !786)
!12075 = distinct !DISubprogram(name: "is_zero", linkageName: "_RNvMNtNtCsb6T6P0NKlCh_2h25frame9stream_idNtB2_8StreamId7is_zero", scope: !12076, file: !1202, line: 60, type: !787, scopeLine: 60, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !786)
!12076 = !DINamespace(name: "StreamId", scope: !1203)
!12077 = !DILocation(line: 29, column: 28, scope: !12074)
!12078 = !DILocation(line: 61, column: 9, scope: !12075, inlinedAt: !12077)
!12079 = !DILocation(line: 29, column: 18, scope: !12074)
!12080 = !DILocation(line: 31, column: 9, scope: !12074)
!12081 = !DILocation(line: 37, column: 6, scope: !12074)
!12082 = !DILocation(line: 29, column: 9, scope: !12074)
!12083 = !DILocation(line: 37, column: 5, scope: !12074)
!12084 = !DILocation(line: 28, column: 5, scope: !12074)
!12085 = distinct !DISubprogram(name: "or_default<alloc::borrow::Cow<str>, governor::state::in_memory::InMemoryState>", linkageName: "_RNvMNtNtCsdra7vpBasQ9_7dashmap6mapref5entryINtB2_5EntryINtNtCs1xwejQucwHj_5alloc6borrow3CoweENtNtNtCsgtgatFLTNh8_8governor5state9in_memory13InMemoryStateE10or_defaultCsbaWXNhtWAp9_11foundations", scope: !12162, file: !12158, line: 45, type: !787, scopeLine: 45, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !786)
!12086 = distinct !DILexicalBlock(scope: !12085, file: !12158, line: 50, column: 13)
!12087 = distinct !DISubprogram(name: "as_ptr<(alloc::borrow::Cow<str>, dashmap::util::SharedValue<governor::state::in_memory::InMemoryState>)>", linkageName: "_RNvMs4_NtNtCscYIHOBAkUpv_9hashbrown3raw5innerINtB5_6BucketTINtNtCs1xwejQucwHj_5alloc6borrow3CoweEINtNtCsdra7vpBasQ9_7dashmap4util11SharedValueNtNtNtCsgtgatFLTNh8_8governor5state9in_memory13InMemoryStateEEE6as_ptrCsbaWXNhtWAp9_11foundations", scope: !12165, file: !12163, line: 513, type: !787, scopeLine: 513, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !786)
!12088 = distinct !DISubprogram(name: "into_ref<alloc::borrow::Cow<str>, governor::state::in_memory::InMemoryState>", linkageName: "_RNvMs4_NtNtCsdra7vpBasQ9_7dashmap6mapref5entryINtB5_13OccupiedEntryINtNtCs1xwejQucwHj_5alloc6borrow3CoweENtNtNtCsgtgatFLTNh8_8governor5state9in_memory13InMemoryStateE8into_refCsbaWXNhtWAp9_11foundations", scope: !12169, file: !12158, line: 208, type: !787, scopeLine: 208, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !786)
!12089 = distinct !DISubprogram(name: "as_ref<(alloc::borrow::Cow<str>, dashmap::util::SharedValue<governor::state::in_memory::InMemoryState>)>", linkageName: "_RNvMs4_NtNtCscYIHOBAkUpv_9hashbrown3raw5innerINtB5_6BucketTINtNtCs1xwejQucwHj_5alloc6borrow3CoweEINtNtCsdra7vpBasQ9_7dashmap4util11SharedValueNtNtNtCsgtgatFLTNh8_8governor5state9in_memory13InMemoryStateEEE6as_refCsbaWXNhtWAp9_11foundations", scope: !12165, file: !12163, line: 682, type: !787, scopeLine: 682, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !786)
!12090 = distinct !DISubprogram(name: "sub<(alloc::borrow::Cow<str>, dashmap::util::SharedValue<governor::state::in_memory::InMemoryState>)>", linkageName: "_RNvMNtNtCs3oUPovFnLWP_4core3ptr7mut_ptrOTINtNtCs1xwejQucwHj_5alloc6borrow3CoweEINtNtCsdra7vpBasQ9_7dashmap4util11SharedValueNtNtNtCsgtgatFLTNh8_8governor5state9in_memory13InMemoryStateEE3subCsbaWXNhtWAp9_11foundations", scope: !898, file: !896, line: 1015, type: !787, scopeLine: 1015, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !786)
!12091 = distinct !DILexicalBlock(scope: !12088, file: !12158, line: 210, column: 13)
!12092 = distinct !DISubprogram(name: "get<governor::state::in_memory::InMemoryState>", linkageName: "_RNvMsX_NtCs3oUPovFnLWP_4core4cellINtB5_10UnsafeCellNtNtNtCsgtgatFLTNh8_8governor5state9in_memory13InMemoryStateE3getCsbaWXNhtWAp9_11foundations", scope: !834, file: !832, line: 2434, type: !787, scopeLine: 2434, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !786)
!12093 = distinct !DISubprogram(name: "as_ptr<governor::state::in_memory::InMemoryState>", linkageName: "_RNvMs1_NtCsdra7vpBasQ9_7dashmap4utilINtB5_11SharedValueNtNtNtCsgtgatFLTNh8_8governor5state9in_memory13InMemoryStateE6as_ptrCsbaWXNhtWAp9_11foundations", scope: !12175, file: !12173, line: 77, type: !787, scopeLine: 77, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !786)
!12094 = distinct !DISubprogram(name: "new<alloc::borrow::Cow<str>, governor::state::in_memory::InMemoryState>", linkageName: "_RNvMs5_NtNtCsdra7vpBasQ9_7dashmap6mapref3oneINtB5_6RefMutINtNtCs1xwejQucwHj_5alloc6borrow3CoweENtNtNtCsgtgatFLTNh8_8governor5state9in_memory13InMemoryStateE3newCsbaWXNhtWAp9_11foundations", scope: !12178, file: !12176, line: 95, type: !787, scopeLine: 95, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !786)
!12095 = distinct !{!12095, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc6borrow3CoweEECsbaWXNhtWAp9_11foundations"}
!12096 = distinct !{!12096, !12095, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc6borrow3CoweEECsbaWXNhtWAp9_11foundations: argument 0"}
!12097 = distinct !DILocation(line: 213, column: 5, scope: !12088, inlinedAt: !12166)
!12098 = distinct !DILocation(line: 848, column: 1, scope: !311, inlinedAt: !12097)
!12099 = distinct !DILocation(line: 848, column: 1, scope: !206, inlinedAt: !12098)
!12100 = distinct !DILocation(line: 848, column: 1, scope: !205, inlinedAt: !12099)
!12101 = distinct !DILocation(line: 848, column: 1, scope: !205, inlinedAt: !12099)
!12102 = distinct !{!12102, !"_RNvMs1_NtNtCsdra7vpBasQ9_7dashmap6mapref5entryINtB5_11VacantEntryINtNtCs1xwejQucwHj_5alloc6borrow3CoweENtNtNtCsgtgatFLTNh8_8governor5state9in_memory13InMemoryStateE6insertCsbaWXNhtWAp9_11foundations"}
!12103 = distinct !{!12103, !12102, !"_RNvMs1_NtNtCsdra7vpBasQ9_7dashmap6mapref5entryINtB5_11VacantEntryINtNtCs1xwejQucwHj_5alloc6borrow3CoweENtNtNtCsgtgatFLTNh8_8governor5state9in_memory13InMemoryStateE6insertCsbaWXNhtWAp9_11foundations: argument 0"}
!12104 = distinct !DILexicalBlock(scope: !12085, file: !12158, line: 51, column: 13)
!12105 = distinct !{!12105, !12102, !"_RNvMs1_NtNtCsdra7vpBasQ9_7dashmap6mapref5entryINtB5_11VacantEntryINtNtCs1xwejQucwHj_5alloc6borrow3CoweENtNtNtCsgtgatFLTNh8_8governor5state9in_memory13InMemoryStateE6insertCsbaWXNhtWAp9_11foundations: argument 1"}
!12106 = distinct !DISubprogram(name: "deref_mut<dashmap::lock::RawRwLock, hashbrown::raw::inner::RawTable<(alloc::borrow::Cow<str>, dashmap::util::SharedValue<governor::state::in_memory::InMemoryState>), hashbrown::raw::inner::alloc::inner::Global>>", linkageName: "_RNvXsp_NtCs7hp7eIiX3bT_8lock_api6rwlockINtB5_16RwLockWriteGuardNtNtCsdra7vpBasQ9_7dashmap4lock9RawRwLockINtNtNtCscYIHOBAkUpv_9hashbrown3raw5inner8RawTableTINtNtCs1xwejQucwHj_5alloc6borrow3CoweEINtNtB13_4util11SharedValueNtNtNtCsgtgatFLTNh8_8governor5state9in_memory13InMemoryStateEEEENtNtNtCs3oUPovFnLWP_4core3ops5deref8DerefMut9deref_mutCsbaWXNhtWAp9_11foundations", scope: !12186, file: !12183, line: 1822, type: !787, scopeLine: 1822, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !786)
!12107 = distinct !DISubprogram(name: "insert<alloc::borrow::Cow<str>, governor::state::in_memory::InMemoryState>", linkageName: "_RNvMs1_NtNtCsdra7vpBasQ9_7dashmap6mapref5entryINtB5_11VacantEntryINtNtCs1xwejQucwHj_5alloc6borrow3CoweENtNtNtCsgtgatFLTNh8_8governor5state9in_memory13InMemoryStateE6insertCsbaWXNhtWAp9_11foundations", scope: !12187, file: !12158, line: 139, type: !787, scopeLine: 139, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !786)
!12108 = distinct !DILocation(line: 51, column: 43, scope: !12104)
!12109 = distinct !DILocation(line: 141, column: 28, scope: !12107, inlinedAt: !12108)
!12110 = distinct !DISubprogram(name: "get<hashbrown::raw::inner::RawTable<(alloc::borrow::Cow<str>, dashmap::util::SharedValue<governor::state::in_memory::InMemoryState>), hashbrown::raw::inner::alloc::inner::Global>>", linkageName: "_RNvMsX_NtCs3oUPovFnLWP_4core4cellINtB5_10UnsafeCellINtNtNtCscYIHOBAkUpv_9hashbrown3raw5inner8RawTableTINtNtCs1xwejQucwHj_5alloc6borrow3CoweEINtNtCsdra7vpBasQ9_7dashmap4util11SharedValueNtNtNtCsgtgatFLTNh8_8governor5state9in_memory13InMemoryStateEEEE3getCsbaWXNhtWAp9_11foundations", scope: !834, file: !832, line: 2434, type: !787, scopeLine: 2434, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !786)
!12111 = distinct !DILocation(line: 1823, column: 41, scope: !12106, inlinedAt: !12109)
!12112 = distinct !{!12112, !"_RNvMs6_NtNtCscYIHOBAkUpv_9hashbrown3raw5innerINtB5_8RawTableTINtNtCs1xwejQucwHj_5alloc6borrow3CoweEINtNtCsdra7vpBasQ9_7dashmap4util11SharedValueNtNtNtCsgtgatFLTNh8_8governor5state9in_memory13InMemoryStateEEE14insert_in_slotCsbaWXNhtWAp9_11foundations"}
!12113 = distinct !{!12113, !12112, !"_RNvMs6_NtNtCscYIHOBAkUpv_9hashbrown3raw5innerINtB5_8RawTableTINtNtCs1xwejQucwHj_5alloc6borrow3CoweEINtNtCsdra7vpBasQ9_7dashmap4util11SharedValueNtNtNtCsgtgatFLTNh8_8governor5state9in_memory13InMemoryStateEEE14insert_in_slotCsbaWXNhtWAp9_11foundations: argument 0"}
!12114 = distinct !{!12114, !12112, !"_RNvMs6_NtNtCscYIHOBAkUpv_9hashbrown3raw5innerINtB5_8RawTableTINtNtCs1xwejQucwHj_5alloc6borrow3CoweEINtNtCsdra7vpBasQ9_7dashmap4util11SharedValueNtNtNtCsgtgatFLTNh8_8governor5state9in_memory13InMemoryStateEEE14insert_in_slotCsbaWXNhtWAp9_11foundations: argument 1"}
!12115 = distinct !DISubprogram(name: "ctrl", linkageName: "_RNvMsa_NtNtCscYIHOBAkUpv_9hashbrown3raw5innerNtB5_13RawTableInner4ctrl", scope: !12190, file: !12163, line: 2794, type: !787, scopeLine: 2794, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !786)
!12116 = distinct !DISubprogram(name: "insert_in_slot<(alloc::borrow::Cow<str>, dashmap::util::SharedValue<governor::state::in_memory::InMemoryState>), hashbrown::raw::inner::alloc::inner::Global>", linkageName: "_RNvMs6_NtNtCscYIHOBAkUpv_9hashbrown3raw5innerINtB5_8RawTableTINtNtCs1xwejQucwHj_5alloc6borrow3CoweEINtNtCsdra7vpBasQ9_7dashmap4util11SharedValueNtNtNtCsgtgatFLTNh8_8governor5state9in_memory13InMemoryStateEEE14insert_in_slotCsbaWXNhtWAp9_11foundations", scope: !12191, file: !12163, line: 1443, type: !787, scopeLine: 1443, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !786)
!12117 = distinct !DILocation(line: 141, column: 39, scope: !12107, inlinedAt: !12108)
!12118 = distinct !DILocation(line: 1444, column: 36, scope: !12116, inlinedAt: !12117)
!12119 = distinct !DISubprogram(name: "add<u8>", linkageName: "_RNvMNtNtCs3oUPovFnLWP_4core3ptr7mut_ptrOh3addCsbaWXNhtWAp9_11foundations", scope: !898, file: !896, line: 936, type: !787, scopeLine: 936, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !786)
!12120 = distinct !DILocation(line: 2797, column: 28, scope: !12115, inlinedAt: !12118)
!12121 = distinct !DISubprogram(name: "from", linkageName: "_RNvXs15_NtNtCs3oUPovFnLWP_4core7convert3numjINtB8_4FrombE4from", scope: !1206, file: !1204, line: 104, type: !787, scopeLine: 104, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !786)
!12122 = distinct !DISubprogram(name: "record_item_insert_at", linkageName: "_RNvMsa_NtNtCscYIHOBAkUpv_9hashbrown3raw5innerNtB5_13RawTableInner21record_item_insert_at", scope: !12190, file: !12163, line: 2630, type: !787, scopeLine: 2630, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !786)
!12123 = distinct !DILexicalBlock(scope: !12116, file: !12163, line: 1444, column: 9)
!12124 = distinct !DILocation(line: 1445, column: 20, scope: !12123, inlinedAt: !12117)
!12125 = distinct !DILocation(line: 2631, column: 29, scope: !12122, inlinedAt: !12124)
!12126 = distinct !DISubprogram(name: "h2", linkageName: "_RNvNtNtCscYIHOBAkUpv_9hashbrown3raw5inner2h2", scope: !12164, file: !12163, line: 150, type: !787, scopeLine: 150, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !786)
!12127 = distinct !DISubprogram(name: "set_ctrl_h2", linkageName: "_RNvMsa_NtNtCscYIHOBAkUpv_9hashbrown3raw5innerNtB5_13RawTableInner11set_ctrl_h2", scope: !12190, file: !12163, line: 2672, type: !787, scopeLine: 2672, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !786)
!12128 = distinct !DILocation(line: 2632, column: 14, scope: !12122, inlinedAt: !12124)
!12129 = distinct !DILocation(line: 2674, column: 30, scope: !12127, inlinedAt: !12128)
!12130 = distinct !DILexicalBlock(scope: !12126, file: !12163, line: 155, column: 5)
!12131 = distinct !DISubprogram(name: "wrapping_sub", linkageName: "_RNvMs9_NtCs3oUPovFnLWP_4core3numj12wrapping_sub", scope: !989, file: !816, line: 2718, type: !787, scopeLine: 2718, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !786)
!12132 = distinct !DISubprogram(name: "set_ctrl", linkageName: "_RNvMsa_NtNtCscYIHOBAkUpv_9hashbrown3raw5innerNtB5_13RawTableInner8set_ctrl", scope: !12190, file: !12163, line: 2738, type: !787, scopeLine: 2738, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !786)
!12133 = distinct !DILocation(line: 2674, column: 14, scope: !12127, inlinedAt: !12128)
!12134 = distinct !DILocation(line: 2763, column: 30, scope: !12132, inlinedAt: !12133)
!12135 = distinct !DILexicalBlock(scope: !12132, file: !12163, line: 2763, column: 9)
!12136 = distinct !DILocation(line: 2767, column: 15, scope: !12135, inlinedAt: !12133)
!12137 = distinct !DILocation(line: 2797, column: 28, scope: !12193, inlinedAt: !12136)
!12138 = distinct !DISubprogram(name: "sub<(alloc::borrow::Cow<str>, dashmap::util::SharedValue<governor::state::in_memory::InMemoryState>)>", linkageName: "_RNvMNtNtCs3oUPovFnLWP_4core3ptr7mut_ptrOTINtNtCs1xwejQucwHj_5alloc6borrow3CoweEINtNtCsdra7vpBasQ9_7dashmap4util11SharedValueNtNtNtCsgtgatFLTNh8_8governor5state9in_memory13InMemoryStateEE3subCsbaWXNhtWAp9_11foundations", scope: !898, file: !896, line: 1015, type: !787, scopeLine: 1015, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !786)
!12139 = distinct !DISubprogram(name: "from_base_index<(alloc::borrow::Cow<str>, dashmap::util::SharedValue<governor::state::in_memory::InMemoryState>)>", linkageName: "_RNvMs4_NtNtCscYIHOBAkUpv_9hashbrown3raw5innerINtB5_6BucketTINtNtCs1xwejQucwHj_5alloc6borrow3CoweEINtNtCsdra7vpBasQ9_7dashmap4util11SharedValueNtNtNtCsgtgatFLTNh8_8governor5state9in_memory13InMemoryStateEEE15from_base_indexCsbaWXNhtWAp9_11foundations", scope: !12165, file: !12163, line: 355, type: !787, scopeLine: 355, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !786)
!12140 = distinct !DISubprogram(name: "bucket<(alloc::borrow::Cow<str>, dashmap::util::SharedValue<governor::state::in_memory::InMemoryState>), hashbrown::raw::inner::alloc::inner::Global>", linkageName: "_RNvMs6_NtNtCscYIHOBAkUpv_9hashbrown3raw5innerINtB5_8RawTableTINtNtCs1xwejQucwHj_5alloc6borrow3CoweEINtNtCsdra7vpBasQ9_7dashmap4util11SharedValueNtNtNtCsgtgatFLTNh8_8governor5state9in_memory13InMemoryStateEEE6bucketCsbaWXNhtWAp9_11foundations", scope: !12191, file: !12163, line: 995, type: !787, scopeLine: 995, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !786)
!12141 = distinct !DILocation(line: 1447, column: 27, scope: !12123, inlinedAt: !12117)
!12142 = distinct !DILocation(line: 1022, column: 9, scope: !12140, inlinedAt: !12141)
!12143 = distinct !DILocation(line: 382, column: 27, scope: !12139, inlinedAt: !12142)
!12144 = distinct !DISubprogram(name: "as_ptr<(alloc::borrow::Cow<str>, dashmap::util::SharedValue<governor::state::in_memory::InMemoryState>)>", linkageName: "_RNvMs4_NtNtCscYIHOBAkUpv_9hashbrown3raw5innerINtB5_6BucketTINtNtCs1xwejQucwHj_5alloc6borrow3CoweEINtNtCsdra7vpBasQ9_7dashmap4util11SharedValueNtNtNtCsgtgatFLTNh8_8governor5state9in_memory13InMemoryStateEEE6as_ptrCsbaWXNhtWAp9_11foundations", scope: !12165, file: !12163, line: 513, type: !787, scopeLine: 513, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !786)
!12145 = distinct !DISubprogram(name: "write<(alloc::borrow::Cow<str>, dashmap::util::SharedValue<governor::state::in_memory::InMemoryState>)>", linkageName: "_RNvMs4_NtNtCscYIHOBAkUpv_9hashbrown3raw5innerINtB5_6BucketTINtNtCs1xwejQucwHj_5alloc6borrow3CoweEINtNtCsdra7vpBasQ9_7dashmap4util11SharedValueNtNtNtCsgtgatFLTNh8_8governor5state9in_memory13InMemoryStateEEE5writeCsbaWXNhtWAp9_11foundations", scope: !12165, file: !12163, line: 632, type: !787, scopeLine: 632, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !786)
!12146 = distinct !DILexicalBlock(scope: !12123, file: !12163, line: 1447, column: 9)
!12147 = distinct !DILocation(line: 1448, column: 16, scope: !12146, inlinedAt: !12117)
!12148 = distinct !DILocation(line: 633, column: 14, scope: !12145, inlinedAt: !12147)
!12149 = distinct !DILocation(line: 519, column: 40, scope: !12144, inlinedAt: !12148)
!12150 = distinct !DISubprogram(name: "write<(alloc::borrow::Cow<str>, dashmap::util::SharedValue<governor::state::in_memory::InMemoryState>)>", linkageName: "_RINvNtCs3oUPovFnLWP_4core3ptr5writeTINtNtCs1xwejQucwHj_5alloc6borrow3CoweEINtNtCsdra7vpBasQ9_7dashmap4util11SharedValueNtNtNtCsgtgatFLTNh8_8governor5state9in_memory13InMemoryStateEEECsbaWXNhtWAp9_11foundations", scope: !839, file: !838, line: 1941, type: !787, scopeLine: 1941, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !786)
!12151 = distinct !DISubprogram(name: "write<(alloc::borrow::Cow<str>, dashmap::util::SharedValue<governor::state::in_memory::InMemoryState>)>", linkageName: "_RNvMNtNtCs3oUPovFnLWP_4core3ptr7mut_ptrOTINtNtCs1xwejQucwHj_5alloc6borrow3CoweEINtNtCsdra7vpBasQ9_7dashmap4util11SharedValueNtNtNtCsgtgatFLTNh8_8governor5state9in_memory13InMemoryStateEE5writeCsbaWXNhtWAp9_11foundations", scope: !898, file: !896, line: 1398, type: !787, scopeLine: 1398, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !786)
!12152 = distinct !DILocation(line: 633, column: 23, scope: !12145, inlinedAt: !12147)
!12153 = distinct !DILocation(line: 1403, column: 18, scope: !12151, inlinedAt: !12152)
!12154 = distinct !DISubprogram(name: "new<alloc::borrow::Cow<str>, governor::state::in_memory::InMemoryState>", linkageName: "_RNvMs5_NtNtCsdra7vpBasQ9_7dashmap6mapref3oneINtB5_6RefMutINtNtCs1xwejQucwHj_5alloc6borrow3CoweENtNtNtCsgtgatFLTNh8_8governor5state9in_memory13InMemoryStateE3newCsbaWXNhtWAp9_11foundations", scope: !12178, file: !12176, line: 95, type: !787, scopeLine: 95, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !786)
!12155 = distinct !DILexicalBlock(scope: !12107, file: !12158, line: 141, column: 13)
!12156 = distinct !DILexicalBlock(scope: !12155, file: !12158, line: 147, column: 13)
!12157 = distinct !DILocation(line: 149, column: 13, scope: !12156, inlinedAt: !12108)
!12158 = !DIFile(filename: "src/mapref/entry.rs", directory: "/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/dashmap-6.2.1", checksumkind: CSK_MD5, checksum: "2b17e7398fddd6474611568e559cdaed")
!12159 = !DINamespace(name: "dashmap", scope: null)
!12160 = !DINamespace(name: "mapref", scope: !12159)
!12161 = !DINamespace(name: "entry", scope: !12160)
!12162 = !DINamespace(name: "Entry", scope: !12161)
!12163 = !DIFile(filename: "src/raw/mod.rs", directory: "/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/hashbrown-0.14.5", checksumkind: CSK_MD5, checksum: "3953d531e4606fc7b252f4fd90a47079")
!12164 = !DINamespace(name: "inner", scope: !888)
!12165 = !DINamespace(name: "Bucket", scope: !12164)
!12166 = !DILocation(line: 50, column: 45, scope: !12086)
!12167 = !DILocation(line: 210, column: 38, scope: !12088, inlinedAt: !12166)
!12168 = !DILocation(line: 683, column: 16, scope: !12089, inlinedAt: !12167)
!12169 = !DINamespace(name: "OccupiedEntry", scope: !12161)
!12170 = !DILocation(line: 519, column: 40, scope: !12087, inlinedAt: !12168)
!12171 = !DILocation(line: 211, column: 42, scope: !12091, inlinedAt: !12166)
!12172 = !DILocation(line: 78, column: 20, scope: !12093, inlinedAt: !12171)
!12173 = !DIFile(filename: "src/util.rs", directory: "/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/dashmap-6.2.1", checksumkind: CSK_MD5, checksum: "290ec4629451d85f7d0ce1919081e8f2")
!12174 = !DINamespace(name: "util", scope: !12159)
!12175 = !DINamespace(name: "SharedValue", scope: !12174)
!12176 = !DIFile(filename: "src/mapref/one.rs", directory: "/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/dashmap-6.2.1", checksumkind: CSK_MD5, checksum: "c69f1fd16420e28c88f66ac7d2fb03d9")
!12177 = !DINamespace(name: "one", scope: !12160)
!12178 = !DINamespace(name: "RefMut", scope: !12177)
!12179 = !DILocation(line: 211, column: 13, scope: !12091, inlinedAt: !12166)
!12180 = !{!12096}
!12181 = !{!12103}
!12182 = !{!12105}
!12183 = !DIFile(filename: "src/rwlock.rs", directory: "/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/lock_api-0.4.14", checksumkind: CSK_MD5, checksum: "5242330188a3fefea8bc0816d99d8072")
!12184 = !DINamespace(name: "lock_api", scope: null)
!12185 = !DINamespace(name: "rwlock", scope: !12184)
!12186 = !DINamespace(name: "{impl#27}", scope: !12185)
!12187 = !DINamespace(name: "VacantEntry", scope: !12161)
!12188 = !{!12113}
!12189 = !{!12114, !12103, !12105}
!12190 = !DINamespace(name: "RawTableInner", scope: !12164)
!12191 = !DINamespace(name: "RawTable", scope: !12164)
!12192 = !{!12113, !12114, !12103, !12105}
!12193 = !DILexicalBlockFile(scope: !12115, file: !12163, discriminator: 4)
!12194 = !{!12113, !12103}
!12195 = !{!12113, !12103, !12105}
!12196 = !DILocation(line: 49, column: 15, scope: !12085)
!12197 = !DILocation(line: 49, column: 9, scope: !12085)
!12198 = !DILocation(line: 50, column: 29, scope: !12085)
!12199 = !DILocation(line: 50, column: 39, scope: !12086)
!12200 = !DILocation(line: 519, column: 22, scope: !12087, inlinedAt: !12168)
!12201 = !DILocation(line: 1054, column: 22, scope: !12090, inlinedAt: !12170)
!12202 = !DILocation(line: 211, column: 25, scope: !12091, inlinedAt: !12166)
!12203 = !DILocation(line: 2437, column: 9, scope: !12092, inlinedAt: !12172)
!12204 = !DILocation(line: 100, column: 9, scope: !12094, inlinedAt: !12179)
!12205 = !DILocation(line: 848, column: 1, scope: !311, inlinedAt: !12097)
!12206 = !DILocation(line: 848, column: 1, scope: !205, inlinedAt: !12099)
!12207 = !DILocation(line: 848, column: 1, scope: !207, inlinedAt: !12100)
!12208 = !DILocation(line: 848, column: 1, scope: !207, inlinedAt: !12101)
!12209 = !DILocation(line: 50, column: 54, scope: !12086)
!12210 = !DILocation(line: 50, column: 54, scope: !12085)
!12211 = !DILocation(line: 53, column: 6, scope: !12085)
!12212 = !DILocation(line: 51, column: 43, scope: !12104)
!12213 = !DILocation(line: 1823, column: 24, scope: !12106, inlinedAt: !12109)
!12214 = !DILocation(line: 2437, column: 9, scope: !12110, inlinedAt: !12111)
!12215 = !DILocation(line: 142, column: 17, scope: !12107, inlinedAt: !12108)
!12216 = !DILocation(line: 143, column: 17, scope: !12107, inlinedAt: !12108)
!12217 = !DILocation(line: 141, column: 39, scope: !12107, inlinedAt: !12108)
!12218 = !DILocation(line: 2797, column: 9, scope: !12115, inlinedAt: !12118)
!12219 = !DILocation(line: 970, column: 18, scope: !12119, inlinedAt: !12120)
!12220 = !DILocation(line: 1444, column: 24, scope: !12116, inlinedAt: !12117)
!12221 = !DILocation(line: 105, column: 17, scope: !12121, inlinedAt: !12125)
!12222 = !DILocation(line: 2631, column: 9, scope: !12122, inlinedAt: !12124)
!12223 = !DILocation(line: 155, column: 16, scope: !12126, inlinedAt: !12129)
!12224 = !DILocation(line: 156, column: 5, scope: !12130, inlinedAt: !12129)
!12225 = !DILocation(line: 2719, column: 13, scope: !12131, inlinedAt: !12134)
!12226 = !DILocation(line: 2763, column: 60, scope: !12132, inlinedAt: !12133)
!12227 = !DILocation(line: 2763, column: 22, scope: !12132, inlinedAt: !12133)
!12228 = !DILocation(line: 2766, column: 9, scope: !12135, inlinedAt: !12133)
!12229 = !DILocation(line: 970, column: 18, scope: !12119, inlinedAt: !12137)
!12230 = !DILocation(line: 2767, column: 9, scope: !12135, inlinedAt: !12133)
!12231 = !DILocation(line: 1054, column: 47, scope: !12138, inlinedAt: !12143)
!12232 = !DILocation(line: 1054, column: 22, scope: !12138, inlinedAt: !12143)
!12233 = !DILocation(line: 1054, column: 22, scope: !12138, inlinedAt: !12149)
!12234 = !DILocation(line: 1964, column: 41, scope: !12150, inlinedAt: !12153)
!12235 = !DILocation(line: 100, column: 9, scope: !12154, inlinedAt: !12157)
!12236 = !DILocation(line: 51, column: 62, scope: !12085)
!12237 = distinct !DISubprogram(name: "notify", linkageName: "_RNvMNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5wakerNtB2_5Waker6notify", scope: !1126, file: !1124, line: 98, type: !787, scopeLine: 98, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !786)
!12238 = distinct !DILexicalBlock(scope: !12237, file: !1124, line: 99, column: 9)
!12239 = distinct !DISubprogram(name: "next<std::sync::mpmc::waker::Entry>", linkageName: "_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterNtNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5waker5EntryENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbaWXNhtWAp9_11foundations", scope: !984, file: !983, line: 157, type: !787, scopeLine: 157, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !786)
!12240 = distinct !DISubprogram(name: "next<std::sync::mpmc::waker::Entry, alloc::alloc::Global>", linkageName: "_RNvXs3_NtNtCs1xwejQucwHj_5alloc3vec5drainINtB5_5DrainNtNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5waker5EntryENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCsbaWXNhtWAp9_11foundations", scope: !12311, file: !12309, line: 155, type: !787, scopeLine: 155, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !786)
!12241 = distinct !DILexicalBlock(scope: !12239, file: !983, line: 161, column: 17)
!12242 = distinct !DISubprogram(name: "eq<std::sync::mpmc::waker::Entry>", linkageName: "_RNvXsd_NtNtCs3oUPovFnLWP_4core3ptr8non_nullINtB5_7NonNullNtNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5waker5EntryENtNtB9_3cmp9PartialEq2eqCsbaWXNhtWAp9_11foundations", scope: !982, file: !980, line: 1662, type: !787, scopeLine: 1662, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !786)
!12243 = distinct !DILexicalBlock(scope: !12241, file: !983, line: 162, column: 17)
!12244 = distinct !DISubprogram(name: "drop_glue<alloc::vec::drain::Drain<std::sync::mpmc::waker::Entry, alloc::alloc::Global>>", linkageName: "_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs1xwejQucwHj_5alloc3vec5drain5DrainNtNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5waker5EntryEECsbaWXNhtWAp9_11foundations", scope: !839, file: !838, line: 848, type: !787, scopeLine: 848, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !786)
!12245 = distinct !DILocation(line: 103, column: 9, scope: !12237)
!12246 = distinct !{!12246, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5waker5EntryECsbaWXNhtWAp9_11foundations"}
!12247 = distinct !{!12247, !12246, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5waker5EntryECsbaWXNhtWAp9_11foundations: argument 0"}
!12248 = distinct !{!12248, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc7context7ContextECsbaWXNhtWAp9_11foundations"}
!12249 = distinct !{!12249, !12248, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc7context7ContextECsbaWXNhtWAp9_11foundations: argument 0"}
!12250 = distinct !DILocation(line: 103, column: 9, scope: !12238)
!12251 = distinct !{!12251, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc7context5InnerEECsbaWXNhtWAp9_11foundations"}
!12252 = distinct !{!12252, !12251, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc7context5InnerEECsbaWXNhtWAp9_11foundations: argument 0"}
!12253 = distinct !DILocation(line: 848, column: 1, scope: !469, inlinedAt: !12250)
!12254 = distinct !{!12254, !"_RNvXsE_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc7context5InnerENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsbaWXNhtWAp9_11foundations"}
!12255 = distinct !{!12255, !12254, !"_RNvXsE_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc7context5InnerENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsbaWXNhtWAp9_11foundations: argument 0"}
!12256 = distinct !DILocation(line: 848, column: 1, scope: !458, inlinedAt: !12253)
!12257 = distinct !DILocation(line: 848, column: 1, scope: !459, inlinedAt: !12256)
!12258 = distinct !DILocation(line: 2928, column: 17, scope: !462, inlinedAt: !12257)
!12259 = distinct !DILocation(line: 2193, column: 27, scope: !461, inlinedAt: !12258)
!12260 = distinct !DILocation(line: 2928, column: 32, scope: !462, inlinedAt: !12257)
!12261 = distinct !DILocation(line: 3257, column: 26, scope: !464, inlinedAt: !12260)
!12262 = distinct !DILocation(line: 69, column: 9, scope: !462, inlinedAt: !12257)
!12263 = distinct !DISubprogram(name: "add<std::sync::mpmc::waker::Entry>", linkageName: "_RNvMs1_NtNtCs3oUPovFnLWP_4core3ptr8non_nullINtB5_7NonNullNtNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5waker5EntryE3addCsbaWXNhtWAp9_11foundations", scope: !985, file: !980, line: 619, type: !787, scopeLine: 619, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !786)
!12264 = distinct !DISubprogram(name: "read<std::sync::mpmc::waker::Entry>", linkageName: "_RINvNtCs3oUPovFnLWP_4core3ptr4readNtNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5waker5EntryECsbaWXNhtWAp9_11foundations", scope: !839, file: !838, line: 1717, type: !787, scopeLine: 1717, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !786)
!12265 = distinct !DISubprogram(name: "map<&std::sync::mpmc::waker::Entry, std::sync::mpmc::waker::Entry, alloc::vec::drain::{impl#5}::next::{closure_env#0}<std::sync::mpmc::waker::Entry, alloc::alloc::Global>>", linkageName: "_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5waker5EntryE3mapBJ_NCNvXs3_NtNtCs1xwejQucwHj_5alloc3vec5drainINtB1L_5DrainBJ_ENtNtNtNtB5_4iter6traits8iterator8Iterator4next0ECsbaWXNhtWAp9_11foundations", scope: !991, file: !918, line: 1158, type: !787, scopeLine: 1158, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !786)
!12266 = distinct !DILexicalBlock(scope: !12265, file: !918, line: 1163, column: 13)
!12267 = distinct !DISubprogram(name: "{closure#0}<std::sync::mpmc::waker::Entry, alloc::alloc::Global>", linkageName: "_RNCNvXs3_NtNtCs1xwejQucwHj_5alloc3vec5drainINtB7_5DrainNtNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5waker5EntryENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4next0CsbaWXNhtWAp9_11foundations", scope: !12322, file: !12309, line: 156, type: !787, scopeLine: 156, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !786)
!12268 = distinct !DILexicalBlock(scope: !12238, file: !1124, line: 99, column: 9)
!12269 = distinct !DILocation(line: 100, column: 25, scope: !12268)
!12270 = distinct !DILocation(line: 92, column: 14, scope: !493, inlinedAt: !12269)
!12271 = distinct !DILocation(line: 3123, column: 55, scope: !492, inlinedAt: !12270)
!12272 = distinct !DILocation(line: 3695, column: 24, scope: !548, inlinedAt: !12271)
!12273 = distinct !DILocation(line: 3123, column: 26, scope: !492, inlinedAt: !12270)
!12274 = distinct !DISubprogram(name: "as_ref<alloc::sync::ArcInner<std::sync::mpmc::context::Inner>>", linkageName: "_RNvMs1_NtNtCs3oUPovFnLWP_4core3ptr8non_nullINtB5_7NonNullINtNtCs1xwejQucwHj_5alloc4sync8ArcInnerNtNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc7context5InnerEE6as_refCsbaWXNhtWAp9_11foundations", scope: !985, file: !980, line: 450, type: !787, scopeLine: 450, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !786)
!12275 = distinct !DISubprogram(name: "unpark", linkageName: "_RNvMNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc7contextNtB2_7Context6unpark", scope: !1128, file: !1112, line: 150, type: !787, scopeLine: 150, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !786)
!12276 = distinct !DISubprogram(name: "deref<std::sync::mpmc::context::Inner, alloc::alloc::Global>", linkageName: "_RNvXsx_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc7context5InnerENtNtNtCs3oUPovFnLWP_4core3ops5deref5Deref5derefCsbaWXNhtWAp9_11foundations", scope: !1094, file: !880, line: 2513, type: !787, scopeLine: 2513, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !786)
!12277 = distinct !DISubprogram(name: "inner<std::sync::mpmc::context::Inner, alloc::alloc::Global>", linkageName: "_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc7context5InnerE5innerCsbaWXNhtWAp9_11foundations", scope: !882, file: !880, line: 2187, type: !787, scopeLine: 2187, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !786)
!12278 = distinct !DISubprogram(name: "as_ref<alloc::sync::ArcInner<std::thread::thread::Inner>>", linkageName: "_RNvMs1_NtNtCs3oUPovFnLWP_4core3ptr8non_nullINtB5_7NonNullINtNtCs1xwejQucwHj_5alloc4sync8ArcInnerNtNtNtCsaL1QbXo9JQH_3std6thread6thread5InnerEE6as_refCsbaWXNhtWAp9_11foundations", scope: !985, file: !980, line: 450, type: !787, scopeLine: 450, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !786)
!12279 = distinct !DISubprogram(name: "unpark", linkageName: "_RNvMs_NtNtCsaL1QbXo9JQH_3std6thread6threadNtB4_6Thread6unpark", scope: !1209, file: !1207, line: 183, type: !787, scopeLine: 183, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !786)
!12280 = distinct !DISubprogram(name: "as_ref<alloc::sync::Arc<std::thread::thread::Inner, std::alloc::System>>", linkageName: "_RNvMs4_NtCs3oUPovFnLWP_4core3pinINtB5_3PinINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtCsaL1QbXo9JQH_3std6thread6thread5InnerNtNtB1i_5alloc6SystemEE6as_refCsbaWXNhtWAp9_11foundations", scope: !1212, file: !1210, line: 1365, type: !787, scopeLine: 1365, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !786)
!12281 = distinct !DISubprogram(name: "deref<std::thread::thread::Inner, std::alloc::System>", linkageName: "_RNvXsx_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtCsaL1QbXo9JQH_3std6thread6thread5InnerNtNtBM_5alloc6SystemENtNtNtCs3oUPovFnLWP_4core3ops5deref5Deref5derefCsbaWXNhtWAp9_11foundations", scope: !1094, file: !880, line: 2513, type: !787, scopeLine: 2513, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !786)
!12282 = distinct !DISubprogram(name: "inner<std::thread::thread::Inner, std::alloc::System>", linkageName: "_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtCsaL1QbXo9JQH_3std6thread6thread5InnerNtNtBM_5alloc6SystemE5innerCsbaWXNhtWAp9_11foundations", scope: !882, file: !880, line: 2187, type: !787, scopeLine: 2187, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !786)
!12283 = distinct !DISubprogram(name: "get<core::sync::atomic::private::Align4<u32>>", linkageName: "_RNvMsX_NtCs3oUPovFnLWP_4core4cellINtB5_10UnsafeCellINtNtNtNtB7_4sync6atomic7private6Align4mEE3getCsbaWXNhtWAp9_11foundations", scope: !834, file: !832, line: 2434, type: !787, scopeLine: 2434, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !786)
!12284 = distinct !DISubprogram(name: "unpark", linkageName: "_RNvMNtNtNtNtCsaL1QbXo9JQH_3std3sys4sync14thread_parking5futexNtB2_6Parker6unpark", scope: !1216, file: !1213, line: 89, type: !787, scopeLine: 89, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !786)
!12285 = distinct !DISubprogram(name: "swap", linkageName: "_RNvMsQ_NtNtCs3oUPovFnLWP_4core4sync6atomicINtB5_6AtomicmE4swap", scope: !792, file: !788, line: 2979, type: !787, scopeLine: 2979, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !786)
!12286 = distinct !DISubprogram(name: "as_ptr", linkageName: "_RNvMsQ_NtNtCs3oUPovFnLWP_4core4sync6atomicINtB5_6AtomicmE6as_ptr", scope: !792, file: !788, line: 3694, type: !787, scopeLine: 3694, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !786)
!12287 = distinct !DISubprogram(name: "atomic_swap<u32>", linkageName: "_RINvNtNtCs3oUPovFnLWP_4core4sync6atomic11atomic_swapmECsbaWXNhtWAp9_11foundations", scope: !791, file: !788, line: 4011, type: !787, scopeLine: 4011, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !786)
!12288 = distinct !{!12288, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5waker5EntryECsbaWXNhtWAp9_11foundations"}
!12289 = distinct !{!12289, !12288, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5waker5EntryECsbaWXNhtWAp9_11foundations: argument 0"}
!12290 = distinct !{!12290, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc7context7ContextECsbaWXNhtWAp9_11foundations"}
!12291 = distinct !{!12291, !12290, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc7context7ContextECsbaWXNhtWAp9_11foundations: argument 0"}
!12292 = distinct !DILocation(line: 103, column: 9, scope: !12238)
!12293 = distinct !{!12293, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc7context5InnerEECsbaWXNhtWAp9_11foundations"}
!12294 = distinct !{!12294, !12293, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc7context5InnerEECsbaWXNhtWAp9_11foundations: argument 0"}
!12295 = distinct !DILocation(line: 848, column: 1, scope: !469, inlinedAt: !12292)
!12296 = distinct !{!12296, !"_RNvXsE_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc7context5InnerENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsbaWXNhtWAp9_11foundations"}
!12297 = distinct !{!12297, !12296, !"_RNvXsE_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc7context5InnerENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsbaWXNhtWAp9_11foundations: argument 0"}
!12298 = distinct !DILocation(line: 848, column: 1, scope: !458, inlinedAt: !12295)
!12299 = distinct !DILocation(line: 848, column: 1, scope: !459, inlinedAt: !12298)
!12300 = distinct !DILocation(line: 2928, column: 17, scope: !462, inlinedAt: !12299)
!12301 = distinct !DILocation(line: 2193, column: 27, scope: !461, inlinedAt: !12300)
!12302 = distinct !DILocation(line: 2928, column: 32, scope: !462, inlinedAt: !12299)
!12303 = distinct !DILocation(line: 3257, column: 26, scope: !464, inlinedAt: !12302)
!12304 = distinct !DILocation(line: 69, column: 9, scope: !462, inlinedAt: !12299)
!12305 = distinct !DILocation(line: 103, column: 9, scope: !12237)
!12306 = !DILexicalBlockFile(scope: !12238, file: !1124, discriminator: 2)
!12307 = !DILocation(line: 99, column: 22, scope: !12306)
!12308 = !DILocation(line: 156, column: 19, scope: !12240, inlinedAt: !12307)
!12309 = !DIFile(filename: "library/alloc/src/vec/drain.rs", directory: "/rustc/787af2b8c80638c51a4fc8e44f84e6891f243ec7", checksumkind: CSK_MD5, checksum: "1d929a31bb59246873c7578638a9389f")
!12310 = !DINamespace(name: "drain", scope: !878)
!12311 = !DINamespace(name: "{impl#5}", scope: !12310)
!12312 = !DILocation(line: 180, column: 28, scope: !12243, inlinedAt: !12308)
!12313 = !{!12247}
!12314 = !{!12249}
!12315 = !{!12252}
!12316 = !{!12255}
!12317 = !{!12255, !12252, !12249, !12247}
!12318 = !DILocation(line: 185, column: 40, scope: !12243, inlinedAt: !12308)
!12319 = !DILocation(line: 156, column: 26, scope: !12240, inlinedAt: !12307)
!12320 = !DILocation(line: 1163, column: 29, scope: !12266, inlinedAt: !12319)
!12321 = !DILocation(line: 156, column: 45, scope: !12267, inlinedAt: !12320)
!12322 = !DINamespace(name: "next", scope: !12311)
!12323 = !DILocation(line: 101, column: 26, scope: !12268)
!12324 = !DILocation(line: 151, column: 9, scope: !12275, inlinedAt: !12323)
!12325 = !DILocation(line: 2514, column: 15, scope: !12276, inlinedAt: !12324)
!12326 = !DILocation(line: 2193, column: 27, scope: !12277, inlinedAt: !12325)
!12327 = !DILexicalBlockFile(scope: !12282, file: !880, discriminator: 2)
!12328 = !DILexicalBlockFile(scope: !12281, file: !880, discriminator: 2)
!12329 = !DILocation(line: 151, column: 27, scope: !12275, inlinedAt: !12323)
!12330 = !DILocation(line: 184, column: 20, scope: !12279, inlinedAt: !12329)
!12331 = !DILocation(line: 1370, column: 38, scope: !12280, inlinedAt: !12330)
!12332 = !DILocation(line: 2514, column: 15, scope: !12328, inlinedAt: !12331)
!12333 = !DILocation(line: 2193, column: 27, scope: !12327, inlinedAt: !12332)
!12334 = !DILocation(line: 184, column: 38, scope: !12279, inlinedAt: !12329)
!12335 = !DILocation(line: 96, column: 23, scope: !12284, inlinedAt: !12334)
!12336 = !DILocation(line: 2981, column: 43, scope: !12285, inlinedAt: !12335)
!12337 = !DILocation(line: 3695, column: 24, scope: !12286, inlinedAt: !12336)
!12338 = !DILocation(line: 2981, column: 26, scope: !12285, inlinedAt: !12335)
!12339 = !{!12289}
!12340 = !{!12291}
!12341 = !{!12294}
!12342 = !{!12297}
!12343 = !{!12297, !12294, !12291, !12289}
!12344 = !DILocation(line: 99, column: 22, scope: !12237)
!12345 = !DILocation(line: 99, column: 37, scope: !12237)
!12346 = !DILocation(line: 99, column: 22, scope: !12238)
!12347 = !DILocation(line: 161, column: 27, scope: !12239, inlinedAt: !12308)
!12348 = !DILocation(line: 162, column: 34, scope: !12241, inlinedAt: !12308)
!12349 = !DILocation(line: 1663, column: 9, scope: !12242, inlinedAt: !12312)
!12350 = !DILocation(line: 103, column: 9, scope: !12238)
!12351 = !DILocation(line: 848, column: 1, scope: !12244, inlinedAt: !12245)
!12352 = !DILocation(line: 103, column: 9, scope: !12237)
!12353 = !DILocation(line: 104, column: 6, scope: !12237)
!12354 = !DILocation(line: 848, column: 1, scope: !469, inlinedAt: !12250)
!12355 = !DILocation(line: 848, column: 1, scope: !458, inlinedAt: !12253)
!12356 = !DILocation(line: 848, column: 1, scope: !459, inlinedAt: !12256)
!12357 = !DILocation(line: 454, column: 20, scope: !460, inlinedAt: !12259)
!12358 = !DILocation(line: 4053, column: 24, scope: !463, inlinedAt: !12261)
!12359 = !DILocation(line: 2928, column: 12, scope: !462, inlinedAt: !12257)
!12360 = !DILocation(line: 4497, column: 24, scope: !86, inlinedAt: !12262)
!12361 = !DILocation(line: 2971, column: 18, scope: !462, inlinedAt: !12257)
!12362 = !DILocation(line: 627, column: 28, scope: !12263, inlinedAt: !12318)
!12363 = !DILocation(line: 185, column: 25, scope: !12243, inlinedAt: !12308)
!12364 = !DILocation(line: 1756, column: 9, scope: !12264, inlinedAt: !12321)
!12365 = !DILocation(line: 99, column: 13, scope: !12238)
!12366 = !DILocation(line: 100, column: 56, scope: !12268)
!12367 = !DILocation(line: 100, column: 25, scope: !12268)
!12368 = !DILocation(line: 2437, column: 9, scope: !547, inlinedAt: !12272)
!12369 = !DILocation(line: 4108, column: 17, scope: !491, inlinedAt: !12273)
!12370 = !DILocation(line: 0, scope: !491, inlinedAt: !12273)
!12371 = !DILocation(line: 100, column: 16, scope: !12268)
!12372 = !DILocation(line: 454, column: 20, scope: !12274, inlinedAt: !12326)
!12373 = !DILocation(line: 454, column: 20, scope: !12278, inlinedAt: !12333)
!12374 = !DILocation(line: 2437, column: 9, scope: !12283, inlinedAt: !12337)
!12375 = !DILocation(line: 4017, column: 24, scope: !12287, inlinedAt: !12338)
!12376 = !DILocation(line: 96, column: 12, scope: !12284, inlinedAt: !12334)
!12377 = !DILocation(line: 848, column: 1, scope: !469, inlinedAt: !12292)
!12378 = !DILocation(line: 848, column: 1, scope: !458, inlinedAt: !12295)
!12379 = !DILocation(line: 848, column: 1, scope: !459, inlinedAt: !12298)
!12380 = !DILocation(line: 454, column: 20, scope: !460, inlinedAt: !12301)
!12381 = !DILocation(line: 4053, column: 24, scope: !463, inlinedAt: !12303)
!12382 = !DILocation(line: 2928, column: 12, scope: !462, inlinedAt: !12299)
!12383 = !DILocation(line: 4497, column: 24, scope: !86, inlinedAt: !12304)
!12384 = !DILocation(line: 2971, column: 18, scope: !462, inlinedAt: !12299)
!12385 = !DILocation(line: 97, column: 13, scope: !12284, inlinedAt: !12334)
!12386 = !DILocation(line: 848, column: 1, scope: !12244, inlinedAt: !12305)
!12387 = !DILocation(line: 98, column: 5, scope: !12237)
!12388 = distinct !DISubprogram(name: "iter", linkageName: "_RNvMNtNtNtCsbaWXNhtWAp9_11foundations9telemetry7tracing7testingNtB2_9TestTrace4iter", scope: !12395, file: !1217, line: 67, type: !787, scopeLine: 67, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !786)
!12389 = distinct !DISubprogram(name: "new_uninit<[&foundations::telemetry::tracing::testing::TestSpan; 1]>", linkageName: "_RNvMNtCs1xwejQucwHj_5alloc5boxedINtB2_3BoxARNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry7tracing7testing8TestSpanj1_E10new_uninitBO_", scope: !862, file: !848, line: 316, type: !787, scopeLine: 316, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !786)
!12390 = distinct !DILocation(line: 322, column: 33, scope: !12389, inlinedAt: !12396)
!12391 = distinct !DILocation(line: 251, column: 18, scope: !35, inlinedAt: !12390)
!12392 = distinct !DILocation(line: 541, column: 14, scope: !34, inlinedAt: !12391)
!12393 = distinct !DILocation(line: 424, column: 9, scope: !33, inlinedAt: !12392)
!12394 = distinct !DILocation(line: 302, column: 73, scope: !32, inlinedAt: !12393)
!12395 = !DINamespace(name: "TestTrace", scope: !1218)
!12396 = !DILocation(line: 69, column: 20, scope: !12388)
!12397 = !DILocation(line: 128, column: 9, scope: !30, inlinedAt: !12394)
!12398 = !DILocation(line: 130, column: 9, scope: !30, inlinedAt: !12394)
!12399 = !DILocation(line: 251, column: 11, scope: !35, inlinedAt: !12390)
!12400 = !DILocation(line: 251, column: 5, scope: !35, inlinedAt: !12390)
!12401 = !DILocation(line: 253, column: 19, scope: !35, inlinedAt: !12390)
!12402 = !DILocation(line: 68, column: 9, scope: !12388)
end_hunk_1
