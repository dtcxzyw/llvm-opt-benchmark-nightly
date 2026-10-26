Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/jiff-rs/original/jiff-789e66dc7021757c.jiff.764126a7be50c476-cgu.05?download=true
inline.NumInlined: 397
inline.NumDeleted: 101
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_RNvMNtNtNtCsa9sSWSfjDbm_4jiff3fmt7strtime5parseNtB2_6Parser5parse:bb.a
  %.sroa.5.0.i915.ph = phi ptr [ %i.agc, %bb.kc ], [ %i.agd, %bb.kd ], [ %i.afq, %bb.jv ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad), !noalias !1592
  store ptr %.sroa.5.0.i915.ph, ptr %i.ad, align 8, !noalias !1592
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac), !noalias !1592
  store i8 1, ptr %i.ac, align 8
  %.sroa.51913.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ac, i64 1
  store i8 117, ptr %.sroa.51913.0..sroa_idx, align 1
  %.sroa.61914.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ac, i64 2
  store i8 0, ptr %.sroa.61914.0..sroa_idx, align 2
  %i.bhe = invoke noundef ptr @_RNvXs_NtNtNtCsa9sSWSfjDbm_4jiff5error3fmt7strtimeNtB4_5ErrorNtB8_9IntoError10into_error(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.ac)
          to label %_RNCINvXsk_NtCsa9sSWSfjDbm_4jiff5errorINtNtCs3oUPovFnLWP_4core6result6ResultuNtB8_5ErrorEINtB8_12ErrorContextuB1c_E7contextNtNtNtB8_3fmt7strtime5ErrorE0Ba_.exit.i1548 unwind label %bb.xx, !noalias !1592

bb.xx:                                            ; preds = %bb.xw
  %i.bhf = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.bhg = icmp eq ptr %.sroa.5.0.i915.ph, null
  br i1 %i.bhg, label %common.resume, label %bb.xy

bb.xy:                                            ; preds = %bb.xx
  %i.bhh = atomicrmw add ptr %.sroa.5.0.i915.ph, i64 -1 release, align 8, !noalias !1593
  %i.bhi = icmp eq i64 %i.bhh, 1
  br i1 %i.bhi, label %bb.xz, label %common.resume

bb.xz:                                            ; preds = %bb.xy
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCsa9sSWSfjDbm_4jiff5error10ErrorInnerE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ad) #13
          to label %common.resume unwind label %bb.ya, !noalias !1592

bb.ya:                                            ; preds = %bb.xz
  %i.bhj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #15, !noalias !1592
  unreachable

_RNCINvXsk_NtCsa9sSWSfjDbm_4jiff5errorINtNtCs3oUPovFnLWP_4core6result6ResultuNtB8_5ErrorEINtB8_12ErrorContextuB1c_E7contextNtNtNtB8_3fmt7strtime5ErrorE0Ba_.exit.i1548: ; preds = %bb.xw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !1592
  %i.bhk = call noundef ptr @_RNvMs_NtCsa9sSWSfjDbm_4jiff5errorNtB4_5Error12context_impl(ptr noundef %.sroa.5.0.i915.ph, ptr noundef %i.bhe)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !1592
  br label %.loopexit2464

bb.yb:                                            ; preds = %bb.jw
  %i.bhl = load ptr, ptr %i.hd, align 8, !alias.scope !1432, !nonnull !4, !align !6, !noundef !4
  %i.bhm = getelementptr inbounds nuw i8, ptr %i.bhl, i64 109
  store i8 %i.afu, ptr %i.bhm, align 1, !noalias !1432
  %i.bhn = add i64 %i.lc, -1                      ; 2 uses
  %i.bho = getelementptr inbounds nuw i8, ptr %i.lb, i64 1
  store ptr %i.bho, ptr %0, align 8, !alias.scope !1594, !captures !5
  store i64 %i.bhn, ptr %i.gx, align 8, !alias.scope !1594
  br label %.backedge

bb.yc:                                            ; preds = %bb.kq, %_RNCINvXsk_NtCsa9sSWSfjDbm_4jiff5errorINtNtCs3oUPovFnLWP_4core6result6ResultaNtNtNtBa_4util1b11BoundsErrorEINtB8_12ErrorContextaB1c_E7contextNtNtNtB8_3fmt7strtime10ParseErrorE0Ba_.exit.i959
  %.sroa.4.0.i955.ph = phi ptr [ %i.ahr, %_RNCINvXsk_NtCsa9sSWSfjDbm_4jiff5errorINtNtCs3oUPovFnLWP_4core6result6ResultaNtNtNtBa_4util1b11BoundsErrorEINtB8_12ErrorContextaB1c_E7contextNtNtNtB8_3fmt7strtime10ParseErrorE0Ba_.exit.i959 ], [ %i.ahf, %bb.kq ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !noalias !1595
  store ptr %.sroa.4.0.i955.ph, ptr %i.ab, align 8, !noalias !1595
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !noalias !1595
  store i8 1, ptr %i.aa, align 8
  %.sroa.51907.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aa, i64 1
  store i8 86, ptr %.sroa.51907.0..sroa_idx, align 1
  %.sroa.61908.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aa, i64 2
  store i8 0, ptr %.sroa.61908.0..sroa_idx, align 2
  %i.bhp = invoke noundef ptr @_RNvXs_NtNtNtCsa9sSWSfjDbm_4jiff5error3fmt7strtimeNtB4_5ErrorNtB8_9IntoError10into_error(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.aa)
          to label %_RNCINvXsk_NtCsa9sSWSfjDbm_4jiff5errorINtNtCs3oUPovFnLWP_4core6result6ResultuNtB8_5ErrorEINtB8_12ErrorContextuB1c_E7contextNtNtNtB8_3fmt7strtime5ErrorE0Ba_.exit.i1558 unwind label %bb.yd, !noalias !1595

bb.yd:                                            ; preds = %bb.yc
  %i.bhq = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.bhr = icmp eq ptr %.sroa.4.0.i955.ph, null
  br i1 %i.bhr, label %common.resume, label %bb.ye

bb.ye:                                            ; preds = %bb.yd
  %i.bhs = atomicrmw add ptr %.sroa.4.0.i955.ph, i64 -1 release, align 8, !noalias !1596
  %i.bht = icmp eq i64 %i.bhs, 1
  br i1 %i.bht, label %bb.yf, label %common.resume

bb.yf:                                            ; preds = %bb.ye
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCsa9sSWSfjDbm_4jiff5error10ErrorInnerE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ab) #13
          to label %common.resume unwind label %bb.yg, !noalias !1595

bb.yg:                                            ; preds = %bb.yf
  %i.bhu = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #15, !noalias !1595
  unreachable

_RNCINvXsk_NtCsa9sSWSfjDbm_4jiff5errorINtNtCs3oUPovFnLWP_4core6result6ResultuNtB8_5ErrorEINtB8_12ErrorContextuB1c_E7contextNtNtNtB8_3fmt7strtime5ErrorE0Ba_.exit.i1558: ; preds = %bb.yc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !1595
  %i.bhv = call noundef ptr @_RNvMs_NtCsa9sSWSfjDbm_4jiff5errorNtB4_5Error12context_impl(ptr noundef %.sroa.4.0.i955.ph, ptr noundef %i.bhp)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !1595
  br label %.loopexit2464

bb.yh:                                            ; preds = %._crit_edge60.thread.i950
  %i.bhw = trunc nuw nsw i64 %.sroa.060.0.i.lcssa75.i952 to i8
  %i.bhx = load ptr, ptr %i.hd, align 8, !alias.scope !1441, !nonnull !4, !align !6, !noundef !4 ; 2 uses
  %i.bhy = getelementptr inbounds nuw i8, ptr %i.bhx, i64 96
  store i8 1, ptr %i.bhy, align 8, !noalias !1441
  %i.bhz = getelementptr inbounds nuw i8, ptr %i.bhx, i64 97
  store i8 %i.bhw, ptr %i.bhz, align 1, !noalias !1441
  %i.bia = add i64 %i.lc, -1                      ; 2 uses
  %i.bib = getelementptr inbounds nuw i8, ptr %i.lb, i64 1
  store ptr %i.bib, ptr %0, align 8, !alias.scope !1597, !captures !5
  store i64 %i.bia, ptr %i.gx, align 8, !alias.scope !1597
  br label %.backedge

bb.yi:                                            ; preds = %bb.li, %_RNCINvXsk_NtCsa9sSWSfjDbm_4jiff5errorINtNtCs3oUPovFnLWP_4core6result6ResultaNtNtNtBa_4util1b11BoundsErrorEINtB8_12ErrorContextaB1c_E7contextNtNtNtB8_3fmt7strtime10ParseErrorE0Ba_.exit.i1005
  %.sroa.4.0.i1001.ph = phi ptr [ %i.aje, %_RNCINvXsk_NtCsa9sSWSfjDbm_4jiff5errorINtNtCs3oUPovFnLWP_4core6result6ResultaNtNtNtBa_4util1b11BoundsErrorEINtB8_12ErrorContextaB1c_E7contextNtNtNtB8_3fmt7strtime10ParseErrorE0Ba_.exit.i1005 ], [ %i.ait, %bb.li ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !1598
  store ptr %.sroa.4.0.i1001.ph, ptr %i.z, align 8, !noalias !1598
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !1598
  store i8 1, ptr %i.y, align 8
  %.sroa.51901.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.y, i64 1
  store i8 87, ptr %.sroa.51901.0..sroa_idx, align 1
  %.sroa.61902.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.y, i64 2
  store i8 0, ptr %.sroa.61902.0..sroa_idx, align 2
  %i.bic = invoke noundef ptr @_RNvXs_NtNtNtCsa9sSWSfjDbm_4jiff5error3fmt7strtimeNtB4_5ErrorNtB8_9IntoError10into_error(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.y)
          to label %_RNCINvXsk_NtCsa9sSWSfjDbm_4jiff5errorINtNtCs3oUPovFnLWP_4core6result6ResultuNtB8_5ErrorEINtB8_12ErrorContextuB1c_E7contextNtNtNtB8_3fmt7strtime5ErrorE0Ba_.exit.i1568 unwind label %bb.yj, !noalias !1598

bb.yj:                                            ; preds = %bb.yi
  %i.bid = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.bie = icmp eq ptr %.sroa.4.0.i1001.ph, null
  br i1 %i.bie, label %common.resume, label %bb.yk

bb.yk:                                            ; preds = %bb.yj
  %i.bif = atomicrmw add ptr %.sroa.4.0.i1001.ph, i64 -1 release, align 8, !noalias !1599
  %i.big = icmp eq i64 %i.bif, 1
  br i1 %i.big, label %bb.yl, label %common.resume

bb.yl:                                            ; preds = %bb.yk
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCsa9sSWSfjDbm_4jiff5error10ErrorInnerE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.z) #13
          to label %common.resume unwind label %bb.ym, !noalias !1598

bb.ym:                                            ; preds = %bb.yl
  %i.bih = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #15, !noalias !1598
  unreachable

_RNCINvXsk_NtCsa9sSWSfjDbm_4jiff5errorINtNtCs3oUPovFnLWP_4core6result6ResultuNtB8_5ErrorEINtB8_12ErrorContextuB1c_E7contextNtNtNtB8_3fmt7strtime5ErrorE0Ba_.exit.i1568: ; preds = %bb.yi
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !1598
  %i.bii = call noundef ptr @_RNvMs_NtCsa9sSWSfjDbm_4jiff5errorNtB4_5Error12context_impl(ptr noundef %.sroa.4.0.i1001.ph, ptr noundef %i.bic)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !1598
  br label %.loopexit2464

bb.yn:                                            ; preds = %._crit_edge60.thread.i996
  %i.bij = trunc nuw nsw i64 %.sroa.060.0.i.lcssa75.i998 to i8
  %i.bik = load ptr, ptr %i.hd, align 8, !alias.scope !1449, !nonnull !4, !align !6, !noundef !4 ; 2 uses
  %i.bil = getelementptr inbounds nuw i8, ptr %i.bik, i64 100
  store i8 1, ptr %i.bil, align 4, !noalias !1449
  %i.bim = getelementptr inbounds nuw i8, ptr %i.bik, i64 101
  store i8 %i.bij, ptr %i.bim, align 1, !noalias !1449
  %i.bin = add i64 %i.lc, -1                      ; 2 uses
  %i.bio = getelementptr inbounds nuw i8, ptr %i.lb, i64 1
  store ptr %i.bio, ptr %0, align 8, !alias.scope !1600, !captures !5
  store i64 %i.bin, ptr %i.gx, align 8, !alias.scope !1600
  br label %.backedge

bb.yo:                                            ; preds = %bb.ma, %bb.mi, %bb.mh
  %.sroa.5.0.i1035.ph = phi ptr [ %i.aks, %bb.mh ], [ %i.akt, %bb.mi ], [ %i.akg, %bb.ma ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !1601
  store ptr %.sroa.5.0.i1035.ph, ptr %i.x, align 8, !noalias !1601
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !1601
  store i8 1, ptr %i.w, align 8
  %.sroa.51895.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 1
  store i8 119, ptr %.sroa.51895.0..sroa_idx, align 1
  %.sroa.61896.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 2
  store i8 0, ptr %.sroa.61896.0..sroa_idx, align 2
  %i.bip = invoke noundef ptr @_RNvXs_NtNtNtCsa9sSWSfjDbm_4jiff5error3fmt7strtimeNtB4_5ErrorNtB8_9IntoError10into_error(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.w)
          to label %_RNCINvXsk_NtCsa9sSWSfjDbm_4jiff5errorINtNtCs3oUPovFnLWP_4core6result6ResultuNtB8_5ErrorEINtB8_12ErrorContextuB1c_E7contextNtNtNtB8_3fmt7strtime5ErrorE0Ba_.exit.i1578 unwind label %bb.yp, !noalias !1601

bb.yp:                                            ; preds = %bb.yo
  %i.biq = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.bir = icmp eq ptr %.sroa.5.0.i1035.ph, null
  br i1 %i.bir, label %common.resume, label %bb.yq

bb.yq:                                            ; preds = %bb.yp
  %i.bis = atomicrmw add ptr %.sroa.5.0.i1035.ph, i64 -1 release, align 8, !noalias !1602
  %i.bit = icmp eq i64 %i.bis, 1
  br i1 %i.bit, label %bb.yr, label %common.resume

bb.yr:                                            ; preds = %bb.yq
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCsa9sSWSfjDbm_4jiff5error10ErrorInnerE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.x) #13
          to label %common.resume unwind label %bb.ys, !noalias !1601

bb.ys:                                            ; preds = %bb.yr
  %i.biu = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #15, !noalias !1601
  unreachable

_RNCINvXsk_NtCsa9sSWSfjDbm_4jiff5errorINtNtCs3oUPovFnLWP_4core6result6ResultuNtB8_5ErrorEINtB8_12ErrorContextuB1c_E7contextNtNtNtB8_3fmt7strtime5ErrorE0Ba_.exit.i1578: ; preds = %bb.yo
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !1601
  %i.biv = call noundef ptr @_RNvMs_NtCsa9sSWSfjDbm_4jiff5errorNtB4_5Error12context_impl(ptr noundef %.sroa.5.0.i1035.ph, ptr noundef %i.bip)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !1601
  br label %.loopexit2464

switch.lookup5370:                                ; preds = %bb.mb
  %i.biw = trunc nuw i64 %.sroa.060.0.i.lcssa94.i to i56
  %switch.shiftamt5372 = shl nuw nsw i56 %i.biw, 3
  %switch.downshift5373 = lshr i56 1694364648734983, %switch.shiftamt5372
  %switch.masked5374 = trunc i56 %switch.downshift5373 to i8
  %i.bix = load ptr, ptr %i.hd, align 8, !alias.scope !1457, !nonnull !4, !align !6, !noundef !4
  %i.biy = getelementptr inbounds nuw i8, ptr %i.bix, i64 109
  store i8 %switch.masked5374, ptr %i.biy, align 1, !noalias !1457
  %i.biz = add i64 %i.lc, -1                      ; 2 uses
  %i.bja = getelementptr inbounds nuw i8, ptr %i.lb, i64 1
  store ptr %i.bja, ptr %0, align 8, !alias.scope !1603, !captures !5
  store i64 %i.biz, ptr %i.gx, align 8, !alias.scope !1603
  br label %.backedge

bb.yt:                                            ; preds = %bb.my, %_RNCINvXsk_NtCsa9sSWSfjDbm_4jiff5errorINtNtCs3oUPovFnLWP_4core6result6ResultsNtNtNtBa_4util1b11BoundsErrorEINtB8_12ErrorContextsB1c_E7contextNtNtNtB8_3fmt7strtime10ParseErrorE0Ba_.exit.i1088
  %.sroa.4.0.i1082.ph = phi ptr [ %i.amv, %_RNCINvXsk_NtCsa9sSWSfjDbm_4jiff5errorINtNtCs3oUPovFnLWP_4core6result6ResultsNtNtNtBa_4util1b11BoundsErrorEINtB8_12ErrorContextsB1c_E7contextNtNtNtB8_3fmt7strtime10ParseErrorE0Ba_.exit.i1088 ], [ %i.amb, %bb.my ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !1604
  store ptr %.sroa.4.0.i1082.ph, ptr %i.v, align 8, !noalias !1604
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !1604
  store i8 1, ptr %i.u, align 8
  %.sroa.51889.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 1
  store i8 89, ptr %.sroa.51889.0..sroa_idx, align 1
  %.sroa.61890.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 2
  store i8 0, ptr %.sroa.61890.0..sroa_idx, align 2
  %i.bjb = invoke noundef ptr @_RNvXs_NtNtNtCsa9sSWSfjDbm_4jiff5error3fmt7strtimeNtB4_5ErrorNtB8_9IntoError10into_error(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.u)
          to label %_RNCINvXsk_NtCsa9sSWSfjDbm_4jiff5errorINtNtCs3oUPovFnLWP_4core6result6ResultuNtB8_5ErrorEINtB8_12ErrorContextuB1c_E7contextNtNtNtB8_3fmt7strtime5ErrorE0Ba_.exit.i1588 unwind label %bb.yu, !noalias !1604

bb.yu:                                            ; preds = %bb.yt
  %i.bjc = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.bjd = icmp eq ptr %.sroa.4.0.i1082.ph, null
  br i1 %i.bjd, label %common.resume, label %bb.yv

bb.yv:                                            ; preds = %bb.yu
  %i.bje = atomicrmw add ptr %.sroa.4.0.i1082.ph, i64 -1 release, align 8, !noalias !1605
  %i.bjf = icmp eq i64 %i.bje, 1
  br i1 %i.bjf, label %bb.yw, label %common.resume

bb.yw:                                            ; preds = %bb.yv
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCsa9sSWSfjDbm_4jiff5error10ErrorInnerE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.v) #13
          to label %common.resume unwind label %bb.yx, !noalias !1604

bb.yx:                                            ; preds = %bb.yw
  %i.bjg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #15, !noalias !1604
  unreachable

_RNCINvXsk_NtCsa9sSWSfjDbm_4jiff5errorINtNtCs3oUPovFnLWP_4core6result6ResultuNtB8_5ErrorEINtB8_12ErrorContextuB1c_E7contextNtNtNtB8_3fmt7strtime5ErrorE0Ba_.exit.i1588: ; preds = %bb.yt
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !1604
  %i.bjh = call noundef ptr @_RNvMs_NtCsa9sSWSfjDbm_4jiff5errorNtB4_5Error12context_impl(ptr noundef %.sroa.4.0.i1082.ph, ptr noundef %i.bjb)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !1604
  br label %.loopexit2464

bb.yy:                                            ; preds = %_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b4YearNtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit.i
  %.sroa.523.0.extract.shift.i1079 = lshr i32 %.sroa.3.0.insert.insert.i.i1078, 16
  %.sroa.523.0.extract.trunc.i1080 = trunc nuw i32 %.sroa.523.0.extract.shift.i1079 to i16
  %i.bji = load ptr, ptr %i.hd, align 8, !alias.scope !1466, !nonnull !4, !align !6, !noundef !4 ; 2 uses
  %i.bjj = getelementptr inbounds nuw i8, ptr %i.bji, i64 80
  store i16 1, ptr %i.bjj, align 8, !noalias !1466
  %i.bjk = getelementptr inbounds nuw i8, ptr %i.bji, i64 82
  store i16 %.sroa.523.0.extract.trunc.i1080, ptr %i.bjk, align 2, !noalias !1466
  %i.bjl = add i64 %i.lc, -1                      ; 2 uses
  %i.bjm = getelementptr inbounds nuw i8, ptr %i.lb, i64 1
  store ptr %i.bjm, ptr %0, align 8, !alias.scope !1606, !captures !5
  store i64 %i.bjl, ptr %i.gx, align 8, !alias.scope !1606
  br label %.backedge

bb.yz:                                            ; preds = %bb.nu, %_RNCINvXsk_NtCsa9sSWSfjDbm_4jiff5errorINtNtCs3oUPovFnLWP_4core6result6ResultsNtNtNtBa_4util1b11BoundsErrorEINtB8_12ErrorContextsB1c_E7contextNtNtNtB8_3fmt7strtime10ParseErrorE0Ba_.exit.i1145
  %.sroa.4.0.i1139.ph = phi ptr [ %i.aoo, %_RNCINvXsk_NtCsa9sSWSfjDbm_4jiff5errorINtNtCs3oUPovFnLWP_4core6result6ResultsNtNtNtBa_4util1b11BoundsErrorEINtB8_12ErrorContextsB1c_E7contextNtNtNtB8_3fmt7strtime10ParseErrorE0Ba_.exit.i1145 ], [ %i.anx, %bb.nu ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !1607
  store ptr %.sroa.4.0.i1139.ph, ptr %i.t, align 8, !noalias !1607
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !1607
  store i8 1, ptr %i.s, align 8
  %.sroa.51883.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 1
  store i8 121, ptr %.sroa.51883.0..sroa_idx, align 1
  %.sroa.61884.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 2
  store i8 0, ptr %.sroa.61884.0..sroa_idx, align 2
  %i.bjn = invoke noundef ptr @_RNvXs_NtNtNtCsa9sSWSfjDbm_4jiff5error3fmt7strtimeNtB4_5ErrorNtB8_9IntoError10into_error(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.s)
          to label %_RNCINvXsk_NtCsa9sSWSfjDbm_4jiff5errorINtNtCs3oUPovFnLWP_4core6result6ResultuNtB8_5ErrorEINtB8_12ErrorContextuB1c_E7contextNtNtNtB8_3fmt7strtime5ErrorE0Ba_.exit.i1598 unwind label %bb.za, !noalias !1607

bb.za:                                            ; preds = %bb.yz
  %i.bjo = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.bjp = icmp eq ptr %.sroa.4.0.i1139.ph, null
  br i1 %i.bjp, label %common.resume, label %bb.zb

bb.zb:                                            ; preds = %bb.za
  %i.bjq = atomicrmw add ptr %.sroa.4.0.i1139.ph, i64 -1 release, align 8, !noalias !1608
  %i.bjr = icmp eq i64 %i.bjq, 1
  br i1 %i.bjr, label %bb.zc, label %common.resume

bb.zc:                                            ; preds = %bb.zb
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCsa9sSWSfjDbm_4jiff5error10ErrorInnerE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.t) #13
          to label %common.resume unwind label %bb.zd, !noalias !1607

bb.zd:                                            ; preds = %bb.zc
  %i.bjs = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #15, !noalias !1607
  unreachable

_RNCINvXsk_NtCsa9sSWSfjDbm_4jiff5errorINtNtCs3oUPovFnLWP_4core6result6ResultuNtB8_5ErrorEINtB8_12ErrorContextuB1c_E7contextNtNtNtB8_3fmt7strtime5ErrorE0Ba_.exit.i1598: ; preds = %bb.yz
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !1607
  %i.bjt = call noundef ptr @_RNvMs_NtCsa9sSWSfjDbm_4jiff5errorNtB4_5Error12context_impl(ptr noundef %.sroa.4.0.i1139.ph, ptr noundef %i.bjn)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !1607
  br label %.loopexit2464

bb.ze:                                            ; preds = %_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b12YearTwoDigitNtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit.i1132
  %.sroa.525.0.extract.shift.i1134 = lshr i32 %.sroa.3.0.insert.insert.i.i1133, 16
  %.sroa.525.0.extract.trunc.i1135 = trunc nuw nsw i32 %.sroa.525.0.extract.shift.i1134 to i16
  %i.bju = icmp samesign ult i32 %.sroa.3.0.insert.insert.i.i1133, 4521984
  %.sroa.016.0.v.i1136 = select i1 %i.bju, i16 2000, i16 1900
  %.sroa.016.0.i1137 = add nuw nsw i16 %.sroa.016.0.v.i1136, %.sroa.525.0.extract.trunc.i1135
  %i.bjv = load ptr, ptr %i.hd, align 8, !alias.scope !1475, !nonnull !4, !align !6, !noundef !4 ; 2 uses
  %i.bjw = getelementptr inbounds nuw i8, ptr %i.bjv, i64 80
  store i16 1, ptr %i.bjw, align 8, !noalias !1475
  %i.bjx = getelementptr inbounds nuw i8, ptr %i.bjv, i64 82
  store i16 %.sroa.016.0.i1137, ptr %i.bjx, align 2, !noalias !1475
  %i.bjy = add i64 %i.lc, -1                      ; 2 uses
  %i.bjz = getelementptr inbounds nuw i8, ptr %i.lb, i64 1
  store ptr %i.bjz, ptr %0, align 8, !alias.scope !1609, !captures !5
  store i64 %i.bjy, ptr %i.gx, align 8, !alias.scope !1609
  br label %.backedge

bb.zf:                                            ; preds = %bb.oc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.gt)
  %i.bka = getelementptr inbounds nuw i8, ptr %i.gt, i64 1
  store i8 122, ptr %i.bka, align 1
  store i8 0, ptr %i.gt, align 8
  %i.bkb = call noundef ptr @_RNvXs0_NtNtNtCsa9sSWSfjDbm_4jiff5error3fmt7strtimeNtB9_5ErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtB5_5ErrorE4from(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.gt) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.gt)
  br label %.loopexit2464

bb.zg:                                            ; preds = %bb.oc
  call void @llvm.experimental.noalias.scope.decl(metadata !1610)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !1610
  %i.bkc = load ptr, ptr %i.ha, align 8, !alias.scope !1610, !nonnull !4, !noundef !4
  call void @_RNvMs3_NtNtCsa9sSWSfjDbm_4jiff3fmt6offsetNtB5_6Parser5parse(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.q, ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(6) @_RNvNvMNtNtNtCsa9sSWSfjDbm_4jiff3fmt7strtime5parseNtB4_6Parser19parse_offset_colon26PARSER, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.bkc, i64 noundef %i.jd), !noalias !1610
  %i.bkd = load i32, ptr %i.q, align 8, !range !9, !noalias !1610, !noundef !4 ; 2 uses
  %i.bke = icmp eq i32 %i.bkd, -1
  br i1 %i.bke, label %bb.zh, label %bb.zi

bb.zh:                                            ; preds = %bb.zg
  %i.bkf = load ptr, ptr %.sroa.511.0..sroa_idx.i, align 8, !noalias !1610, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !1610
  br label %bb.aaa

bb.zi:                                            ; preds = %bb.zg
  %.sroa.410.0.copyload.i = load i32, ptr %.sroa.410.0..sroa_idx.i, align 4, !noalias !1610
  %.sroa.511.0.copyload.i = load ptr, ptr %.sroa.511.0..sroa_idx.i, align 8, !noalias !1610
  %.sroa.612.0.copyload.i = load ptr, ptr %.sroa.612.0..sroa_idx.i1603, align 8, !noalias !1610, !nonnull !4, !noundef !4
  %.sroa.713.0.copyload.i = load i64, ptr %.sroa.713.0..sroa_idx.i, align 8, !noalias !1610
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !1610
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !1610
  store i32 %i.bkd, ptr %i.r, align 4, !noalias !1610
  store i32 %.sroa.410.0.copyload.i, ptr %.sroa.2.0..sroa_idx.i, align 4, !noalias !1610
  store ptr %.sroa.511.0.copyload.i, ptr %.sroa.3.0..sroa_idx.i, align 4, !noalias !1610
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !1610
  call void @_RNvMNtNtCsa9sSWSfjDbm_4jiff3fmt6offsetNtB2_12ParsedOffset9to_offset(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.p, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(16) %i.r), !noalias !1610
  %i.bkg = load i32, ptr %i.p, align 8, !range !10, !noalias !1610, !noundef !4
  %i.bkh = trunc nuw i32 %i.bkg to i1
  br i1 %i.bkh, label %bb.zj, label %bb.aaf

bb.zj:                                            ; preds = %bb.zi
  %i.bki = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.bkj = load ptr, ptr %i.bki, align 8, !noalias !1610, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !1610
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !1610
  br label %bb.aaa

bb.zk:                                            ; preds = %bb.oc
  call void @llvm.experimental.noalias.scope.decl(metadata !1611)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !1611
  %i.bkk = load ptr, ptr %i.ha, align 8, !alias.scope !1611, !nonnull !4, !noundef !4
  call void @_RNvMs3_NtNtCsa9sSWSfjDbm_4jiff3fmt6offsetNtB5_6Parser5parse(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.n, ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(6) @_RNvNvMNtNtNtCsa9sSWSfjDbm_4jiff3fmt7strtime5parseNtB4_6Parser19parse_offset_colon36PARSER, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.bkk, i64 noundef %i.jd), !noalias !1611
  %i.bkl = load i32, ptr %i.n, align 8, !range !9, !noalias !1611, !noundef !4 ; 2 uses
  %i.bkm = icmp eq i32 %i.bkl, -1
  br i1 %i.bkm, label %bb.zl, label %bb.zm

bb.zl:                                            ; preds = %bb.zk
  %i.bkn = load ptr, ptr %.sroa.511.0..sroa_idx.i1609, align 8, !noalias !1611, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !1611
  br label %bb.aag

bb.zm:                                            ; preds = %bb.zk
  %.sroa.410.0.copyload.i1608 = load i32, ptr %.sroa.410.0..sroa_idx.i1607, align 4, !noalias !1611
  %.sroa.511.0.copyload.i1610 = load ptr, ptr %.sroa.511.0..sroa_idx.i1609, align 8, !noalias !1611
  %.sroa.612.0.copyload.i1612 = load ptr, ptr %.sroa.612.0..sroa_idx.i1611, align 8, !noalias !1611, !nonnull !4, !noundef !4
  %.sroa.713.0.copyload.i1614 = load i64, ptr %.sroa.713.0..sroa_idx.i1613, align 8, !noalias !1611
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !1611
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !1611
  store i32 %i.bkl, ptr %i.o, align 4, !noalias !1611
  store i32 %.sroa.410.0.copyload.i1608, ptr %.sroa.2.0..sroa_idx.i1615, align 4, !noalias !1611
  store ptr %.sroa.511.0.copyload.i1610, ptr %.sroa.3.0..sroa_idx.i1616, align 4, !noalias !1611
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !1611
  call void @_RNvMNtNtCsa9sSWSfjDbm_4jiff3fmt6offsetNtB2_12ParsedOffset9to_offset(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.m, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(16) %i.o), !noalias !1611
  %i.bko = load i32, ptr %i.m, align 8, !range !10, !noalias !1611, !noundef !4
  %i.bkp = trunc nuw i32 %i.bko to i1
  br i1 %i.bkp, label %bb.zn, label %bb.aal
end_hunk_0
begin_hunk_1_@_RNvMNtNtNtCsa9sSWSfjDbm_4jiff3fmt7strtime5parseNtB2_6Parser9parse_day:bb.a
  %or.cond66.i48.not = icmp eq i64 %invariant.umin, 0
  br i1 %or.cond66.i48.not, label %._crit_edge, label %.lr.ph50

._crit_edge:                                      ; preds = %bb.d, %.lr.ph50, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRhE6map_orbNCNvMs_NtNtNtCsa9sSWSfjDbm_4jiff3fmt7strtime5parseNtB12_9Extension12parse_number0EB16_.exit
  %.sroa.035.0.i.lcssa = phi i64 [ 0, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRhE6map_orbNCNvMs_NtNtNtCsa9sSWSfjDbm_4jiff3fmt7strtime5parseNtB12_9Extension12parse_number0EB16_.exit ], [ %.sroa.035.0.i49, %.lr.ph50 ], [ %invariant.umin, %bb.d ] ; 3 uses
  %invariant.umin54 = tail call i64 @llvm.umin.i64(i64 %.sroa.15.0.i.lcssa, i64 %..i) ; 3 uses
  %or.cond.i55 = icmp ult i64 %.sroa.035.0.i.lcssa, %invariant.umin54
  br i1 %or.cond.i55, label %.lr.ph59, label %._crit_edge60

.lr.ph50:                                         ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRhE6map_orbNCNvMs_NtNtNtCsa9sSWSfjDbm_4jiff3fmt7strtime5parseNtB12_9Extension12parse_number0EB16_.exit, %bb.d
  %.sroa.035.0.i49 = phi i64 [ %i.n, %bb.d ], [ 0, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRhE6map_orbNCNvMs_NtNtNtCsa9sSWSfjDbm_4jiff3fmt7strtime5parseNtB12_9Extension12parse_number0EB16_.exit ] ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.02.0.i.lcssa, i64 %.sroa.035.0.i49
  %i.l = load i8, ptr %i.k, align 1, !alias.scope !1663, !noundef !4
  %i.m = icmp eq i8 %i.l, 48
  br i1 %i.m, label %bb.d, label %._crit_edge

bb.d:                                             ; preds = %.lr.ph50
  %i.n = add nuw nsw i64 %.sroa.035.0.i49, 1      ; 2 uses
  %exitcond.not = icmp eq i64 %i.n, %invariant.umin
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph50

._crit_edge60:                                    ; preds = %.lr.ph59, %._crit_edge
  %.sroa.060.0.i.lcssa = phi i64 [ 0, %._crit_edge ], [ %.sroa.060.0.i56, %.lr.ph59 ]
  %.sroa.035.1.i.lcssa = phi i64 [ %.sroa.035.0.i.lcssa, %._crit_edge ], [ %.sroa.035.1.i57, %.lr.ph59 ] ; 2 uses
  %i.o = icmp eq i64 %.sroa.035.1.i.lcssa, 0
  br i1 %i.o, label %.loopexit, label %._crit_edge60.thread

.lr.ph59:                                         ; preds = %._crit_edge, %bb.g
  %.sroa.035.1.i57 = phi i64 [ %i.s, %bb.g ], [ %.sroa.035.0.i.lcssa, %._crit_edge ] ; 3 uses
  %.sroa.060.0.i56 = phi i64 [ %i.z, %bb.g ], [ 0, %._crit_edge ] ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.02.0.i.lcssa, i64 %.sroa.035.1.i57
  %i.q = load i8, ptr %i.p, align 1, !alias.scope !1663, !noundef !4
  %i.r = add i8 %i.q, -48                         ; 2 uses
  %or.cond67.i = icmp ult i8 %i.r, 10
  br i1 %or.cond67.i, label %bb.e, label %._crit_edge60

bb.e:                                             ; preds = %.lr.ph59
  %i.s = add nuw nsw i64 %.sroa.035.1.i57, 1      ; 2 uses
  %i.t = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %.sroa.060.0.i56, i64 10) ; 2 uses
  %i.u = extractvalue { i64, i1 } %i.t, 1
  br i1 %i.u, label %.loopexit, label %bb.f, !prof !7

bb.f:                                             ; preds = %bb.e
  %i.v = extractvalue { i64, i1 } %i.t, 0
  %i.w = zext nneg i8 %i.r to i64
  %i.x = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.v, i64 %i.w) ; 2 uses
  %i.y = extractvalue { i64, i1 } %i.x, 1
  br i1 %i.y, label %.loopexit, label %bb.g, !prof !7

bb.g:                                             ; preds = %bb.f
  %i.z = extractvalue { i64, i1 } %i.x, 0         ; 2 uses
  %exitcond66.not = icmp eq i64 %i.s, %invariant.umin54
  br i1 %exitcond66.not, label %._crit_edge60.thread, label %.lr.ph59

bb.h:                                             ; preds = %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph
  %i.aa = add nsw i64 %.sroa.15.0.i42, -1         ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.02.0.i43, i64 1
  %.not65.i = icmp eq i64 %i.aa, 0
  br i1 %.not65.i, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRhE6map_orbNCNvMs_NtNtNtCsa9sSWSfjDbm_4jiff3fmt7strtime5parseNtB12_9Extension12parse_number0EB16_.exit, label %.lr.ph

.loopexit:                                        ; preds = %bb.e, %bb.f, %._crit_edge60
  %.sink = phi i8 [ 0, %._crit_edge60 ], [ 2, %bb.f ], [ 2, %bb.e ]
  %i.ac = tail call noundef ptr @_RNvXs1_NtNtCsa9sSWSfjDbm_4jiff5error4utilNtB7_5ErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtB5_13ParseIntErrorE4from(i8 noundef %.sink, i8 undef) #13, !noalias !1662 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !1664
  store ptr %i.ac, ptr %i.d, align 8, !noalias !1664
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1664
  store i8 18, ptr %i.c, align 8
  %i.ad = invoke noundef ptr @_RNvXs2_NtNtNtCsa9sSWSfjDbm_4jiff5error3fmt7strtimeNtB5_10ParseErrorNtB9_9IntoError10into_error(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.c)
          to label %bb.m unwind label %bb.i, !noalias !1664

bb.i:                                             ; preds = %.loopexit
  %i.ae = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.af = icmp eq ptr %i.ac, null
  br i1 %i.af, label %common.resume, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ag = atomicrmw add ptr %i.ac, i64 -1 release, align 8, !noalias !1665
  %i.ah = icmp eq i64 %i.ag, 1
  br i1 %i.ah, label %bb.k, label %common.resume

bb.k:                                             ; preds = %bb.j
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCsa9sSWSfjDbm_4jiff5error10ErrorInnerE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.d) #13
          to label %common.resume unwind label %bb.l, !noalias !1664

bb.l:                                             ; preds = %bb.k
  %i.ai = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #15, !noalias !1664
  unreachable

common.resume:                                    ; preds = %bb.o, %bb.p, %bb.q, %bb.i, %bb.j, %bb.k
  %common.resume.op = phi { ptr, i32 } [ %i.ae, %bb.i ], [ %i.ae, %bb.k ], [ %i.ae, %bb.j ], [ %i.aq, %bb.q ], [ %i.aq, %bb.p ], [ %i.aq, %bb.o ]
  resume { ptr, i32 } %common.resume.op

bb.m:                                             ; preds = %.loopexit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1664
  %i.aj = call noundef ptr @_RNvMs_NtCsa9sSWSfjDbm_4jiff5errorNtB4_5Error12context_impl(ptr noundef %i.ac, ptr noundef %i.ad), !noalias !1664
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1664
  br label %bb.u

._crit_edge60.thread:                             ; preds = %bb.g, %._crit_edge60
  %.sroa.035.1.i.lcssa76 = phi i64 [ %.sroa.035.1.i.lcssa, %._crit_edge60 ], [ %invariant.umin54, %bb.g ] ; 2 uses
  %.sroa.060.0.i.lcssa75 = phi i64 [ %.sroa.060.0.i.lcssa, %._crit_edge60 ], [ %i.z, %bb.g ] ; 2 uses
  %i.ak = sub nuw nsw i64 %.sroa.15.0.i.lcssa, %.sroa.035.1.i.lcssa76
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.02.0.i.lcssa, i64 %.sroa.035.1.i.lcssa76
  store ptr %i.al, ptr %i.e, align 8, !captures !5
  store i64 %i.ak, ptr %i.g, align 8
  %i.am = add i64 %.sroa.060.0.i.lcssa75, -32
  %or.cond = icmp ult i64 %i.am, -31
  br i1 %or.cond, label %bb.n, label %bb.s

bb.n:                                             ; preds = %._crit_edge60.thread
  %i.an = tail call noundef i8 @_RNvXsa_NtNtCsa9sSWSfjDbm_4jiff4util1bNtB5_3DayNtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5error() #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1666
  %i.ao = tail call noundef ptr @_RNvXs_NtNtCsa9sSWSfjDbm_4jiff4util1bNtB4_11BoundsErrorNtNtB8_5error9IntoError10into_error(i8 noundef range(i8 0, 52) %i.an), !noalias !1666 ; 4 uses
  store ptr %i.ao, ptr %i.b, align 8, !noalias !1666
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1666
  store i8 18, ptr %i.a, align 8
  %i.ap = invoke noundef ptr @_RNvXs2_NtNtNtCsa9sSWSfjDbm_4jiff5error3fmt7strtimeNtB5_10ParseErrorNtB9_9IntoError10into_error(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.a)
          to label %_RNCINvXsk_NtCsa9sSWSfjDbm_4jiff5errorINtNtCs3oUPovFnLWP_4core6result6ResultaNtNtNtBa_4util1b11BoundsErrorEINtB8_12ErrorContextaB1c_E7contextNtNtNtB8_3fmt7strtime10ParseErrorE0Ba_.exit unwind label %bb.o, !noalias !1666

bb.o:                                             ; preds = %bb.n
  %i.aq = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.ar = icmp eq ptr %i.ao, null
  br i1 %i.ar, label %common.resume, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.as = atomicrmw add ptr %i.ao, i64 -1 release, align 8, !noalias !1667
  %i.at = icmp eq i64 %i.as, 1
  br i1 %i.at, label %bb.q, label %common.resume

bb.q:                                             ; preds = %bb.p
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCsa9sSWSfjDbm_4jiff5error10ErrorInnerE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b) #13
          to label %common.resume unwind label %bb.r, !noalias !1666

bb.r:                                             ; preds = %bb.q
  %i.au = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #15, !noalias !1666
  unreachable

_RNCINvXsk_NtCsa9sSWSfjDbm_4jiff5errorINtNtCs3oUPovFnLWP_4core6result6ResultaNtNtNtBa_4util1b11BoundsErrorEINtB8_12ErrorContextaB1c_E7contextNtNtNtB8_3fmt7strtime10ParseErrorE0Ba_.exit: ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1666
  %i.av = call noundef ptr @_RNvMs_NtCsa9sSWSfjDbm_4jiff5errorNtB4_5Error12context_impl(ptr noundef %i.ao, ptr noundef %i.ap), !noalias !1666
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1666
  br label %bb.u

bb.s:                                             ; preds = %._crit_edge60.thread
  %i.aw = trunc nuw nsw i64 %.sroa.060.0.i.lcssa75 to i8
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ay = load ptr, ptr %i.ax, align 8, !nonnull !4, !align !6, !noundef !4 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 94
  store i8 1, ptr %i.az, align 2
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ay, i64 95
  store i8 %i.aw, ptr %i.ba, align 1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1668)
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.bc = load i64, ptr %i.bb, align 8, !alias.scope !1668, !noundef !4 ; 2 uses
  %i.bd = icmp eq i64 %i.bc, 0
  br i1 %i.bd, label %bb.t, label %_RNvMNtNtNtCsa9sSWSfjDbm_4jiff3fmt7strtime5parseNtB2_6Parser8bump_fmt.exit, !prof !7

bb.t:                                             ; preds = %bb.s
  tail call void @_RNvNtNtCs3oUPovFnLWP_4core5slice5index16slice_index_fail(i64 noundef 1, i64 noundef 0, i64 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @17) #14, !noalias !1668
  unreachable

_RNvMNtNtNtCsa9sSWSfjDbm_4jiff3fmt7strtime5parseNtB2_6Parser8bump_fmt.exit: ; preds = %bb.s
  %i.be = load ptr, ptr %0, align 8, !alias.scope !1668, !nonnull !4, !noundef !4
  %i.bf = add i64 %i.bc, -1
  %i.bg = getelementptr inbounds nuw i8, ptr %i.be, i64 1
  store ptr %i.bg, ptr %0, align 8, !alias.scope !1668, !captures !5
  store i64 %i.bf, ptr %i.bb, align 8, !alias.scope !1668
  br label %bb.u

bb.u:                                             ; preds = %_RNvMNtNtNtCsa9sSWSfjDbm_4jiff3fmt7strtime5parseNtB2_6Parser8bump_fmt.exit, %_RNCINvXsk_NtCsa9sSWSfjDbm_4jiff5errorINtNtCs3oUPovFnLWP_4core6result6ResultaNtNtNtBa_4util1b11BoundsErrorEINtB8_12ErrorContextaB1c_E7contextNtNtNtB8_3fmt7strtime10ParseErrorE0Ba_.exit, %bb.m
  %.sroa.4.0 = phi ptr [ %i.aj, %bb.m ], [ %i.av, %_RNCINvXsk_NtCsa9sSWSfjDbm_4jiff5errorINtNtCs3oUPovFnLWP_4core6result6ResultaNtNtNtBa_4util1b11BoundsErrorEINtB8_12ErrorContextaB1c_E7contextNtNtNtB8_3fmt7strtime10ParseErrorE0Ba_.exit ], [ undef, %_RNvMNtNtNtCsa9sSWSfjDbm_4jiff3fmt7strtime5parseNtB2_6Parser8bump_fmt.exit ]
  %.sroa.01.0 = phi i64 [ 1, %bb.m ], [ 1, %_RNCINvXsk_NtCsa9sSWSfjDbm_4jiff5errorINtNtCs3oUPovFnLWP_4core6result6ResultaNtNtNtBa_4util1b11BoundsErrorEINtB8_12ErrorContextaB1c_E7contextNtNtNtB8_3fmt7strtime10ParseErrorE0Ba_.exit ], [ 0, %_RNvMNtNtNtCsa9sSWSfjDbm_4jiff3fmt7strtime5parseNtB2_6Parser8bump_fmt.exit ]
  %i.bh = insertvalue { i64, ptr } poison, i64 %.sroa.01.0, 0
  %i.bi = insertvalue { i64, ptr } %i.bh, ptr %.sroa.4.0, 1
  ret { i64, ptr } %i.bi
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvNtNtNtCsa9sSWSfjDbm_4jiff3fmt7strtime5parse12parse_choice(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef range(i64 0, -9223372036854775808) %2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %3, i64 noundef range(i64 7, 13) %4) unnamed_addr #0 personality ptr @rust_eh_personality {
.lr.ph.preheader:
  %i.a = alloca [1 x i8], align 1                 ; 3 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %.idx = shl nuw nsw i64 %4, 4
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 %.idx
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.backedge
  %.sroa.0.036 = phi ptr [ %i.d, %.backedge ], [ %3, %.lr.ph.preheader ] ; 3 uses
  %.sroa.8.035 = phi i64 [ %i.e, %.backedge ], [ 0, %.lr.ph.preheader ] ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.sroa.0.036, i64 16 ; 2 uses
  %i.e = add nuw nsw i64 %.sroa.8.035, 1
  %i.f = getelementptr inbounds nuw i8, ptr %.sroa.0.036, i64 8
  %i.g = load i64, ptr %i.f, align 8, !noundef !4 ; 9 uses
  %i.h = icmp ult i64 %2, %i.g
  br i1 %i.h, label %.backedge, label %bb.b

._crit_edge:                                      ; preds = %.backedge
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %3, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %4, ptr %i.j, align 8
  store i8 8, ptr %i.b, align 8
  %i.k = call noundef ptr @_RNvXs3_NtNtNtCsa9sSWSfjDbm_4jiff5error3fmt7strtimeNtB9_5ErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtB5_10ParseErrorE4from(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.b) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store ptr %i.k, ptr %0, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr null, ptr %i.l, align 8
  br label %bb.a

bb.a:                                             ; preds = %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultaNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCsa9sSWSfjDbm_4jiff.exit, %._crit_edge
  ret void

bb.b:                                             ; preds = %.lr.ph
  %i.m = getelementptr i8, ptr %1, i64 %i.g       ; 2 uses
  %i.n = load ptr, ptr %.sroa.0.036, align 8, !nonnull !4, !noundef !4 ; 3 uses
  %i.o = icmp ugt i64 %i.g, 15
  br i1 %i.o, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1683)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1684)
  %.not.i1466 = icmp eq i64 %i.g, 0
  br i1 %.not.i1466, label %.loopexit, label %.lr.ph71

bb.d:                                             ; preds = %.lr.ph71
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i1369, i64 1
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.05.0.i68, i64 1
  %i.r = add nsw i64 %.sroa.58.0.i67, -1          ; 2 uses
  %.not.i14 = icmp eq i64 %i.r, 0
  br i1 %.not.i14, label %.loopexit, label %.lr.ph71

.lr.ph71:                                         ; preds = %bb.c, %bb.d
  %.sroa.0.0.i1369 = phi ptr [ %i.p, %bb.d ], [ %1, %bb.c ] ; 2 uses
  %.sroa.05.0.i68 = phi ptr [ %i.q, %bb.d ], [ %i.n, %bb.c ] ; 2 uses
  %.sroa.58.0.i67 = phi i64 [ %i.r, %bb.d ], [ %i.g, %bb.c ]
  %i.s = load i8, ptr %.sroa.0.0.i1369, align 1, !alias.scope !1683, !noundef !4 ; 2 uses
  %i.t = add i8 %i.s, -65
  %i.u = icmp ult i8 %i.t, 26
  %i.v = select i1 %i.u, i8 32, i8 0
  %.sroa.012.0.i = or i8 %i.v, %i.s
  %i.w = load i8, ptr %.sroa.05.0.i68, align 1, !alias.scope !1684, !noundef !4 ; 2 uses
  %i.x = add i8 %i.w, -65
  %i.y = icmp ult i8 %i.x, 26
  %i.z = select i1 %i.y, i8 32, i8 0
  %.sroa.013.0.i = or i8 %i.z, %i.w
  %i.aa = icmp eq i8 %.sroa.012.0.i, %.sroa.013.0.i
  br i1 %i.aa, label %bb.d, label %.backedge

bb.e:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1685)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1686)
  %i.ab = and i64 %i.g, 15
  %i.ac = lshr i64 %i.g, 4
  br label %.lr.ph.i

bb.f:                                             ; preds = %.lr.ph.i
  %i.ad = add nuw nsw i64 %.sroa.02.039.i, 1      ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.ad, %i.ac
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph.i

._crit_edge.i:                                    ; preds = %bb.f
  %i.ae = icmp eq i64 %i.ab, 0
  br i1 %i.ae, label %.loopexit, label %_RNvMNtCs3oUPovFnLWP_4core5sliceSh8split_atCsa9sSWSfjDbm_4jiff.exit24.i

_RNvMNtCs3oUPovFnLWP_4core5sliceSh8split_atCsa9sSWSfjDbm_4jiff.exit24.i: ; preds = %._crit_edge.i
  %i.af = getelementptr i8, ptr %i.m, i64 -16
  %i.ag = getelementptr i8, ptr %i.n, i64 %i.g
  %i.ah = getelementptr i8, ptr %i.ag, i64 -16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1687)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1688)
  %i.ai = load <16 x i8>, ptr %i.af, align 1, !alias.scope !1689 ; 2 uses
  %i.aj = add <16 x i8> %i.ai, splat (i8 -65)
  %i.ak = icmp ult <16 x i8> %i.aj, splat (i8 26)
  %i.al = select <16 x i1> %i.ak, <16 x i8> splat (i8 32), <16 x i8> zeroinitializer
  %i.am = or <16 x i8> %i.al, %i.ai
  %i.an = load <16 x i8>, ptr %i.ah, align 1, !alias.scope !1690 ; 2 uses
  %i.ao = add <16 x i8> %i.an, splat (i8 -65)
  %i.ap = icmp ult <16 x i8> %i.ao, splat (i8 26)
  %i.aq = select <16 x i1> %i.ap, <16 x i8> splat (i8 32), <16 x i8> zeroinitializer
  %i.ar = or <16 x i8> %i.aq, %i.an
  %i.as = icmp ne <16 x i8> %i.am, %i.ar
  %i.at = bitcast <16 x i1> %i.as to i16
  %i.au = icmp eq i16 %i.at, 0
  br i1 %i.au, label %.loopexit, label %.backedge

.lr.ph.i:                                         ; preds = %bb.e, %bb.f
  %.sroa.02.039.i = phi i64 [ %i.ad, %bb.f ], [ 0, %bb.e ] ; 3 uses
  %i.av = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %.sroa.02.039.i
  %i.aw = getelementptr inbounds nuw [16 x i8], ptr %i.n, i64 %.sroa.02.039.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1691)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1692)
  %i.ax = load <16 x i8>, ptr %i.av, align 1, !alias.scope !1693 ; 2 uses
  %i.ay = add <16 x i8> %i.ax, splat (i8 -65)
  %i.az = icmp ult <16 x i8> %i.ay, splat (i8 26)
  %i.ba = select <16 x i1> %i.az, <16 x i8> splat (i8 32), <16 x i8> zeroinitializer
  %i.bb = or <16 x i8> %i.ba, %i.ax
  %i.bc = load <16 x i8>, ptr %i.aw, align 1, !alias.scope !1694 ; 2 uses
  %i.bd = add <16 x i8> %i.bc, splat (i8 -65)
  %i.be = icmp ult <16 x i8> %i.bd, splat (i8 26)
  %i.bf = select <16 x i1> %i.be, <16 x i8> splat (i8 32), <16 x i8> zeroinitializer
  %i.bg = or <16 x i8> %i.bf, %i.bc
  %i.bh = icmp ne <16 x i8> %i.bb, %i.bg
  %i.bi = bitcast <16 x i1> %i.bh to i16
  %i.bj = icmp eq i16 %i.bi, 0
  br i1 %i.bj, label %bb.f, label %.backedge

.backedge:                                        ; preds = %.lr.ph71, %.lr.ph.i, %_RNvMNtCs3oUPovFnLWP_4core5sliceSh8split_atCsa9sSWSfjDbm_4jiff.exit24.i, %.lr.ph
  %i.bk = icmp eq ptr %i.d, %i.c
  br i1 %i.bk, label %._crit_edge, label %.lr.ph

.loopexit:                                        ; preds = %._crit_edge.i, %_RNvMNtCs3oUPovFnLWP_4core5sliceSh8split_atCsa9sSWSfjDbm_4jiff.exit24.i, %bb.c, %bb.d
  %i.bl = icmp samesign ugt i64 %.sroa.8.035, 127
  br i1 %i.bl, label %bb.g, label %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultaNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCsa9sSWSfjDbm_4jiff.exit, !prof !7

bb.g:                                             ; preds = %.loopexit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1695
  store i8 2, ptr %i.a, align 1, !noalias !1695
  call void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @3, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @23) #14
  unreachable

_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultaNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCsa9sSWSfjDbm_4jiff.exit: ; preds = %.loopexit
  %i.bm = sub nuw nsw i64 %2, %i.g
  %i.bn = trunc nuw nsw i64 %.sroa.8.035 to i8
  store i8 %i.bn, ptr %0, align 8
  %.sroa.46.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.m, ptr %.sroa.46.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.bm, ptr %.sroa.5.0..sroa_idx, align 8
  br label %bb.a
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1b_NtNtNtCsb09rMIQFAXO_9jiff_core2tz4tzif6parserNtB6_9CountKindNtNtCs3oUPovFnLWP_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly captures(none) dereferenceable(1) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
switch.lookup:
  %i.a = load i8, ptr %0, align 1, !range !1696, !noundef !4 ; 2 uses
  %i.b = zext nneg i8 %i.a to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._RNvXs1b_NtNtNtCsb09rMIQFAXO_9jiff_core2tz4tzif6parserNtB6_9CountKindNtNtCs3oUPovFnLWP_4core3fmt5Debug3fmt, i64 %i.b
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  %i.c = zext nneg i8 %i.a to i64
  %switch.gep2 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._RNvXs1b_NtNtNtCsb09rMIQFAXO_9jiff_core2tz4tzif6parserNtB6_9CountKindNtNtCs3oUPovFnLWP_4core3fmt5Debug3fmt.19, i64 %i.c
  %switch.load3 = load ptr, ptr %switch.gep2, align 8
  %i.d = tail call noundef zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %switch.load3, i64 noundef %switch.ext)
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCs3oUPovFnLWP_4core3fmtRNtNtNtNtCsb09rMIQFAXO_9jiff_core2tz4tzif6parser10ParseErrorNtB6_5Debug3fmtCsa9sSWSfjDbm_4jiff(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !4, !align !11, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1700
  store ptr %i.b, ptr %i.a, align 8, !noalias !1700
  %i.c = call noundef zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter26debug_struct_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @108, i64 noundef 10, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @62, i64 noundef 4, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @107)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1700
  ret i1 %i.c
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1g_NtCs3oUPovFnLWP_4core3fmtRNtNtNtNtCsb09rMIQFAXO_9jiff_core2tz4tzif6parser11FooterErrorNtB6_5Debug3fmtCsa9sSWSfjDbm_4jiff(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1704)
  %i.c = load i8, ptr %i.b, align 1, !range !1705, !alias.scope !1704, !noundef !4 ; 2 uses
  %i.d = icmp samesign ugt i8 %i.c, 16
  %i.e = zext nneg i8 %i.c to i64
  %i.f = add nsw i64 %i.e, -16
  %i.g = select i1 %i.d, i64 %i.f, i64 0
  switch i64 %i.g, label %bb.b [
    i64 0, label %bb.c
    i64 1, label %bb.d
    i64 2, label %bb.e
    i64 3, label %bb.f
  ]

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1706
  store ptr %i.b, ptr %i.a, align 8, !noalias !1706
  %i.h = call noundef zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @46, i64 noundef 14, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @45)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1706
  br label %_RNvXs11_NtNtNtCsb09rMIQFAXO_9jiff_core2tz4tzif6parserNtB6_11FooterErrorNtNtCs3oUPovFnLWP_4core3fmt5Debug3fmt.exit

bb.d:                                             ; preds = %bb.a
  %i.i = tail call noundef zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @47, i64 noundef 11), !noalias !1704
  br label %_RNvXs11_NtNtNtCsb09rMIQFAXO_9jiff_core2tz4tzif6parserNtB6_11FooterErrorNtNtCs3oUPovFnLWP_4core3fmt5Debug3fmt.exit

bb.e:                                             ; preds = %bb.a
  %i.j = tail call noundef zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @48, i64 noundef 18), !noalias !1704
  br label %_RNvXs11_NtNtNtCsb09rMIQFAXO_9jiff_core2tz4tzif6parserNtB6_11FooterErrorNtNtCs3oUPovFnLWP_4core3fmt5Debug3fmt.exit

bb.f:                                             ; preds = %bb.a
  %i.k = tail call noundef zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @49, i64 noundef 13), !noalias !1704
  br label %_RNvXs11_NtNtNtCsb09rMIQFAXO_9jiff_core2tz4tzif6parserNtB6_11FooterErrorNtNtCs3oUPovFnLWP_4core3fmt5Debug3fmt.exit

_RNvXs11_NtNtNtCsb09rMIQFAXO_9jiff_core2tz4tzif6parserNtB6_11FooterErrorNtNtCs3oUPovFnLWP_4core3fmt5Debug3fmt.exit: ; preds = %bb.c, %bb.d, %bb.e, %bb.f
  %.sroa.0.0.in.i = phi i1 [ %i.h, %bb.c ], [ %i.i, %bb.d ], [ %i.j, %bb.e ], [ %i.k, %bb.f ]
  ret i1 %.sroa.0.0.in.i
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1g_NtCs3oUPovFnLWP_4core3fmtRNtNtNtNtCsb09rMIQFAXO_9jiff_core2tz4tzif6parser11HeaderErrorNtB6_5Debug3fmtCsa9sSWSfjDbm_4jiff(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1710)
  %i.d = load i8, ptr %i.c, align 1, !range !1711, !alias.scope !1710, !noundef !4
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 1 ; 3 uses
  switch i8 %i.d, label %default.unreachable [
    i8 0, label %bb.b
    i8 1, label %bb.c
    i8 2, label %bb.d
    i8 3, label %bb.e
    i8 4, label %bb.f
    i8 5, label %bb.g
    i8 6, label %bb.h
    i8 7, label %bb.i
    i8 8, label %bb.j
    i8 9, label %bb.k
    i8 10, label %bb.l
  ]

default.unreachable:                              ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1712
  store ptr %i.e, ptr %i.b, align 8, !noalias !1712
  %i.f = call noundef zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter26debug_struct_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @51, i64 noundef 16, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @52, i64 noundef 7, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @50)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1712
  br label %_RNvXs16_NtNtNtCsb09rMIQFAXO_9jiff_core2tz4tzif6parserNtB6_11HeaderErrorNtNtCs3oUPovFnLWP_4core3fmt5Debug3fmt.exit

bb.c:                                             ; preds = %bb.a
  %i.g = tail call noundef zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @53, i64 noundef 22), !noalias !1710
  br label %_RNvXs16_NtNtNtCsb09rMIQFAXO_9jiff_core2tz4tzif6parserNtB6_11HeaderErrorNtNtCs3oUPovFnLWP_4core3fmt5Debug3fmt.exit

bb.d:                                             ; preds = %bb.a
  %i.h = tail call noundef zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @54, i64 noundef 16), !noalias !1710
  br label %_RNvXs16_NtNtNtCsb09rMIQFAXO_9jiff_core2tz4tzif6parserNtB6_11HeaderErrorNtNtCs3oUPovFnLWP_4core3fmt5Debug3fmt.exit

bb.e:                                             ; preds = %bb.a
  %i.i = tail call noundef zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @55, i64 noundef 16), !noalias !1710
  br label %_RNvXs16_NtNtNtCsb09rMIQFAXO_9jiff_core2tz4tzif6parserNtB6_11HeaderErrorNtNtCs3oUPovFnLWP_4core3fmt5Debug3fmt.exit

bb.f:                                             ; preds = %bb.a
  %i.j = tail call noundef zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @56, i64 noundef 13), !noalias !1710
  br label %_RNvXs16_NtNtNtCsb09rMIQFAXO_9jiff_core2tz4tzif6parserNtB6_11HeaderErrorNtNtCs3oUPovFnLWP_4core3fmt5Debug3fmt.exit

bb.g:                                             ; preds = %bb.a
  %i.k = tail call noundef zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @57, i64 noundef 15), !noalias !1710
  br label %_RNvXs16_NtNtNtCsb09rMIQFAXO_9jiff_core2tz4tzif6parserNtB6_11HeaderErrorNtNtCs3oUPovFnLWP_4core3fmt5Debug3fmt.exit

bb.h:                                             ; preds = %bb.a
  %i.l = tail call noundef zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @58, i64 noundef 14), !noalias !1710
  br label %_RNvXs16_NtNtNtCsb09rMIQFAXO_9jiff_core2tz4tzif6parserNtB6_11HeaderErrorNtNtCs3oUPovFnLWP_4core3fmt5Debug3fmt.exit

bb.i:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1712
  store ptr %i.e, ptr %i.a, align 8, !noalias !1712
  %i.m = call noundef zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter26debug_struct_field2_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @61, i64 noundef 10, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @62, i64 noundef 4, ptr noundef nonnull readonly %i.e, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @59, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @63, i64 noundef 7, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @60)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1712
  br label %_RNvXs16_NtNtNtCsb09rMIQFAXO_9jiff_core2tz4tzif6parserNtB6_11HeaderErrorNtNtCs3oUPovFnLWP_4core3fmt5Debug3fmt.exit

bb.j:                                             ; preds = %bb.a
  %i.n = tail call noundef zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @64, i64 noundef 8), !noalias !1710
  br label %_RNvXs16_NtNtNtCsb09rMIQFAXO_9jiff_core2tz4tzif6parserNtB6_11HeaderErrorNtNtCs3oUPovFnLWP_4core3fmt5Debug3fmt.exit

bb.k:                                             ; preds = %bb.a
  %i.o = tail call noundef zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @65, i64 noundef 8), !noalias !1710
  br label %_RNvXs16_NtNtNtCsb09rMIQFAXO_9jiff_core2tz4tzif6parserNtB6_11HeaderErrorNtNtCs3oUPovFnLWP_4core3fmt5Debug3fmt.exit

bb.l:                                             ; preds = %bb.a
  %i.p = tail call noundef zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @66, i64 noundef 8), !noalias !1710
  br label %_RNvXs16_NtNtNtCsb09rMIQFAXO_9jiff_core2tz4tzif6parserNtB6_11HeaderErrorNtNtCs3oUPovFnLWP_4core3fmt5Debug3fmt.exit

_RNvXs16_NtNtNtCsb09rMIQFAXO_9jiff_core2tz4tzif6parserNtB6_11HeaderErrorNtNtCs3oUPovFnLWP_4core3fmt5Debug3fmt.exit: ; preds = %bb.b, %bb.c, %bb.d, %bb.e, %bb.f, %bb.g, %bb.h, %bb.i, %bb.j, %bb.k, %bb.l
  %.sroa.0.0.in.i = phi i1 [ %i.f, %bb.b ], [ %i.g, %bb.c ], [ %i.h, %bb.d ], [ %i.i, %bb.e ], [ %i.j, %bb.f ], [ %i.k, %bb.g ], [ %i.l, %bb.h ], [ %i.m, %bb.i ], [ %i.n, %bb.j ], [ %i.o, %bb.k ], [ %i.p, %bb.l ]
  ret i1 %.sroa.0.0.in.i
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1g_NtCs3oUPovFnLWP_4core3fmtRNtNtNtNtCsb09rMIQFAXO_9jiff_core2tz4tzif6parser12SplitAtErrorNtB6_5Debug3fmtCsa9sSWSfjDbm_4jiff(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
switch.lookup:
  %i.a = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4
  %.val = load i8, ptr %i.a, align 1, !range !1713, !noundef !4 ; 2 uses
  %i.b = zext nneg i8 %.val to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._RNvXs1g_NtCs3oUPovFnLWP_4core3fmtRNtNtNtNtCsb09rMIQFAXO_9jiff_core2tz4tzif6parser12SplitAtErrorNtB6_5Debug3fmtCsa9sSWSfjDbm_4jiff, i64 %i.b
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  %i.c = zext nneg i8 %.val to i64
  %switch.gep1 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._RNvXs1g_NtCs3oUPovFnLWP_4core3fmtRNtNtNtNtCsb09rMIQFAXO_9jiff_core2tz4tzif6parser12SplitAtErrorNtB6_5Debug3fmtCsa9sSWSfjDbm_4jiff.20, i64 %i.c
  %switch.load2 = load ptr, ptr %switch.gep1, align 8
  %i.d = tail call noundef zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %switch.load2, i64 noundef %switch.ext)
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1g_NtCs3oUPovFnLWP_4core3fmtRNtNtNtNtCsb09rMIQFAXO_9jiff_core2tz4tzif6parser13U32UsizeErrorNtB6_5Debug3fmtCsa9sSWSfjDbm_4jiff(ptr noalias nofree readonly align 8 captures(none) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @81, i64 noundef 13)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1g_NtCs3oUPovFnLWP_4core3fmtRNtNtNtNtCsb09rMIQFAXO_9jiff_core2tz4tzif6parser14IndicatorErrorNtB6_5Debug3fmtCsa9sSWSfjDbm_4jiff(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1717)
  %i.c = load i8, ptr %i.b, align 1, !range !12, !alias.scope !1717, !noundef !4 ; 3 uses
  %i.d = icmp ne i8 %i.c, 11
  tail call void @llvm.assume(i1 %i.d)
  %i.e = add nsw i8 %i.c, -8
  %i.f = icmp samesign ugt i8 %i.c, 7
  %narrow.i = select i1 %i.f, i8 %i.e, i8 3
  switch i8 %narrow.i, label %bb.b [
    i8 0, label %bb.c
    i8 1, label %bb.d
end_hunk_1
