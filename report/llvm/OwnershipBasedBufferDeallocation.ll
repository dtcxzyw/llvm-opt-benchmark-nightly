Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/OwnershipBasedBufferDeallocation?download=true
inline.NumInlined: 4118
inline.NumDeleted: 2556
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_ZN12_GLOBAL__N_118BufferDeallocation19handleAllInterfacesEPN4mlir9OperationE:bb.a

.lr.ph.i.i:                                       ; preds = %.critedge17.i.i, %_ZN4mlir9Operation10getRegionsEv.exit.i.i
  %.013122.i.i = phi ptr [ %i.is, %.critedge17.i.i ], [ %i.fs, %_ZN4mlir9Operation10getRegionsEv.exit.i.i ] ; 4 uses
  %i.fw = load ptr, ptr %.013122.i.i, align 8, !tbaa !106
  %i.fx = icmp eq ptr %.013122.i.i, %i.fw
  br i1 %i.fx, label %.critedge17.i.i, label %bb.w

bb.w:                                             ; preds = %.lr.ph.i.i
  %i.fy = getelementptr inbounds nuw i8, ptr %.013122.i.i, i64 8
  %i.fz = load ptr, ptr %i.fy, align 8, !tbaa !99 ; 2 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fz, i64 48
  %i.gb = load ptr, ptr %i.ga, align 8, !tbaa !162 ; 3 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %i.fz, i64 56
  %i.gd = load ptr, ptr %i.gc, align 8, !tbaa !161 ; 2 uses
  %i.ge = ptrtoint ptr %i.gd to i64               ; 2 uses
  %i.gf = ptrtoint ptr %i.gb to i64
  %i.gg = sub i64 %i.ge, %i.gf
  %i.gh = ashr exact i64 %i.gg, 3                 ; 2 uses
  %i.gi = lshr i64 %i.gh, 2                       ; 2 uses
  %.not.i.i.i = icmp eq i64 %i.gi, 0
  br i1 %.not.i.i.i, label %._crit_edge.i.i.i.i.i.i24.i.i, label %.lr.ph.i.i.i.i.i.i23.i.i

.lr.ph.i.i.i.i.i.i23.i.i:                         ; preds = %bb.w, %bb.aa
  %.053.i.i.i.i.i.i.i.i = phi i64 [ %i.hp, %bb.aa ], [ %i.gi, %bb.w ] ; 2 uses
  %.02952.i.i.i.i.i.i.i.i = phi ptr [ %i.ho, %bb.aa ], [ %i.gb, %bb.w ] ; 9 uses
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i = load ptr, ptr %.02952.i.i.i.i.i.i.i.i, align 8, !tbaa !164
  %i.gj = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i, i64 8
  %.0.copyload.i.i.i.i.i.i63.i.i = load i64, ptr %i.gj, align 8
  %i.gk = and i64 %.0.copyload.i.i.i.i.i.i63.i.i, -8
  %i.gl = inttoptr i64 %i.gk to ptr
  %i.gm = load ptr, ptr %i.gl, align 8, !tbaa !167
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gm, i64 144
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i64.i.i = load ptr, ptr %i.gn, align 8, !tbaa !16 ; 2 uses
  %i.go = icmp eq ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i64.i.i, @_ZN4mlir6detail14TypeIDResolverINS_10MemRefTypeEvE2idE
  %i.gp = icmp eq ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i64.i.i, @_ZN4mlir6detail14TypeIDResolverINS_18UnrankedMemRefTypeEvE2idE
  %spec.select.i.i.i.i.i65.i.i = or i1 %i.go, %i.gp
  br i1 %spec.select.i.i.i.i.i65.i.i, label %_ZN4llvm6any_ofINS_15MutableArrayRefIN4mlir13BlockArgumentEEEPFbNS2_5ValueEEEEbOT_T0_.exit.i.i, label %bb.x

bb.x:                                             ; preds = %.lr.ph.i.i.i.i.i.i23.i.i
  %i.gq = getelementptr inbounds nuw i8, ptr %.02952.i.i.i.i.i.i.i.i, i64 8
  %.sroa.0.0.copyload.i30.i.i.i.i.i.i.i.i = load ptr, ptr %i.gq, align 8, !tbaa !164
  %i.gr = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i30.i.i.i.i.i.i.i.i, i64 8
  %.0.copyload.i.i.i.i.i.i60.i.i = load i64, ptr %i.gr, align 8
  %i.gs = and i64 %.0.copyload.i.i.i.i.i.i60.i.i, -8
  %i.gt = inttoptr i64 %i.gs to ptr
  %i.gu = load ptr, ptr %i.gt, align 8, !tbaa !167
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gu, i64 144
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i61.i.i = load ptr, ptr %i.gv, align 8, !tbaa !16 ; 2 uses
  %i.gw = icmp eq ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i61.i.i, @_ZN4mlir6detail14TypeIDResolverINS_10MemRefTypeEvE2idE
  %i.gx = icmp eq ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i61.i.i, @_ZN4mlir6detail14TypeIDResolverINS_18UnrankedMemRefTypeEvE2idE
  %spec.select.i.i.i.i.i62.i.i = or i1 %i.gw, %i.gx
  br i1 %spec.select.i.i.i.i.i62.i.i, label %_ZN4llvm6any_ofINS_15MutableArrayRefIN4mlir13BlockArgumentEEEPFbNS2_5ValueEEEEbOT_T0_.exit.i.i.loopexit.split.loop.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.gy = getelementptr inbounds nuw i8, ptr %.02952.i.i.i.i.i.i.i.i, i64 16
  %.sroa.0.0.copyload.i31.i.i.i.i.i.i.i.i = load ptr, ptr %i.gy, align 8, !tbaa !164
  %i.gz = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i31.i.i.i.i.i.i.i.i, i64 8
  %.0.copyload.i.i.i.i.i.i57.i.i = load i64, ptr %i.gz, align 8
  %i.ha = and i64 %.0.copyload.i.i.i.i.i.i57.i.i, -8
  %i.hb = inttoptr i64 %i.ha to ptr
  %i.hc = load ptr, ptr %i.hb, align 8, !tbaa !167
  %i.hd = getelementptr inbounds nuw i8, ptr %i.hc, i64 144
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i58.i.i = load ptr, ptr %i.hd, align 8, !tbaa !16 ; 2 uses
  %i.he = icmp eq ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i58.i.i, @_ZN4mlir6detail14TypeIDResolverINS_10MemRefTypeEvE2idE
  %i.hf = icmp eq ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i58.i.i, @_ZN4mlir6detail14TypeIDResolverINS_18UnrankedMemRefTypeEvE2idE
  %spec.select.i.i.i.i.i59.i.i = or i1 %i.he, %i.hf
  br i1 %spec.select.i.i.i.i.i59.i.i, label %_ZN4llvm6any_ofINS_15MutableArrayRefIN4mlir13BlockArgumentEEEPFbNS2_5ValueEEEEbOT_T0_.exit.i.i.loopexit.split.loop.exit194, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.hg = getelementptr inbounds nuw i8, ptr %.02952.i.i.i.i.i.i.i.i, i64 24
  %.sroa.0.0.copyload.i32.i.i.i.i.i.i.i.i = load ptr, ptr %i.hg, align 8, !tbaa !164
  %i.hh = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i32.i.i.i.i.i.i.i.i, i64 8
  %.0.copyload.i.i.i.i.i.i54.i.i = load i64, ptr %i.hh, align 8
  %i.hi = and i64 %.0.copyload.i.i.i.i.i.i54.i.i, -8
  %i.hj = inttoptr i64 %i.hi to ptr
  %i.hk = load ptr, ptr %i.hj, align 8, !tbaa !167
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hk, i64 144
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i55.i.i = load ptr, ptr %i.hl, align 8, !tbaa !16 ; 2 uses
  %i.hm = icmp eq ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i55.i.i, @_ZN4mlir6detail14TypeIDResolverINS_10MemRefTypeEvE2idE
  %i.hn = icmp eq ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i55.i.i, @_ZN4mlir6detail14TypeIDResolverINS_18UnrankedMemRefTypeEvE2idE
  %spec.select.i.i.i.i.i56.i.i = or i1 %i.hm, %i.hn
  br i1 %spec.select.i.i.i.i.i56.i.i, label %_ZN4llvm6any_ofINS_15MutableArrayRefIN4mlir13BlockArgumentEEEPFbNS2_5ValueEEEEbOT_T0_.exit.i.i.loopexit.split.loop.exit196, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.ho = getelementptr inbounds nuw i8, ptr %.02952.i.i.i.i.i.i.i.i, i64 32 ; 3 uses
  %i.hp = add nsw i64 %.053.i.i.i.i.i.i.i.i, -1
  %i.hq = icmp sgt i64 %.053.i.i.i.i.i.i.i.i, 1
  br i1 %i.hq, label %.lr.ph.i.i.i.i.i.i23.i.i, label %._crit_edge.loopexit.i.i.i.i.i.i.i.i, !llvm.loop !429

._crit_edge.loopexit.i.i.i.i.i.i.i.i:             ; preds = %bb.aa
  %.pre.i.i.i.i.i.i.i.i = ptrtoint ptr %i.ho to i64
  %.pre58.i.i.i.i.i.i.i.i = sub i64 %i.ge, %.pre.i.i.i.i.i.i.i.i
  %i.hr = ashr exact i64 %.pre58.i.i.i.i.i.i.i.i, 3
  br label %._crit_edge.i.i.i.i.i.i24.i.i

._crit_edge.i.i.i.i.i.i24.i.i:                    ; preds = %._crit_edge.loopexit.i.i.i.i.i.i.i.i, %bb.w
  %.pre-phi59.i.i.i.i.i.i.i.i = phi i64 [ %i.hr, %._crit_edge.loopexit.i.i.i.i.i.i.i.i ], [ %i.gh, %bb.w ]
  %.029.lcssa.i.i.i.i.i.i.i.i = phi ptr [ %i.ho, %._crit_edge.loopexit.i.i.i.i.i.i.i.i ], [ %i.gb, %bb.w ] ; 5 uses
  switch i64 %.pre-phi59.i.i.i.i.i.i.i.i, label %.critedge17.i.i [
    i64 3, label %bb.ab
    i64 2, label %bb.ad
    i64 1, label %bb.af
  ]

bb.ab:                                            ; preds = %._crit_edge.i.i.i.i.i.i24.i.i
  %.sroa.0.0.copyload.i33.i.i.i.i.i.i.i.i = load ptr, ptr %.029.lcssa.i.i.i.i.i.i.i.i, align 8, !tbaa !164
  %i.hs = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i33.i.i.i.i.i.i.i.i, i64 8
  %.0.copyload.i.i.i.i.i.i51.i.i = load i64, ptr %i.hs, align 8
  %i.ht = and i64 %.0.copyload.i.i.i.i.i.i51.i.i, -8
  %i.hu = inttoptr i64 %i.ht to ptr
  %i.hv = load ptr, ptr %i.hu, align 8, !tbaa !167
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hv, i64 144
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i52.i.i = load ptr, ptr %i.hw, align 8, !tbaa !16 ; 2 uses
  %i.hx = icmp eq ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i52.i.i, @_ZN4mlir6detail14TypeIDResolverINS_10MemRefTypeEvE2idE
  %i.hy = icmp eq ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i52.i.i, @_ZN4mlir6detail14TypeIDResolverINS_18UnrankedMemRefTypeEvE2idE
  %spec.select.i.i.i.i.i53.i.i = or i1 %i.hx, %i.hy
  br i1 %spec.select.i.i.i.i.i53.i.i, label %_ZN4llvm6any_ofINS_15MutableArrayRefIN4mlir13BlockArgumentEEEPFbNS2_5ValueEEEEbOT_T0_.exit.i.i, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.hz = getelementptr inbounds nuw i8, ptr %.029.lcssa.i.i.i.i.i.i.i.i, i64 8
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %._crit_edge.i.i.i.i.i.i24.i.i
  %.1.i.i.i.i.i.i.i.i = phi ptr [ %i.hz, %bb.ac ], [ %.029.lcssa.i.i.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i24.i.i ] ; 3 uses
  %.sroa.0.0.copyload.i34.i.i.i.i.i.i.i.i = load ptr, ptr %.1.i.i.i.i.i.i.i.i, align 8, !tbaa !164
  %i.ia = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i34.i.i.i.i.i.i.i.i, i64 8
  %.0.copyload.i.i.i.i.i.i48.i.i = load i64, ptr %i.ia, align 8
  %i.ib = and i64 %.0.copyload.i.i.i.i.i.i48.i.i, -8
  %i.ic = inttoptr i64 %i.ib to ptr
  %i.id = load ptr, ptr %i.ic, align 8, !tbaa !167
  %i.ie = getelementptr inbounds nuw i8, ptr %i.id, i64 144
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i49.i.i = load ptr, ptr %i.ie, align 8, !tbaa !16 ; 2 uses
  %i.if = icmp eq ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i49.i.i, @_ZN4mlir6detail14TypeIDResolverINS_10MemRefTypeEvE2idE
  %i.ig = icmp eq ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i49.i.i, @_ZN4mlir6detail14TypeIDResolverINS_18UnrankedMemRefTypeEvE2idE
  %spec.select.i.i.i.i.i50.i.i = or i1 %i.if, %i.ig
  br i1 %spec.select.i.i.i.i.i50.i.i, label %_ZN4llvm6any_ofINS_15MutableArrayRefIN4mlir13BlockArgumentEEEPFbNS2_5ValueEEEEbOT_T0_.exit.i.i, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.ih = getelementptr inbounds nuw i8, ptr %.1.i.i.i.i.i.i.i.i, i64 8
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %._crit_edge.i.i.i.i.i.i24.i.i
  %.2.i.i.i.i.i.i.i.i = phi ptr [ %i.ih, %bb.ae ], [ %.029.lcssa.i.i.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i24.i.i ] ; 2 uses
  %.sroa.0.0.copyload.i35.i.i.i.i.i.i.i.i = load ptr, ptr %.2.i.i.i.i.i.i.i.i, align 8, !tbaa !164
  %i.ii = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i35.i.i.i.i.i.i.i.i, i64 8
  %.0.copyload.i.i.i.i.i.i45.i.i = load i64, ptr %i.ii, align 8
  %i.ij = and i64 %.0.copyload.i.i.i.i.i.i45.i.i, -8
  %i.ik = inttoptr i64 %i.ij to ptr
  %i.il = load ptr, ptr %i.ik, align 8, !tbaa !167
  %i.im = getelementptr inbounds nuw i8, ptr %i.il, i64 144
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i46.i.i = load ptr, ptr %i.im, align 8, !tbaa !16 ; 2 uses
  %i.in = icmp eq ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i46.i.i, @_ZN4mlir6detail14TypeIDResolverINS_10MemRefTypeEvE2idE
  %i.io = icmp eq ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i46.i.i, @_ZN4mlir6detail14TypeIDResolverINS_18UnrankedMemRefTypeEvE2idE
  %spec.select.i.i.i.i.i47.i.i = or i1 %i.in, %i.io
  br i1 %spec.select.i.i.i.i.i47.i.i, label %_ZN4llvm6any_ofINS_15MutableArrayRefIN4mlir13BlockArgumentEEEPFbNS2_5ValueEEEEbOT_T0_.exit.i.i, label %.critedge17.i.i

_ZN4llvm6any_ofINS_15MutableArrayRefIN4mlir13BlockArgumentEEEPFbNS2_5ValueEEEEbOT_T0_.exit.i.i.loopexit.split.loop.exit: ; preds = %bb.x
  %i.ip = getelementptr inbounds nuw i8, ptr %.02952.i.i.i.i.i.i.i.i, i64 8
  br label %_ZN4llvm6any_ofINS_15MutableArrayRefIN4mlir13BlockArgumentEEEPFbNS2_5ValueEEEEbOT_T0_.exit.i.i

_ZN4llvm6any_ofINS_15MutableArrayRefIN4mlir13BlockArgumentEEEPFbNS2_5ValueEEEEbOT_T0_.exit.i.i.loopexit.split.loop.exit194: ; preds = %bb.y
  %i.iq = getelementptr inbounds nuw i8, ptr %.02952.i.i.i.i.i.i.i.i, i64 16
  br label %_ZN4llvm6any_ofINS_15MutableArrayRefIN4mlir13BlockArgumentEEEPFbNS2_5ValueEEEEbOT_T0_.exit.i.i

_ZN4llvm6any_ofINS_15MutableArrayRefIN4mlir13BlockArgumentEEEPFbNS2_5ValueEEEEbOT_T0_.exit.i.i.loopexit.split.loop.exit196: ; preds = %bb.z
  %i.ir = getelementptr inbounds nuw i8, ptr %.02952.i.i.i.i.i.i.i.i, i64 24
  br label %_ZN4llvm6any_ofINS_15MutableArrayRefIN4mlir13BlockArgumentEEEPFbNS2_5ValueEEEEbOT_T0_.exit.i.i

_ZN4llvm6any_ofINS_15MutableArrayRefIN4mlir13BlockArgumentEEEPFbNS2_5ValueEEEEbOT_T0_.exit.i.i: ; preds = %.lr.ph.i.i.i.i.i.i23.i.i, %_ZN4llvm6any_ofINS_15MutableArrayRefIN4mlir13BlockArgumentEEEPFbNS2_5ValueEEEEbOT_T0_.exit.i.i.loopexit.split.loop.exit, %_ZN4llvm6any_ofINS_15MutableArrayRefIN4mlir13BlockArgumentEEEPFbNS2_5ValueEEEEbOT_T0_.exit.i.i.loopexit.split.loop.exit194, %_ZN4llvm6any_ofINS_15MutableArrayRefIN4mlir13BlockArgumentEEEPFbNS2_5ValueEEEEbOT_T0_.exit.i.i.loopexit.split.loop.exit196, %bb.af, %bb.ad, %bb.ab
  %.028.i.i.i.i.i.i.i.i = phi ptr [ %.1.i.i.i.i.i.i.i.i, %bb.ad ], [ %.029.lcssa.i.i.i.i.i.i.i.i, %bb.ab ], [ %.2.i.i.i.i.i.i.i.i, %bb.af ], [ %i.ir, %_ZN4llvm6any_ofINS_15MutableArrayRefIN4mlir13BlockArgumentEEEPFbNS2_5ValueEEEEbOT_T0_.exit.i.i.loopexit.split.loop.exit196 ], [ %i.iq, %_ZN4llvm6any_ofINS_15MutableArrayRefIN4mlir13BlockArgumentEEEPFbNS2_5ValueEEEEbOT_T0_.exit.i.i.loopexit.split.loop.exit194 ], [ %i.ip, %_ZN4llvm6any_ofINS_15MutableArrayRefIN4mlir13BlockArgumentEEEPFbNS2_5ValueEEEEbOT_T0_.exit.i.i.loopexit.split.loop.exit ], [ %.02952.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i23.i.i ]
  %.not110.i.i = icmp eq ptr %i.gd, %.028.i.i.i.i.i.i.i.i
  br i1 %.not110.i.i, label %.critedge17.i.i, label %_ZL18hasBufferSemanticsPN4mlir9OperationE.exit.thread.i

.critedge17.i.i:                                  ; preds = %_ZN4llvm6any_ofINS_15MutableArrayRefIN4mlir13BlockArgumentEEEPFbNS2_5ValueEEEEbOT_T0_.exit.i.i, %bb.af, %._crit_edge.i.i.i.i.i.i24.i.i, %.lr.ph.i.i
  %i.is = getelementptr inbounds nuw i8, ptr %.013122.i.i, i64 32 ; 2 uses
  %.not.i.i5 = icmp eq ptr %i.is, %i.fv
  br i1 %.not.i.i5, label %_ZL18hasBufferSemanticsPN4mlir9OperationE.exit.i, label %.lr.ph.i.i

_ZL18hasBufferSemanticsPN4mlir9OperationE.exit.i: ; preds = %.critedge17.i.i, %_ZSt9__find_ifIN4llvm6detail27indexed_accessor_range_baseIN4mlir11ResultRangeEPNS3_6detail12OpResultImplENS3_8OpResultES8_S8_E8iteratorEN9__gnu_cxx5__ops10_Iter_predIPFbNS3_5ValueEEEEET_SI_SI_T0_St26random_access_iterator_tag.exit.thread.i.i
  %i.it = tail call noundef zeroext i1 @_ZN4mlir17hasUnknownEffectsEPNS_9OperationE(ptr noundef nonnull %1) #23
  br i1 %i.it, label %_ZL18hasBufferSemanticsPN4mlir9OperationE.exit.thread.i, label %_ZN4mlir15mightHaveEffectIJNS_13MemoryEffects8AllocateEEEEbPNS_9OperationE.exit.i.i

_ZN4mlir15mightHaveEffectIJNS_13MemoryEffects8AllocateEEEEbPNS_9OperationE.exit.i.i: ; preds = %_ZL18hasBufferSemanticsPN4mlir9OperationE.exit.i
  %i.iu = tail call noundef zeroext i1 @_ZN4mlir9hasEffectIJNS_13MemoryEffects8AllocateEEEEbPNS_9OperationE(ptr noundef nonnull %1) #23
  br i1 %i.iu, label %_ZL18hasBufferSemanticsPN4mlir9OperationE.exit.thread.i, label %bb.ag

bb.ag:                                            ; preds = %_ZN4mlir15mightHaveEffectIJNS_13MemoryEffects8AllocateEEEEbPNS_9OperationE.exit.i.i
  %i.iv = tail call noundef zeroext i1 @_ZN4mlir17hasUnknownEffectsEPNS_9OperationE(ptr noundef nonnull %1) #23
  br i1 %i.iv, label %_ZL18hasBufferSemanticsPN4mlir9OperationE.exit.thread.i, label %_ZL35hasNeitherAllocateNorFreeSideEffectPN4mlir9OperationE.exit.i

_ZL35hasNeitherAllocateNorFreeSideEffectPN4mlir9OperationE.exit.i: ; preds = %bb.ag
  %i.iw = tail call noundef zeroext i1 @_ZN4mlir9hasEffectIJNS_13MemoryEffects4FreeEEEEbPNS_9OperationE(ptr noundef nonnull %1) #23
  br i1 %i.iw, label %_ZL18hasBufferSemanticsPN4mlir9OperationE.exit.thread.i, label %_ZN12_GLOBAL__N_118BufferDeallocation28verifyOperationPreconditionsEPN4mlir9OperationE.exit.thread

_ZL18hasBufferSemanticsPN4mlir9OperationE.exit.thread.i: ; preds = %_ZN4llvm6any_ofINS_15MutableArrayRefIN4mlir13BlockArgumentEEEPFbNS2_5ValueEEEEbOT_T0_.exit.i.i, %_ZL35hasNeitherAllocateNorFreeSideEffectPN4mlir9OperationE.exit.i, %bb.ag, %_ZN4mlir15mightHaveEffectIJNS_13MemoryEffects8AllocateEEEEbPNS_9OperationE.exit.i.i, %_ZL18hasBufferSemanticsPN4mlir9OperationE.exit.i, %_ZSt9__find_ifIN4llvm6detail27indexed_accessor_range_baseIN4mlir11ResultRangeEPNS3_6detail12OpResultImplENS3_8OpResultES8_S8_E8iteratorEN9__gnu_cxx5__ops10_Iter_predIPFbNS3_5ValueEEEEET_SI_SI_T0_St26random_access_iterator_tag.exit.i.i, %_ZN4llvm6any_ofIN4mlir12OperandRangeEPFbNS1_5ValueEEEEbOT_T0_.exit.i.i
  %i.ix = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 3 uses
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i = load ptr, ptr %i.ix, align 8, !tbaa !108
  %i.iy = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i, i64 16
  %i.iz = load ptr, ptr %i.iy, align 8, !tbaa !110
  %i.ja = icmp eq ptr %i.iz, @_ZN4mlir6detail14TypeIDResolverINS_13bufferization9DeallocOpEvE2idE
  %90 = icmp ne ptr @_ZN4mlir6detail14TypeIDResolverIvvE2idE, @_ZN4mlir6detail14TypeIDResolverINS_13bufferization9DeallocOpEvE2idE
  %spec.select.i.i.i.i.i.i = and i1 %90, %i.ja
  br i1 %spec.select.i.i.i.i.i.i, label %bb.ah, label %bb.al

bb.ah:                                            ; preds = %_ZL18hasBufferSemanticsPN4mlir9OperationE.exit.thread.i
  call void @llvm.lifetime.start.p0(ptr nonnull %77) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %78) #23
  %i.jb = getelementptr inbounds nuw i8, ptr %78, i64 32
  %i.jc = getelementptr inbounds nuw i8, ptr %78, i64 33
  store i8 1, ptr %i.jc, align 1, !tbaa !48
  store ptr @.str.9, ptr %78, align 8, !tbaa !49
  store i8 3, ptr %i.jb, align 8, !tbaa !50
  call void @_ZN4mlir9Operation9emitErrorERKN4llvm5TwineE(ptr dead_on_unwind nonnull writable sret(%"class.mlir::InFlightDiagnostic") align 8 %77, ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull align 8 dereferenceable(34) %78) #23
  %i.jd = call i8 @_ZNK4mlir18InFlightDiagnosticcvN4llvm13LogicalResultEEv(ptr noundef nonnull align 8 dereferenceable(208) %77) #23
  %i.je = load ptr, ptr %77, align 8, !tbaa !58
  %.not.i4.i = icmp eq ptr %i.je, null
  br i1 %.not.i4.i, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  call void @_ZN4mlir18InFlightDiagnostic6reportEv(ptr noundef nonnull align 8 dereferenceable(208) %77) #23
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %i.jf = getelementptr inbounds nuw i8, ptr %77, i64 200 ; 2 uses
  %i.jg = load i8, ptr %i.jf, align 8, !tbaa !59, !range !60, !noundef !61
  %i.jh = trunc nuw i8 %i.jg to i1
  store i8 0, ptr %i.jf, align 8, !tbaa !59
  br i1 %i.jh, label %bb.ak, label %_ZN4mlir18InFlightDiagnosticD2Ev.exit.i

bb.ak:                                            ; preds = %bb.aj
  %i.ji = getelementptr inbounds nuw i8, ptr %77, i64 8
  call void @_ZN4mlir10DiagnosticD2Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(200) %i.ji) #23
  br label %_ZN4mlir18InFlightDiagnosticD2Ev.exit.i

_ZN4mlir18InFlightDiagnosticD2Ev.exit.i:          ; preds = %bb.ak, %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %78) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %77) #23
  br label %_ZN12_GLOBAL__N_118BufferDeallocation28verifyOperationPreconditionsEPN4mlir9OperationE.exit

bb.al:                                            ; preds = %_ZL18hasBufferSemanticsPN4mlir9OperationE.exit.thread.i
  %i.jj = tail call noundef zeroext i1 @_ZN4mlir17hasUnknownEffectsEPNS_9OperationE(ptr noundef nonnull %1) #23
  br i1 %i.jj, label %bb.am, label %bb.ar

bb.am:                                            ; preds = %bb.al
  %i.jk = tail call noundef ptr @_ZN4mlir11OpInterfaceINS_15CallOpInterfaceENS_6detail30CallOpInterfaceInterfaceTraitsEE15getInterfaceForEPNS_9OperationE(ptr noundef nonnull %1)
  %.not.i = icmp eq ptr %i.jk, null
  br i1 %.not.i, label %bb.an, label %bb.ar

bb.an:                                            ; preds = %bb.am
  call void @llvm.lifetime.start.p0(ptr nonnull %79) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %80) #23
  %i.jl = getelementptr inbounds nuw i8, ptr %80, i64 32
  %i.jm = getelementptr inbounds nuw i8, ptr %80, i64 33
  store i8 1, ptr %i.jm, align 1, !tbaa !48
  store ptr @.str.10, ptr %80, align 8, !tbaa !49
  store i8 3, ptr %i.jl, align 8, !tbaa !50
  call void @_ZN4mlir9Operation9emitErrorERKN4llvm5TwineE(ptr dead_on_unwind nonnull writable sret(%"class.mlir::InFlightDiagnostic") align 8 %79, ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull align 8 dereferenceable(34) %80) #23
  %i.jn = call i8 @_ZNK4mlir18InFlightDiagnosticcvN4llvm13LogicalResultEEv(ptr noundef nonnull align 8 dereferenceable(208) %79) #23
  %i.jo = load ptr, ptr %79, align 8, !tbaa !58
  %.not.i5.i = icmp eq ptr %i.jo, null
  br i1 %.not.i5.i, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  call void @_ZN4mlir18InFlightDiagnostic6reportEv(ptr noundef nonnull align 8 dereferenceable(208) %79) #23
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an
  %i.jp = getelementptr inbounds nuw i8, ptr %79, i64 200 ; 2 uses
  %i.jq = load i8, ptr %i.jp, align 8, !tbaa !59, !range !60, !noundef !61
  %i.jr = trunc nuw i8 %i.jq to i1
  store i8 0, ptr %i.jp, align 8, !tbaa !59
  br i1 %i.jr, label %bb.aq, label %_ZN4mlir18InFlightDiagnosticD2Ev.exit6.i

bb.aq:                                            ; preds = %bb.ap
  %i.js = getelementptr inbounds nuw i8, ptr %79, i64 8
  call void @_ZN4mlir10DiagnosticD2Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(200) %i.js) #23
  br label %_ZN4mlir18InFlightDiagnosticD2Ev.exit6.i

_ZN4mlir18InFlightDiagnosticD2Ev.exit6.i:         ; preds = %bb.aq, %bb.ap
  call void @llvm.lifetime.end.p0(ptr nonnull %80) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %79) #23
  br label %_ZN12_GLOBAL__N_118BufferDeallocation28verifyOperationPreconditionsEPN4mlir9OperationE.exit

bb.ar:                                            ; preds = %bb.am, %bb.al
  %i.jt = load i32, ptr %i.j, align 4
  %i.ju = and i32 %i.jt, 8388607
  switch i32 %i.ju, label %bb.at [
    i32 0, label %.critedge.i
    i32 1, label %bb.as
  ]

bb.as:                                            ; preds = %bb.ar
  %i.jv = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.jw = load i32, ptr %i.jv, align 4, !tbaa !168
  %i.jx = icmp eq i32 %i.jw, 0
  br i1 %i.jx, label %.critedge.i, label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ar
  %i.jy = tail call noundef ptr @_ZN4mlir11OpInterfaceINS_23RegionBranchOpInterfaceENS_6detail38RegionBranchOpInterfaceInterfaceTraitsEE15getInterfaceForEPNS_9OperationE(ptr noundef nonnull %1)
  %.not.i.i10.i = icmp eq ptr %i.jy, null
  br i1 %.not.i.i10.i, label %.critedge54.i, label %_ZN4llvm20ValueFromPointerCastIN4mlir23RegionBranchOpInterfaceENS1_9OperationENS_8CastInfoIS2_PS3_vEEE6doCastES5_.exit.i.i.i

_ZN4llvm20ValueFromPointerCastIN4mlir23RegionBranchOpInterfaceENS1_9OperationENS_8CastInfoIS2_PS3_vEEE6doCastES5_.exit.i.i.i: ; preds = %bb.at
  %i.jz = tail call noundef ptr @_ZN4mlir11OpInterfaceINS_23RegionBranchOpInterfaceENS_6detail38RegionBranchOpInterfaceInterfaceTraitsEE15getInterfaceForEPNS_9OperationE(ptr noundef nonnull %1) ; 0 uses
  br label %.critedge.i

.critedge54.i:                                    ; preds = %bb.at
  call void @llvm.lifetime.start.p0(ptr nonnull %81) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %82) #23
  %i.ka = getelementptr inbounds nuw i8, ptr %82, i64 32
  %i.kb = getelementptr inbounds nuw i8, ptr %82, i64 33
  store i8 1, ptr %i.kb, align 1, !tbaa !48
  store ptr @.str.11, ptr %82, align 8, !tbaa !49
  store i8 3, ptr %i.ka, align 8, !tbaa !50
  call void @_ZN4mlir9Operation9emitErrorERKN4llvm5TwineE(ptr dead_on_unwind nonnull writable sret(%"class.mlir::InFlightDiagnostic") align 8 %81, ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull align 8 dereferenceable(34) %82) #23
  %i.kc = call i8 @_ZNK4mlir18InFlightDiagnosticcvN4llvm13LogicalResultEEv(ptr noundef nonnull align 8 dereferenceable(208) %81) #23
  %i.kd = load ptr, ptr %81, align 8, !tbaa !58
  %.not.i11.i = icmp eq ptr %i.kd, null
  br i1 %.not.i11.i, label %bb.av, label %bb.au

bb.au:                                            ; preds = %.critedge54.i
  call void @_ZN4mlir18InFlightDiagnostic6reportEv(ptr noundef nonnull align 8 dereferenceable(208) %81) #23
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %.critedge54.i
  %i.ke = getelementptr inbounds nuw i8, ptr %81, i64 200 ; 2 uses
  %i.kf = load i8, ptr %i.ke, align 8, !tbaa !59, !range !60, !noundef !61
  %i.kg = trunc nuw i8 %i.kf to i1
  store i8 0, ptr %i.ke, align 8, !tbaa !59
  br i1 %i.kg, label %bb.aw, label %_ZN4mlir18InFlightDiagnosticD2Ev.exit12.i

bb.aw:                                            ; preds = %bb.av
  %i.kh = getelementptr inbounds nuw i8, ptr %81, i64 8
  call void @_ZN4mlir10DiagnosticD2Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(200) %i.kh) #23
  br label %_ZN4mlir18InFlightDiagnosticD2Ev.exit12.i

_ZN4mlir18InFlightDiagnosticD2Ev.exit12.i:        ; preds = %bb.aw, %bb.av
  call void @llvm.lifetime.end.p0(ptr nonnull %82) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %81) #23
  br label %_ZN12_GLOBAL__N_118BufferDeallocation28verifyOperationPreconditionsEPN4mlir9OperationE.exit

.critedge.i:                                      ; preds = %_ZN4llvm20ValueFromPointerCastIN4mlir23RegionBranchOpInterfaceENS1_9OperationENS_8CastInfoIS2_PS3_vEEE6doCastES5_.exit.i.i.i, %bb.as, %bb.ar
  %i.ki = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait12NoTerminatorIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.kj = icmp eq i8 %i.ki, 0
  br i1 %i.kj, label %bb.ax, label %_ZN4mlir9Operation8hasTraitINS_7OpTrait12NoTerminatorEEEbv.exit.i, !prof !111

bb.ax:                                            ; preds = %.critedge.i
  %i.kk = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait12NoTerminatorIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #23
  %.not.i.i.i.i.i.i = icmp eq i32 %i.kk, 0
  br i1 %.not.i.i.i.i.i.i, label %_ZN4mlir9Operation8hasTraitINS_7OpTrait12NoTerminatorEEEbv.exit.i, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.kl = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.17, i64 49), i64 34) #23
  store ptr %i.kl, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait12NoTerminatorIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait12NoTerminatorIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #23
  br label %_ZN4mlir9Operation8hasTraitINS_7OpTrait12NoTerminatorEEEbv.exit.i

_ZN4mlir9Operation8hasTraitINS_7OpTrait12NoTerminatorEEEbv.exit.i: ; preds = %bb.ay, %bb.ax, %.critedge.i
  %.sroa.01.0.copyload.i.i.i.i.i.i = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait12NoTerminatorIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !16
  %i.km = load ptr, ptr %i.ix, align 8, !tbaa !176 ; 2 uses
  %i.kn = load ptr, ptr %i.km, align 8, !tbaa !21
  %i.ko = getelementptr inbounds nuw i8, ptr %i.kn, i64 32
  %i.kp = load ptr, ptr %i.ko, align 8
  %i.kq = tail call noundef zeroext i1 %i.kp(ptr noundef nonnull align 8 dereferenceable(8) %i.km, ptr %.sroa.01.0.copyload.i.i.i.i.i.i) #23, !inline_history !430
  br i1 %i.kq, label %bb.az, label %bb.bd

bb.az:                                            ; preds = %_ZN4mlir9Operation8hasTraitINS_7OpTrait12NoTerminatorEEEbv.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %83) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %84) #23
  %i.kr = getelementptr inbounds nuw i8, ptr %84, i64 32
  %i.ks = getelementptr inbounds nuw i8, ptr %84, i64 33
  store i8 1, ptr %i.ks, align 1, !tbaa !48
  store ptr @.str.12, ptr %84, align 8, !tbaa !49
  store i8 3, ptr %i.kr, align 8, !tbaa !50
  call void @_ZN4mlir9Operation9emitErrorERKN4llvm5TwineE(ptr dead_on_unwind nonnull writable sret(%"class.mlir::InFlightDiagnostic") align 8 %83, ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull align 8 dereferenceable(34) %84) #23
  %i.kt = call i8 @_ZNK4mlir18InFlightDiagnosticcvN4llvm13LogicalResultEEv(ptr noundef nonnull align 8 dereferenceable(208) %83) #23
  %i.ku = load ptr, ptr %83, align 8, !tbaa !58
  %.not.i13.i = icmp eq ptr %i.ku, null
  br i1 %.not.i13.i, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  call void @_ZN4mlir18InFlightDiagnostic6reportEv(ptr noundef nonnull align 8 dereferenceable(208) %83) #23
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %bb.az
  %i.kv = getelementptr inbounds nuw i8, ptr %83, i64 200 ; 2 uses
  %i.kw = load i8, ptr %i.kv, align 8, !tbaa !59, !range !60, !noundef !61
  %i.kx = trunc nuw i8 %i.kw to i1
  store i8 0, ptr %i.kv, align 8, !tbaa !59
  br i1 %i.kx, label %bb.bc, label %_ZN4mlir18InFlightDiagnosticD2Ev.exit14.i

bb.bc:                                            ; preds = %bb.bb
  %i.ky = getelementptr inbounds nuw i8, ptr %83, i64 8
  call void @_ZN4mlir10DiagnosticD2Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(200) %i.ky) #23
  br label %_ZN4mlir18InFlightDiagnosticD2Ev.exit14.i

_ZN4mlir18InFlightDiagnosticD2Ev.exit14.i:        ; preds = %bb.bc, %bb.bb
  call void @llvm.lifetime.end.p0(ptr nonnull %84) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %83) #23
  br label %_ZN12_GLOBAL__N_118BufferDeallocation28verifyOperationPreconditionsEPN4mlir9OperationE.exit

bb.bd:                                            ; preds = %_ZN4mlir9Operation8hasTraitINS_7OpTrait12NoTerminatorEEEbv.exit.i
  %i.kz = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait12IsTerminatorIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
end_hunk_0
begin_hunk_1_@_ZNSt17_Function_handlerIFPN4mlir7DialectEPNS0_11MLIRContextEEZNS0_15DialectRegistry6insertINS0_5arith12ArithDialectEEEvvEUlS4_E_E10_M_managerERSt9_Any_dataRKSC_St18_Manager_operation:bb.a
_ZNSt14_Function_base13_Base_managerIZN4mlir15DialectRegistry6insertINS1_5arith12ArithDialectEEEvvEUlPNS1_11MLIRContextEE_E10_M_managerERSt9_Any_dataRKSA_St18_Manager_operation.exit.sink.split: ; preds = %bb.a, %.sink.split.i
  %.sink = phi ptr [ null, %.sink.split.i ], [ %1, %bb.a ]
  store ptr %.sink, ptr %0, align 8, !tbaa !107
  br label %_ZNSt14_Function_base13_Base_managerIZN4mlir15DialectRegistry6insertINS1_5arith12ArithDialectEEEvvEUlPNS1_11MLIRContextEE_E10_M_managerERSt9_Any_dataRKSA_St18_Manager_operation.exit

_ZNSt14_Function_base13_Base_managerIZN4mlir15DialectRegistry6insertINS1_5arith12ArithDialectEEEvvEUlPNS1_11MLIRContextEE_E10_M_managerERSt9_Any_dataRKSA_St18_Manager_operation.exit: ; preds = %_ZNSt14_Function_base13_Base_managerIZN4mlir15DialectRegistry6insertINS1_5arith12ArithDialectEEEvvEUlPNS1_11MLIRContextEE_E10_M_managerERSt9_Any_dataRKSA_St18_Manager_operation.exit.sink.split, %bb.a
  ret i1 false
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12function_refIFSt10unique_ptrIN4mlir7DialectESt14default_deleteIS3_EEvEE11callback_fnIZNS2_11MLIRContext16getOrLoadDialectINS2_5arith12ArithDialectEEEPT_vEUlvE_EES6_l(ptr dead_on_unwind noalias writable sret(%"class.std::unique_ptr.696") align 8 %0, i64 noundef %1) #0 comdat align 2 {
_ZNSt10unique_ptrIN4mlir5arith12ArithDialectESt14default_deleteIS2_EED2Ev.exit:
  %i.a = inttoptr i64 %1 to ptr
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !249, !noalias !628
  %i.c = tail call noalias noundef nonnull dereferenceable(96) ptr @_Znwm(i64 noundef 96) #22, !noalias !628 ; 2 uses
  tail call void @_ZN4mlir5arith12ArithDialectC1EPNS_11MLIRContextE(ptr noundef nonnull align 8 dereferenceable(96) %i.c, ptr noundef %i.b) #23, !noalias !628
  store ptr %i.c, ptr %0, align 8, !tbaa !247
  ret void
}

declare void @_ZN4mlir5arith12ArithDialectC1EPNS_11MLIRContextE(ptr noundef nonnull align 8 dereferenceable(96), ptr noundef) unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZNSt17_Function_handlerIFPN4mlir7DialectEPNS0_11MLIRContextEEZNS0_15DialectRegistry6insertINS0_6memref13MemRefDialectEEEvvEUlS4_E_E9_M_invokeERKSt9_Any_dataOS4_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) #0 comdat align 2 {
bb.a:
  %2 = alloca %class.anon.731, align 8            ; 4 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !243    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  store ptr %i.a, ptr %2, align 8, !tbaa !251
  %i.b = ptrtoint ptr %2 to i64
  %i.c = call noundef ptr @_ZN4mlir11MLIRContext16getOrLoadDialectEN4llvm9StringRefENS_6TypeIDENS1_12function_refIFSt10unique_ptrINS_7DialectESt14default_deleteIS6_EEvEEE(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr nonnull @.str.45, i64 6, ptr nonnull @_ZN4mlir6detail14TypeIDResolverINS_6memref13MemRefDialectEvE2idE, ptr nonnull @_ZN4llvm12function_refIFSt10unique_ptrIN4mlir7DialectESt14default_deleteIS3_EEvEE11callback_fnIZNS2_11MLIRContext16getOrLoadDialectINS2_6memref13MemRefDialectEEEPT_vEUlvE_EES6_l, i64 %i.b) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  ret ptr %i.c
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNSt17_Function_handlerIFPN4mlir7DialectEPNS0_11MLIRContextEEZNS0_15DialectRegistry6insertINS0_6memref13MemRefDialectEEEvvEUlS4_E_E10_M_managerERSt9_Any_dataRKSC_St18_Manager_operation(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #0 comdat align 2 {
bb.a:
  switch i32 %2, label %_ZNSt14_Function_base13_Base_managerIZN4mlir15DialectRegistry6insertINS1_6memref13MemRefDialectEEEvvEUlPNS1_11MLIRContextEE_E10_M_managerERSt9_Any_dataRKSA_St18_Manager_operation.exit [
    i32 1, label %_ZNSt14_Function_base13_Base_managerIZN4mlir15DialectRegistry6insertINS1_6memref13MemRefDialectEEEvvEUlPNS1_11MLIRContextEE_E10_M_managerERSt9_Any_dataRKSA_St18_Manager_operation.exit.sink.split
    i32 0, label %.sink.split.i
  ]

.sink.split.i:                                    ; preds = %bb.a
  br label %_ZNSt14_Function_base13_Base_managerIZN4mlir15DialectRegistry6insertINS1_6memref13MemRefDialectEEEvvEUlPNS1_11MLIRContextEE_E10_M_managerERSt9_Any_dataRKSA_St18_Manager_operation.exit.sink.split

_ZNSt14_Function_base13_Base_managerIZN4mlir15DialectRegistry6insertINS1_6memref13MemRefDialectEEEvvEUlPNS1_11MLIRContextEE_E10_M_managerERSt9_Any_dataRKSA_St18_Manager_operation.exit.sink.split: ; preds = %bb.a, %.sink.split.i
  %.sink = phi ptr [ null, %.sink.split.i ], [ %1, %bb.a ]
  store ptr %.sink, ptr %0, align 8, !tbaa !107
  br label %_ZNSt14_Function_base13_Base_managerIZN4mlir15DialectRegistry6insertINS1_6memref13MemRefDialectEEEvvEUlPNS1_11MLIRContextEE_E10_M_managerERSt9_Any_dataRKSA_St18_Manager_operation.exit

_ZNSt14_Function_base13_Base_managerIZN4mlir15DialectRegistry6insertINS1_6memref13MemRefDialectEEEvvEUlPNS1_11MLIRContextEE_E10_M_managerERSt9_Any_dataRKSA_St18_Manager_operation.exit: ; preds = %_ZNSt14_Function_base13_Base_managerIZN4mlir15DialectRegistry6insertINS1_6memref13MemRefDialectEEEvvEUlPNS1_11MLIRContextEE_E10_M_managerERSt9_Any_dataRKSA_St18_Manager_operation.exit.sink.split, %bb.a
  ret i1 false
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12function_refIFSt10unique_ptrIN4mlir7DialectESt14default_deleteIS3_EEvEE11callback_fnIZNS2_11MLIRContext16getOrLoadDialectINS2_6memref13MemRefDialectEEEPT_vEUlvE_EES6_l(ptr dead_on_unwind noalias writable sret(%"class.std::unique_ptr.696") align 8 %0, i64 noundef %1) #0 comdat align 2 {
_ZNSt10unique_ptrIN4mlir6memref13MemRefDialectESt14default_deleteIS2_EED2Ev.exit:
  %i.a = inttoptr i64 %1 to ptr
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !251, !noalias !631
  %i.c = tail call noalias noundef nonnull dereferenceable(96) ptr @_Znwm(i64 noundef 96) #22, !noalias !631 ; 2 uses
  tail call void @_ZN4mlir6memref13MemRefDialectC1EPNS_11MLIRContextE(ptr noundef nonnull align 8 dereferenceable(96) %i.c, ptr noundef %i.b) #23, !noalias !631
  store ptr %i.c, ptr %0, align 8, !tbaa !247
  ret void
}

declare void @_ZN4mlir6memref13MemRefDialectC1EPNS_11MLIRContextE(ptr noundef nonnull align 8 dereferenceable(96), ptr noundef) unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZNSt17_Function_handlerIFPN4mlir7DialectEPNS0_11MLIRContextEEZNS0_15DialectRegistry6insertINS0_3scf10SCFDialectEEEvvEUlS4_E_E9_M_invokeERKSt9_Any_dataOS4_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) #0 comdat align 2 {
bb.a:
  %2 = alloca %class.anon.744, align 8            ; 4 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !243    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  store ptr %i.a, ptr %2, align 8, !tbaa !253
  %i.b = ptrtoint ptr %2 to i64
  %i.c = call noundef ptr @_ZN4mlir11MLIRContext16getOrLoadDialectEN4llvm9StringRefENS_6TypeIDENS1_12function_refIFSt10unique_ptrINS_7DialectESt14default_deleteIS6_EEvEEE(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr nonnull @.str.46, i64 3, ptr nonnull @_ZN4mlir6detail14TypeIDResolverINS_3scf10SCFDialectEvE2idE, ptr nonnull @_ZN4llvm12function_refIFSt10unique_ptrIN4mlir7DialectESt14default_deleteIS3_EEvEE11callback_fnIZNS2_11MLIRContext16getOrLoadDialectINS2_3scf10SCFDialectEEEPT_vEUlvE_EES6_l, i64 %i.b) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  ret ptr %i.c
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNSt17_Function_handlerIFPN4mlir7DialectEPNS0_11MLIRContextEEZNS0_15DialectRegistry6insertINS0_3scf10SCFDialectEEEvvEUlS4_E_E10_M_managerERSt9_Any_dataRKSC_St18_Manager_operation(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #0 comdat align 2 {
bb.a:
  switch i32 %2, label %_ZNSt14_Function_base13_Base_managerIZN4mlir15DialectRegistry6insertINS1_3scf10SCFDialectEEEvvEUlPNS1_11MLIRContextEE_E10_M_managerERSt9_Any_dataRKSA_St18_Manager_operation.exit [
    i32 1, label %_ZNSt14_Function_base13_Base_managerIZN4mlir15DialectRegistry6insertINS1_3scf10SCFDialectEEEvvEUlPNS1_11MLIRContextEE_E10_M_managerERSt9_Any_dataRKSA_St18_Manager_operation.exit.sink.split
    i32 0, label %.sink.split.i
  ]

.sink.split.i:                                    ; preds = %bb.a
  br label %_ZNSt14_Function_base13_Base_managerIZN4mlir15DialectRegistry6insertINS1_3scf10SCFDialectEEEvvEUlPNS1_11MLIRContextEE_E10_M_managerERSt9_Any_dataRKSA_St18_Manager_operation.exit.sink.split

_ZNSt14_Function_base13_Base_managerIZN4mlir15DialectRegistry6insertINS1_3scf10SCFDialectEEEvvEUlPNS1_11MLIRContextEE_E10_M_managerERSt9_Any_dataRKSA_St18_Manager_operation.exit.sink.split: ; preds = %bb.a, %.sink.split.i
  %.sink = phi ptr [ null, %.sink.split.i ], [ %1, %bb.a ]
  store ptr %.sink, ptr %0, align 8, !tbaa !107
  br label %_ZNSt14_Function_base13_Base_managerIZN4mlir15DialectRegistry6insertINS1_3scf10SCFDialectEEEvvEUlPNS1_11MLIRContextEE_E10_M_managerERSt9_Any_dataRKSA_St18_Manager_operation.exit

_ZNSt14_Function_base13_Base_managerIZN4mlir15DialectRegistry6insertINS1_3scf10SCFDialectEEEvvEUlPNS1_11MLIRContextEE_E10_M_managerERSt9_Any_dataRKSA_St18_Manager_operation.exit: ; preds = %_ZNSt14_Function_base13_Base_managerIZN4mlir15DialectRegistry6insertINS1_3scf10SCFDialectEEEvvEUlPNS1_11MLIRContextEE_E10_M_managerERSt9_Any_dataRKSA_St18_Manager_operation.exit.sink.split, %bb.a
  ret i1 false
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12function_refIFSt10unique_ptrIN4mlir7DialectESt14default_deleteIS3_EEvEE11callback_fnIZNS2_11MLIRContext16getOrLoadDialectINS2_3scf10SCFDialectEEEPT_vEUlvE_EES6_l(ptr dead_on_unwind noalias writable sret(%"class.std::unique_ptr.696") align 8 %0, i64 noundef %1) #0 comdat align 2 {
_ZNSt10unique_ptrIN4mlir3scf10SCFDialectESt14default_deleteIS2_EED2Ev.exit:
  %i.a = inttoptr i64 %1 to ptr
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !253, !noalias !634
  %i.c = tail call noalias noundef nonnull dereferenceable(96) ptr @_Znwm(i64 noundef 96) #22, !noalias !634 ; 2 uses
  tail call void @_ZN4mlir3scf10SCFDialectC1EPNS_11MLIRContextE(ptr noundef nonnull align 8 dereferenceable(96) %i.c, ptr noundef %i.b) #23, !noalias !634
  store ptr %i.c, ptr %0, align 8, !tbaa !247
  ret void
}

declare void @_ZN4mlir3scf10SCFDialectC1EPNS_11MLIRContextE(ptr noundef nonnull align 8 dereferenceable(96), ptr noundef) unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr i32 @_ZN4mlir6detail4walkINS_15ForwardIteratorEEENS_10WalkResultEPNS_9OperationEN4llvm12function_refIFS3_S5_EEENS_9WalkOrderE(ptr noundef %0, ptr %1, i64 %2, i32 noundef %3) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = icmp eq i32 %3, 0
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i32 %1(i64 noundef %2, ptr noundef %0) #23, !inline_history !635
  switch i32 %i.b, label %bb.c [
    i32 2, label %.thread
    i32 0, label %.thread.fold.split
  ]

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.c = tail call { ptr, i64 } @_ZN4mlir15ForwardIterator12makeIterableERNS_9OperationE(ptr noundef nonnull align 8 dereferenceable(64) %0) #23 ; 2 uses
  %i.d = extractvalue { ptr, i64 } %i.c, 0        ; 2 uses
  %i.e = extractvalue { ptr, i64 } %i.c, 1        ; 2 uses
  %.idx = shl nuw nsw i64 %i.e, 5
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 %.idx
  %.not75 = icmp eq i64 %i.e, 0
  br i1 %.not75, label %._crit_edge77, label %.preheader

.preheader:                                       ; preds = %bb.c, %._crit_edge
  %.03176 = phi ptr [ %i.o, %._crit_edge ], [ %i.d, %bb.c ] ; 4 uses
  %.sroa.037.0.in71 = getelementptr inbounds nuw i8, ptr %.03176, i64 8
  %.sroa.037.072 = load ptr, ptr %.sroa.037.0.in71, align 8, !tbaa !99 ; 2 uses
  %.not6973 = icmp eq ptr %.sroa.037.072, %.03176
  br i1 %.not6973, label %._crit_edge, label %.lr.ph

.loopexit:                                        ; preds = %bb.d
  %.sroa.037.0.in = getelementptr inbounds nuw i8, ptr %.sroa.037.074, i64 8
  %.sroa.037.0 = load ptr, ptr %.sroa.037.0.in, align 8, !tbaa !99 ; 2 uses
  %.not69 = icmp eq ptr %.sroa.037.0, %.03176
  br i1 %.not69, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader, %.loopexit
  %.sroa.037.074 = phi ptr [ %.sroa.037.0, %.loopexit ], [ %.sroa.037.072, %.preheader ] ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.037.074, i64 40
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !99
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.037.074, i64 32
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %.lr.ph
  %.sroa.034.0 = phi ptr [ %i.h, %.lr.ph ], [ %i.k, %bb.e ] ; 3 uses
  %.not70 = icmp eq ptr %.sroa.034.0, %i.i
  br i1 %.not70, label %.loopexit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.034.0, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !99
  %i.l = tail call noundef nonnull align 8 dereferenceable(64) ptr @_ZN4llvm12ilist_detail18SpecificNodeAccessINS0_12node_optionsIN4mlir9OperationELb0ELb0EvLb0EvEEE11getValuePtrEPNS_15ilist_node_implIS5_EE(ptr noundef %.sroa.034.0) #23
  %i.m = tail call i32 @_ZN4mlir6detail4walkINS_15ForwardIteratorEEENS_10WalkResultEPNS_9OperationEN4llvm12function_refIFS3_S5_EEENS_9WalkOrderE(ptr noundef nonnull %i.l, ptr %1, i64 %2, i32 noundef %3)
  %i.n = icmp eq i32 %i.m, 0
  br i1 %i.n, label %.thread, label %bb.d

._crit_edge:                                      ; preds = %.loopexit, %.preheader
  %i.o = getelementptr inbounds nuw i8, ptr %.03176, i64 32 ; 2 uses
  %.not = icmp eq ptr %i.o, %i.f
  br i1 %.not, label %._crit_edge77, label %.preheader

._crit_edge77:                                    ; preds = %._crit_edge, %bb.c
  %i.p = icmp eq i32 %3, 1
  br i1 %i.p, label %bb.f, label %.thread

bb.f:                                             ; preds = %._crit_edge77
  %i.q = tail call i32 %1(i64 noundef %2, ptr noundef nonnull %0) #23, !inline_history !635
  br label %.thread

.thread.fold.split:                               ; preds = %bb.b
  br label %.thread

.thread:                                          ; preds = %bb.e, %bb.b, %.thread.fold.split, %._crit_edge77, %bb.f
  %.sroa.030.9 = phi i32 [ %i.q, %bb.f ], [ 0, %.thread.fold.split ], [ 1, %._crit_edge77 ], [ 1, %bb.b ], [ 0, %bb.e ]
  ret i32 %.sroa.030.9
}

; Function Attrs: mustprogress nounwind uwtable
define internal range(i32 0, 3) i32 @_ZN4llvm12function_refIFN4mlir10WalkResultEPNS1_9OperationEEE11callback_fnIZNS1_6detail4walkILNS1_9WalkOrderE1ENS1_15ForwardIteratorEZN12_GLOBAL__N_136OwnershipBasedBufferDeallocationPass14runOnOperationEvEUlNS1_4func6FuncOpEE_SF_S2_EENSt9enable_ifIXaantsr4llvm9is_one_ofIT2_S4_PNS1_6RegionEPNS1_5BlockEEE5valuesr3std7is_sameIT3_S2_EE5valueESN_E4typeES4_OT1_EUlS4_E_EES2_lS4_(i64 noundef %0, ptr noundef %1) #0 align 2 {
bb.a:
  %i.a = inttoptr i64 %0 to ptr
  %.val = load ptr, ptr %i.a, align 8             ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.sroa.0.0.copyload.i.i.i.i.i.i.i = load ptr, ptr %i.b, align 8, !tbaa !108
  %i.c = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !110
  %i.e = icmp ne ptr %i.d, @_ZN4mlir6detail14TypeIDResolverINS_4func6FuncOpEvE2idE
  %2 = icmp eq ptr @_ZN4mlir6detail14TypeIDResolverIvvE2idE, @_ZN4mlir6detail14TypeIDResolverINS_4func6FuncOpEvE2idE
  %spec.select.i.i.i.i.not.i = or i1 %2, %i.e
  %.not2.i = icmp eq ptr %1, null
  %.not.i = or i1 %.not2.i, %spec.select.i.i.i.i.not.i
  br i1 %.not.i, label %_ZZN4mlir6detail4walkILNS_9WalkOrderE1ENS_15ForwardIteratorEZN12_GLOBAL__N_136OwnershipBasedBufferDeallocationPass14runOnOperationEvEUlNS_4func6FuncOpEE_S7_NS_10WalkResultEEENSt9enable_ifIXaantsr4llvm9is_one_ofIT2_PNS_9OperationEPNS_6RegionEPNS_5BlockEEE5valuesr3std7is_sameIT3_S9_EE5valueESI_E4typeESD_OT1_ENKUlSD_E_clESD_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.g = load i32, ptr %i.f, align 4              ; 3 uses
  %i.h = and i32 %i.g, 8388607
  %i.i = icmp ne i32 %i.h, 0
  tail call void @llvm.assume(i1 %i.i)
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.k = lshr i32 %i.g, 23
  %.lobit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = and i32 %i.k, 1
  %i.l = zext nneg i32 %.lobit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i to i64
  %i.m = getelementptr inbounds nuw [16 x i8], ptr %i.j, i64 %i.l
  %i.n = lshr i32 %i.g, 21
  %i.o = and i32 %i.n, 2040
  %i.p = zext nneg i32 %i.o to i64
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.p
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.s = load i32, ptr %i.r, align 8, !tbaa !83
  %i.t = zext i32 %i.s to i64
  %i.u = getelementptr inbounds nuw [32 x i8], ptr %i.q, i64 %i.t ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !106
  %i.w = icmp eq ptr %i.u, %i.v
  br i1 %i.w, label %_ZZN4mlir6detail4walkILNS_9WalkOrderE1ENS_15ForwardIteratorEZN12_GLOBAL__N_136OwnershipBasedBufferDeallocationPass14runOnOperationEvEUlNS_4func6FuncOpEE_S7_NS_10WalkResultEEENSt9enable_ifIXaantsr4llvm9is_one_ofIT2_PNS_9OperationEPNS_6RegionEPNS_5BlockEEE5valuesr3std7is_sameIT3_S9_EE5valueESI_E4typeESD_OT1_ENKUlSD_E_clESD_.exit, label %_ZN4mlir19FunctionOpInterfaceCI2NS_6detail9InterfaceIS0_PNS_9OperationENS1_34FunctionOpInterfaceInterfaceTraitsENS_2OpIS0_JEEENS_7OpTrait9TraitBaseEEEINS_4func6FuncOpETnPNSt9enable_ifIXsr3std10is_base_ofINS2_IS0_S4_S5_S7_S9_E5TraitIT_EESF_EE5valueEvE4typeELPv0EEESF_.exit.i.i

_ZN4mlir19FunctionOpInterfaceCI2NS_6detail9InterfaceIS0_PNS_9OperationENS1_34FunctionOpInterfaceInterfaceTraitsENS_2OpIS0_JEEENS_7OpTrait9TraitBaseEEEINS_4func6FuncOpETnPNSt9enable_ifIXsr3std10is_base_ofINS2_IS0_S4_S5_S7_S9_E5TraitIT_EESF_EE5valueEvE4typeELPv0EEESF_.exit.i.i: ; preds = %bb.b
  %i.x = tail call noundef ptr @_ZN4mlir11OpInterfaceINS_19FunctionOpInterfaceENS_6detail34FunctionOpInterfaceInterfaceTraitsEE15getInterfaceForEPNS_9OperationE(ptr noundef nonnull %1)
  %i.y = load ptr, ptr %.val, align 8, !tbaa !637, !nonnull !61
  %.sroa.0.0.copyload.i.i = load i8, ptr %i.y, align 1, !tbaa !27
  %i.z = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !638, !nonnull !61, !align !189
  %i.ab = tail call i8 @_ZN4mlir13bufferization31deallocateBuffersOwnershipBasedENS_19FunctionOpInterfaceENS0_19DeallocationOptionsERNS_21SymbolTableCollectionE(ptr nonnull %1, ptr %i.x, i8 %.sroa.0.0.copyload.i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.aa)
  %i.ac = and i8 %i.ab, 1
  %spec.select.i.i = zext nneg i8 %i.ac to i32
  br label %_ZZN4mlir6detail4walkILNS_9WalkOrderE1ENS_15ForwardIteratorEZN12_GLOBAL__N_136OwnershipBasedBufferDeallocationPass14runOnOperationEvEUlNS_4func6FuncOpEE_S7_NS_10WalkResultEEENSt9enable_ifIXaantsr4llvm9is_one_ofIT2_PNS_9OperationEPNS_6RegionEPNS_5BlockEEE5valuesr3std7is_sameIT3_S9_EE5valueESI_E4typeESD_OT1_ENKUlSD_E_clESD_.exit

_ZZN4mlir6detail4walkILNS_9WalkOrderE1ENS_15ForwardIteratorEZN12_GLOBAL__N_136OwnershipBasedBufferDeallocationPass14runOnOperationEvEUlNS_4func6FuncOpEE_S7_NS_10WalkResultEEENSt9enable_ifIXaantsr4llvm9is_one_ofIT2_PNS_9OperationEPNS_6RegionEPNS_5BlockEEE5valuesr3std7is_sameIT3_S9_EE5valueESI_E4typeESD_OT1_ENKUlSD_E_clESD_.exit: ; preds = %bb.a, %bb.b, %_ZN4mlir19FunctionOpInterfaceCI2NS_6detail9InterfaceIS0_PNS_9OperationENS1_34FunctionOpInterfaceInterfaceTraitsENS_2OpIS0_JEEENS_7OpTrait9TraitBaseEEEINS_4func6FuncOpETnPNSt9enable_ifIXsr3std10is_base_ofINS2_IS0_S4_S5_S7_S9_E5TraitIT_EESF_EE5valueEvE4typeELPv0EEESF_.exit.i.i
  %.sroa.02.1.i = phi i32 [ 1, %bb.a ], [ 2, %bb.b ], [ %spec.select.i.i, %_ZN4mlir19FunctionOpInterfaceCI2NS_6detail9InterfaceIS0_PNS_9OperationENS1_34FunctionOpInterfaceInterfaceTraitsENS_2OpIS0_JEEENS_7OpTrait9TraitBaseEEEINS_4func6FuncOpETnPNSt9enable_ifIXsr3std10is_base_ofINS2_IS0_S4_S5_S7_S9_E5TraitIT_EESF_EE5valueEvE4typeELPv0EEESF_.exit.i.i ]
  ret i32 %.sroa.02.1.i
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm8DenseMapIPN4mlir9OperationESt10unique_ptrINS1_11SymbolTableESt14default_deleteIS5_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S8_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !643  ; 2 uses
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %_ZN4llvm8DenseMapIPN4mlir9OperationESt10unique_ptrINS1_11SymbolTableESt14default_deleteIS5_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S8_EEE17deallocateBucketsEv.exit, label %.lr.ph7.preheader.i

.lr.ph7.preheader.i:                              ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !644
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !645
  %i.g = zext i32 %i.b to i64
  %i.h = add nuw nsw i64 %i.g, 31
  %i.i = lshr i64 %i.h, 5
  br label %.lr.ph7.i

.lr.ph7.i:                                        ; preds = %._crit_edge.i, %.lr.ph7.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph7.preheader.i ], [ %indvars.iv.next.i, %._crit_edge.i ] ; 3 uses
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv.i
  %i.k = load i32, ptr %i.j, align 4, !tbaa !132  ; 2 uses
  %.not11.i2.i = icmp eq i32 %i.k, 0
  br i1 %.not11.i2.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph7.i
  %indvars.iv.tr.i = trunc nuw i64 %indvars.iv.i to i32
  %i.l = shl nuw i32 %indvars.iv.tr.i, 5
  br label %bb.b

bb.b:                                             ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPN4mlir9OperationESt10unique_ptrINS2_11SymbolTableESt14default_deleteIS6_EENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S9_EEEES4_S9_SB_SE_E10destroyAllEvENKUljE_clEj.exit.i, %.lr.ph.i
  %.0.i3.i = phi i32 [ %i.k, %.lr.ph.i ], [ %i.ae, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPN4mlir9OperationESt10unique_ptrINS2_11SymbolTableESt14default_deleteIS6_EENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S9_EEEES4_S9_SB_SE_E10destroyAllEvENKUljE_clEj.exit.i ] ; 3 uses
  %i.m = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i3.i, i1 true)
  %i.n = or disjoint i32 %i.m, %i.l
  %i.o = zext i32 %i.n to i64
  %i.p = getelementptr inbounds nuw [16 x i8], ptr %i.d, i64 %i.o
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !647  ; 4 uses
  %.not.i.i.i = icmp eq ptr %i.r, null
  br i1 %.not.i.i.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPN4mlir9OperationESt10unique_ptrINS2_11SymbolTableESt14default_deleteIS6_EENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S9_EEEES4_S9_SB_SE_E10destroyAllEvENKUljE_clEj.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 28
  %i.t = load i32, ptr %i.s, align 4, !tbaa !650  ; 2 uses
  %i.u = icmp eq i32 %i.t, 0
  br i1 %i.u, label %_ZNKSt14default_deleteIN4mlir11SymbolTableEEclEPS1_.exit.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.v = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !651
  %i.x = zext i32 %i.t to i64                     ; 2 uses
  %i.y = shl nuw nsw i64 %i.x, 4
  %i.z = add nuw nsw i64 %i.x, 31
  %i.aa = lshr i64 %i.z, 3
  %i.ab = and i64 %i.aa, 1073741820
  %i.ac = add nuw nsw i64 %i.ab, %i.y
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.w, i64 noundef %i.ac, i64 noundef 8) #23
  br label %_ZNKSt14default_deleteIN4mlir11SymbolTableEEclEPS1_.exit.i.i.i

_ZNKSt14default_deleteIN4mlir11SymbolTableEEclEPS1_.exit.i.i.i: ; preds = %bb.d, %bb.c
  tail call void @_ZdlPvm(ptr noundef nonnull %i.r, i64 noundef 40) #24
  br label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPN4mlir9OperationESt10unique_ptrINS2_11SymbolTableESt14default_deleteIS6_EENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S9_EEEES4_S9_SB_SE_E10destroyAllEvENKUljE_clEj.exit.i

_ZZN4llvm12DenseMapBaseINS_8DenseMapIPN4mlir9OperationESt10unique_ptrINS2_11SymbolTableESt14default_deleteIS6_EENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S9_EEEES4_S9_SB_SE_E10destroyAllEvENKUljE_clEj.exit.i: ; preds = %_ZNKSt14default_deleteIN4mlir11SymbolTableEEclEPS1_.exit.i.i.i, %bb.b
  %i.ad = add i32 %.0.i3.i, -1
  %i.ae = and i32 %i.ad, %.0.i3.i                 ; 2 uses
  %.not11.i.i = icmp eq i32 %i.ae, 0
  br i1 %.not11.i.i, label %._crit_edge.i, label %bb.b, !llvm.loop !639

._crit_edge.i:                                    ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPN4mlir9OperationESt10unique_ptrINS2_11SymbolTableESt14default_deleteIS6_EENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S9_EEEES4_S9_SB_SE_E10destroyAllEvENKUljE_clEj.exit.i, %.lr.ph7.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %.not.i.i = icmp eq i64 %indvars.iv.next.i, %i.i
  br i1 %.not.i.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN4mlir9OperationESt10unique_ptrINS2_11SymbolTableESt14default_deleteIS6_EENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S9_EEEES4_S9_SB_SE_E10destroyAllEv.exit, label %.lr.ph7.i, !llvm.loop !640

_ZN4llvm12DenseMapBaseINS_8DenseMapIPN4mlir9OperationESt10unique_ptrINS2_11SymbolTableESt14default_deleteIS6_EENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S9_EEEES4_S9_SB_SE_E10destroyAllEv.exit: ; preds = %._crit_edge.i
  %.pr = load i32, ptr %i.a, align 4, !tbaa !643  ; 2 uses
  %i.af = icmp eq i32 %.pr, 0
  br i1 %i.af, label %_ZN4llvm8DenseMapIPN4mlir9OperationESt10unique_ptrINS1_11SymbolTableESt14default_deleteIS5_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S8_EEE17deallocateBucketsEv.exit, label %bb.e

bb.e:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN4mlir9OperationESt10unique_ptrINS2_11SymbolTableESt14default_deleteIS6_EENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S9_EEEES4_S9_SB_SE_E10destroyAllEv.exit
  %i.ag = load ptr, ptr %0, align 8, !tbaa !644
  %i.ah = zext i32 %.pr to i64                    ; 2 uses
  %i.ai = shl nuw nsw i64 %i.ah, 4
  %i.aj = add nuw nsw i64 %i.ah, 31
  %i.ak = lshr i64 %i.aj, 3
  %i.al = and i64 %i.ak, 1073741820
  %i.am = add nuw nsw i64 %i.al, %i.ai
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.ag, i64 noundef %i.am, i64 noundef 8) #23
  br label %_ZN4llvm8DenseMapIPN4mlir9OperationESt10unique_ptrINS1_11SymbolTableESt14default_deleteIS5_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S8_EEE17deallocateBucketsEv.exit

_ZN4llvm8DenseMapIPN4mlir9OperationESt10unique_ptrINS1_11SymbolTableESt14default_deleteIS5_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S8_EEE17deallocateBucketsEv.exit: ; preds = %bb.a, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN4mlir9OperationESt10unique_ptrINS2_11SymbolTableESt14default_deleteIS6_EENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S9_EEEES4_S9_SB_SE_E10destroyAllEv.exit, %bb.e
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4mlir11SideEffects15DefaultResourceC2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_11SideEffects15DefaultResourceEvE13resolveTypeIDEvE2id acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %_ZN4mlir11SideEffects8Resource4BaseINS0_15DefaultResourceES1_EC2Ev.exit, !prof !111

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_11SideEffects15DefaultResourceEvE13resolveTypeIDEvE2id) #23, !inline_history !652
  %.not.i.i.i.i = icmp eq i32 %i.c, 0
  br i1 %.not.i.i.i.i, label %_ZN4mlir11SideEffects8Resource4BaseINS0_15DefaultResourceES1_EC2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.49, i64 49), i64 34) #23, !inline_history !652
  store ptr %i.d, ptr @_ZZN4mlir6detail14TypeIDResolverINS_11SideEffects15DefaultResourceEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_11SideEffects15DefaultResourceEvE13resolveTypeIDEvE2id) #23, !inline_history !652
  br label %_ZN4mlir11SideEffects8Resource4BaseINS0_15DefaultResourceES1_EC2Ev.exit

_ZN4mlir11SideEffects8Resource4BaseINS0_15DefaultResourceES1_EC2Ev.exit: ; preds = %bb.a, %bb.b, %bb.c
  %.sroa.01.0.copyload.i.i.i.i = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_11SideEffects15DefaultResourceEvE13resolveTypeIDEvE2id, align 8, !tbaa !16
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.01.0.copyload.i.i.i.i, ptr %i.e, align 8, !tbaa !16
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN4mlir11SideEffects15DefaultResourceE, i64 16), ptr %0, align 8, !tbaa !21
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #20

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #20

attributes #0 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #4 = { nofree nounwind }
attributes #5 = { mustprogress noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #13 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { cold mustprogress noreturn nounwind memory(inaccessiblemem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #20 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #21 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
end_hunk_1
