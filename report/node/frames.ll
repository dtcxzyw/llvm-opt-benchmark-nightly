Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/frames?download=true
inline.NumInlined: 3392
inline.NumDeleted: 1471
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZNK2v88internal16OptimizedJSFrame9SummarizeEv:bb.a
  br label %bb.bf

bb.p:                                             ; preds = %bb.e
  %i.fo = icmp eq i64 %i.v, 0
  br i1 %i.fo, label %bb.r, label %bb.q, !prof !33

bb.q:                                             ; preds = %bb.p
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.17) #26
  unreachable

bb.r:                                             ; preds = %bb.p
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.18) #26
  unreachable

bb.s:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  call void @_ZN2v88internal15TranslatedStateC1EPKNS0_15JavaScriptFrameE(ptr noundef nonnull align 8 dereferenceable(156) %5, ptr noundef nonnull %1) #25
  %i.fp = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.fq = load i64, ptr %i.fp, align 8
  call void @_ZN2v88internal15TranslatedState7PrepareEm(ptr noundef nonnull align 8 dereferenceable(156) %5, i64 noundef %i.fq) #25
  %i.fr = load ptr, ptr %1, align 8
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 136
  %i.ft = load ptr, ptr %i.fs, align 8
  %i.fu = call noundef zeroext i1 %i.ft(ptr noundef nonnull align 8 dereferenceable(80) %1) #25 ; 2 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  %i.fw = load ptr, ptr %i.fv, align 8            ; 4 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 3 uses
  %i.fy = load ptr, ptr %i.fx, align 8
  %i.fz = icmp eq ptr %i.fw, %i.fy
  br i1 %i.fz, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.s
  %i.ga = zext i1 %i.fu to i8
  %.sroa.4228.0..sroa_idx = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  %.sroa.6230.0..sroa_idx = getelementptr inbounds nuw i8, ptr %9, i64 16
  %.sroa.7231.0..sroa_idx = getelementptr inbounds nuw i8, ptr %9, i64 24
  %.sroa.8232.0..sroa_idx = getelementptr inbounds nuw i8, ptr %9, i64 28
  %i.gb = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.ge = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 5 uses
  %.sroa.4218.0..sroa_idx = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  %.sroa.6220.0..sroa_idx = getelementptr inbounds nuw i8, ptr %8, i64 16
  %.sroa.7221.0..sroa_idx = getelementptr inbounds nuw i8, ptr %8, i64 24
  %.sroa.8222.0..sroa_idx = getelementptr inbounds nuw i8, ptr %8, i64 32
  %.sroa.9223.0..sroa_idx = getelementptr inbounds nuw i8, ptr %8, i64 40
  %.sroa.10224.0..sroa_idx = getelementptr inbounds nuw i8, ptr %8, i64 44
  %.sroa.12226.0..sroa_idx = getelementptr inbounds nuw i8, ptr %8, i64 48
  br label %bb.t

._crit_edge.loopexit:                             ; preds = %bb.az
  %i.gf = trunc nuw i8 %.1 to i1
  br i1 %i.gf, label %bb.ba, label %._crit_edge._crit_edge

._crit_edge:                                      ; preds = %bb.s
  br i1 %i.fu, label %bb.ba, label %._crit_edge._crit_edge

._crit_edge._crit_edge:                           ; preds = %._crit_edge.loopexit, %._crit_edge
  %i.gg = phi ptr [ %i.me, %._crit_edge.loopexit ], [ %i.fw, %._crit_edge ]
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %2, i64 24
  %.pre = load i8, ptr %.phi.trans.insert, align 8, !range !30
  br label %bb.bb

bb.t:                                             ; preds = %.lr.ph, %bb.az
  %.0249 = phi i8 [ %i.ga, %.lr.ph ], [ %.1, %bb.az ] ; 3 uses
  %.sroa.0125.0247 = phi ptr [ %i.fw, %.lr.ph ], [ %i.me, %bb.az ] ; 12 uses
  %i.gh = load i32, ptr %.sroa.0125.0247, align 8
  switch i32 %i.gh, label %.fold.split [
    i32 9, label %bb.u
    i32 8, label %bb.u
    i32 0, label %bb.u
    i32 2, label %bb.az
    i32 3, label %bb.az
    i32 5, label %bb.as
  ]

bb.u:                                             ; preds = %bb.t, %bb.t, %bb.t
  %i.gi = getelementptr inbounds nuw i8, ptr %.sroa.0125.0247, i64 40
  %i.gj = load i32, ptr %i.gi, align 8
  %i.gk = icmp eq i32 %i.gj, 1
  br i1 %i.gk, label %_ZNK2v88internal15TranslatedFrame11shared_infoEv.exit, label %bb.v, !prof !33

bb.v:                                             ; preds = %bb.u
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.100) #26
  unreachable

_ZNK2v88internal15TranslatedFrame11shared_infoEv.exit: ; preds = %bb.u
  %i.gl = getelementptr inbounds nuw i8, ptr %.sroa.0125.0247, i64 8
  %.sroa.0.0.copyload.i39 = load ptr, ptr %i.gl, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  call void @llvm.experimental.noalias.scope.decl(metadata !148)
  %i.gm = getelementptr inbounds nuw i8, ptr %.sroa.0125.0247, i64 64 ; 2 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %.sroa.0125.0247, i64 80
  %i.go = load <2 x ptr>, ptr %i.gm, align 8, !noalias !149
  %i.gp = load ptr, ptr %i.gm, align 8, !noalias !149
  store <2 x ptr> %i.go, ptr %6, align 16, !alias.scope !148
  %i.gq = load <2 x ptr>, ptr %i.gn, align 8, !noalias !149
  store <2 x ptr> %i.gq, ptr %i.gd, align 16, !alias.scope !148
  store i32 0, ptr %i.ge, align 16, !alias.scope !148
  %i.gr = call noundef zeroext i1 @_ZNK2v88internal15TranslatedValue20IsMaterializedObjectEv(ptr noundef nonnull align 8 dereferenceable(40) %i.gp) #25
  br i1 %i.gr, label %bb.w, label %bb.x, !prof !32

bb.w:                                             ; preds = %_ZNK2v88internal15TranslatedFrame11shared_infoEv.exit
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.29) #26
  unreachable

bb.x:                                             ; preds = %_ZNK2v88internal15TranslatedFrame11shared_infoEv.exit
  %i.gs = load ptr, ptr %6, align 16
  %i.gt = call ptr @_ZN2v88internal15TranslatedValue8GetValueEv(ptr noundef nonnull align 8 dereferenceable(40) %i.gs) #25
  %i.gu = load i32, ptr %i.ge, align 16, !noalias !150
  %i.gv = add nsw i32 %i.gu, 1
  store i32 %i.gv, ptr %i.ge, align 16, !noalias !150
  call void @_ZN2v88internal15TranslatedFrame15AdvanceIteratorEPSt15_Deque_iteratorINS0_15TranslatedValueERS3_PS3_E(ptr noundef nonnull align 8 dereferenceable(36) %6) #25, !noalias !150
  %i.gw = load ptr, ptr %6, align 16
  %i.gx = call noundef zeroext i1 @_ZNK2v88internal15TranslatedValue20IsMaterializedObjectEv(ptr noundef nonnull align 8 dereferenceable(40) %i.gw) #25
  br i1 %i.gx, label %bb.y, label %bb.z, !prof !32

bb.y:                                             ; preds = %bb.x
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.29) #26
  unreachable

bb.z:                                             ; preds = %bb.x
  %i.gy = load ptr, ptr %6, align 16
  %i.gz = call ptr @_ZN2v88internal15TranslatedValue8GetValueEv(ptr noundef nonnull align 8 dereferenceable(40) %i.gy) #25
  %i.ha = load i32, ptr %i.ge, align 16, !noalias !151
  %i.hb = add nsw i32 %i.ha, 1
  store i32 %i.hb, ptr %i.ge, align 16, !noalias !151
  call void @_ZN2v88internal15TranslatedFrame15AdvanceIteratorEPSt15_Deque_iteratorINS0_15TranslatedValueERS3_PS3_E(ptr noundef nonnull align 8 dereferenceable(36) %6) #25, !noalias !151
  %i.hc = load i32, ptr %.sroa.0125.0247, align 8
  %i.hd = and i32 %i.hc, -2
  %i.he = icmp eq i32 %i.hd, 8
  br i1 %i.he, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.hf = load ptr, ptr %i.c, align 8
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hf, i64 58992
  %i.hh = getelementptr inbounds nuw i8, ptr %.sroa.0125.0247, i64 4
  %.sroa.0.0.copyload.i40 = load i32, ptr %i.hh, align 4
  %i.hi = call noundef i32 @_ZN2v88internal8Builtins28GetBuiltinFromBytecodeOffsetENS0_14BytecodeOffsetE(i32 %.sroa.0.0.copyload.i40) #25
  %i.hj = call ptr @_ZN2v88internal8Builtins11code_handleENS0_7BuiltinE(ptr noundef nonnull align 8 dereferenceable(20) %i.hg, i32 noundef %i.hi) #25
  br label %bb.ad

bb.ab:                                            ; preds = %bb.z
  %i.hk = getelementptr inbounds nuw i8, ptr %.sroa.0125.0247, i64 4
  %.sroa.0.0.copyload.i41 = load i32, ptr %i.hk, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25
  %i.hl = load i64, ptr %.sroa.0.0.copyload.i39, align 8
  store i64 %i.hl, ptr %7, align 8
  %i.hm = load ptr, ptr %i.c, align 8
  %i.hn = call i64 @_ZN2v88internal18SharedFunctionInfo13abstract_codeEPNS0_7IsolateE(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef %i.hm)
  %i.ho = load ptr, ptr %i.c, align 8             ; 3 uses
  %i.hp = getelementptr inbounds nuw i8, ptr %i.ho, i64 560 ; 2 uses
  %i.hq = load ptr, ptr %i.hp, align 8            ; 2 uses
  %i.hr = getelementptr inbounds nuw i8, ptr %i.ho, i64 568
  %i.hs = load ptr, ptr %i.hr, align 8
  %i.ht = icmp eq ptr %i.hq, %i.hs
  br i1 %i.ht, label %bb.ac, label %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit35, !prof !32

bb.ac:                                            ; preds = %bb.ab
  %i.hu = call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %i.ho) #25
  br label %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit35

_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit35: ; preds = %bb.ab, %bb.ac
  %.0.i34 = phi ptr [ %i.hu, %bb.ac ], [ %i.hq, %bb.ab ] ; 3 uses
  %i.hv = ptrtoint ptr %.0.i34 to i64
  %i.hw = add i64 %i.hv, 8
  %i.hx = inttoptr i64 %i.hw to ptr
  store ptr %i.hx, ptr %i.hp, align 8
  store i64 %i.hn, ptr %.0.i34, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  br label %bb.ad

bb.ad:                                            ; preds = %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit35, %bb.aa
  %.sroa.0108.0 = phi ptr [ %i.hj, %bb.aa ], [ %.0.i34, %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit35 ]
  %.029 = phi i32 [ 0, %bb.aa ], [ %.sroa.0.0.copyload.i41, %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit35 ]
  %i.hy = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 1578), align 2, !range !30, !noundef !31
  %i.hz = trunc nuw i8 %i.hy to i1
  br i1 %i.hz, label %bb.af, label %bb.ae, !prof !32

bb.ae:                                            ; preds = %bb.ad
  %i.ia = load ptr, ptr %i.c, align 8
  %i.ib = getelementptr inbounds nuw i8, ptr %i.ia, i64 864
  br label %_ZNK2v88internal24CommonFrameWithJSLinkage13GetParametersEv.exit46

bb.af:                                            ; preds = %bb.ad
  %i.ic = load ptr, ptr %1, align 8
  %i.id = getelementptr inbounds nuw i8, ptr %i.ic, i64 112
  %i.ie = load ptr, ptr %i.id, align 8
  %i.if = call noundef i32 %i.ie(ptr noundef nonnull align 8 dereferenceable(80) %1) #25, !inline_history !38 ; 3 uses
  %i.ig = load ptr, ptr %i.c, align 8
  %i.ih = call ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE13NewFixedArrayEiNS0_14AllocationTypeENS0_14AllocationHintE(ptr noundef nonnull align 1 dereferenceable(1) %i.ig, i32 noundef %i.if, i8 noundef zeroext 0, i8 0) #25 ; 3 uses
  %i.ii = icmp sgt i32 %i.if, 0
  br i1 %i.ii, label %.lr.ph.i43.preheader, label %_ZNK2v88internal24CommonFrameWithJSLinkage13GetParametersEv.exit46

.lr.ph.i43.preheader:                             ; preds = %bb.af
  %i.ij = zext nneg i32 %i.if to i64
  br label %.lr.ph.i43

.lr.ph.i43:                                       ; preds = %.lr.ph.i43.preheader, %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph.i43.preheader ], [ %indvars.iv.next, %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit ] ; 3 uses
  %i.ik = load i64, ptr %i.ih, align 8            ; 3 uses
  %i.il = add i64 %i.ik, -1                       ; 2 uses
  %i.im = inttoptr i64 %i.il to ptr
  %i.in = load ptr, ptr %1, align 8
  %i.io = getelementptr inbounds nuw i8, ptr %i.in, i64 104
  %i.ip = load ptr, ptr %i.io, align 8
  %i.iq = trunc nuw nsw i64 %indvars.iv to i32
  %i.ir = call i64 %i.ip(ptr noundef nonnull align 8 dereferenceable(80) %1, i32 noundef %i.iq) #25, !inline_history !38 ; 5 uses
  %i.is = getelementptr inbounds nuw i8, ptr %i.im, i64 16
  %i.it = getelementptr inbounds nuw [8 x i8], ptr %i.is, i64 %indvars.iv ; 2 uses
  store atomic volatile i64 %i.ir, ptr %i.it monotonic, align 8
  %i.iu = trunc i64 %i.ir to i1
  br i1 %i.iu, label %bb.ag, label %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit

bb.ag:                                            ; preds = %.lr.ph.i43
  %i.iv = ptrtoint ptr %i.it to i64               ; 2 uses
  %i.iw = and i64 %i.il, -262144
  %i.ix = inttoptr i64 %i.iw to ptr
  %i.iy = load i64, ptr %i.ix, align 262144       ; 2 uses
  %i.iz = and i64 %i.iy, 32
  %.not.i.i.i.i.i = icmp eq i64 %i.iz, 0
  %i.ja = and i64 %i.iy, 25
  %.not38.i.i.i.i.i = icmp eq i64 %i.ja, 0
  br i1 %.not38.i.i.i.i.i, label %bb.ah, label %bb.aj

bb.ah:                                            ; preds = %bb.ag
  %i.jb = and i64 %i.ir, -262144
  %i.jc = inttoptr i64 %i.jb to ptr
  %.sroa.0.0.copyload.i28.i.i.i.i.i = load i64, ptr %i.jc, align 262144
  %i.jd = and i64 %.sroa.0.0.copyload.i28.i.i.i.i.i, 25
  %.not39.i.i.i.i.i = icmp eq i64 %i.jd, 0
  br i1 %.not39.i.i.i.i.i, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  call void @_ZN2v88internal12WriteBarrier40CombinedGenerationalAndSharedBarrierSlowENS0_6TaggedINS0_10HeapObjectEEEmS4_(i64 %i.ik, i64 noundef %i.iv, i64 %i.ir) #25
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah, %bb.ag
  br i1 %.not.i.i.i.i.i, label %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit, label %bb.ak, !prof !33

bb.ak:                                            ; preds = %bb.aj
  call void @_ZN2v88internal12WriteBarrier11MarkingSlowENS0_6TaggedINS0_10HeapObjectEEENS0_18FullHeapObjectSlotES4_(i64 %i.ik, i64 %i.iv, i64 %i.ir) #25
  br label %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit

_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit: ; preds = %.lr.ph.i43, %bb.aj, %bb.ak
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not.i45 = icmp eq i64 %indvars.iv.next, %i.ij
  br i1 %exitcond.not.i45, label %_ZNK2v88internal24CommonFrameWithJSLinkage13GetParametersEv.exit46, label %.lr.ph.i43, !llvm.loop !22

_ZNK2v88internal24CommonFrameWithJSLinkage13GetParametersEv.exit46: ; preds = %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit, %bb.ae, %bb.af
  %.sroa.010.0.i42 = phi ptr [ %i.ib, %bb.ae ], [ %i.ih, %bb.af ], [ %i.ih, %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit ]
  %i.je = load ptr, ptr %i.c, align 8             ; 7 uses
  %i.jf = load i64, ptr %i.gz, align 8
  %i.jg = load i64, ptr %i.gt, align 8
  %i.jh = load i64, ptr %.sroa.0108.0, align 8
  %i.ji = load i64, ptr %.sroa.010.0.i42, align 8
  %i.jj = getelementptr inbounds nuw i8, ptr %i.je, i64 560 ; 8 uses
  %i.jk = load ptr, ptr %i.jj, align 8            ; 2 uses
  %i.jl = getelementptr inbounds nuw i8, ptr %i.je, i64 568 ; 4 uses
  %i.jm = load ptr, ptr %i.jl, align 8
  %i.jn = icmp eq ptr %i.jk, %i.jm
  br i1 %i.jn, label %bb.al, label %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit.i47, !prof !32

bb.al:                                            ; preds = %_ZNK2v88internal24CommonFrameWithJSLinkage13GetParametersEv.exit46
  %i.jo = call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %i.je) #25
  br label %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit.i47

_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit.i47: ; preds = %bb.al, %_ZNK2v88internal24CommonFrameWithJSLinkage13GetParametersEv.exit46
  %.0.i.i48 = phi ptr [ %i.jo, %bb.al ], [ %i.jk, %_ZNK2v88internal24CommonFrameWithJSLinkage13GetParametersEv.exit46 ] ; 3 uses
  %i.jp = ptrtoint ptr %.0.i.i48 to i64
  %i.jq = add i64 %i.jp, 8
  %i.jr = inttoptr i64 %i.jq to ptr
  store ptr %i.jr, ptr %i.jj, align 8
  store i64 %i.jf, ptr %.0.i.i48, align 8
  %i.js = load ptr, ptr %i.jj, align 8            ; 2 uses
  %i.jt = load ptr, ptr %i.jl, align 8
  %i.ju = icmp eq ptr %i.js, %i.jt
  br i1 %i.ju, label %bb.am, label %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit15.i49, !prof !32

bb.am:                                            ; preds = %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit.i47
  %i.jv = call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %i.je) #25
  br label %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit15.i49

_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit15.i49: ; preds = %bb.am, %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit.i47
  %.0.i14.i50 = phi ptr [ %i.jv, %bb.am ], [ %i.js, %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit.i47 ] ; 3 uses
  %i.jw = ptrtoint ptr %.0.i14.i50 to i64
  %i.jx = add i64 %i.jw, 8
  %i.jy = inttoptr i64 %i.jx to ptr
  store ptr %i.jy, ptr %i.jj, align 8
  store i64 %i.jg, ptr %.0.i14.i50, align 8
  %i.jz = load ptr, ptr %i.jj, align 8            ; 2 uses
  %i.ka = load ptr, ptr %i.jl, align 8
  %i.kb = icmp eq ptr %i.jz, %i.ka
  br i1 %i.kb, label %bb.an, label %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit17.i51, !prof !32

bb.an:                                            ; preds = %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit15.i49
  %i.kc = call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %i.je) #25
  br label %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit17.i51

_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit17.i51: ; preds = %bb.an, %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit15.i49
  %.0.i16.i52 = phi ptr [ %i.kc, %bb.an ], [ %i.jz, %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit15.i49 ] ; 3 uses
  %i.kd = ptrtoint ptr %.0.i16.i52 to i64
  %i.ke = add i64 %i.kd, 8
  %i.kf = inttoptr i64 %i.ke to ptr
  store ptr %i.kf, ptr %i.jj, align 8
  store i64 %i.jh, ptr %.0.i16.i52, align 8
  %i.kg = load ptr, ptr %i.jj, align 8            ; 2 uses
  %i.kh = load ptr, ptr %i.jl, align 8
  %i.ki = icmp eq ptr %i.kg, %i.kh
  br i1 %i.ki, label %bb.ao, label %_ZN2v88internal12FrameSummary22JavaScriptFrameSummaryC2EPNS0_7IsolateENS0_6TaggedINS0_6ObjectEEENS5_INS0_10JSFunctionEEENS5_INS0_12AbstractCodeEEEibNS5_INS0_10FixedArrayEEE.exit54, !prof !32

bb.ao:                                            ; preds = %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit17.i51
  %i.kj = call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %i.je) #25
  br label %_ZN2v88internal12FrameSummary22JavaScriptFrameSummaryC2EPNS0_7IsolateENS0_6TaggedINS0_6ObjectEEENS5_INS0_10JSFunctionEEENS5_INS0_12AbstractCodeEEEibNS5_INS0_10FixedArrayEEE.exit54

_ZN2v88internal12FrameSummary22JavaScriptFrameSummaryC2EPNS0_7IsolateENS0_6TaggedINS0_6ObjectEEENS5_INS0_10JSFunctionEEENS5_INS0_12AbstractCodeEEEibNS5_INS0_10FixedArrayEEE.exit54: ; preds = %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit17.i51, %bb.ao
  %.0.i18.i53 = phi ptr [ %i.kj, %bb.ao ], [ %i.kg, %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit17.i51 ] ; 3 uses
  %i.kk = ptrtoint ptr %.0.i18.i53 to i64
  %i.kl = add i64 %i.kk, 8
  %i.km = inttoptr i64 %i.kl to ptr
  store ptr %i.km, ptr %i.jj, align 8
  store i64 %i.ji, ptr %.0.i18.i53, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #25
  store ptr %i.je, ptr %8, align 8
  store i32 0, ptr %.sroa.4218.0..sroa_idx, align 8
  store ptr %.0.i.i48, ptr %.sroa.6220.0..sroa_idx, align 8
  store ptr %.0.i14.i50, ptr %.sroa.7221.0..sroa_idx, align 8
  store ptr %.0.i16.i52, ptr %.sroa.8222.0..sroa_idx, align 8
  store i32 %.029, ptr %.sroa.9223.0..sroa_idx, align 8
  store i8 %.0249, ptr %.sroa.10224.0..sroa_idx, align 4
  store ptr %.0.i18.i53, ptr %.sroa.12226.0..sroa_idx, align 8
  %i.kn = load ptr, ptr %i.gb, align 8            ; 4 uses
  %i.ko = load ptr, ptr %i.gc, align 16
  %.not.i.i55 = icmp eq ptr %i.kn, %i.ko
  br i1 %.not.i.i55, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %_ZN2v88internal12FrameSummary22JavaScriptFrameSummaryC2EPNS0_7IsolateENS0_6TaggedINS0_6ObjectEEENS5_INS0_10JSFunctionEEENS5_INS0_12AbstractCodeEEEibNS5_INS0_10FixedArrayEEE.exit54
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.kn, ptr noundef nonnull align 8 dereferenceable(56) %8, i64 56, i1 false)
  %i.kp = getelementptr inbounds nuw i8, ptr %i.kn, i64 56
  store ptr %i.kp, ptr %i.gb, align 8
  br label %_ZNSt6vectorIN2v88internal12FrameSummaryESaIS2_EE9push_backEOS2_.exit56

bb.aq:                                            ; preds = %_ZN2v88internal12FrameSummary22JavaScriptFrameSummaryC2EPNS0_7IsolateENS0_6TaggedINS0_6ObjectEEENS5_INS0_10JSFunctionEEENS5_INS0_12AbstractCodeEEEibNS5_INS0_10FixedArrayEEE.exit54
  call void @_ZNSt6vectorIN2v88internal12FrameSummaryESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr %i.kn, ptr noundef nonnull align 8 dereferenceable(56) %8)
  br label %_ZNSt6vectorIN2v88internal12FrameSummaryESaIS2_EE9push_backEOS2_.exit56

_ZNSt6vectorIN2v88internal12FrameSummaryESaIS2_EE9push_backEOS2_.exit56: ; preds = %bb.ap, %bb.aq
  %i.kq = load i32, ptr %.sroa.4218.0..sroa_idx, align 8
  %switch.i57 = icmp ult i32 %i.kq, 4
  br i1 %switch.i57, label %_ZN2v88internal12FrameSummaryD2Ev.exit58, label %bb.ar

bb.ar:                                            ; preds = %_ZNSt6vectorIN2v88internal12FrameSummaryESaIS2_EE9push_backEOS2_.exit56
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.3) #26
  unreachable

_ZN2v88internal12FrameSummaryD2Ev.exit58:         ; preds = %_ZNSt6vectorIN2v88internal12FrameSummaryESaIS2_EE9push_backEOS2_.exit56
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  br label %bb.az

bb.as:                                            ; preds = %bb.t
  %i.kr = getelementptr inbounds nuw i8, ptr %.sroa.0125.0247, i64 40
  %i.ks = load i32, ptr %i.kr, align 8
  %i.kt = icmp eq i32 %i.ks, 1
  br i1 %i.kt, label %_ZNK2v88internal15TranslatedFrame11shared_infoEv.exit60, label %bb.at, !prof !33

bb.at:                                            ; preds = %bb.as
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.100) #26
  unreachable

_ZNK2v88internal15TranslatedFrame11shared_infoEv.exit60: ; preds = %bb.as
  %i.ku = getelementptr inbounds nuw i8, ptr %.sroa.0125.0247, i64 8
  %.sroa.0.0.copyload.i59 = load ptr, ptr %i.ku, align 8
  %i.kv = load i64, ptr %.sroa.0.0.copyload.i59, align 8
  %i.kw = add i64 %i.kv, 7
  %i.kx = inttoptr i64 %i.kw to ptr
  %i.ky = load atomic volatile i64, ptr %i.kx acquire, align 8 ; 3 uses
  %i.kz = add i64 %i.ky, -1
  %i.la = inttoptr i64 %i.kz to ptr
  %i.lb = load atomic volatile i64, ptr %i.la monotonic, align 8
  %i.lc = add i64 %i.lb, 11
  %i.ld = inttoptr i64 %i.lc to ptr
  %i.le = load atomic volatile i16, ptr %i.ld monotonic, align 2
  %i.lf = icmp eq i16 %i.le, 179
  br i1 %i.lf, label %_ZNK2v88internal18SharedFunctionInfo27wasm_exported_function_dataEv.exit, label %bb.au, !prof !33

bb.au:                                            ; preds = %_ZNK2v88internal15TranslatedFrame11shared_infoEv.exit60
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.99) #26
  unreachable

_ZNK2v88internal18SharedFunctionInfo27wasm_exported_function_dataEv.exit: ; preds = %_ZNK2v88internal15TranslatedFrame11shared_infoEv.exit60
  %i.lg = add i64 %i.ky, 39
  %i.lh = inttoptr i64 %i.lg to ptr
  %i.li = load i64, ptr %i.lh, align 8
  %i.lj = load ptr, ptr %i.c, align 8             ; 3 uses
  %i.lk = getelementptr inbounds nuw i8, ptr %i.lj, i64 560 ; 2 uses
  %i.ll = load ptr, ptr %i.lk, align 8            ; 2 uses
  %i.lm = getelementptr inbounds nuw i8, ptr %i.lj, i64 568
  %i.ln = load ptr, ptr %i.lm, align 8
  %i.lo = icmp eq ptr %i.ll, %i.ln
  br i1 %i.lo, label %bb.av, label %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit37, !prof !32

bb.av:                                            ; preds = %_ZNK2v88internal18SharedFunctionInfo27wasm_exported_function_dataEv.exit
  %i.lp = call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %i.lj) #25
  br label %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit37

_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit37: ; preds = %_ZNK2v88internal18SharedFunctionInfo27wasm_exported_function_dataEv.exit, %bb.av
  %.0.i36 = phi ptr [ %i.lp, %bb.av ], [ %i.ll, %_ZNK2v88internal18SharedFunctionInfo27wasm_exported_function_dataEv.exit ] ; 3 uses
  %i.lq = ptrtoint ptr %.0.i36 to i64
  %i.lr = add i64 %i.lq, 8
  %i.ls = inttoptr i64 %i.lr to ptr
  store ptr %i.ls, ptr %i.lk, align 8
  store i64 %i.li, ptr %.0.i36, align 8
  %i.lt = add i64 %i.ky, 47
  %i.lu = inttoptr i64 %i.lt to ptr
  %i.lv = load i64, ptr %i.lu, align 8
  %i.lw = lshr i64 %i.lv, 32
  %i.lx = trunc nuw i64 %i.lw to i32
  %i.ly = load ptr, ptr %i.c, align 8
  %i.lz = getelementptr inbounds nuw i8, ptr %.sroa.0125.0247, i64 4
  %.sroa.0.0.copyload.i62 = load i32, ptr %i.lz, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #25
  store ptr %i.ly, ptr %9, align 8
  store i32 3, ptr %.sroa.4228.0..sroa_idx, align 8
  store ptr %.0.i36, ptr %.sroa.6230.0..sroa_idx, align 8
  store i32 %i.lx, ptr %.sroa.7231.0..sroa_idx, align 8
  store i32 %.sroa.0.0.copyload.i62, ptr %.sroa.8232.0..sroa_idx, align 4
  %i.ma = load ptr, ptr %i.gb, align 8            ; 4 uses
  %i.mb = load ptr, ptr %i.gc, align 16
  %.not.i.i63 = icmp eq ptr %i.ma, %i.mb
  br i1 %.not.i.i63, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit37
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.ma, ptr noundef nonnull align 8 dereferenceable(56) %9, i64 56, i1 false)
  %i.mc = getelementptr inbounds nuw i8, ptr %i.ma, i64 56
  store ptr %i.mc, ptr %i.gb, align 8
  br label %_ZNSt6vectorIN2v88internal12FrameSummaryESaIS2_EE9push_backEOS2_.exit64

bb.ax:                                            ; preds = %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit37
  call void @_ZNSt6vectorIN2v88internal12FrameSummaryESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr %i.ma, ptr noundef nonnull align 8 dereferenceable(56) %9)
  br label %_ZNSt6vectorIN2v88internal12FrameSummaryESaIS2_EE9push_backEOS2_.exit64

end_hunk_0
