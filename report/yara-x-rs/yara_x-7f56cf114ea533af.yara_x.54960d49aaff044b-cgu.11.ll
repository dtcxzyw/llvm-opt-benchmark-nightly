Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/yara-x-rs/original/yara_x-7f56cf114ea533af.yara_x.54960d49aaff044b-cgu.11?download=true
inline.NumInlined: 4347
inline.NumDeleted: 1844
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 14
loop-unroll.NumUnrolled: 15
begin_hunk_0_@_RINvNtNtCsiOkGTpNE17y_8wasmtime7runtime2vm12assert_readyNCINvMNtB4_8instanceNtBY_8Instance11new_startedNtNtNtCs7gfv9tzbXmh_6yara_x7scanner7context11ScanContextE0EB1J_:bb.a
  store i8 2, ptr %i.ha, align 1, !noalias !1292
  br label %.body80.i.i.i

bb.bv:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCsiOkGTpNE17y_8wasmtime7runtime6values3ValEECs7gfv9tzbXmh_6yara_x.exit.i74.i.i.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCsiOkGTpNE17y_8wasmtime7runtime6values3ValEECs7gfv9tzbXmh_6yara_x.exit.i.i.i.i.i
  %i.hc = phi ptr [ %i.xr, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCsiOkGTpNE17y_8wasmtime7runtime6values3ValEECs7gfv9tzbXmh_6yara_x.exit.i74.i.i.i.i ], [ %i.hz, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCsiOkGTpNE17y_8wasmtime7runtime6values3ValEECs7gfv9tzbXmh_6yara_x.exit.i.i.i.i.i ]
  %i.hd = phi ptr [ %i.xs, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCsiOkGTpNE17y_8wasmtime7runtime6values3ValEECs7gfv9tzbXmh_6yara_x.exit.i74.i.i.i.i ], [ %i.ia, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCsiOkGTpNE17y_8wasmtime7runtime6values3ValEECs7gfv9tzbXmh_6yara_x.exit.i.i.i.i.i ]
  %i.he = phi ptr [ %i.xt, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCsiOkGTpNE17y_8wasmtime7runtime6values3ValEECs7gfv9tzbXmh_6yara_x.exit.i74.i.i.i.i ], [ %i.ib, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCsiOkGTpNE17y_8wasmtime7runtime6values3ValEECs7gfv9tzbXmh_6yara_x.exit.i.i.i.i.i ]
  %i.hf = phi ptr [ %i.xu, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCsiOkGTpNE17y_8wasmtime7runtime6values3ValEECs7gfv9tzbXmh_6yara_x.exit.i74.i.i.i.i ], [ %i.ic, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCsiOkGTpNE17y_8wasmtime7runtime6values3ValEECs7gfv9tzbXmh_6yara_x.exit.i.i.i.i.i ]
  %i.hg = landingpad { ptr, i32 }
          cleanup
  br label %.body.i70.i.i.i

bb.bw:                                            ; preds = %._crit_edge85.i.i, %.thread257.i.i.i
  %i.hh = phi ptr [ %i.ev, %.thread257.i.i.i ], [ %.phi.trans.insert.i.i, %._crit_edge85.i.i ] ; 3 uses
  %i.hi = phi ptr [ %i.ew, %.thread257.i.i.i ], [ %i.ax, %._crit_edge85.i.i ] ; 3 uses
  %i.hj = phi i8 [ %i.gj, %.thread257.i.i.i ], [ %.pre95.i.i, %._crit_edge85.i.i ] ; 2 uses
  %i.hk = phi ptr [ %i.gi, %.thread257.i.i.i ], [ %.pre93.i.i, %._crit_edge85.i.i ] ; 3 uses
  %i.hl = phi i32 [ %.sroa.2.0.copyload.i.i.i, %.thread257.i.i.i ], [ %.pre91.i.i, %._crit_edge85.i.i ] ; 2 uses
  %i.hm = phi ptr [ %i.ge, %.thread257.i.i.i ], [ %.pre89.i.i, %._crit_edge85.i.i ] ; 2 uses
  %i.hn = phi ptr [ %i.fu, %.thread257.i.i.i ], [ %.pre87.i.i, %._crit_edge85.i.i ] ; 3 uses
  %i.ho = phi ptr [ %.sroa.13123.0..sroa_idx.i.i.i, %.thread257.i.i.i ], [ %.phi.trans.insert171.i.i.i, %._crit_edge85.i.i ] ; 3 uses
  %i.hp = phi ptr [ %i.ex, %.thread257.i.i.i ], [ %i.gx, %._crit_edge85.i.i ] ; 7 uses
  %i.hq = getelementptr inbounds nuw i8, ptr %i.ae, i64 336 ; 2 uses
  store ptr %i.hn, ptr %i.hq, align 8, !noalias !1292
  %i.hr = getelementptr inbounds nuw i8, ptr %i.ae, i64 344 ; 2 uses
  store ptr %i.hm, ptr %i.hr, align 8, !noalias !1292
  %i.hs = getelementptr inbounds nuw i8, ptr %i.ae, i64 352 ; 2 uses
  store ptr %i.hk, ptr %i.hs, align 8, !noalias !1292, !captures !25
  %i.ht = getelementptr inbounds nuw i8, ptr %i.ae, i64 384
  store i8 %i.hj, ptr %i.ht, align 8, !noalias !1292
  %i.hu = getelementptr inbounds nuw i8, ptr %i.ae, i64 380 ; 4 uses
  store i32 %i.hl, ptr %i.hu, align 4, !noalias !1292
  store i64 0, ptr %i.hp, align 8, !alias.scope !1316, !noalias !1292
  %.sroa.4.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 288
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4.0..sroa_idx.i.i.i.i.i, align 8, !alias.scope !1316, !noalias !1292
  %.sroa.5.0..sroa_idx.i.i78.i.i.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 296
  store i64 0, ptr %.sroa.5.0..sroa_idx.i.i78.i.i.i, align 8, !alias.scope !1316, !noalias !1292
  %i.hv = getelementptr inbounds nuw i8, ptr %i.ae, i64 304
  store i8 0, ptr %i.hv, align 8, !alias.scope !1316, !noalias !1292
  %.sroa.43.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 308
  store i32 0, ptr %.sroa.43.0..sroa_idx.i.i.i.i.i, align 4, !alias.scope !1316, !noalias !1292
  %i.hw = trunc nuw i8 %i.hj to i1
  br i1 %i.hw, label %.thread160.i.i.i.i, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.hx = invoke noundef ptr @_RNvNtNtNtNtCsiOkGTpNE17y_8wasmtime7runtime2vm8instance9allocator17check_init_bounds(ptr noundef nonnull align 8 %i.hn, i32 noundef %i.hl, ptr noalias nofree noundef nonnull align 4 dereferenceable(4) %i.hu, ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.hp, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(560) %i.hk)
          to label %bb.bz unwind label %bb.by, !noalias !1293 ; 2 uses

bb.by:                                            ; preds = %bb.bx
  %i.hy = landingpad { ptr, i32 }
          cleanup
  br label %.body56.i.i.i.i

bb.bz:                                            ; preds = %bb.bx
  %.not.i79.i.i.i = icmp eq ptr %i.hx, null
  br i1 %.not.i79.i.i.i, label %._crit_edge.i.i.i.i, label %bb.ca

._crit_edge.i.i.i.i:                              ; preds = %bb.bz
  %.pre.i.i.i.i = load ptr, ptr %i.hq, align 8, !noalias !1292
  %.val55.pre.i.i.i.i = load ptr, ptr %i.hr, align 8, !noalias !1292
  %.pre99.i.i.i.i = load ptr, ptr %i.hs, align 8, !noalias !1292
  br label %.thread160.i.i.i.i

bb.ca:                                            ; preds = %bb.ki, %.thread54.i.i.i.i, %.thread61.i.i.i.i, %bb.hj, %bb.hg, %.thread46.i.i.i.i, %bb.dr, %.thread42.i.i.i.i, %bb.bz
  %i.hz = phi ptr [ %i.xd, %bb.hj ], [ %i.kk, %bb.dr ], [ %i.hh, %bb.bz ], [ %i.wy, %bb.hg ], [ %i.kw, %.thread42.i.i.i.i ], [ %i.wt, %.thread46.i.i.i.i ], [ %i.ahf, %.thread54.i.i.i.i ], [ %i.aga, %bb.ki ], [ %i.zx, %.thread61.i.i.i.i ] ; 3 uses
  %i.ia = phi ptr [ %i.xe, %bb.hj ], [ %i.kl, %bb.dr ], [ %i.hi, %bb.bz ], [ %i.wz, %bb.hg ], [ %i.kx, %.thread42.i.i.i.i ], [ %i.wu, %.thread46.i.i.i.i ], [ %i.ahg, %.thread54.i.i.i.i ], [ %i.agb, %bb.ki ], [ %i.zy, %.thread61.i.i.i.i ] ; 3 uses
  %i.ib = phi ptr [ %i.xf, %bb.hj ], [ %i.km, %bb.dr ], [ %i.ho, %bb.bz ], [ %i.xa, %bb.hg ], [ %i.ky, %.thread42.i.i.i.i ], [ %i.wv, %.thread46.i.i.i.i ], [ %i.ahh, %.thread54.i.i.i.i ], [ %i.agc, %bb.ki ], [ %i.zz, %.thread61.i.i.i.i ] ; 3 uses
  %i.ic = phi ptr [ %i.xg, %bb.hj ], [ %i.kn, %bb.dr ], [ %i.hp, %bb.bz ], [ %i.xb, %bb.hg ], [ %i.kz, %.thread42.i.i.i.i ], [ %i.ww, %.thread46.i.i.i.i ], [ %i.ahi, %.thread54.i.i.i.i ], [ %i.agd, %bb.ki ], [ %i.aaa, %.thread61.i.i.i.i ] ; 6 uses
  %.sroa.025.0.i.i.i.i = phi ptr [ %i.xm, %bb.hj ], [ %i.ku, %bb.dr ], [ %i.hx, %bb.bz ], [ %.sroa.039.1.i.i.i.i.i, %bb.hg ], [ %i.mc, %.thread42.i.i.i.i ], [ %.sroa.039.1.i.ph.i.i.i.i, %.thread46.i.i.i.i ], [ %.sroa.029.0.i.ph.i.i.i.i, %.thread54.i.i.i.i ], [ %.sroa.029.5.i.i.i.i.i, %bb.ki ], [ %i.afl, %.thread61.i.i.i.i ]
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCsiOkGTpNE17y_8wasmtime7runtime6values3ValENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.ic)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCsiOkGTpNE17y_8wasmtime7runtime6values3ValEECs7gfv9tzbXmh_6yara_x.exit.i.i.i.i.i unwind label %bb.cb, !noalias !1293

bb.cb:                                            ; preds = %bb.ca
  %i.id = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtCsiOkGTpNE17y_8wasmtime7runtime6values3ValENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.ic)
          to label %.body.i70.i.i.i unwind label %bb.cc, !noalias !1293

bb.cc:                                            ; preds = %bb.cb
  %i.ie = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #38, !noalias !1293
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCsiOkGTpNE17y_8wasmtime7runtime6values3ValEECs7gfv9tzbXmh_6yara_x.exit.i.i.i.i.i: ; preds = %bb.ca
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtCsiOkGTpNE17y_8wasmtime7runtime6values3ValENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.ic)
          to label %bb.kk unwind label %bb.bv, !noalias !1293

.body56.i.i.i.i:                                  ; preds = %.body90.i.i.i.i, %bb.hi, %bb.hf, %.body.i.i71.i.i.i, %bb.dq, %bb.cn, %bb.by
  %i.if = phi ptr [ %i.xd, %bb.hi ], [ %.phi.trans.insert.i.i, %bb.dq ], [ %i.hh, %bb.by ], [ %.phi.trans.insert.i.i, %bb.hf ], [ %i.jr, %bb.cn ], [ %i.nm, %.body.i.i71.i.i.i ], [ %i.yc, %.body90.i.i.i.i ]
  %i.ig = phi ptr [ %i.xe, %bb.hi ], [ %i.ax, %bb.dq ], [ %i.hi, %bb.by ], [ %i.ax, %bb.hf ], [ %i.js, %bb.cn ], [ %i.nn, %.body.i.i71.i.i.i ], [ %i.yd, %.body90.i.i.i.i ]
  %i.ih = phi ptr [ %i.xf, %bb.hi ], [ %.phi.trans.insert171.i.i.i, %bb.dq ], [ %i.ho, %bb.by ], [ %.phi.trans.insert171.i.i.i, %bb.hf ], [ %i.jt, %bb.cn ], [ %i.no, %.body.i.i71.i.i.i ], [ %i.ye, %.body90.i.i.i.i ]
  %i.ii = phi ptr [ %i.xg, %bb.hi ], [ %i.gx, %bb.dq ], [ %i.hp, %bb.by ], [ %i.gx, %bb.hf ], [ %i.ju, %bb.cn ], [ %i.np, %.body.i.i71.i.i.i ], [ %i.yf, %.body90.i.i.i.i ] ; 2 uses
  %.pn50.pn.i.i.i.i = phi { ptr, i32 } [ %i.xn, %bb.hi ], [ %i.mw, %bb.dq ], [ %i.hy, %bb.by ], [ %i.ws, %bb.hf ], [ %.pn31.pn.pn.pn.pn.pn.pn.i.i.i.i.i, %bb.cn ], [ %.pn85.pn.pn.pn.i.i.i.i.i, %.body.i.i71.i.i.i ], [ %.pn41.i.i.i.i, %.body90.i.i.i.i ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsiOkGTpNE17y_8wasmtime7runtime2vm10const_expr18ConstExprEvaluatorECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.ii) #34
          to label %.body.i70.i.i.i unwind label %bb.ds, !noalias !1293

.thread160.i.i.i.i:                               ; preds = %._crit_edge.i.i.i.i, %bb.bw
  %i.ij = phi ptr [ %.pre99.i.i.i.i, %._crit_edge.i.i.i.i ], [ %i.hk, %bb.bw ] ; 2 uses
  %.val55.i.i.i.i = phi ptr [ %.val55.pre.i.i.i.i, %._crit_edge.i.i.i.i ], [ %i.hm, %bb.bw ] ; 2 uses
  %i.ik = phi ptr [ %.pre.i.i.i.i, %._crit_edge.i.i.i.i ], [ %i.hn, %bb.bw ] ; 2 uses
  %i.il = getelementptr inbounds nuw i8, ptr %i.ae, i64 392 ; 2 uses
  store ptr %i.ik, ptr %i.il, align 8, !noalias !1292
  %.sroa.73.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 400
  store ptr %i.hu, ptr %.sroa.73.0..sroa_idx.i.i.i.i, align 8, !noalias !1292
  %.sroa.84.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 408
  store ptr %i.hp, ptr %.sroa.84.0..sroa_idx.i.i.i.i, align 8, !noalias !1292
  %.sroa.95.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 416
  store ptr %i.ij, ptr %.sroa.95.0..sroa_idx.i.i.i.i, align 8, !noalias !1292
  %.sroa.106.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 424
  store ptr %.val55.i.i.i.i, ptr %.sroa.106.0..sroa_idx.i.i.i.i, align 8, !noalias !1292
  %.sroa.12.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 596 ; 2 uses
  store i8 0, ptr %.sroa.12.0..sroa_idx.i.i.i.i, align 4, !noalias !1292
  br label %bb.cg

bb.cd:                                            ; preds = %bb.bu
  invoke void @_RNvNtNtCskKLDkoKarTP_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @99) #39
          to label %.noexc82.i.i.i unwind label %bb.kj, !noalias !1293

.noexc82.i.i.i:                                   ; preds = %bb.cd
  unreachable

bb.ce:                                            ; preds = %bb.bu
  invoke void @_RNvNtNtCskKLDkoKarTP_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @99) #39
          to label %.noexc83.i.i.i unwind label %bb.kj, !noalias !1293

.noexc83.i.i.i:                                   ; preds = %bb.ce
  unreachable

bb.cf:                                            ; preds = %bb.bu
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 596 ; 3 uses
  %.pre101.i.i.i.i = load i8, ptr %.phi.trans.insert.i.i.i.i, align 4, !range !12, !noalias !1292
  %i.im = getelementptr inbounds nuw i8, ptr %i.ae, i64 392 ; 3 uses
  switch i8 %.pre101.i.i.i.i, label %default.unreachable [
    i8 0, label %._crit_edge173.i.i.i
    i8 1, label %bb.cq
    i8 2, label %bb.cr
    i8 3, label %bb.cs
  ]

._crit_edge173.i.i.i:                             ; preds = %bb.cf
  %.pre174.i.i.i = load ptr, ptr %i.im, align 8, !noalias !1292
  %.phi.trans.insert175.i.i.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 424
  %.pre176.i.i.i = load ptr, ptr %.phi.trans.insert175.i.i.i, align 8, !noalias !1292
  %.phi.trans.insert177.i.i.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 400
  %.pre178.i.i.i = load ptr, ptr %.phi.trans.insert177.i.i.i, align 8, !noalias !1292
  %.phi.trans.insert179.i.i.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 408
  %.pre180.i.i.i = load ptr, ptr %.phi.trans.insert179.i.i.i, align 8, !noalias !1292
  %.phi.trans.insert181.i.i.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 416
  %.pre182.i.i.i = load ptr, ptr %.phi.trans.insert181.i.i.i, align 8, !noalias !1292
  br label %bb.cg

bb.cg:                                            ; preds = %._crit_edge173.i.i.i, %.thread160.i.i.i.i
  %i.in = phi ptr [ %i.hh, %.thread160.i.i.i.i ], [ %.phi.trans.insert.i.i, %._crit_edge173.i.i.i ] ; 3 uses
  %i.io = phi ptr [ %i.hi, %.thread160.i.i.i.i ], [ %i.ax, %._crit_edge173.i.i.i ] ; 3 uses
  %i.ip = phi ptr [ %i.ho, %.thread160.i.i.i.i ], [ %.phi.trans.insert171.i.i.i, %._crit_edge173.i.i.i ] ; 3 uses
  %i.iq = phi ptr [ %i.hp, %.thread160.i.i.i.i ], [ %i.gx, %._crit_edge173.i.i.i ] ; 3 uses
  %i.ir = phi ptr [ %i.ij, %.thread160.i.i.i.i ], [ %.pre182.i.i.i, %._crit_edge173.i.i.i ] ; 4 uses
  %i.is = phi ptr [ %i.hp, %.thread160.i.i.i.i ], [ %.pre180.i.i.i, %._crit_edge173.i.i.i ]
  %i.it = phi ptr [ %i.hu, %.thread160.i.i.i.i ], [ %.pre178.i.i.i, %._crit_edge173.i.i.i ] ; 2 uses
  %i.iu = phi ptr [ %.val55.i.i.i.i, %.thread160.i.i.i.i ], [ %.pre176.i.i.i, %._crit_edge173.i.i.i ]
  %i.iv = phi ptr [ %i.ik, %.thread160.i.i.i.i ], [ %.pre174.i.i.i, %._crit_edge173.i.i.i ] ; 3 uses
  %i.iw = phi ptr [ %.sroa.12.0..sroa_idx.i.i.i.i, %.thread160.i.i.i.i ], [ %.phi.trans.insert.i.i.i.i, %._crit_edge173.i.i.i ] ; 3 uses
  %i.ix = phi ptr [ %i.il, %.thread160.i.i.i.i ], [ %i.im, %._crit_edge173.i.i.i ]
  %i.iy = getelementptr inbounds nuw i8, ptr %i.ae, i64 432
  store ptr %i.iu, ptr %i.iy, align 8, !noalias !1292
  %i.iz = getelementptr inbounds nuw i8, ptr %i.ae, i64 440
  store ptr %i.it, ptr %i.iz, align 8, !noalias !1292
  %i.ja = getelementptr inbounds nuw i8, ptr %i.ae, i64 448
  store ptr %i.is, ptr %i.ja, align 8, !noalias !1292
  %i.jb = getelementptr inbounds nuw i8, ptr %i.ae, i64 456
  store ptr %i.ir, ptr %i.jb, align 8, !noalias !1292, !captures !25
  %i.jc = load i32, ptr %i.it, align 4, !noalias !1293, !noundef !4
  %i.jd = zext i32 %i.jc to i64                   ; 3 uses
  %i.je = getelementptr inbounds nuw i8, ptr %i.iv, i64 168
  %i.jf = load i64, ptr %i.je, align 8, !alias.scope !1317, !noalias !1318, !noundef !4 ; 2 uses
  %i.jg = icmp ugt i64 %i.jf, %i.jd
  br i1 %i.jg, label %bb.cj, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.jd, i64 noundef %i.jf, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @225) #39
          to label %.noexc.i.i76.i.i.i unwind label %bb.ci, !noalias !1293

.noexc.i.i76.i.i.i:                               ; preds = %bb.ch
  unreachable

bb.ci:                                            ; preds = %bb.ch
  %i.jh = landingpad { ptr, i32 }
          cleanup
  br label %bb.cn

bb.cj:                                            ; preds = %bb.cg
  %i.ji = getelementptr inbounds nuw i8, ptr %i.iv, i64 160
  %i.jj = load ptr, ptr %i.ji, align 8, !alias.scope !1317, !noalias !1318, !nonnull !4, !noundef !4
  %i.jk = getelementptr inbounds nuw [16 x i8], ptr %i.jj, i64 %i.jd
  %i.jl = load ptr, ptr %i.jk, align 8, !noalias !1293, !nonnull !4, !noundef !4 ; 2 uses
  %i.jm = getelementptr i8, ptr %i.jl, i64 8
  %.val43.i.i.i.i.i = load i64, ptr %i.jm, align 8, !range !14, !noalias !1293, !noundef !4
  %i.jn = getelementptr i8, ptr %i.jl, i64 16
  %.val44.i.i.i.i.i = load ptr, ptr %i.jn, align 8, !noalias !1293
  %2 = shl nuw nsw i64 %.val43.i.i.i.i.i, 5
  %.sroa.0.0.v.i.i.i.i.i.i = xor i64 %2, 96
  %.sroa.0.0.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.val44.i.i.i.i.i, i64 %.sroa.0.0.v.i.i.i.i.i.i
  %.val39.i.i.i.i.i = load ptr, ptr %.sroa.0.0.i.i.i.i.i.i, align 8, !noalias !1293, !nonnull !4, !noundef !4
  %i.jo = getelementptr inbounds nuw i8, ptr %.val39.i.i.i.i.i, i64 16
  %i.jp = icmp eq ptr %i.jo, %i.ir
  br i1 %i.jp, label %bb.co, label %bb.ck, !prof !5

bb.ck:                                            ; preds = %bb.cj
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @96, i64 noundef 89, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @97) #37
          to label %bb.cm unwind label %bb.cl, !noalias !1293

bb.cl:                                            ; preds = %bb.ck
  %i.jq = landingpad { ptr, i32 }
          cleanup
  br label %bb.cn

bb.cm:                                            ; preds = %bb.ck
  unreachable

bb.cn:                                            ; preds = %bb.dp, %bb.dn, %bb.cw, %bb.ct, %bb.cl, %bb.ci
  %i.jr = phi ptr [ %i.in, %bb.ci ], [ %i.kw, %bb.dp ], [ %i.in, %bb.cl ], [ %i.kw, %bb.cw ], [ %i.kb, %bb.dn ], [ %i.kk, %bb.ct ]
  %i.js = phi ptr [ %i.io, %bb.ci ], [ %i.kx, %bb.dp ], [ %i.io, %bb.cl ], [ %i.kx, %bb.cw ], [ %i.kc, %bb.dn ], [ %i.kl, %bb.ct ]
  %i.jt = phi ptr [ %i.ip, %bb.ci ], [ %i.ky, %bb.dp ], [ %i.ip, %bb.cl ], [ %i.ky, %bb.cw ], [ %i.kd, %bb.dn ], [ %i.km, %bb.ct ]
  %i.ju = phi ptr [ %i.iq, %bb.ci ], [ %i.kz, %bb.dp ], [ %i.iq, %bb.cl ], [ %i.kz, %bb.cw ], [ %i.ke, %bb.dn ], [ %i.kn, %bb.ct ]
  %i.jv = phi ptr [ %i.iw, %bb.ci ], [ %i.la, %bb.dp ], [ %i.iw, %bb.cl ], [ %i.la, %bb.cw ], [ %i.kf, %bb.dn ], [ %i.ko, %bb.ct ]
  %.pn31.pn.pn.pn.pn.pn.pn.i.i.i.i.i = phi { ptr, i32 } [ %i.jh, %bb.ci ], [ %.pn31.pn.i.i.i.i.i, %bb.dp ], [ %i.jq, %bb.cl ], [ %i.lt, %bb.cw ], [ %i.mp, %bb.dn ], [ %i.ks, %bb.ct ]
  store i8 2, ptr %i.jv, align 4, !noalias !1292
  br label %.body56.i.i.i.i

bb.co:                                            ; preds = %bb.cj
  %i.jw = getelementptr inbounds nuw i8, ptr %i.ae, i64 464
  store ptr %i.iv, ptr %i.jw, align 8, !noalias !1292
  %i.jx = getelementptr i8, ptr %i.ir, i64 400
  %.val45.i.i.i.i.i = load ptr, ptr %i.jx, align 8, !noalias !1293, !nonnull !4, !noundef !4 ; 3 uses
  %i.jy = getelementptr i8, ptr %i.ir, i64 408
  %.val46.i.i.i.i.i = load i64, ptr %i.jy, align 8, !noalias !1293, !noundef !4
  %i.jz = getelementptr inbounds nuw [80 x i8], ptr %.val45.i.i.i.i.i, i64 %.val46.i.i.i.i.i ; 2 uses
  %i.ka = getelementptr inbounds nuw i8, ptr %i.ae, i64 472
  store ptr %.val45.i.i.i.i.i, ptr %i.ka, align 8, !noalias !1292
  %.sroa.7.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 480
  store ptr %i.jz, ptr %.sroa.7.0..sroa_idx.i.i.i.i.i, align 8, !noalias !1292
  %.sroa.8.0..sroa_idx.i.i77.i.i.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 488
  store i64 0, ptr %.sroa.8.0..sroa_idx.i.i77.i.i.i, align 8, !noalias !1292
  br label %bb.cp

bb.cp:                                            ; preds = %bb.df, %bb.co
  %i.kb = phi ptr [ %i.kw, %bb.df ], [ %i.in, %bb.co ] ; 8 uses
  %i.kc = phi ptr [ %i.kx, %bb.df ], [ %i.io, %bb.co ] ; 8 uses
  %i.kd = phi ptr [ %i.ky, %bb.df ], [ %i.ip, %bb.co ] ; 8 uses
  %i.ke = phi ptr [ %i.kz, %bb.df ], [ %i.iq, %bb.co ] ; 8 uses
  %i.kf = phi ptr [ %i.la, %bb.df ], [ %i.iw, %bb.co ] ; 8 uses
  %i.kg = phi ptr [ %i.lb, %bb.df ], [ %i.ix, %bb.co ] ; 7 uses
  %i.kh = phi ptr [ %.pre20.i.i.i.i.i, %bb.df ], [ %i.jz, %bb.co ]
  %i.ki = phi ptr [ %.pre.i.i74.i.i.i, %bb.df ], [ %.val45.i.i.i.i.i, %bb.co ] ; 4 uses
  %i.kj = icmp eq ptr %i.ki, %i.kh
  br i1 %i.kj, label %.thread.i.i.i.i, label %bb.dg

.thread.i.i.i.i:                                  ; preds = %bb.cp
  store i8 1, ptr %i.kf, align 4, !noalias !1292
  br label %.thread161.i.i.i.i

bb.cq:                                            ; preds = %bb.cf
  invoke void @_RNvNtNtCskKLDkoKarTP_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @98) #39
          to label %.noexc.i.i.i.i unwind label %bb.dq, !noalias !1293

.noexc.i.i.i.i:                                   ; preds = %bb.cq
  unreachable

bb.cr:                                            ; preds = %bb.cf
  invoke void @_RNvNtNtCskKLDkoKarTP_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @98) #39
          to label %.noexc58.i.i.i.i unwind label %bb.dq, !noalias !1293

.noexc58.i.i.i.i:                                 ; preds = %bb.cr
  unreachable

bb.cs:                                            ; preds = %bb.do, %bb.cf
  %i.kk = phi ptr [ %i.kb, %bb.do ], [ %.phi.trans.insert.i.i, %bb.cf ] ; 4 uses
  %i.kl = phi ptr [ %i.kc, %bb.do ], [ %i.ax, %bb.cf ] ; 4 uses
  %i.km = phi ptr [ %i.kd, %bb.do ], [ %.phi.trans.insert171.i.i.i, %bb.cf ] ; 4 uses
  %i.kn = phi ptr [ %i.ke, %bb.do ], [ %i.gx, %bb.cf ] ; 4 uses
  %i.ko = phi ptr [ %i.kf, %bb.do ], [ %.phi.trans.insert.i.i.i.i, %bb.cf ] ; 3 uses
  %i.kp = phi ptr [ %i.kg, %bb.do ], [ %i.im, %bb.cf ] ; 2 uses
  %i.kq = getelementptr inbounds nuw i8, ptr %i.ae, i64 496
  %i.kr = invoke fastcc { i64, ptr } @_RNCNvMs0_NtNtNtCsiOkGTpNE17y_8wasmtime7runtime2vm10const_exprNtB7_18ConstExprEvaluator4eval0Cs7gfv9tzbXmh_6yara_x(ptr noundef nonnull align 8 %i.kq)
          to label %bb.cu unwind label %bb.ct, !noalias !1293 ; 2 uses

bb.ct:                                            ; preds = %bb.cs
  %i.ks = landingpad { ptr, i32 }
          cleanup
  br label %bb.cn

bb.cu:                                            ; preds = %bb.cs
  %i.kt = extractvalue { i64, ptr } %i.kr, 0
  %i.ku = extractvalue { i64, ptr } %i.kr, 1      ; 3 uses
  %i.kv = trunc nuw i64 %i.kt to i1
  br i1 %i.kv, label %bb.dr, label %_RNvMs0_NtNtNtCsiOkGTpNE17y_8wasmtime7runtime2vm10const_exprNtB5_18ConstExprEvaluator10try_simple.exit.thread.i.i.i.i.i

_RNvMs0_NtNtNtCsiOkGTpNE17y_8wasmtime7runtime2vm10const_exprNtB5_18ConstExprEvaluator10try_simple.exit.thread.i.i.i.i.i: ; preds = %bb.dm, %bb.dl, %bb.dk, %bb.dj, %bb.di, %bb.cu
  %i.kw = phi ptr [ %i.kb, %bb.dm ], [ %i.kb, %bb.di ], [ %i.kb, %bb.dj ], [ %i.kb, %bb.dk ], [ %i.kb, %bb.dl ], [ %i.kk, %bb.cu ] ; 4 uses
  %i.kx = phi ptr [ %i.kc, %bb.dm ], [ %i.kc, %bb.di ], [ %i.kc, %bb.dj ], [ %i.kc, %bb.dk ], [ %i.kc, %bb.dl ], [ %i.kl, %bb.cu ] ; 4 uses
  %i.ky = phi ptr [ %i.kd, %bb.dm ], [ %i.kd, %bb.di ], [ %i.kd, %bb.dj ], [ %i.kd, %bb.dk ], [ %i.kd, %bb.dl ], [ %i.km, %bb.cu ] ; 4 uses
  %i.kz = phi ptr [ %i.ke, %bb.dm ], [ %i.ke, %bb.di ], [ %i.ke, %bb.dj ], [ %i.ke, %bb.dk ], [ %i.ke, %bb.dl ], [ %i.kn, %bb.cu ] ; 4 uses
  %i.la = phi ptr [ %i.kf, %bb.dm ], [ %i.kf, %bb.di ], [ %i.kf, %bb.dj ], [ %i.kf, %bb.dk ], [ %i.kf, %bb.dl ], [ %i.ko, %bb.cu ] ; 4 uses
  %i.lb = phi ptr [ %i.kg, %bb.dm ], [ %i.kg, %bb.di ], [ %i.kg, %bb.dj ], [ %i.kg, %bb.dk ], [ %i.kg, %bb.dl ], [ %i.kp, %bb.cu ]
  %.sroa.07.0.i.i.i.i.i = phi ptr [ %i.mo, %bb.dm ], [ %i.mo, %bb.di ], [ %i.mo, %bb.dj ], [ %i.mo, %bb.dk ], [ %i.mo, %bb.dl ], [ %i.ku, %bb.cu ]
  %i.lc = getelementptr inbounds nuw i8, ptr %i.ae, i64 464 ; 2 uses
  %i.ld = load ptr, ptr %i.lc, align 8, !noalias !1292, !nonnull !4, !align !15, !noundef !4 ; 3 uses
  %i.le = getelementptr i8, ptr %i.ld, i64 544
  %.val.i.i72.i.i.i = load i64, ptr %i.le, align 8, !range !7, !noalias !1293, !noundef !4
  %i.lf = getelementptr inbounds nuw i8, ptr %i.ae, i64 456
  %i.lg = load ptr, ptr %i.lf, align 8, !noalias !1292, !nonnull !4, !align !15, !noundef !4
  %i.lh = getelementptr inbounds nuw i8, ptr %i.ae, i64 592
  %i.li = load i32, ptr %i.lh, align 8, !noalias !1292, !noundef !4
  %i.lj = getelementptr i8, ptr %i.lg, i64 520
  %.val47.i.i.i.i.i = load i64, ptr %i.lj, align 8, !noalias !1293, !noundef !4
  %i.lk = trunc i64 %.val47.i.i.i.i.i to i32
  %i.ll = add i32 %i.li, %i.lk
  %i.lm = getelementptr inbounds nuw i8, ptr %i.ae, i64 440
  %i.ln = load ptr, ptr %i.lm, align 8, !noalias !1292, !nonnull !4, !align !26, !noundef !4
  %i.lo = load i32, ptr %i.ln, align 4, !noalias !1293, !noundef !4
  %i.lp = zext i32 %i.lo to i64                   ; 3 uses
  %i.lq = getelementptr inbounds nuw i8, ptr %i.ld, i64 168
  %i.lr = load i64, ptr %i.lq, align 8, !alias.scope !1319, !noalias !1320, !noundef !4 ; 2 uses
  %i.ls = icmp ugt i64 %i.lr, %i.lp
  br i1 %i.ls, label %bb.cy, label %bb.cv

bb.cv:                                            ; preds = %_RNvMs0_NtNtNtCsiOkGTpNE17y_8wasmtime7runtime2vm10const_exprNtB5_18ConstExprEvaluator10try_simple.exit.thread.i.i.i.i.i
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.lp, i64 noundef %i.lr, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @356) #39
          to label %.noexc50.i.i.i.i.i unwind label %bb.cw, !noalias !1293

.noexc50.i.i.i.i.i:                               ; preds = %bb.cv
  unreachable

bb.cw:                                            ; preds = %bb.cv
  %i.lt = landingpad { ptr, i32 }
          cleanup
  br label %bb.cn

bb.cx:                                            ; preds = %bb.cy
  %i.lu = landingpad { ptr, i32 }
          cleanup
  br label %bb.da

bb.cy:                                            ; preds = %_RNvMs0_NtNtNtCsiOkGTpNE17y_8wasmtime7runtime2vm10const_exprNtB5_18ConstExprEvaluator10try_simple.exit.thread.i.i.i.i.i
  %i.lv = getelementptr inbounds nuw i8, ptr %i.ld, i64 160
  %i.lw = load ptr, ptr %i.lv, align 8, !alias.scope !1319, !noalias !1320, !nonnull !4, !noundef !4
  %i.lx = getelementptr inbounds nuw [16 x i8], ptr %i.lw, i64 %i.lp
  %i.ly = load ptr, ptr %i.lx, align 8, !noalias !1293, !nonnull !4, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !1292
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !1292
  store ptr %i.ly, ptr %i.s, align 8, !noalias !1292
  %i.lz = invoke noundef nonnull align 16 ptr @_RNvXsb_NtCskKLDkoKarTP_4core3pinINtB5_3PinQNtNtNtNtCsiOkGTpNE17y_8wasmtime7runtime2vm8instance8InstanceENtNtNtB7_3ops5deref5Deref5derefCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.s)
          to label %bb.cz unwind label %bb.cx, !noalias !1293

bb.cz:                                            ; preds = %bb.cy
  invoke void @_RNvMNtNtNtCsiOkGTpNE17y_8wasmtime7runtime2vm8instanceNtB2_8Instance19get_exported_global(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.t, ptr noalias nofree noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(160) %i.lz, i64 noundef %.val.i.i72.i.i.i, i32 noundef %i.ll)
          to label %bb.dc unwind label %bb.db, !noalias !1293

bb.da:                                            ; preds = %bb.db, %bb.cx
  %.pn28.i.i.i.i.i = phi { ptr, i32 } [ %i.ma, %bb.db ], [ %i.lu, %bb.cx ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !1292
  br label %bb.dp

bb.db:                                            ; preds = %bb.cz
  %i.ma = landingpad { ptr, i32 }
          cleanup
  br label %bb.da

bb.dc:                                            ; preds = %bb.cz
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !1292
  %i.mb = load ptr, ptr %i.lc, align 8, !noalias !1292, !nonnull !4, !align !15, !noundef !4
  %i.mc = invoke noundef ptr @_RNvMNtNtNtCsiOkGTpNE17y_8wasmtime7runtime9externals6globalNtB2_6Global13set_unchecked(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.t, ptr noundef nonnull align 8 %i.mb, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %.sroa.07.0.i.i.i.i.i)
          to label %bb.de unwind label %bb.dd, !noalias !1293 ; 2 uses

bb.dd:                                            ; preds = %bb.dc
  %i.md = landingpad { ptr, i32 }
          cleanup
  br label %bb.dp

bb.de:                                            ; preds = %bb.dc
  %.not30.i.i.i.i.i = icmp eq ptr %i.mc, null
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !1292
  br i1 %.not30.i.i.i.i.i, label %bb.df, label %.thread42.i.i.i.i

.thread42.i.i.i.i:                                ; preds = %bb.de
  store i8 1, ptr %i.la, align 4, !noalias !1292
  br label %bb.ca

bb.df:                                            ; preds = %bb.de
  %.phi.trans.insert.i.i73.i.i.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 472
  %.pre.i.i74.i.i.i = load ptr, ptr %.phi.trans.insert.i.i73.i.i.i, align 8, !alias.scope !1321, !noalias !1292
  %.phi.trans.insert19.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 480
  %.pre20.i.i.i.i.i = load ptr, ptr %.phi.trans.insert19.i.i.i.i.i, align 8, !alias.scope !1321, !noalias !1292
  br label %bb.cp

bb.dg:                                            ; preds = %bb.cp
  %i.me = getelementptr inbounds nuw i8, ptr %i.ae, i64 472
  %i.mf = getelementptr inbounds nuw i8, ptr %i.ki, i64 80
  store ptr %i.mf, ptr %i.me, align 8, !alias.scope !1321, !noalias !1292
  %i.mg = getelementptr inbounds nuw i8, ptr %i.ae, i64 488 ; 2 uses
  %i.mh = load i64, ptr %i.mg, align 8, !alias.scope !1322, !noalias !1292, !noundef !4 ; 2 uses
end_hunk_0
begin_hunk_1_@_RNCNvMs0_NtNtNtCsiOkGTpNE17y_8wasmtime7runtime2vm10const_exprNtB7_18ConstExprEvaluator4eval0Cs7gfv9tzbXmh_6yara_x:bb.a
  %i.kc = load ptr, ptr %i.bt, align 8, !alias.scope !2546, !noalias !2547, !nonnull !4, !noundef !4
  %i.kd = getelementptr inbounds nuw [24 x i8], ptr %i.kc, i64 %i.jy ; 2 uses
  store i8 1, ptr %i.kd, align 8
  %.sroa.5299.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.kd, i64 8
  store i64 %i.jx, ptr %.sroa.5299.0..sroa_idx.i, align 8
  br label %bb.au

bb.fk:                                            ; preds = %bb.fl
  %i.ke = landingpad { ptr, i32 }
          cleanup
  br label %bb.z

bb.fl:                                            ; preds = %bb.aa, %bb.aa, %bb.aa, %bb.aa, %bb.aa, %bb.aa, %bb.aa
  %i.kf = invoke noundef nonnull ptr @_RNvMs_NtNtNtCsgIATGCnso3Z_22wasmtime_internal_core5error6macros10formattingNtNtB8_5error5Error16from_format_args(ptr noundef nonnull @49, ptr noundef nonnull inttoptr (i64 179 to ptr))
          to label %.loopexit unwind label %bb.fk

bb.fm:                                            ; preds = %bb.l
  invoke void @_RNvNtNtCskKLDkoKarTP_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @50) #39
          to label %.noexc12 unwind label %bb.fo

.noexc12:                                         ; preds = %bb.fm
  unreachable

bb.fn:                                            ; preds = %bb.l
  invoke void @_RNvNtNtCskKLDkoKarTP_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @50) #39
          to label %.noexc13 unwind label %bb.fo

.noexc13:                                         ; preds = %bb.fn
  unreachable

bb.fo:                                            ; preds = %bb.fn, %bb.fm
  %i.kg = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit:                                        ; preds = %bb.dy, %bb.ed, %bb.el, %bb.eq, %bb.ey, %bb.fd, %_RNvXsd_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCsiOkGTpNE17y_8wasmtime7runtime6values3ValEINtNtNtCskKLDkoKarTP_4core3ops5index5IndexjE5indexCs7gfv9tzbXmh_6yara_x.exit.i, %bb.y, %bb.bm, %bb.ca, %bb.cp, %bb.cq, %bb.df, %bb.dg, %bb.dv, %bb.dw, %bb.fl
  %.sroa.18.0.i = phi ptr [ %.val82.i, %_RNvXsd_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCsiOkGTpNE17y_8wasmtime7runtime6values3ValEINtNtNtCskKLDkoKarTP_4core3ops5index5IndexjE5indexCs7gfv9tzbXmh_6yara_x.exit.i ], [ %i.ck, %bb.y ], [ %i.ew, %bb.bm ], [ %i.fn, %bb.ca ], [ %i.gi, %bb.cq ], [ %i.gg, %bb.cp ], [ %i.hd, %bb.dg ], [ %i.hb, %bb.df ], [ %i.hy, %bb.dw ], [ %i.hw, %bb.dv ], [ %i.kf, %bb.fl ], [ %i.jo, %bb.ey ], [ %i.iv, %bb.el ], [ %i.ju, %bb.fd ], [ %i.ic, %bb.dy ], [ %i.jb, %bb.eq ], [ %i.ii, %bb.ed ]
  %.sroa.02.0.i = phi i64 [ 0, %_RNvXsd_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCsiOkGTpNE17y_8wasmtime7runtime6values3ValEINtNtNtCskKLDkoKarTP_4core3ops5index5IndexjE5indexCs7gfv9tzbXmh_6yara_x.exit.i ], [ 1, %bb.y ], [ 1, %bb.bm ], [ 1, %bb.ca ], [ 1, %bb.cq ], [ 1, %bb.cp ], [ 1, %bb.dg ], [ 1, %bb.df ], [ 1, %bb.dw ], [ 1, %bb.dv ], [ 1, %bb.fl ], [ 1, %bb.fd ], [ 1, %bb.ey ], [ 1, %bb.eq ], [ 1, %bb.el ], [ 1, %bb.ed ], [ 1, %bb.dy ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  store i8 1, ptr %i.ap, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.253.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.2.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  br label %common.ret
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNCNvMsd_NtNtCsiOkGTpNE17y_8wasmtime7runtime5storeNtB7_11StoreOpaque17allocate_instance0Cs7gfv9tzbXmh_6yara_x(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull align 8 %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [56 x i8], align 8                ; 4 uses
  %i.b = alloca [56 x i8], align 8                ; 4 uses
  %i.c = alloca [56 x i8], align 8                ; 12 uses
  %.sroa.5.i76.i = alloca [40 x i8], align 8      ; 7 uses
  %i.d = alloca [56 x i8], align 8                ; 8 uses
  %i.e = alloca [128 x i8], align 8               ; 4 uses
  %i.f = alloca [128 x i8], align 8               ; 4 uses
  %i.g = alloca [128 x i8], align 8               ; 12 uses
  %.sroa.5.i.i = alloca [112 x i8], align 8       ; 7 uses
  %i.h = alloca [128 x i8], align 8               ; 8 uses
  %i.i = alloca [24 x i8], align 8                ; 12 uses
  %i.j = alloca [24 x i8], align 8                ; 12 uses
  %i.k = alloca [24 x i8], align 8                ; 5 uses
  %i.l = alloca [24 x i8], align 8                ; 5 uses
  %i.m = alloca [112 x i8], align 8               ; 5 uses
  %i.n = alloca [24 x i8], align 8                ; 16 uses
  %i.o = alloca [16 x i8], align 8                ; 8 uses
  %i.p = alloca [40 x i8], align 8                ; 9 uses
  %i.q = alloca [32 x i8], align 8                ; 8 uses
  %i.r = alloca [8 x i8], align 8                 ; 5 uses
  %i.s = alloca [16 x i8], align 8                ; 8 uses
  %i.t = alloca [40 x i8], align 8                ; 9 uses
  %i.u = alloca [48 x i8], align 8                ; 10 uses
  %i.v = alloca [8 x i8], align 8                 ; 5 uses
  %i.w = alloca [8 x i8], align 8                 ; 7 uses
  %i.x = alloca [4 x i8], align 4                 ; 8 uses
  %i.y = alloca [8 x i8], align 8                 ; 7 uses
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 612 ; 3 uses
  %i.aa = load i8, ptr %i.z, align 4, !range !12, !noundef !4
  switch i8 %i.aa, label %default.unreachable140 [
    i8 0, label %bb.b
    i8 1, label %bb.e
    i8 2, label %bb.f
    i8 3, label %bb.g
  ]

default.unreachable140:                           ; preds = %bb.ca, %bb.an, %bb.g, %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.ac = load ptr, ptr %1, align 8, !nonnull !4, !align !15, !noundef !4 ; 4 uses
  store ptr %i.ac, ptr %i.ab, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.ae = load ptr, ptr %i.ad, align 8, !align !15, !noundef !4
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 128 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 104
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.af, ptr noundef nonnull align 8 dereferenceable(16) %i.ag, i64 16, i1 false)
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ai = load ptr, ptr %i.ah, align 8, !nonnull !4, !align !15, !noundef !4
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 608
  %i.al = getelementptr i8, ptr %i.ac, i64 168
  %.val43 = load i64, ptr %i.al, align 8, !noundef !4 ; 2 uses
  %i.am = icmp ult i64 %.val43, 576460752303423488
  tail call void @llvm.assume(i1 %i.am)
  %i.an = trunc i64 %.val43 to i32                ; 2 uses
  store i32 %i.an, ptr %i.ak, align 8
  %i.ao = load ptr, ptr %i.af, align 8, !noundef !4 ; 2 uses
  %.not = icmp eq ptr %i.ao, null
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 136
  br label %.thread141

bb.d:                                             ; preds = %bb.b
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ac, i64 536
  %.val44 = load ptr, ptr %i.aq, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.val44, i64 568
  %i.as = load ptr, ptr %i.ar, align 8, !nonnull !4, !noundef !4
  %i.at = getelementptr inbounds nuw i8, ptr %.val44, i64 576
  br label %.thread141

.thread141:                                       ; preds = %bb.c, %bb.d
  %.sroa.3.0.in = phi ptr [ %i.ap, %bb.c ], [ %i.at, %bb.d ]
  %.sroa.0.0 = phi ptr [ %i.ao, %bb.c ], [ %i.as, %bb.d ]
  %.sroa.3.0 = load ptr, ptr %.sroa.3.0.in, align 8, !nonnull !4, !align !15, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y)
  %.sroa.9.sroa.8.0..sroa.9.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 168
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.9.sroa.8.0..sroa.9.0..sroa_idx.sroa_idx, ptr noundef nonnull align 8 dereferenceable(80) %i.aj, i64 80, i1 false)
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 144
  store ptr %.sroa.0.0, ptr %i.au, align 8
  %.sroa.869.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 152
  store ptr %.sroa.3.0, ptr %.sroa.869.0..sroa_idx, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 160
  store ptr %i.ai, ptr %.sroa.9.0..sroa_idx, align 8
  %.sroa.9.sroa.9.0..sroa.9.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 248
  store ptr %i.ac, ptr %.sroa.9.sroa.9.0..sroa.9.0..sroa_idx.sroa_idx, align 8
  %.sroa.9.sroa.10.0..sroa.9.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 256
  store ptr %i.ae, ptr %.sroa.9.sroa.10.0..sroa.9.0..sroa_idx.sroa_idx, align 8
  %.sroa.9.sroa.11.0..sroa.9.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 264
  store i32 %i.an, ptr %.sroa.9.sroa.11.0..sroa.9.0..sroa_idx.sroa_idx, align 8
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 472
  store i8 0, ptr %.sroa.11.0..sroa_idx, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 472
  br label %bb.i

bb.e:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCskKLDkoKarTP_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @70) #39
  unreachable

bb.f:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCskKLDkoKarTP_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @70) #39
  unreachable

.body:                                            ; preds = %bb.dr, %bb.h
  %i.ax = phi ptr [ %i.bb, %bb.h ], [ %i.ay, %bb.dr ]
  %.pn11 = phi { ptr, i32 } [ %.pn42.pn.i, %bb.h ], [ %i.od, %bb.dr ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMs4_NtNtNtNtCsiOkGTpNE17y_8wasmtime7runtime2vm8instance9allocatorDNtBJ_17InstanceAllocatorEL_15allocate_module0ECs7gfv9tzbXmh_6yara_x(ptr noundef nonnull align 8 %i.ax) #34
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsiOkGTpNE17y_8wasmtime7runtime2vm8instance13OwnedInstanceNtBE_8InstanceEECs7gfv9tzbXmh_6yara_x.exit unwind label %bb.ew

bb.g:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y)
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 472
  %.pre = load i8, ptr %.phi.trans.insert, align 8, !range !22, !noalias !2614
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 144 ; 8 uses
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 472 ; 7 uses
  switch i8 %.pre, label %default.unreachable140 [
    i8 0, label %bb.i
    i8 1, label %bb.al
    i8 2, label %bb.am
    i8 3, label %bb.an
    i8 4, label %bb.ca
  ]

bb.h:                                             ; preds = %bb.dq, %.body74.i, %bb.aj, %bb.ai, %.body64.i, %.body.i, %bb.j
  %i.ba = phi ptr [ %i.bc, %bb.ai ], [ %i.bc, %bb.j ], [ %i.ir, %bb.dq ], [ %i.iu, %.body74.i ], [ %i.bc, %.body.i ], [ %i.bc, %.body64.i ], [ %i.bc, %bb.aj ]
  %i.bb = phi ptr [ %i.bd, %bb.ai ], [ %i.bd, %bb.j ], [ %i.is, %bb.dq ], [ %i.iv, %.body74.i ], [ %i.bd, %.body.i ], [ %i.bd, %.body64.i ], [ %i.bd, %bb.aj ]
  %.pn42.pn.i = phi { ptr, i32 } [ %eh.lpad-body60.i, %bb.ai ], [ %i.bq, %bb.j ], [ %i.oc, %bb.dq ], [ %.pn33.pn.i, %.body74.i ], [ %eh.lpad-body.i, %.body.i ], [ %.pn36.i, %.body64.i ], [ %i.dm, %bb.aj ]
  store i8 2, ptr %i.ba, align 8, !noalias !2614
  br label %.body

bb.i:                                             ; preds = %.thread141, %bb.g
  %i.bc = phi ptr [ %i.aw, %.thread141 ], [ %i.az, %bb.g ] ; 8 uses
  %i.bd = phi ptr [ %i.av, %.thread141 ], [ %i.ay, %bb.g ] ; 9 uses
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 272 ; 2 uses
  %i.bf = load ptr, ptr %i.bd, align 8, !noalias !2614, !nonnull !4, !noundef !4 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.bh = load ptr, ptr %i.bg, align 8, !noalias !2614, !nonnull !4, !align !15, !noundef !4 ; 2 uses
  store ptr %i.bf, ptr %i.be, align 8, !noalias !2614
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 280 ; 2 uses
  store ptr %i.bh, ptr %i.bi, align 8, !noalias !2614
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 288 ; 4 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 160
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.bj, ptr noundef nonnull align 8 dereferenceable(112) %i.bk, i64 112, i1 false), !noalias !2614
  %i.bl = load ptr, ptr %i.bj, align 8, !noalias !2614, !nonnull !4, !align !15, !noundef !4 ; 2 uses
  %.val.i = load i64, ptr %i.bl, align 8, !range !14, !noundef !4
  %i.bm = getelementptr i8, ptr %i.bl, i64 8
  %.val45.i = load ptr, ptr %i.bm, align 8
  %3 = shl nuw nsw i64 %.val.i, 5
  %.sroa.0.0.v.i.i = xor i64 %3, 96
  %.sroa.0.0.i.i = getelementptr inbounds nuw i8, ptr %.val45.i, i64 %.sroa.0.0.v.i.i
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bh, i64 32
  %i.bo = load ptr, ptr %i.bn, align 8, !invariant.load !4, !nonnull !4
  %i.bp = invoke noundef ptr %i.bo(ptr noundef nonnull %i.bf)
          to label %bb.k unwind label %bb.j       ; 2 uses

bb.j:                                             ; preds = %bb.i
  %i.bq = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

bb.k:                                             ; preds = %bb.i
  %.not.i = icmp eq ptr %i.bp, null
  br i1 %.not.i, label %bb.l, label %bb.ak

bb.l:                                             ; preds = %bb.k
  %.val47.i = load ptr, ptr %.sroa.0.0.i.i, align 8, !nonnull !4, !noundef !4 ; 4 uses
  %i.br = getelementptr i8, ptr %.val47.i, i64 376
  %.val48.i = load i64, ptr %i.br, align 8, !noundef !4 ; 2 uses
  %i.bs = getelementptr i8, ptr %.val47.i, i64 528
  %.val49.i = load i64, ptr %i.bs, align 8, !noundef !4
  %i.bt = icmp ult i64 %.val48.i, 288230376151711744
  tail call void @llvm.assume(i1 %i.bt)
  %i.bu = sub i64 %.val48.i, %.val49.i            ; 2 uses
  %i.bv = getelementptr i8, ptr %.val47.i, i64 352
  %.val50.i = load i64, ptr %i.bv, align 8, !noundef !4 ; 2 uses
  %i.bw = getelementptr i8, ptr %.val47.i, i64 520
  %.val51.i = load i64, ptr %i.bw, align 8, !noundef !4
  %i.bx = icmp ult i64 %.val50.i, 192153584101141163
  tail call void @llvm.assume(i1 %i.bx)
  %i.by = sub i64 %.val50.i, %.val51.i            ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !2614
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !2615
  store i64 0, ptr %i.j, align 8, !noalias !2615
  %.sroa.45.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 2 uses
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.45.0..sroa_idx.i.i, align 8, !noalias !2615
  %.sroa.56.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 3 uses
  store i64 0, ptr %.sroa.56.0..sroa_idx.i.i, align 8, !noalias !2615
  %i.bz = invoke { i64, i64 } @_RNvMs2_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner11try_reserveCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.j, i64 noundef 0, i64 noundef %i.bu, i64 noundef 8, i64 noundef 128)
          to label %.noexc.i.i unwind label %bb.n, !noalias !2616

.noexc.i.i:                                       ; preds = %bb.l
  %i.ca = extractvalue { i64, i64 } %i.bz, 0
  %.not.i.i.i = icmp eq i64 %i.ca, -1
  br i1 %.not.i.i.i, label %bb.s, label %bb.m

bb.m:                                             ; preds = %.noexc.i.i
  %i.cb = load i64, ptr %.sroa.56.0..sroa_idx.i.i, align 8, !alias.scope !2617, !noalias !2615, !noundef !4 ; 2 uses
  %i.cc = icmp ult i64 %i.cb, 72057594037927936
  call void @llvm.assume(i1 %i.cc)
  %i.cd = call i64 @llvm.uadd.sat.i64(i64 %i.cb, i64 %i.bu)
  %i.ce = invoke noundef nonnull ptr @_RNvMsn_NtNtCsgIATGCnso3Z_22wasmtime_internal_core5error5errorNtB5_13OomOrDynError11new_oom_ptr(i64 noundef %i.cd)
          to label %_RNvMNtCs6NjwAGIF0oQ_16cranelift_entity7primaryINtB2_10PrimaryMapNtNtCsbhAup8j5lif_16wasmtime_environ5types18DefinedMemoryIndexTNtNtNtNtNtCsiOkGTpNE17y_8wasmtime7runtime2vm8instance9allocator21MemoryAllocationIndexNtNtB27_6memory6MemoryEE11try_reserveCs7gfv9tzbXmh_6yara_x.exit.i.i unwind label %bb.n, !noalias !2616

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.cf = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsbhAup8j5lif_16wasmtime_environ11collections11primary_map13TryPrimaryMapNtNtBI_5types18DefinedMemoryIndexTNtNtNtNtNtCsiOkGTpNE17y_8wasmtime7runtime2vm8instance9allocator21MemoryAllocationIndexNtNtB2x_6memory6MemoryEEECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef align 8 dereferenceable(24) %i.j) #34
          to label %.body.i unwind label %bb.q, !noalias !2616

_RNvMNtCs6NjwAGIF0oQ_16cranelift_entity7primaryINtB2_10PrimaryMapNtNtCsbhAup8j5lif_16wasmtime_environ5types18DefinedMemoryIndexTNtNtNtNtNtCsiOkGTpNE17y_8wasmtime7runtime2vm8instance9allocator21MemoryAllocationIndexNtNtB27_6memory6MemoryEE11try_reserveCs7gfv9tzbXmh_6yara_x.exit.i.i: ; preds = %bb.m
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecTNtNtNtNtNtCsiOkGTpNE17y_8wasmtime7runtime2vm8instance9allocator21MemoryAllocationIndexNtNtBM_6memory6MemoryEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsbhAup8j5lif_16wasmtime_environ11collections11primary_map13TryPrimaryMapNtNtBI_5types18DefinedMemoryIndexTNtNtNtNtNtCsiOkGTpNE17y_8wasmtime7runtime2vm8instance9allocator21MemoryAllocationIndexNtNtB2x_6memory6MemoryEEECs7gfv9tzbXmh_6yara_x.exit.i.i unwind label %bb.o, !noalias !2616

bb.o:                                             ; preds = %_RNvMNtCs6NjwAGIF0oQ_16cranelift_entity7primaryINtB2_10PrimaryMapNtNtCsbhAup8j5lif_16wasmtime_environ5types18DefinedMemoryIndexTNtNtNtNtNtCsiOkGTpNE17y_8wasmtime7runtime2vm8instance9allocator21MemoryAllocationIndexNtNtB27_6memory6MemoryEE11try_reserveCs7gfv9tzbXmh_6yara_x.exit.i.i
  %i.cg = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecTNtNtNtNtNtCsiOkGTpNE17y_8wasmtime7runtime2vm8instance9allocator21MemoryAllocationIndexNtNtBT_6memory6MemoryEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %.body.i unwind label %bb.p, !noalias !2616

bb.p:                                             ; preds = %bb.o
  %i.ch = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #38, !noalias !2616
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsbhAup8j5lif_16wasmtime_environ11collections11primary_map13TryPrimaryMapNtNtBI_5types18DefinedMemoryIndexTNtNtNtNtNtCsiOkGTpNE17y_8wasmtime7runtime2vm8instance9allocator21MemoryAllocationIndexNtNtB2x_6memory6MemoryEEECs7gfv9tzbXmh_6yara_x.exit.i.i: ; preds = %_RNvMNtCs6NjwAGIF0oQ_16cranelift_entity7primaryINtB2_10PrimaryMapNtNtCsbhAup8j5lif_16wasmtime_environ5types18DefinedMemoryIndexTNtNtNtNtNtCsiOkGTpNE17y_8wasmtime7runtime2vm8instance9allocator21MemoryAllocationIndexNtNtB27_6memory6MemoryEE11try_reserveCs7gfv9tzbXmh_6yara_x.exit.i.i
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecTNtNtNtNtNtCsiOkGTpNE17y_8wasmtime7runtime2vm8instance9allocator21MemoryAllocationIndexNtNtBT_6memory6MemoryEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %.thread.i unwind label %bb.r

.thread.i:                                        ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsbhAup8j5lif_16wasmtime_environ11collections11primary_map13TryPrimaryMapNtNtBI_5types18DefinedMemoryIndexTNtNtNtNtNtCsiOkGTpNE17y_8wasmtime7runtime2vm8instance9allocator21MemoryAllocationIndexNtNtB2x_6memory6MemoryEEECs7gfv9tzbXmh_6yara_x.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !2615
  br label %bb.t

bb.q:                                             ; preds = %bb.n
  %i.ci = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #38, !noalias !2616
  unreachable

bb.r:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsbhAup8j5lif_16wasmtime_environ11collections11primary_map13TryPrimaryMapNtNtBI_5types18DefinedMemoryIndexTNtNtNtNtNtCsiOkGTpNE17y_8wasmtime7runtime2vm8instance9allocator21MemoryAllocationIndexNtNtB2x_6memory6MemoryEEECs7gfv9tzbXmh_6yara_x.exit.i.i
  %i.cj = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.r, %bb.o, %bb.n
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.cj, %bb.r ], [ %i.cg, %bb.o ], [ %i.cf, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !2614
  br label %bb.h

bb.s:                                             ; preds = %.noexc.i.i
  %.sroa.0137.0.copyload.i = load i64, ptr %i.j, align 8, !noalias !2614 ; 2 uses
  %.sroa.7.0.copyload.i = load ptr, ptr %.sroa.45.0..sroa_idx.i.i, align 8, !noalias !2614 ; 2 uses
  %.sroa.10138.0.copyload.i = load i64, ptr %.sroa.56.0..sroa_idx.i.i, align 8, !noalias !2614
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !2615
  %i.ck = icmp eq i64 %.sroa.0137.0.copyload.i, -1
  br i1 %i.ck, label %bb.t, label %_RNvXsp_NtCskKLDkoKarTP_4core6resultINtB5_6ResultINtNtNtCsbhAup8j5lif_16wasmtime_environ11collections11primary_map13TryPrimaryMapNtNtBR_5types18DefinedMemoryIndexTNtNtNtNtNtCsiOkGTpNE17y_8wasmtime7runtime2vm8instance9allocator21MemoryAllocationIndexNtNtB2G_6memory6MemoryEENtNtNtCsgIATGCnso3Z_22wasmtime_internal_core5error3oom11OutOfMemoryENtNtNtB7_3ops9try_trait3Try6branchCs7gfv9tzbXmh_6yara_x.exit.i

bb.t:                                             ; preds = %bb.s, %.thread.i
  %.sroa.7.0179.i = phi ptr [ %i.ce, %.thread.i ], [ %.sroa.7.0.copyload.i, %bb.s ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.7.0179.i) ]
  %i.cl = invoke noundef nonnull ptr @_RNvXs4_NtNtCsgIATGCnso3Z_22wasmtime_internal_core5error5errorNtB5_5ErrorINtNtCskKLDkoKarTP_4core7convert4FromNtNtB7_3oom11OutOfMemoryE4fromCs7gfv9tzbXmh_6yara_x(ptr noundef nonnull %.sroa.7.0179.i)
          to label %.sink.split.i unwind label %bb.aj

_RNvXsp_NtCskKLDkoKarTP_4core6resultINtB5_6ResultINtNtNtCsbhAup8j5lif_16wasmtime_environ11collections11primary_map13TryPrimaryMapNtNtBR_5types18DefinedMemoryIndexTNtNtNtNtNtCsiOkGTpNE17y_8wasmtime7runtime2vm8instance9allocator21MemoryAllocationIndexNtNtB2G_6memory6MemoryEENtNtNtCsgIATGCnso3Z_22wasmtime_internal_core5error3oom11OutOfMemoryENtNtNtB7_3ops9try_trait3Try6branchCs7gfv9tzbXmh_6yara_x.exit.i: ; preds = %bb.s
  store i64 %.sroa.0137.0.copyload.i, ptr %i.n, align 8, !noalias !2614
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store ptr %.sroa.7.0.copyload.i, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !2614
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  store i64 %.sroa.10138.0.copyload.i, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !2614
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !2618
  store i64 0, ptr %i.i, align 8, !noalias !2618
  %.sroa.45.0..sroa_idx.i53.i = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 2 uses
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.45.0..sroa_idx.i53.i, align 8, !noalias !2618
  %.sroa.56.0..sroa_idx.i54.i = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 3 uses
  store i64 0, ptr %.sroa.56.0..sroa_idx.i54.i, align 8, !noalias !2618
  %i.cm = invoke { i64, i64 } @_RNvMs2_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner11try_reserveCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.i, i64 noundef 0, i64 noundef %i.by, i64 noundef 8, i64 noundef 56)
          to label %.noexc.i57.i unwind label %bb.v, !noalias !2619

.noexc.i57.i:                                     ; preds = %_RNvXsp_NtCskKLDkoKarTP_4core6resultINtB5_6ResultINtNtNtCsbhAup8j5lif_16wasmtime_environ11collections11primary_map13TryPrimaryMapNtNtBR_5types18DefinedMemoryIndexTNtNtNtNtNtCsiOkGTpNE17y_8wasmtime7runtime2vm8instance9allocator21MemoryAllocationIndexNtNtB2G_6memory6MemoryEENtNtNtCsgIATGCnso3Z_22wasmtime_internal_core5error3oom11OutOfMemoryENtNtNtB7_3ops9try_trait3Try6branchCs7gfv9tzbXmh_6yara_x.exit.i
  %i.cn = extractvalue { i64, i64 } %i.cm, 0
  %.not.i.i58.i = icmp eq i64 %i.cn, -1
  br i1 %.not.i.i58.i, label %bb.aa, label %bb.u

bb.u:                                             ; preds = %.noexc.i57.i
  %i.co = load i64, ptr %.sroa.56.0..sroa_idx.i54.i, align 8, !alias.scope !2620, !noalias !2618, !noundef !4 ; 2 uses
  %i.cp = icmp ult i64 %i.co, 164703072086692426
  call void @llvm.assume(i1 %i.cp)
  %i.cq = call i64 @llvm.uadd.sat.i64(i64 %i.co, i64 %i.by)
  %i.cr = invoke noundef nonnull ptr @_RNvMsn_NtNtCsgIATGCnso3Z_22wasmtime_internal_core5error5errorNtB5_13OomOrDynError11new_oom_ptr(i64 noundef %i.cq)
          to label %_RNvMNtCs6NjwAGIF0oQ_16cranelift_entity7primaryINtB2_10PrimaryMapNtNtCsbhAup8j5lif_16wasmtime_environ5types17DefinedTableIndexTNtNtNtNtNtCsiOkGTpNE17y_8wasmtime7runtime2vm8instance9allocator20TableAllocationIndexNtNtB26_5table5TableEE11try_reserveCs7gfv9tzbXmh_6yara_x.exit.i.i unwind label %bb.v, !noalias !2619

bb.v:                                             ; preds = %bb.u, %_RNvXsp_NtCskKLDkoKarTP_4core6resultINtB5_6ResultINtNtNtCsbhAup8j5lif_16wasmtime_environ11collections11primary_map13TryPrimaryMapNtNtBR_5types18DefinedMemoryIndexTNtNtNtNtNtCsiOkGTpNE17y_8wasmtime7runtime2vm8instance9allocator21MemoryAllocationIndexNtNtB2G_6memory6MemoryEENtNtNtCsgIATGCnso3Z_22wasmtime_internal_core5error3oom11OutOfMemoryENtNtNtB7_3ops9try_trait3Try6branchCs7gfv9tzbXmh_6yara_x.exit.i
  %i.cs = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsbhAup8j5lif_16wasmtime_environ11collections11primary_map13TryPrimaryMapNtNtBI_5types17DefinedTableIndexTNtNtNtNtNtCsiOkGTpNE17y_8wasmtime7runtime2vm8instance9allocator20TableAllocationIndexNtNtB2w_5table5TableEEECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef align 8 dereferenceable(24) %i.i) #34
          to label %.body59.i unwind label %bb.y, !noalias !2619

_RNvMNtCs6NjwAGIF0oQ_16cranelift_entity7primaryINtB2_10PrimaryMapNtNtCsbhAup8j5lif_16wasmtime_environ5types17DefinedTableIndexTNtNtNtNtNtCsiOkGTpNE17y_8wasmtime7runtime2vm8instance9allocator20TableAllocationIndexNtNtB26_5table5TableEE11try_reserveCs7gfv9tzbXmh_6yara_x.exit.i.i: ; preds = %bb.u
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecTNtNtNtNtNtCsiOkGTpNE17y_8wasmtime7runtime2vm8instance9allocator20TableAllocationIndexNtNtBM_5table5TableEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsbhAup8j5lif_16wasmtime_environ11collections11primary_map13TryPrimaryMapNtNtBI_5types17DefinedTableIndexTNtNtNtNtNtCsiOkGTpNE17y_8wasmtime7runtime2vm8instance9allocator20TableAllocationIndexNtNtB2w_5table5TableEEECs7gfv9tzbXmh_6yara_x.exit.i.i unwind label %bb.w, !noalias !2619

bb.w:                                             ; preds = %_RNvMNtCs6NjwAGIF0oQ_16cranelift_entity7primaryINtB2_10PrimaryMapNtNtCsbhAup8j5lif_16wasmtime_environ5types17DefinedTableIndexTNtNtNtNtNtCsiOkGTpNE17y_8wasmtime7runtime2vm8instance9allocator20TableAllocationIndexNtNtB26_5table5TableEE11try_reserveCs7gfv9tzbXmh_6yara_x.exit.i.i
  %i.ct = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecTNtNtNtNtNtCsiOkGTpNE17y_8wasmtime7runtime2vm8instance9allocator20TableAllocationIndexNtNtBT_5table5TableEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %.body59.i unwind label %bb.x, !noalias !2619

bb.x:                                             ; preds = %bb.w
  %i.cu = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #38, !noalias !2619
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsbhAup8j5lif_16wasmtime_environ11collections11primary_map13TryPrimaryMapNtNtBI_5types17DefinedTableIndexTNtNtNtNtNtCsiOkGTpNE17y_8wasmtime7runtime2vm8instance9allocator20TableAllocationIndexNtNtB2w_5table5TableEEECs7gfv9tzbXmh_6yara_x.exit.i.i: ; preds = %_RNvMNtCs6NjwAGIF0oQ_16cranelift_entity7primaryINtB2_10PrimaryMapNtNtCsbhAup8j5lif_16wasmtime_environ5types17DefinedTableIndexTNtNtNtNtNtCsiOkGTpNE17y_8wasmtime7runtime2vm8instance9allocator20TableAllocationIndexNtNtB26_5table5TableEE11try_reserveCs7gfv9tzbXmh_6yara_x.exit.i.i
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecTNtNtNtNtNtCsiOkGTpNE17y_8wasmtime7runtime2vm8instance9allocator20TableAllocationIndexNtNtBT_5table5TableEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %.thread185.i unwind label %bb.z

.thread185.i:                                     ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsbhAup8j5lif_16wasmtime_environ11collections11primary_map13TryPrimaryMapNtNtBI_5types17DefinedTableIndexTNtNtNtNtNtCsiOkGTpNE17y_8wasmtime7runtime2vm8instance9allocator20TableAllocationIndexNtNtB2w_5table5TableEEECs7gfv9tzbXmh_6yara_x.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !2618
  br label %bb.ab

bb.y:                                             ; preds = %bb.v
  %i.cv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #38, !noalias !2619
  unreachable

bb.z:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsbhAup8j5lif_16wasmtime_environ11collections11primary_map13TryPrimaryMapNtNtBI_5types17DefinedTableIndexTNtNtNtNtNtCsiOkGTpNE17y_8wasmtime7runtime2vm8instance9allocator20TableAllocationIndexNtNtB2w_5table5TableEEECs7gfv9tzbXmh_6yara_x.exit.i.i
  %i.cw = landingpad { ptr, i32 }
          cleanup
  br label %.body59.i

.body59.i:                                        ; preds = %bb.z, %bb.w, %bb.v
  %eh.lpad-body60.i = phi { ptr, i32 } [ %i.cw, %bb.z ], [ %i.ct, %bb.w ], [ %i.cs, %bb.v ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsbhAup8j5lif_16wasmtime_environ11collections11primary_map13TryPrimaryMapNtNtBI_5types18DefinedMemoryIndexTNtNtNtNtNtCsiOkGTpNE17y_8wasmtime7runtime2vm8instance9allocator21MemoryAllocationIndexNtNtB2x_6memory6MemoryEEECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef align 8 dereferenceable(24) %i.n) #34
          to label %bb.ai unwind label %bb.ah

bb.aa:                                            ; preds = %.noexc.i57.i
  %.sroa.0148.0.copyload.i = load i64, ptr %i.i, align 8, !noalias !2614 ; 2 uses
  %.sroa.7149.0.copyload.i = load ptr, ptr %.sroa.45.0..sroa_idx.i53.i, align 8, !noalias !2614 ; 2 uses
  %.sroa.10150.0.copyload.i = load i64, ptr %.sroa.56.0..sroa_idx.i54.i, align 8, !noalias !2614
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !2618
  %i.cx = icmp eq i64 %.sroa.0148.0.copyload.i, -1
  br i1 %i.cx, label %bb.ab, label %.thread223.i

bb.ab:                                            ; preds = %bb.aa, %.thread185.i
  %.sroa.7149.0189.i = phi ptr [ %i.cr, %.thread185.i ], [ %.sroa.7149.0.copyload.i, %bb.aa ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.7149.0189.i) ]
  %i.cy = invoke noundef nonnull ptr @_RNvXs4_NtNtCsgIATGCnso3Z_22wasmtime_internal_core5error5errorNtB5_5ErrorINtNtCskKLDkoKarTP_4core7convert4FromNtNtB7_3oom11OutOfMemoryE4fromCs7gfv9tzbXmh_6yara_x(ptr noundef nonnull %.sroa.7149.0189.i)
          to label %bb.ad unwind label %bb.ac

.thread223.i:                                     ; preds = %bb.aa
  %i.cz = load ptr, ptr %i.be, align 8, !noalias !2614, !nonnull !4, !noundef !4 ; 3 uses
  %i.da = load ptr, ptr %i.bi, align 8, !noalias !2614, !nonnull !4, !align !15, !noundef !4 ; 3 uses
  %i.db = getelementptr inbounds nuw i8, ptr %1, i64 400 ; 3 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %1, i64 464
  store i8 1, ptr %i.dc, align 8, !noalias !2614
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.db, ptr noundef nonnull align 8 dereferenceable(24) %i.n, i64 24, i1 false), !noalias !2614
  %i.dd = getelementptr inbounds nuw i8, ptr %1, i64 424
  store i64 %.sroa.0148.0.copyload.i, ptr %i.dd, align 8, !noalias !2614
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 432
  store ptr %.sroa.7149.0.copyload.i, ptr %.sroa.2.0..sroa_idx.i, align 8, !noalias !2614
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 440
  store i64 %.sroa.10150.0.copyload.i, ptr %.sroa.3.0..sroa_idx.i, align 8, !noalias !2614
  %i.de = getelementptr inbounds nuw i8, ptr %1, i64 448
  store ptr %i.cz, ptr %i.de, align 8, !noalias !2614
  %i.df = getelementptr inbounds nuw i8, ptr %1, i64 456
  store ptr %i.da, ptr %i.df, align 8, !noalias !2614
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !2614
  %i.dg = getelementptr inbounds nuw i8, ptr %1, i64 480 ; 2 uses
  store ptr %i.cz, ptr %i.dg, align 8, !noalias !2614
  %.sroa.8158.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 488
  store ptr %i.da, ptr %.sroa.8158.0..sroa_idx.i, align 8, !noalias !2614
  %.sroa.9159.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 496
  store ptr %i.bj, ptr %.sroa.9159.0..sroa_idx.i, align 8, !noalias !2614
  %.sroa.10160.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 504
  store ptr %i.db, ptr %.sroa.10160.0..sroa_idx.i, align 8, !noalias !2614
  %.sroa.12.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 600 ; 2 uses
  store i8 0, ptr %.sroa.12.0..sroa_idx.i, align 8, !noalias !2614
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !2614
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i.i)
  br label %bb.ao

bb.ac:                                            ; preds = %bb.ab
  %i.dh = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsbhAup8j5lif_16wasmtime_environ11collections11primary_map13TryPrimaryMapNtNtBI_5types18DefinedMemoryIndexTNtNtNtNtNtCsiOkGTpNE17y_8wasmtime7runtime2vm8instance9allocator21MemoryAllocationIndexNtNtB2x_6memory6MemoryEEECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef align 8 dereferenceable(24) %i.n) #34
          to label %.body64.i unwind label %bb.ah

bb.ad:                                            ; preds = %bb.ab
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecTNtNtNtNtNtCsiOkGTpNE17y_8wasmtime7runtime2vm8instance9allocator21MemoryAllocationIndexNtNtBM_6memory6MemoryEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.n)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCs6NjwAGIF0oQ_16cranelift_entity7primary10PrimaryMapNtNtCsbhAup8j5lif_16wasmtime_environ5types18DefinedMemoryIndexTNtNtNtNtNtCsiOkGTpNE17y_8wasmtime7runtime2vm8instance9allocator21MemoryAllocationIndexNtNtB2D_6memory6MemoryEEECs7gfv9tzbXmh_6yara_x.exit.i.i unwind label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.di = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecTNtNtNtNtNtCsiOkGTpNE17y_8wasmtime7runtime2vm8instance9allocator21MemoryAllocationIndexNtNtBT_6memory6MemoryEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.n)
          to label %.body64.i unwind label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.dj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #38
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCs6NjwAGIF0oQ_16cranelift_entity7primary10PrimaryMapNtNtCsbhAup8j5lif_16wasmtime_environ5types18DefinedMemoryIndexTNtNtNtNtNtCsiOkGTpNE17y_8wasmtime7runtime2vm8instance9allocator21MemoryAllocationIndexNtNtB2D_6memory6MemoryEEECs7gfv9tzbXmh_6yara_x.exit.i.i: ; preds = %bb.ad
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecTNtNtNtNtNtCsiOkGTpNE17y_8wasmtime7runtime2vm8instance9allocator21MemoryAllocationIndexNtNtBT_6memory6MemoryEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.n)
          to label %.sink.split.i unwind label %bb.ag

.body64.i:                                        ; preds = %bb.ag, %bb.ae, %bb.ac
  %.pn36.i = phi { ptr, i32 } [ %i.dh, %bb.ac ], [ %i.dk, %bb.ag ], [ %i.di, %bb.ae ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !2614
  br label %bb.h

bb.ag:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCs6NjwAGIF0oQ_16cranelift_entity7primary10PrimaryMapNtNtCsbhAup8j5lif_16wasmtime_environ5types18DefinedMemoryIndexTNtNtNtNtNtCsiOkGTpNE17y_8wasmtime7runtime2vm8instance9allocator21MemoryAllocationIndexNtNtB2D_6memory6MemoryEEECs7gfv9tzbXmh_6yara_x.exit.i.i
  %i.dk = landingpad { ptr, i32 }
          cleanup
  br label %.body64.i

bb.ah:                                            ; preds = %.body117.i, %.body74.i, %.body68.i, %bb.ac, %.body59.i
  %i.dl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #38
  unreachable

bb.ai:                                            ; preds = %.body59.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !2614
  br label %bb.h

bb.aj:                                            ; preds = %bb.t
  %i.dm = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !2614
  br label %bb.h

.sink.split.i:                                    ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCs6NjwAGIF0oQ_16cranelift_entity7primary10PrimaryMapNtNtCsbhAup8j5lif_16wasmtime_environ5types18DefinedMemoryIndexTNtNtNtNtNtCsiOkGTpNE17y_8wasmtime7runtime2vm8instance9allocator21MemoryAllocationIndexNtNtB2D_6memory6MemoryEEECs7gfv9tzbXmh_6yara_x.exit.i.i, %bb.t
  %.sroa.8.1.ph.i = phi ptr [ %i.cy, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCs6NjwAGIF0oQ_16cranelift_entity7primary10PrimaryMapNtNtCsbhAup8j5lif_16wasmtime_environ5types18DefinedMemoryIndexTNtNtNtNtNtCsiOkGTpNE17y_8wasmtime7runtime2vm8instance9allocator21MemoryAllocationIndexNtNtB2D_6memory6MemoryEEECs7gfv9tzbXmh_6yara_x.exit.i.i ], [ %i.cl, %bb.t ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !2614
  br label %bb.ak

bb.ak:                                            ; preds = %bb.bz, %.sink.split.i, %bb.k
  %i.dn = phi ptr [ %i.bc, %bb.k ], [ %i.ir, %bb.bz ], [ %i.bc, %.sink.split.i ]
  %i.do = phi ptr [ %i.bd, %bb.k ], [ %i.is, %bb.bz ], [ %i.bd, %.sink.split.i ]
  %.sroa.8.1.i = phi ptr [ %i.bp, %bb.k ], [ %.sroa.8.2.i, %bb.bz ], [ %.sroa.8.1.ph.i, %.sink.split.i ]
  %.sroa.022.1.i = phi i64 [ 1, %bb.k ], [ %.sroa.022.2.i, %bb.bz ], [ 1, %.sink.split.i ]
  store i8 1, ptr %i.dn, align 8, !noalias !2614
  %i.dp = insertvalue { i64, ptr } poison, i64 %.sroa.022.1.i, 0
  %i.dq = insertvalue { i64, ptr } %i.dp, ptr %.sroa.8.1.i, 1
  br label %_RNCNvMs4_NtNtNtNtCsiOkGTpNE17y_8wasmtime7runtime2vm8instance9allocatorDNtB7_17InstanceAllocatorEL_15allocate_module0Cs7gfv9tzbXmh_6yara_x.exit

bb.al:                                            ; preds = %bb.g
  invoke void @_RNvNtNtCskKLDkoKarTP_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @52) #39
          to label %.noexc unwind label %bb.dr

.noexc:                                           ; preds = %bb.al
  unreachable

bb.am:                                            ; preds = %bb.g
  invoke void @_RNvNtNtCskKLDkoKarTP_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @52) #39
          to label %.noexc55 unwind label %bb.dr

.noexc55:                                         ; preds = %bb.am
  unreachable

.body68.i:                                        ; preds = %bb.bx, %.body33.i.i
  %i.dr = phi ptr [ %i.dv, %.body33.i.i ], [ %i.az, %bb.bx ]
  %i.ds = phi ptr [ %i.dw, %.body33.i.i ], [ %i.ay, %bb.bx ]
  %i.dt = phi ptr [ %i.dy, %.body33.i.i ], [ %i.du, %bb.bx ]
  %.pn.i = phi { ptr, i32 } [ %.pn16.pn.pn.pn.i.i, %.body33.i.i ], [ %i.ii, %bb.bx ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMs4_NtNtNtNtCsiOkGTpNE17y_8wasmtime7runtime2vm8instance9allocatorDNtBJ_17InstanceAllocatorEL_17allocate_memories0ECs7gfv9tzbXmh_6yara_x(ptr noundef nonnull align 8 %i.dt) #34
          to label %.body74.i unwind label %bb.ah

bb.an:                                            ; preds = %bb.g
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %1, i64 600 ; 3 uses
  %.pre.i = load i8, ptr %.phi.trans.insert.i, align 8, !range !12, !noalias !2621
  %i.du = getelementptr inbounds nuw i8, ptr %1, i64 480 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !2614
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i.i)
  switch i8 %.pre.i, label %default.unreachable140 [
    i8 0, label %._crit_edge
    i8 1, label %bb.at
    i8 2, label %bb.au
    i8 3, label %bb.av
  ]

._crit_edge:                                      ; preds = %bb.an
  %.pre116 = load ptr, ptr %i.du, align 8, !noalias !2621
  %.phi.trans.insert117 = getelementptr inbounds nuw i8, ptr %1, i64 488
  %.pre118 = load ptr, ptr %.phi.trans.insert117, align 8, !noalias !2621
  %.phi.trans.insert119 = getelementptr inbounds nuw i8, ptr %1, i64 496
  %.pre120 = load ptr, ptr %.phi.trans.insert119, align 8, !noalias !2621
  %.phi.trans.insert121 = getelementptr inbounds nuw i8, ptr %1, i64 504
  %.pre122 = load ptr, ptr %.phi.trans.insert121, align 8, !noalias !2621
  br label %bb.ao

.body33.i.i:                                      ; preds = %bb.bu, %bb.bs, %bb.br, %bb.bm, %bb.bk, %bb.bi, %bb.bd, %bb.bc, %bb.aw
  %i.dv = phi ptr [ %i.fn, %bb.bi ], [ %i.fn, %bb.bk ], [ %i.fn, %bb.bm ], [ %i.eu, %bb.br ], [ %i.fn, %bb.bu ], [ %i.fn, %bb.bc ], [ %i.eu, %bb.bs ], [ %i.fn, %bb.aw ], [ %i.fn, %bb.bd ]
  %i.dw = phi ptr [ %i.fo, %bb.bi ], [ %i.fo, %bb.bk ], [ %i.fo, %bb.bm ], [ %i.ev, %bb.br ], [ %i.fo, %bb.bu ], [ %i.fo, %bb.bc ], [ %i.ev, %bb.bs ], [ %i.fo, %bb.aw ], [ %i.fo, %bb.bd ]
  %i.dx = phi ptr [ %i.fp, %bb.bi ], [ %i.fp, %bb.bk ], [ %i.fp, %bb.bm ], [ %i.ew, %bb.br ], [ %i.fp, %bb.bu ], [ %i.fp, %bb.bc ], [ %i.ew, %bb.bs ], [ %i.fp, %bb.aw ], [ %i.fp, %bb.bd ]
  %i.dy = phi ptr [ %i.fq, %bb.bi ], [ %i.fq, %bb.bk ], [ %i.fq, %bb.bm ], [ %i.ex, %bb.br ], [ %i.fq, %bb.bu ], [ %i.fq, %bb.bc ], [ %i.ex, %bb.bs ], [ %i.fq, %bb.aw ], [ %i.fq, %bb.bd ]
  %.pn16.pn.pn.pn.i.i = phi { ptr, i32 } [ %i.gz, %bb.bi ], [ %i.hb, %bb.bk ], [ %i.hd, %bb.bm ], [ %i.hp, %bb.br ], [ %i.ig, %bb.bu ], [ %i.ge, %bb.bc ], [ %i.ib, %bb.bs ], [ %i.fs, %bb.aw ], [ %i.ge, %bb.bd ]
  store i8 2, ptr %i.dx, align 8, !noalias !2621
  br label %.body68.i

bb.ao:                                            ; preds = %._crit_edge, %.thread223.i
  %i.dz = phi ptr [ %i.bc, %.thread223.i ], [ %i.az, %._crit_edge ]
  %i.ea = phi ptr [ %i.bd, %.thread223.i ], [ %i.ay, %._crit_edge ]
  %i.eb = phi ptr [ %i.db, %.thread223.i ], [ %.pre122, %._crit_edge ]
  %i.ec = phi ptr [ %i.bj, %.thread223.i ], [ %.pre120, %._crit_edge ] ; 2 uses
  %i.ed = phi ptr [ %i.da, %.thread223.i ], [ %.pre118, %._crit_edge ]
  %i.ee = phi ptr [ %i.cz, %.thread223.i ], [ %.pre116, %._crit_edge ]
  %i.ef = phi ptr [ %.sroa.12.0..sroa_idx.i, %.thread223.i ], [ %.phi.trans.insert.i, %._crit_edge ]
  %i.eg = phi ptr [ %i.dg, %.thread223.i ], [ %i.du, %._crit_edge ]
  %i.eh = getelementptr inbounds nuw i8, ptr %1, i64 512
  store ptr %i.ee, ptr %i.eh, align 8, !noalias !2621
  %i.ei = getelementptr inbounds nuw i8, ptr %1, i64 520
  store ptr %i.ed, ptr %i.ei, align 8, !noalias !2621
  %i.ej = getelementptr inbounds nuw i8, ptr %1, i64 528
  store ptr %i.ec, ptr %i.ej, align 8, !noalias !2621
  %i.ek = getelementptr inbounds nuw i8, ptr %1, i64 536
  store ptr %i.eb, ptr %i.ek, align 8, !noalias !2621
  %i.el = load ptr, ptr %i.ec, align 8, !nonnull !4, !align !15, !noundef !4 ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %1, i64 544
  %.val24.i.i = load i64, ptr %i.el, align 8, !range !14, !noundef !4
  %i.en = getelementptr i8, ptr %i.el, i64 8
  %.val25.i.i = load ptr, ptr %i.en, align 8
  %4 = shl nuw nsw i64 %.val24.i.i, 5
  %.sroa.0.0.v.i.i.i = xor i64 %4, 96
  %.sroa.0.0.i.i.i = getelementptr inbounds nuw i8, ptr %.val25.i.i, i64 %.sroa.0.0.v.i.i.i ; 2 uses
  store ptr %.sroa.0.0.i.i.i, ptr %i.em, align 8, !noalias !2621
  %.val28.i.i = load ptr, ptr %.sroa.0.0.i.i.i, align 8, !nonnull !4, !noundef !4 ; 3 uses
  %i.eo = getelementptr i8, ptr %.val28.i.i, i64 368
  %.val29.i.i = load ptr, ptr %i.eo, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.ep = getelementptr i8, ptr %.val28.i.i, i64 376
  %.val30.i.i = load i64, ptr %i.ep, align 8, !noundef !4
  %i.eq = getelementptr inbounds nuw [32 x i8], ptr %.val29.i.i, i64 %.val30.i.i
  %i.er = getelementptr inbounds nuw i8, ptr %.val28.i.i, i64 528
  %i.es = load i64, ptr %i.er, align 8, !noundef !4 ; 2 uses
  %i.et = getelementptr inbounds nuw i8, ptr %1, i64 552
  store ptr %.val29.i.i, ptr %i.et, align 8, !noalias !2621
  %.sroa.038.sroa.8.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 560
  store ptr %i.eq, ptr %.sroa.038.sroa.8.0..sroa_idx.i.i, align 8, !noalias !2621
  %.sroa.038.sroa.9.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 568
  store i64 0, ptr %.sroa.038.sroa.9.0..sroa_idx.i.i, align 8, !noalias !2621
  %.sroa.8.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 576
  store i64 %i.es, ptr %.sroa.8.0..sroa_idx.i.i, align 8, !noalias !2621
  br label %bb.ap

bb.ap:                                            ; preds = %bb.bo, %bb.ao
  %i.eu = phi ptr [ %i.fn, %bb.bo ], [ %i.dz, %bb.ao ] ; 4 uses
  %i.ev = phi ptr [ %i.fo, %bb.bo ], [ %i.ea, %bb.ao ] ; 4 uses
  %i.ew = phi ptr [ %i.fp, %bb.bo ], [ %i.ef, %bb.ao ] ; 5 uses
  %i.ex = phi ptr [ %i.fq, %bb.bo ], [ %i.eg, %bb.ao ] ; 4 uses
  %i.ey = phi i64 [ %.pre.i.i, %bb.bo ], [ %i.es, %bb.ao ] ; 2 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %1, i64 552 ; 3 uses
  %.not.i.i67.i = icmp eq i64 %i.ey, 0
  br i1 %.not.i.i67.i, label %bb.aq, label %bb.as, !prof !5

bb.aq:                                            ; preds = %bb.ap
  %i.fa = load ptr, ptr %i.ez, align 8, !alias.scope !2622, !noalias !2621, !nonnull !4, !noundef !4 ; 3 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %1, i64 560
  %i.fc = load ptr, ptr %i.fb, align 8, !alias.scope !2622, !noalias !2621, !nonnull !4, !noundef !4
  %i.fd = icmp eq ptr %i.fa, %i.fc
  br i1 %i.fd, label %_RNvXs_NtCs6NjwAGIF0oQ_16cranelift_entity4iterINtB4_4IterNtNtCsbhAup8j5lif_16wasmtime_environ5types11MemoryIndexNtBU_6MemoryENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x.exit.i.i.i, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fa, i64 32
  store ptr %i.fe, ptr %i.ez, align 8, !alias.scope !2622, !noalias !2621
  %i.ff = getelementptr inbounds nuw i8, ptr %1, i64 568 ; 2 uses
  %i.fg = load i64, ptr %i.ff, align 8, !alias.scope !2623, !noalias !2621, !noundef !4 ; 2 uses
  %i.fh = add i64 %i.fg, 1
  store i64 %i.fh, ptr %i.ff, align 8, !alias.scope !2623, !noalias !2621
  %i.fi = trunc i64 %i.fg to i32
  br label %_RNvXs_NtCs6NjwAGIF0oQ_16cranelift_entity4iterINtB4_4IterNtNtCsbhAup8j5lif_16wasmtime_environ5types11MemoryIndexNtBU_6MemoryENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x.exit.i.i.i

_RNvXs_NtCs6NjwAGIF0oQ_16cranelift_entity4iterINtB4_4IterNtNtCsbhAup8j5lif_16wasmtime_environ5types11MemoryIndexNtBU_6MemoryENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x.exit.i.i.i: ; preds = %bb.ar, %bb.aq
  %.sroa.2.0.i.i.i.i = phi ptr [ %i.fa, %bb.ar ], [ null, %bb.aq ]
  %.sroa.0.0.i.i.i.i = phi i32 [ %i.fi, %bb.ar ], [ undef, %bb.aq ]
  %i.fj = insertvalue { i32, ptr } poison, i32 %.sroa.0.0.i.i.i.i, 0
  %i.fk = insertvalue { i32, ptr } %i.fj, ptr %.sroa.2.0.i.i.i.i, 1
  br label %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4skipINtB4_4SkipINtNtCs6NjwAGIF0oQ_16cranelift_entity4iter4IterNtNtCsbhAup8j5lif_16wasmtime_environ5types11MemoryIndexNtB1K_6MemoryEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x.exit.i.i

bb.as:                                            ; preds = %bb.ap
  %i.fl = getelementptr inbounds nuw i8, ptr %1, i64 576
  store i64 0, ptr %i.fl, align 8, !alias.scope !2624, !noalias !2621
  %i.fm = call fastcc { i32, ptr } @_RNvYINtNtCs6NjwAGIF0oQ_16cranelift_entity4iter4IterNtNtCsbhAup8j5lif_16wasmtime_environ5types11MemoryIndexNtBP_6MemoryENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator3nthCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.ez, i64 noundef %i.ey) #40, !alias.scope !2624, !noalias !2621
  br label %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4skipINtB4_4SkipINtNtCs6NjwAGIF0oQ_16cranelift_entity4iter4IterNtNtCsbhAup8j5lif_16wasmtime_environ5types11MemoryIndexNtB1K_6MemoryEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x.exit.i.i

bb.at:                                            ; preds = %bb.an
  invoke void @_RNvNtNtCskKLDkoKarTP_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @56) #39
          to label %.noexc70.i unwind label %bb.bx

.noexc70.i:                                       ; preds = %bb.at
  unreachable

bb.au:                                            ; preds = %bb.an
  invoke void @_RNvNtNtCskKLDkoKarTP_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @56) #39
          to label %.noexc71.i unwind label %bb.bx

.noexc71.i:                                       ; preds = %bb.au
  unreachable

bb.av:                                            ; preds = %bb.bt, %bb.an
  %i.fn = phi ptr [ %i.az, %bb.an ], [ %i.eu, %bb.bt ] ; 10 uses
  %i.fo = phi ptr [ %i.ay, %bb.an ], [ %i.ev, %bb.bt ] ; 10 uses
  %i.fp = phi ptr [ %.phi.trans.insert.i, %bb.an ], [ %i.ew, %bb.bt ] ; 10 uses
  %i.fq = phi ptr [ %i.du, %bb.an ], [ %i.ex, %bb.bt ] ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !2621
  %i.fr = getelementptr inbounds nuw i8, ptr %1, i64 584 ; 3 uses
  invoke void @_RNvXs_NtNtCskKLDkoKarTP_4core6future6futureINtNtB8_3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtB4_6Futurep6OutputINtNtB8_6result6ResultTNtNtNtNtNtCsiOkGTpNE17y_8wasmtime7runtime2vm8instance9allocator21MemoryAllocationIndexNtNtB2i_6memory6MemoryENtNtNtCsgIATGCnso3Z_22wasmtime_internal_core5error5error5ErrorENtNtB8_6marker4SendEL_EEB1v_4pollCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull sret([128 x i8]) align 8 captures(address) dereferenceable(128) %i.h, ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.fr, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.ax unwind label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.fs = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !2621
  %.val22.i.i = load ptr, ptr %i.fr, align 8, !noalias !2621
  %i.ft = getelementptr i8, ptr %1, i64 592
  %.val23.i.i = load ptr, ptr %i.ft, align 8, !noalias !2621, !nonnull !4, !align !15, !noundef !4
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultTNtNtNtNtNtCsiOkGTpNE17y_8wasmtime7runtime2vm8instance9allocator21MemoryAllocationIndexNtNtB2w_6memory6MemoryENtNtNtCsgIATGCnso3Z_22wasmtime_internal_core5error5error5ErrorENtNtB4_6marker4SendEL_EEECs7gfv9tzbXmh_6yara_x(ptr %.val22.i.i, ptr nonnull %.val23.i.i) #34
          to label %.body33.i.i unwind label %bb.bw

bb.ax:                                            ; preds = %bb.av
  %i.fu = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.fv = load i64, ptr %i.fu, align 8, !range !30, !noalias !2621, !noundef !4 ; 3 uses
  %i.fw = icmp eq i64 %i.fv, -1
  br i1 %i.fw, label %bb.by, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %.sroa.045.0.copyload.i.i = load ptr, ptr %i.h, align 8, !noalias !2621 ; 3 uses
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %.sroa.5.i.i, ptr noundef nonnull align 8 dereferenceable(112) %.sroa.5.0..sroa_idx.i.i, i64 112, i1 false), !noalias !2621
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !2621
  %.val.i.i = load ptr, ptr %i.fr, align 8, !noalias !2621 ; 5 uses
  %i.fx = getelementptr i8, ptr %1, i64 592
  %.val21.i.i = load ptr, ptr %i.fx, align 8, !noalias !2621, !nonnull !4, !align !15, !noundef !4 ; 5 uses
  %i.fy = load ptr, ptr %.val21.i.i, align 8, !invariant.load !4 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.fy, null
  br i1 %.not.i.i.i.i, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %bb.ay
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i) ]
  invoke void %i.fy(ptr noundef nonnull %.val.i.i)
          to label %bb.ba unwind label %bb.bc

bb.ba:                                            ; preds = %bb.az, %bb.ay
  %i.fz = getelementptr inbounds nuw i8, ptr %.val21.i.i, i64 8
  %i.ga = load i64, ptr %i.fz, align 8, !range !8, !invariant.load !4 ; 2 uses
  %i.gb = icmp eq i64 %i.ga, 0
  br i1 %i.gb, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultTNtNtNtNtNtCsiOkGTpNE17y_8wasmtime7runtime2vm8instance9allocator21MemoryAllocationIndexNtNtB2w_6memory6MemoryENtNtNtCsgIATGCnso3Z_22wasmtime_internal_core5error5error5ErrorENtNtB4_6marker4SendEL_EEECs7gfv9tzbXmh_6yara_x.exit.i.i, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.gc = getelementptr inbounds nuw i8, ptr %.val21.i.i, i64 16
  %i.gd = load i64, ptr %i.gc, align 8, !range !17, !invariant.load !4
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i) ]
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef range(i64 1, 0) %i.ga, i64 noundef range(i64 1, 536870913) %i.gd) #36
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultTNtNtNtNtNtCsiOkGTpNE17y_8wasmtime7runtime2vm8instance9allocator21MemoryAllocationIndexNtNtB2w_6memory6MemoryENtNtNtCsgIATGCnso3Z_22wasmtime_internal_core5error5error5ErrorENtNtB4_6marker4SendEL_EEECs7gfv9tzbXmh_6yara_x.exit.i.i

bb.bc:                                            ; preds = %bb.az
  %i.ge = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %.val21.i.i, i64 8
  %i.gg = load i64, ptr %i.gf, align 8, !range !8, !invariant.load !4 ; 2 uses
  %i.gh = icmp eq i64 %i.gg, 0
  br i1 %i.gh, label %.body33.i.i, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.gi = getelementptr inbounds nuw i8, ptr %.val21.i.i, i64 16
  %i.gj = load i64, ptr %i.gi, align 8, !range !17, !invariant.load !4
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef range(i64 1, 0) %i.gg, i64 noundef range(i64 1, 536870913) %i.gj) #36
  br label %.body33.i.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultTNtNtNtNtNtCsiOkGTpNE17y_8wasmtime7runtime2vm8instance9allocator21MemoryAllocationIndexNtNtB2w_6memory6MemoryENtNtNtCsgIATGCnso3Z_22wasmtime_internal_core5error5error5ErrorENtNtB4_6marker4SendEL_EEECs7gfv9tzbXmh_6yara_x.exit.i.i: ; preds = %bb.bb, %bb.ba
  %i.gk = icmp eq i64 %i.fv, 2
  br i1 %i.gk, label %bb.bv, label %bb.be

bb.be:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultTNtNtNtNtNtCsiOkGTpNE17y_8wasmtime7runtime2vm8instance9allocator21MemoryAllocationIndexNtNtB2w_6memory6MemoryENtNtNtCsgIATGCnso3Z_22wasmtime_internal_core5error5error5ErrorENtNtB4_6marker4SendEL_EEECs7gfv9tzbXmh_6yara_x.exit.i.i
  %.sroa.12.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %.sroa.12.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(112) %.sroa.5.i.i, i64 112, i1 false), !noalias !2621
  store ptr %.sroa.045.0.copyload.i.i, ptr %i.g, align 8, !noalias !2621
  %.sroa.10.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store i64 %i.fv, ptr %.sroa.10.0..sroa_idx.i.i, align 8, !noalias !2621
  %i.gl = getelementptr inbounds nuw i8, ptr %1, i64 536
  %i.gm = load ptr, ptr %i.gl, align 8, !noalias !2621, !nonnull !4, !align !15, !noundef !4 ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2625)
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gm, i64 16 ; 4 uses
  %i.go = load i64, ptr %i.gn, align 8, !alias.scope !2626, !noalias !2627, !noundef !4
  %i.gp = invoke { i64, i64 } @_RNvMs2_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner11try_reserveCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.gm, i64 noundef %i.go, i64 noundef 1, i64 noundef 8, i64 noundef 128)
          to label %.noexc.i.i.i unwind label %bb.bk, !noalias !2627

.noexc.i.i.i:                                     ; preds = %bb.be
  %i.gq = extractvalue { i64, i64 } %i.gp, 0
  %.not.i.i32.i.i = icmp eq i64 %i.gq, -1
  br i1 %.not.i.i32.i.i, label %bb.bg, label %bb.bf

bb.bf:                                            ; preds = %.noexc.i.i.i
  %i.gr = load i64, ptr %i.gn, align 8, !alias.scope !2626, !noalias !2627, !noundef !4 ; 2 uses
  %i.gs = icmp ult i64 %i.gr, 72057594037927936
  call void @llvm.assume(i1 %i.gs)
  %i.gt = add nuw nsw i64 %i.gr, 1
  %i.gu = invoke noundef nonnull ptr @_RNvMsn_NtNtCsgIATGCnso3Z_22wasmtime_internal_core5error5errorNtB5_13OomOrDynError11new_oom_ptr(i64 noundef %i.gt)
          to label %_RNvMNtCs6NjwAGIF0oQ_16cranelift_entity7primaryINtB2_10PrimaryMapNtNtCsbhAup8j5lif_16wasmtime_environ5types18DefinedMemoryIndexTNtNtNtNtNtCsiOkGTpNE17y_8wasmtime7runtime2vm8instance9allocator21MemoryAllocationIndexNtNtB27_6memory6MemoryEE11try_reserveCs7gfv9tzbXmh_6yara_x.exit.i.i.i unwind label %bb.bk, !noalias !2627

_RNvMNtCs6NjwAGIF0oQ_16cranelift_entity7primaryINtB2_10PrimaryMapNtNtCsbhAup8j5lif_16wasmtime_environ5types18DefinedMemoryIndexTNtNtNtNtNtCsiOkGTpNE17y_8wasmtime7runtime2vm8instance9allocator21MemoryAllocationIndexNtNtB27_6memory6MemoryEE11try_reserveCs7gfv9tzbXmh_6yara_x.exit.i.i.i: ; preds = %bb.bf
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTNtNtNtNtNtCsiOkGTpNE17y_8wasmtime7runtime2vm8instance9allocator21MemoryAllocationIndexNtNtBI_6memory6MemoryEECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(128) %i.g)
          to label %bb.bn unwind label %bb.bm

bb.bg:                                            ; preds = %.noexc.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.f, ptr noundef nonnull align 8 dereferenceable(128) %i.g, i64 128, i1 false), !noalias !2628
  call void @llvm.experimental.noalias.scope.decl(metadata !2629)
  %i.gv = load i64, ptr %i.gn, align 8, !alias.scope !2630, !noalias !2631, !noundef !4 ; 4 uses
  %i.gw = icmp ult i64 %i.gv, 72057594037927936
  call void @llvm.assume(i1 %i.gw)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !2632
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.e, ptr noundef nonnull align 8 dereferenceable(128) %i.g, i64 128, i1 false), !noalias !2628
  %i.gx = load i64, ptr %i.gm, align 8, !range !8, !alias.scope !2633, !noalias !2634, !noundef !4
  %i.gy = icmp eq i64 %i.gv, %i.gx
  br i1 %i.gy, label %bb.bh, label %bb.bo

bb.bh:                                            ; preds = %bb.bg
  invoke void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecTNtNtNtNtNtCsiOkGTpNE17y_8wasmtime7runtime2vm8instance9allocator21MemoryAllocationIndexNtNtBT_6memory6MemoryEE8grow_oneBX_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.gm)
          to label %bb.bo unwind label %bb.bi, !noalias !2634

bb.bi:                                            ; preds = %bb.bh
  %i.gz = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTNtNtNtNtNtCsiOkGTpNE17y_8wasmtime7runtime2vm8instance9allocator21MemoryAllocationIndexNtNtBI_6memory6MemoryEECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(128) %i.e) #34
end_hunk_1
begin_hunk_2_@_RNCNvMsd_NtNtCsiOkGTpNE17y_8wasmtime7runtime5storeNtB7_11StoreOpaque17allocate_instance0Cs7gfv9tzbXmh_6yara_x:bb.a

bb.bo:                                            ; preds = %bb.bh, %bb.bg
  %i.hf = getelementptr inbounds nuw i8, ptr %i.gm, i64 8
  %i.hg = load ptr, ptr %i.hf, align 8, !alias.scope !2633, !noalias !2634, !nonnull !4, !noundef !4
  %i.hh = getelementptr inbounds nuw [128 x i8], ptr %i.hg, i64 %i.gv
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.hh, ptr noundef nonnull readonly align 8 dereferenceable(128) %i.f, i64 128, i1 false), !noalias !2627
  %i.hi = add nuw nsw i64 %i.gv, 1
  store i64 %i.hi, ptr %i.gn, align 8, !alias.scope !2633, !noalias !2634
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !2632
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %1, i64 576
  %.pre.i.i = load i64, ptr %.phi.trans.insert.i.i, align 8, !alias.scope !2624, !noalias !2621
  br label %bb.ap

_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4skipINtB4_4SkipINtNtCs6NjwAGIF0oQ_16cranelift_entity4iter4IterNtNtCsbhAup8j5lif_16wasmtime_environ5types11MemoryIndexNtB1K_6MemoryEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x.exit.i.i: ; preds = %bb.as, %_RNvXs_NtCs6NjwAGIF0oQ_16cranelift_entity4iterINtB4_4IterNtNtCsbhAup8j5lif_16wasmtime_environ5types11MemoryIndexNtBU_6MemoryENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x.exit.i.i.i
  %.pn.i.i.i = phi { i32, ptr } [ %i.fm, %bb.as ], [ %i.fk, %_RNvXs_NtCs6NjwAGIF0oQ_16cranelift_entity4iterINtB4_4IterNtNtCsbhAup8j5lif_16wasmtime_environ5types11MemoryIndexNtBU_6MemoryENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x.exit.i.i.i ] ; 2 uses
  %i.hj = extractvalue { i32, ptr } %.pn.i.i.i, 1 ; 2 uses
  %.not.i.i = icmp eq ptr %i.hj, null
  br i1 %.not.i.i, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMs4_NtNtNtNtCsiOkGTpNE17y_8wasmtime7runtime2vm8instance9allocatorDNtBJ_17InstanceAllocatorEL_17allocate_memories0ECs7gfv9tzbXmh_6yara_x.exit.thread241.i, label %bb.bp

bb.bp:                                            ; preds = %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4skipINtB4_4SkipINtNtCs6NjwAGIF0oQ_16cranelift_entity4iter4IterNtNtCsbhAup8j5lif_16wasmtime_environ5types11MemoryIndexNtB1K_6MemoryEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x.exit.i.i
  %i.hk = extractvalue { i32, ptr } %.pn.i.i.i, 0 ; 2 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %1, i64 544
  %i.hm = load ptr, ptr %i.hl, align 8, !noalias !2621, !nonnull !4, !align !15, !noundef !4
  %.val26.i.i = load ptr, ptr %i.hm, align 8, !nonnull !4, !noundef !4
  %i.hn = getelementptr i8, ptr %.val26.i.i, i64 528
  %.val31.i.i = load i64, ptr %i.hn, align 8, !noundef !4 ; 2 uses
  %i.ho = zext i32 %i.hk to i64
  %.not60.i.i = icmp ugt i64 %.val31.i.i, %i.ho
  br i1 %.not60.i.i, label %bb.bq, label %_RNvMNtCskKLDkoKarTP_4core6optionINtB2_6OptionNtNtCsbhAup8j5lif_16wasmtime_environ5types18DefinedMemoryIndexE6expectCs7gfv9tzbXmh_6yara_x.exit.i.i, !prof !16

bb.bq:                                            ; preds = %bb.bp
  invoke void @_RNvNtCskKLDkoKarTP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @57, i64 noundef 57, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @58) #39
          to label %.noexc37.i.i unwind label %bb.br

.noexc37.i.i:                                     ; preds = %bb.bq
  unreachable

bb.br:                                            ; preds = %bb.bq
  %i.hp = landingpad { ptr, i32 }
          cleanup
  br label %.body33.i.i

_RNvMNtCskKLDkoKarTP_4core6optionINtB2_6OptionNtNtCsbhAup8j5lif_16wasmtime_environ5types18DefinedMemoryIndexE6expectCs7gfv9tzbXmh_6yara_x.exit.i.i: ; preds = %bb.bp
  %i.hq = trunc nuw i64 %.val31.i.i to i32
  %i.hr = sub nuw i32 %i.hk, %i.hq
  %i.hs = getelementptr inbounds nuw i8, ptr %1, i64 512
  %i.ht = load ptr, ptr %i.hs, align 8, !noalias !2621, !nonnull !4, !noundef !4
  %i.hu = getelementptr inbounds nuw i8, ptr %1, i64 520
  %i.hv = load ptr, ptr %i.hu, align 8, !noalias !2621, !nonnull !4, !align !15, !noundef !4
  %i.hw = getelementptr inbounds nuw i8, ptr %1, i64 528
  %i.hx = load ptr, ptr %i.hw, align 8, !noalias !2621, !nonnull !4, !align !15, !noundef !4
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hv, i64 48
  %i.hz = load ptr, ptr %i.hy, align 8, !invariant.load !4, !nonnull !4
  %i.ia = invoke { ptr, ptr } %i.hz(ptr noundef nonnull %i.ht, ptr noalias nofree noundef nonnull align 8 dereferenceable(112) %i.hx, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.hj, i32 noundef 1, i32 %i.hr, i1 noundef zeroext false)
          to label %bb.bt unwind label %bb.bs     ; 2 uses

bb.bs:                                            ; preds = %_RNvMNtCskKLDkoKarTP_4core6optionINtB2_6OptionNtNtCsbhAup8j5lif_16wasmtime_environ5types18DefinedMemoryIndexE6expectCs7gfv9tzbXmh_6yara_x.exit.i.i
  %i.ib = landingpad { ptr, i32 }
          cleanup
  br label %.body33.i.i

bb.bt:                                            ; preds = %_RNvMNtCskKLDkoKarTP_4core6optionINtB2_6OptionNtNtCsbhAup8j5lif_16wasmtime_environ5types18DefinedMemoryIndexE6expectCs7gfv9tzbXmh_6yara_x.exit.i.i
  %i.ic = extractvalue { ptr, ptr } %i.ia, 0
  %i.id = extractvalue { ptr, ptr } %i.ia, 1
  %i.ie = getelementptr inbounds nuw i8, ptr %1, i64 584
  store ptr %i.ic, ptr %i.ie, align 8, !noalias !2621
  %i.if = getelementptr inbounds nuw i8, ptr %1, i64 592
  store ptr %i.id, ptr %i.if, align 8, !noalias !2621
  br label %bb.av

bb.bu:                                            ; preds = %bb.bn
  %i.ig = landingpad { ptr, i32 }
          cleanup
  br label %.body33.i.i

bb.bv:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultTNtNtNtNtNtCsiOkGTpNE17y_8wasmtime7runtime2vm8instance9allocator21MemoryAllocationIndexNtNtB2w_6memory6MemoryENtNtNtCsgIATGCnso3Z_22wasmtime_internal_core5error5error5ErrorENtNtB4_6marker4SendEL_EEECs7gfv9tzbXmh_6yara_x.exit.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.045.0.copyload.i.i) ]
  br label %.thread224.i

bb.bw:                                            ; preds = %bb.aw
  %i.ih = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #38
  unreachable

bb.bx:                                            ; preds = %bb.au, %bb.at
  %i.ii = landingpad { ptr, i32 }
          cleanup
  br label %.body68.i

bb.by:                                            ; preds = %bb.ax
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !2621
  store i8 3, ptr %i.fp, align 8, !noalias !2621
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !2614
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i.i)
  store i8 3, ptr %i.fn, align 8, !noalias !2614
  br label %_RNCNvMs4_NtNtNtNtCsiOkGTpNE17y_8wasmtime7runtime2vm8instance9allocatorDNtB7_17InstanceAllocatorEL_15allocate_module0Cs7gfv9tzbXmh_6yara_x.exit

.thread224.i:                                     ; preds = %bb.bv, %bb.bn
  %.sroa.07.0.i.i = phi ptr [ %i.he, %bb.bn ], [ %.sroa.045.0.copyload.i.i, %bb.bv ]
  store i8 1, ptr %i.fp, align 8, !noalias !2621
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !2614
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i.i)
  br label %bb.bz

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMs4_NtNtNtNtCsiOkGTpNE17y_8wasmtime7runtime2vm8instance9allocatorDNtBJ_17InstanceAllocatorEL_17allocate_memories0ECs7gfv9tzbXmh_6yara_x.exit.thread241.i: ; preds = %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4skipINtB4_4SkipINtNtCs6NjwAGIF0oQ_16cranelift_entity4iter4IterNtNtCsbhAup8j5lif_16wasmtime_environ5types11MemoryIndexNtB1K_6MemoryEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x.exit.i.i
  store i8 1, ptr %i.ew, align 8, !noalias !2621
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !2614
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i.i)
  %i.ij = getelementptr inbounds nuw i8, ptr %1, i64 272
  %i.ik = load ptr, ptr %i.ij, align 8, !noalias !2614, !nonnull !4, !noundef !4
  %i.il = getelementptr inbounds nuw i8, ptr %1, i64 280
  %i.im = load ptr, ptr %i.il, align 8, !noalias !2614, !nonnull !4, !align !15, !noundef !4
  %i.in = getelementptr inbounds nuw i8, ptr %1, i64 288
  %i.io = getelementptr inbounds nuw i8, ptr %1, i64 424
  store ptr %i.ik, ptr %i.ex, align 8, !noalias !2614
  %.sroa.8169.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 488
  store ptr %i.im, ptr %.sroa.8169.0..sroa_idx.i, align 8, !noalias !2614
  %.sroa.9170.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 496
  store ptr %i.in, ptr %.sroa.9170.0..sroa_idx.i, align 8, !noalias !2614
  %.sroa.10171.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 504
  store ptr %i.io, ptr %.sroa.10171.0..sroa_idx.i, align 8, !noalias !2614
  store i8 0, ptr %i.ew, align 8, !noalias !2614
  %i.ip = getelementptr inbounds nuw i8, ptr %1, i64 480
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !2614
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i76.i)
  %i.iq = getelementptr inbounds nuw i8, ptr %1, i64 600
  br label %bb.cb

bb.bz:                                            ; preds = %bb.dn, %bb.dm, %.thread232.i, %.thread224.i
  %i.ir = phi ptr [ %i.fn, %.thread224.i ], [ %i.kc, %bb.dn ], [ %i.kc, %bb.dm ], [ %i.kv, %.thread232.i ] ; 2 uses
  %i.is = phi ptr [ %i.fo, %.thread224.i ], [ %i.kd, %bb.dn ], [ %i.kd, %bb.dm ], [ %i.kw, %.thread232.i ] ; 2 uses
  %.sroa.8.2.i = phi ptr [ %.sroa.07.0.i.i, %.thread224.i ], [ %i.nz, %bb.dn ], [ %i.nw, %bb.dm ], [ %.sroa.07.0.i93.i, %.thread232.i ]
  %.sroa.022.2.i = phi i64 [ 1, %.thread224.i ], [ 1, %bb.dn ], [ 0, %bb.dm ], [ 1, %.thread232.i ]
  %i.it = getelementptr inbounds nuw i8, ptr %1, i64 400
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNCNvMs4_NtNtNtNtCsiOkGTpNE17y_8wasmtime7runtime2vm8instance9allocatorDNtBL_17InstanceAllocatorEL_15allocate_module016DeallocateOnDropECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef align 8 dereferenceable(72) %i.it)
          to label %bb.ak unwind label %bb.dq

.body74.i:                                        ; preds = %bb.dp, %bb.do, %.body117.i, %.body68.i
  %i.iu = phi ptr [ %i.kc, %bb.dp ], [ %i.dr, %.body68.i ], [ %i.kc, %bb.do ], [ %i.ix, %.body117.i ]
  %i.iv = phi ptr [ %i.kd, %bb.dp ], [ %i.ds, %.body68.i ], [ %i.kd, %bb.do ], [ %i.iy, %.body117.i ]
  %.pn33.pn.i = phi { ptr, i32 } [ %i.ob, %bb.dp ], [ %.pn.i, %.body68.i ], [ %i.oa, %bb.do ], [ %.pn26.i, %.body117.i ]
  %i.iw = getelementptr inbounds nuw i8, ptr %1, i64 400
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNCNvMs4_NtNtNtNtCsiOkGTpNE17y_8wasmtime7runtime2vm8instance9allocatorDNtBL_17InstanceAllocatorEL_15allocate_module016DeallocateOnDropECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef align 8 dereferenceable(72) %i.iw) #34
          to label %bb.h unwind label %bb.ah

.body117.i:                                       ; preds = %bb.dk, %.body33.i81.i
  %i.ix = phi ptr [ %i.jb, %.body33.i81.i ], [ %i.az, %bb.dk ]
  %i.iy = phi ptr [ %i.jc, %.body33.i81.i ], [ %i.ay, %bb.dk ]
  %i.iz = phi ptr [ %i.je, %.body33.i81.i ], [ %i.ja, %bb.dk ]
  %.pn26.i = phi { ptr, i32 } [ %.pn16.pn.pn.pn.i82.i, %.body33.i81.i ], [ %i.nq, %bb.dk ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMs4_NtNtNtNtCsiOkGTpNE17y_8wasmtime7runtime2vm8instance9allocatorDNtBJ_17InstanceAllocatorEL_15allocate_tables0ECs7gfv9tzbXmh_6yara_x(ptr noundef nonnull align 8 %i.iz) #34
          to label %.body74.i unwind label %bb.ah

bb.ca:                                            ; preds = %bb.g
  %.phi.trans.insert198.i = getelementptr inbounds nuw i8, ptr %1, i64 600 ; 3 uses
  %.pre199.i = load i8, ptr %.phi.trans.insert198.i, align 8, !range !12, !noalias !2636
  %i.ja = getelementptr inbounds nuw i8, ptr %1, i64 480 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !2614
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i76.i)
  switch i8 %.pre199.i, label %default.unreachable140 [
    i8 0, label %bb.cb
    i8 1, label %bb.cg
    i8 2, label %bb.ch
    i8 3, label %bb.ci
  ]

.body33.i81.i:                                    ; preds = %bb.dh, %bb.df, %bb.de, %bb.cz, %bb.cx, %bb.cv, %bb.cq, %bb.cp, %bb.cj
  %i.jb = phi ptr [ %i.kv, %bb.cv ], [ %i.kv, %bb.cx ], [ %i.kv, %bb.cz ], [ %i.kc, %bb.de ], [ %i.kv, %bb.dh ], [ %i.kv, %bb.cq ], [ %i.kc, %bb.df ], [ %i.kv, %bb.cj ], [ %i.kv, %bb.cp ]
  %i.jc = phi ptr [ %i.kw, %bb.cv ], [ %i.kw, %bb.cx ], [ %i.kw, %bb.cz ], [ %i.kd, %bb.de ], [ %i.kw, %bb.dh ], [ %i.kw, %bb.cq ], [ %i.kd, %bb.df ], [ %i.kw, %bb.cj ], [ %i.kw, %bb.cp ]
  %i.jd = phi ptr [ %i.kx, %bb.cv ], [ %i.kx, %bb.cx ], [ %i.kx, %bb.cz ], [ %i.ke, %bb.de ], [ %i.kx, %bb.dh ], [ %i.kx, %bb.cq ], [ %i.ke, %bb.df ], [ %i.kx, %bb.cj ], [ %i.kx, %bb.cp ]
  %i.je = phi ptr [ %i.ky, %bb.cv ], [ %i.ky, %bb.cx ], [ %i.ky, %bb.cz ], [ %i.kf, %bb.de ], [ %i.ky, %bb.dh ], [ %i.ky, %bb.cq ], [ %i.kf, %bb.df ], [ %i.ky, %bb.cj ], [ %i.ky, %bb.cp ]
  %.pn16.pn.pn.pn.i82.i = phi { ptr, i32 } [ %i.mh, %bb.cv ], [ %i.mj, %bb.cx ], [ %i.ml, %bb.cz ], [ %i.mx, %bb.de ], [ %i.no, %bb.dh ], [ %i.lm, %bb.cq ], [ %i.nj, %bb.df ], [ %i.la, %bb.cj ], [ %i.lm, %bb.cp ]
  store i8 2, ptr %i.jd, align 8, !noalias !2636
  br label %.body117.i

bb.cb:                                            ; preds = %bb.ca, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMs4_NtNtNtNtCsiOkGTpNE17y_8wasmtime7runtime2vm8instance9allocatorDNtBJ_17InstanceAllocatorEL_17allocate_memories0ECs7gfv9tzbXmh_6yara_x.exit.thread241.i
  %i.jf = phi ptr [ %i.eu, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMs4_NtNtNtNtCsiOkGTpNE17y_8wasmtime7runtime2vm8instance9allocatorDNtBJ_17InstanceAllocatorEL_17allocate_memories0ECs7gfv9tzbXmh_6yara_x.exit.thread241.i ], [ %i.az, %bb.ca ]
  %i.jg = phi ptr [ %i.ev, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMs4_NtNtNtNtCsiOkGTpNE17y_8wasmtime7runtime2vm8instance9allocatorDNtBJ_17InstanceAllocatorEL_17allocate_memories0ECs7gfv9tzbXmh_6yara_x.exit.thread241.i ], [ %i.ay, %bb.ca ]
  %i.jh = phi ptr [ %i.iq, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMs4_NtNtNtNtCsiOkGTpNE17y_8wasmtime7runtime2vm8instance9allocatorDNtBJ_17InstanceAllocatorEL_17allocate_memories0ECs7gfv9tzbXmh_6yara_x.exit.thread241.i ], [ %.phi.trans.insert198.i, %bb.ca ]
  %i.ji = phi ptr [ %i.ip, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMs4_NtNtNtNtCsiOkGTpNE17y_8wasmtime7runtime2vm8instance9allocatorDNtBJ_17InstanceAllocatorEL_17allocate_memories0ECs7gfv9tzbXmh_6yara_x.exit.thread241.i ], [ %i.ja, %bb.ca ] ; 2 uses
  %i.jj = getelementptr inbounds nuw i8, ptr %1, i64 512
  %i.jk = load ptr, ptr %i.ji, align 8, !noalias !2636, !nonnull !4, !noundef !4
  %i.jl = getelementptr inbounds nuw i8, ptr %1, i64 488
  store ptr %i.jk, ptr %i.jj, align 8, !noalias !2636
  %i.jm = getelementptr inbounds nuw i8, ptr %1, i64 520
  %i.jn = getelementptr inbounds nuw i8, ptr %1, i64 496
  %i.jo = load ptr, ptr %i.jn, align 8, !noalias !2636, !nonnull !4, !align !15, !noundef !4
  %i.jp = load <2 x ptr>, ptr %i.jl, align 8, !noalias !2636
  store <2 x ptr> %i.jp, ptr %i.jm, align 8, !noalias !2636
  %i.jq = getelementptr inbounds nuw i8, ptr %1, i64 536
  %i.jr = getelementptr inbounds nuw i8, ptr %1, i64 504
  %i.js = load ptr, ptr %i.jr, align 8, !noalias !2636, !nonnull !4, !align !15, !noundef !4
  store ptr %i.js, ptr %i.jq, align 8, !noalias !2636
  %i.jt = load ptr, ptr %i.jo, align 8, !nonnull !4, !align !15, !noundef !4 ; 2 uses
  %i.ju = getelementptr inbounds nuw i8, ptr %1, i64 544
  %.val24.i106.i = load i64, ptr %i.jt, align 8, !range !14, !noundef !4
  %i.jv = getelementptr i8, ptr %i.jt, i64 8
  %.val25.i107.i = load ptr, ptr %i.jv, align 8
  %5 = shl nuw nsw i64 %.val24.i106.i, 5
  %.sroa.0.0.v.i.i108.i = xor i64 %5, 96
  %.sroa.0.0.i.i109.i = getelementptr inbounds nuw i8, ptr %.val25.i107.i, i64 %.sroa.0.0.v.i.i108.i ; 2 uses
  store ptr %.sroa.0.0.i.i109.i, ptr %i.ju, align 8, !noalias !2636
  %.val28.i110.i = load ptr, ptr %.sroa.0.0.i.i109.i, align 8, !nonnull !4, !noundef !4 ; 3 uses
  %i.jw = getelementptr i8, ptr %.val28.i110.i, i64 344
  %.val29.i111.i = load ptr, ptr %i.jw, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.jx = getelementptr i8, ptr %.val28.i110.i, i64 352
  %.val30.i112.i = load i64, ptr %i.jx, align 8, !noundef !4
  %i.jy = getelementptr inbounds nuw [48 x i8], ptr %.val29.i111.i, i64 %.val30.i112.i
  %i.jz = getelementptr inbounds nuw i8, ptr %.val28.i110.i, i64 520
  %i.ka = load i64, ptr %i.jz, align 8, !noundef !4 ; 2 uses
  %i.kb = getelementptr inbounds nuw i8, ptr %1, i64 552
  store ptr %.val29.i111.i, ptr %i.kb, align 8, !noalias !2636
  %.sroa.038.sroa.8.0..sroa_idx.i113.i = getelementptr inbounds nuw i8, ptr %1, i64 560
  store ptr %i.jy, ptr %.sroa.038.sroa.8.0..sroa_idx.i113.i, align 8, !noalias !2636
  %.sroa.038.sroa.9.0..sroa_idx.i114.i = getelementptr inbounds nuw i8, ptr %1, i64 568
  store i64 0, ptr %.sroa.038.sroa.9.0..sroa_idx.i114.i, align 8, !noalias !2636
  %.sroa.8.0..sroa_idx.i115.i = getelementptr inbounds nuw i8, ptr %1, i64 576
  store i64 %i.ka, ptr %.sroa.8.0..sroa_idx.i115.i, align 8, !noalias !2636
  br label %bb.cc

bb.cc:                                            ; preds = %bb.db, %bb.cb
  %i.kc = phi ptr [ %i.kv, %bb.db ], [ %i.jf, %bb.cb ] ; 7 uses
  %i.kd = phi ptr [ %i.kw, %bb.db ], [ %i.jg, %bb.cb ] ; 7 uses
  %i.ke = phi ptr [ %i.kx, %bb.db ], [ %i.jh, %bb.cb ] ; 4 uses
  %i.kf = phi ptr [ %i.ky, %bb.db ], [ %i.ji, %bb.cb ] ; 3 uses
  %i.kg = phi i64 [ %.pre.i96.i, %bb.db ], [ %i.ka, %bb.cb ] ; 2 uses
  %i.kh = getelementptr inbounds nuw i8, ptr %1, i64 552 ; 3 uses
  %.not.i.i97.i = icmp eq i64 %i.kg, 0
  br i1 %.not.i.i97.i, label %bb.cd, label %bb.cf, !prof !5

bb.cd:                                            ; preds = %bb.cc
  %i.ki = load ptr, ptr %i.kh, align 8, !alias.scope !2637, !noalias !2636, !nonnull !4, !noundef !4 ; 3 uses
  %i.kj = getelementptr inbounds nuw i8, ptr %1, i64 560
  %i.kk = load ptr, ptr %i.kj, align 8, !alias.scope !2637, !noalias !2636, !nonnull !4, !noundef !4
  %i.kl = icmp eq ptr %i.ki, %i.kk
  br i1 %i.kl, label %_RNvXs_NtCs6NjwAGIF0oQ_16cranelift_entity4iterINtB4_4IterNtNtCsbhAup8j5lif_16wasmtime_environ5types10TableIndexNtBU_5TableENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x.exit.i.i.i, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.km = getelementptr inbounds nuw i8, ptr %i.ki, i64 48
  store ptr %i.km, ptr %i.kh, align 8, !alias.scope !2637, !noalias !2636
  %i.kn = getelementptr inbounds nuw i8, ptr %1, i64 568 ; 2 uses
  %i.ko = load i64, ptr %i.kn, align 8, !alias.scope !2638, !noalias !2636, !noundef !4 ; 2 uses
  %i.kp = add i64 %i.ko, 1
  store i64 %i.kp, ptr %i.kn, align 8, !alias.scope !2638, !noalias !2636
  %i.kq = trunc i64 %i.ko to i32
  br label %_RNvXs_NtCs6NjwAGIF0oQ_16cranelift_entity4iterINtB4_4IterNtNtCsbhAup8j5lif_16wasmtime_environ5types10TableIndexNtBU_5TableENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x.exit.i.i.i

_RNvXs_NtCs6NjwAGIF0oQ_16cranelift_entity4iterINtB4_4IterNtNtCsbhAup8j5lif_16wasmtime_environ5types10TableIndexNtBU_5TableENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x.exit.i.i.i: ; preds = %bb.ce, %bb.cd
  %.sroa.2.0.i.i.i104.i = phi ptr [ %i.ki, %bb.ce ], [ null, %bb.cd ]
  %.sroa.0.0.i.i.i105.i = phi i32 [ %i.kq, %bb.ce ], [ undef, %bb.cd ]
  %i.kr = insertvalue { i32, ptr } poison, i32 %.sroa.0.0.i.i.i105.i, 0
  %i.ks = insertvalue { i32, ptr } %i.kr, ptr %.sroa.2.0.i.i.i104.i, 1
  br label %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4skipINtB4_4SkipINtNtCs6NjwAGIF0oQ_16cranelift_entity4iter4IterNtNtCsbhAup8j5lif_16wasmtime_environ5types10TableIndexNtB1K_5TableEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x.exit.i.i

bb.cf:                                            ; preds = %bb.cc
  %i.kt = getelementptr inbounds nuw i8, ptr %1, i64 576
  store i64 0, ptr %i.kt, align 8, !alias.scope !2639, !noalias !2636
  %i.ku = call fastcc { i32, ptr } @_RNvYINtNtCs6NjwAGIF0oQ_16cranelift_entity4iter4IterNtNtCsbhAup8j5lif_16wasmtime_environ5types10TableIndexNtBP_5TableENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator3nthCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.kh, i64 noundef %i.kg) #40, !alias.scope !2639, !noalias !2636
  br label %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4skipINtB4_4SkipINtNtCs6NjwAGIF0oQ_16cranelift_entity4iter4IterNtNtCsbhAup8j5lif_16wasmtime_environ5types10TableIndexNtB1K_5TableEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x.exit.i.i

bb.cg:                                            ; preds = %bb.ca
  invoke void @_RNvNtNtCskKLDkoKarTP_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @53) #39
          to label %.noexc119.i unwind label %bb.dk

.noexc119.i:                                      ; preds = %bb.cg
  unreachable

bb.ch:                                            ; preds = %bb.ca
  invoke void @_RNvNtNtCskKLDkoKarTP_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @53) #39
          to label %.noexc120.i unwind label %bb.dk

.noexc120.i:                                      ; preds = %bb.ch
  unreachable

bb.ci:                                            ; preds = %bb.dg, %bb.ca
  %i.kv = phi ptr [ %i.az, %bb.ca ], [ %i.kc, %bb.dg ] ; 10 uses
  %i.kw = phi ptr [ %i.ay, %bb.ca ], [ %i.kd, %bb.dg ] ; 10 uses
  %i.kx = phi ptr [ %.phi.trans.insert198.i, %bb.ca ], [ %i.ke, %bb.dg ] ; 10 uses
  %i.ky = phi ptr [ %i.ja, %bb.ca ], [ %i.kf, %bb.dg ] ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !2636
  %i.kz = getelementptr inbounds nuw i8, ptr %1, i64 584 ; 3 uses
  invoke void @_RNvXs_NtNtCskKLDkoKarTP_4core6future6futureINtNtB8_3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtB4_6Futurep6OutputINtNtB8_6result6ResultTNtNtNtNtNtCsiOkGTpNE17y_8wasmtime7runtime2vm8instance9allocator20TableAllocationIndexNtNtB2i_5table5TableENtNtNtCsgIATGCnso3Z_22wasmtime_internal_core5error5error5ErrorENtNtB8_6marker4SendEL_EEB1v_4pollCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(address) dereferenceable(56) %i.d, ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.kz, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.ck unwind label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %i.la = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !2636
  %.val22.i77.i = load ptr, ptr %i.kz, align 8, !noalias !2636
  %i.lb = getelementptr i8, ptr %1, i64 592
  %.val23.i78.i = load ptr, ptr %i.lb, align 8, !noalias !2636, !nonnull !4, !align !15, !noundef !4
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultTNtNtNtNtNtCsiOkGTpNE17y_8wasmtime7runtime2vm8instance9allocator20TableAllocationIndexNtNtB2w_5table5TableENtNtNtCsgIATGCnso3Z_22wasmtime_internal_core5error5error5ErrorENtNtB4_6marker4SendEL_EEECs7gfv9tzbXmh_6yara_x(ptr %.val22.i77.i, ptr nonnull %.val23.i78.i) #34
          to label %.body33.i81.i unwind label %bb.dj

bb.ck:                                            ; preds = %bb.ci
  %i.lc = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.ld = load i64, ptr %i.lc, align 8, !range !2640, !noalias !2636, !noundef !4 ; 3 uses
  %i.le = icmp eq i64 %i.ld, -3
  br i1 %i.le, label %bb.dl, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  %.sroa.045.0.copyload.i83.i = load ptr, ptr %i.d, align 8, !noalias !2636 ; 3 uses
  %.sroa.5.0..sroa_idx.i84.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.5.i76.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.5.0..sroa_idx.i84.i, i64 40, i1 false), !noalias !2636
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !2636
  %.val.i85.i = load ptr, ptr %i.kz, align 8, !noalias !2636 ; 5 uses
  %i.lf = getelementptr i8, ptr %1, i64 592
  %.val21.i86.i = load ptr, ptr %i.lf, align 8, !noalias !2636, !nonnull !4, !align !15, !noundef !4 ; 5 uses
  %i.lg = load ptr, ptr %.val21.i86.i, align 8, !invariant.load !4 ; 2 uses
  %.not.i.i.i87.i = icmp eq ptr %i.lg, null
  br i1 %.not.i.i.i87.i, label %bb.cn, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i85.i) ]
  invoke void %i.lg(ptr noundef nonnull %.val.i85.i)
          to label %bb.cn unwind label %bb.cp

bb.cn:                                            ; preds = %bb.cm, %bb.cl
  %i.lh = getelementptr inbounds nuw i8, ptr %.val21.i86.i, i64 8
  %i.li = load i64, ptr %i.lh, align 8, !range !8, !invariant.load !4 ; 2 uses
  %i.lj = icmp eq i64 %i.li, 0
  br i1 %i.lj, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultTNtNtNtNtNtCsiOkGTpNE17y_8wasmtime7runtime2vm8instance9allocator20TableAllocationIndexNtNtB2w_5table5TableENtNtNtCsgIATGCnso3Z_22wasmtime_internal_core5error5error5ErrorENtNtB4_6marker4SendEL_EEECs7gfv9tzbXmh_6yara_x.exit.i.i, label %bb.co

bb.co:                                            ; preds = %bb.cn
  %i.lk = getelementptr inbounds nuw i8, ptr %.val21.i86.i, i64 16
  %i.ll = load i64, ptr %i.lk, align 8, !range !17, !invariant.load !4
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i85.i) ]
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i85.i, i64 noundef range(i64 1, 0) %i.li, i64 noundef range(i64 1, 536870913) %i.ll) #36
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultTNtNtNtNtNtCsiOkGTpNE17y_8wasmtime7runtime2vm8instance9allocator20TableAllocationIndexNtNtB2w_5table5TableENtNtNtCsgIATGCnso3Z_22wasmtime_internal_core5error5error5ErrorENtNtB4_6marker4SendEL_EEECs7gfv9tzbXmh_6yara_x.exit.i.i

bb.cp:                                            ; preds = %bb.cm
  %i.lm = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ln = getelementptr inbounds nuw i8, ptr %.val21.i86.i, i64 8
  %i.lo = load i64, ptr %i.ln, align 8, !range !8, !invariant.load !4 ; 2 uses
  %i.lp = icmp eq i64 %i.lo, 0
  br i1 %i.lp, label %.body33.i81.i, label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  %i.lq = getelementptr inbounds nuw i8, ptr %.val21.i86.i, i64 16
  %i.lr = load i64, ptr %i.lq, align 8, !range !17, !invariant.load !4
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i85.i, i64 noundef range(i64 1, 0) %i.lo, i64 noundef range(i64 1, 536870913) %i.lr) #36
  br label %.body33.i81.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultTNtNtNtNtNtCsiOkGTpNE17y_8wasmtime7runtime2vm8instance9allocator20TableAllocationIndexNtNtB2w_5table5TableENtNtNtCsgIATGCnso3Z_22wasmtime_internal_core5error5error5ErrorENtNtB4_6marker4SendEL_EEECs7gfv9tzbXmh_6yara_x.exit.i.i: ; preds = %bb.co, %bb.cn
  %i.ls = icmp eq i64 %i.ld, -2
  br i1 %i.ls, label %bb.di, label %bb.cr

bb.cr:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultTNtNtNtNtNtCsiOkGTpNE17y_8wasmtime7runtime2vm8instance9allocator20TableAllocationIndexNtNtB2w_5table5TableENtNtNtCsgIATGCnso3Z_22wasmtime_internal_core5error5error5ErrorENtNtB4_6marker4SendEL_EEECs7gfv9tzbXmh_6yara_x.exit.i.i
  %.sroa.12.0..sroa_idx.i88.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.12.0..sroa_idx.i88.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.5.i76.i, i64 40, i1 false), !noalias !2636
  store ptr %.sroa.045.0.copyload.i83.i, ptr %i.c, align 8, !noalias !2636
  %.sroa.10.0..sroa_idx.i89.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 %i.ld, ptr %.sroa.10.0..sroa_idx.i89.i, align 8, !noalias !2636
  %i.lt = getelementptr inbounds nuw i8, ptr %1, i64 536
  %i.lu = load ptr, ptr %i.lt, align 8, !noalias !2636, !nonnull !4, !align !15, !noundef !4 ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2641)
  %i.lv = getelementptr inbounds nuw i8, ptr %i.lu, i64 16 ; 4 uses
  %i.lw = load i64, ptr %i.lv, align 8, !alias.scope !2642, !noalias !2643, !noundef !4
  %i.lx = invoke { i64, i64 } @_RNvMs2_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner11try_reserveCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.lu, i64 noundef %i.lw, i64 noundef 1, i64 noundef 8, i64 noundef 56)
          to label %.noexc.i.i90.i unwind label %bb.cx, !noalias !2643

.noexc.i.i90.i:                                   ; preds = %bb.cr
  %i.ly = extractvalue { i64, i64 } %i.lx, 0
  %.not.i.i32.i91.i = icmp eq i64 %i.ly, -1
  br i1 %.not.i.i32.i91.i, label %bb.ct, label %bb.cs

bb.cs:                                            ; preds = %.noexc.i.i90.i
  %i.lz = load i64, ptr %i.lv, align 8, !alias.scope !2642, !noalias !2643, !noundef !4 ; 2 uses
  %i.ma = icmp ult i64 %i.lz, 164703072086692426
  call void @llvm.assume(i1 %i.ma)
  %i.mb = add nuw nsw i64 %i.lz, 1
  %i.mc = invoke noundef nonnull ptr @_RNvMsn_NtNtCsgIATGCnso3Z_22wasmtime_internal_core5error5errorNtB5_13OomOrDynError11new_oom_ptr(i64 noundef %i.mb)
          to label %_RNvMNtCs6NjwAGIF0oQ_16cranelift_entity7primaryINtB2_10PrimaryMapNtNtCsbhAup8j5lif_16wasmtime_environ5types17DefinedTableIndexTNtNtNtNtNtCsiOkGTpNE17y_8wasmtime7runtime2vm8instance9allocator20TableAllocationIndexNtNtB26_5table5TableEE11try_reserveCs7gfv9tzbXmh_6yara_x.exit.i.i.i unwind label %bb.cx, !noalias !2643

_RNvMNtCs6NjwAGIF0oQ_16cranelift_entity7primaryINtB2_10PrimaryMapNtNtCsbhAup8j5lif_16wasmtime_environ5types17DefinedTableIndexTNtNtNtNtNtCsiOkGTpNE17y_8wasmtime7runtime2vm8instance9allocator20TableAllocationIndexNtNtB26_5table5TableEE11try_reserveCs7gfv9tzbXmh_6yara_x.exit.i.i.i: ; preds = %bb.cs
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTNtNtNtNtNtCsiOkGTpNE17y_8wasmtime7runtime2vm8instance9allocator20TableAllocationIndexNtNtBI_5table5TableEECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.c)
          to label %bb.da unwind label %bb.cz

bb.ct:                                            ; preds = %.noexc.i.i90.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.b, ptr noundef nonnull align 8 dereferenceable(56) %i.c, i64 56, i1 false), !noalias !2644
  call void @llvm.experimental.noalias.scope.decl(metadata !2645)
  %i.md = load i64, ptr %i.lv, align 8, !alias.scope !2646, !noalias !2647, !noundef !4 ; 4 uses
  %i.me = icmp ult i64 %i.md, 164703072086692426
  call void @llvm.assume(i1 %i.me)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2648
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.a, ptr noundef nonnull align 8 dereferenceable(56) %i.c, i64 56, i1 false), !noalias !2644
  %i.mf = load i64, ptr %i.lu, align 8, !range !8, !alias.scope !2649, !noalias !2650, !noundef !4
  %i.mg = icmp eq i64 %i.md, %i.mf
  br i1 %i.mg, label %bb.cu, label %bb.db

bb.cu:                                            ; preds = %bb.ct
  invoke void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecTNtNtNtNtNtCsiOkGTpNE17y_8wasmtime7runtime2vm8instance9allocator20TableAllocationIndexNtNtBT_5table5TableEE8grow_oneBX_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.lu)
          to label %bb.db unwind label %bb.cv, !noalias !2650

bb.cv:                                            ; preds = %bb.cu
  %i.mh = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTNtNtNtNtNtCsiOkGTpNE17y_8wasmtime7runtime2vm8instance9allocator20TableAllocationIndexNtNtBI_5table5TableEECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.a) #34
end_hunk_2
