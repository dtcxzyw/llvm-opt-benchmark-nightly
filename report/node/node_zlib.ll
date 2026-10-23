Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/node_zlib?download=true
inline.NumInlined: 3300
inline.NumDeleted: 1374
loop-unroll.NumCompletelyUnrolled: 13
loop-unroll.NumUnrolled: 13
begin_hunk_0_@_ZN4node12_GLOBAL__N_110ZstdStreamINS0_19ZstdCompressContextEE4InitERKN2v820FunctionCallbackInfoINS4_5ValueEEE:_ZN4node18ContextEmbedderTag13IsNodeContextEN2v85LocalINS1_7ContextEEE.exit.i.i
  br i1 %.not.i87, label %_ZNK2v85Value16QuickIsUndefinedEv.exit, label %_ZNK2v820FunctionCallbackInfoINS_5ValueEEixEi.exit70

_ZNK2v85Value16QuickIsUndefinedEv.exit:           ; preds = %bb.ag
  %i.fp = add i64 %i.fg, 39
  %i.fq = inttoptr i64 %i.fp to ptr
  %i.fr = load i64, ptr %i.fq, align 8
  %.mask = and i64 %i.fr, -4294967296
  %i.fs = icmp eq i64 %.mask, 17179869184
  br i1 %i.fs, label %.critedge, label %_ZNK2v820FunctionCallbackInfoINS_5ValueEEixEi.exit70

_ZNK2v820FunctionCallbackInfoINS_5ValueEEixEi.exit70: ; preds = %bb.ag, %_ZNK2v820FunctionCallbackInfoINS_5ValueEEixEi.exit72, %_ZNK2v85Value16QuickIsUndefinedEv.exit
  %i.ft = tail call noundef zeroext i1 @_ZNK2v85Value17IsArrayBufferViewEv(ptr noundef nonnull align 1 dereferenceable(1) %i.ff) #31
  br i1 %i.ft, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %_ZNK2v820FunctionCallbackInfoINS_5ValueEEixEi.exit70
  %i.fu = getelementptr i8, ptr %.0.i.i98, i64 88
  %.val94 = load ptr, ptr %i.fu, align 8
  %i.fv = getelementptr inbounds nuw i8, ptr %.val94, i64 200
  %i.fw = load ptr, ptr %i.fv, align 8            ; 2 uses
  %i.fx = tail call ptr @_ZN4node20ERR_INVALID_ARG_TYPEIJEEEN2v85LocalINS1_6ObjectEEEPNS1_7IsolateESt17basic_string_viewIcSt11char_traitsIcEEDpOT_(ptr noundef %i.fw, i64 49, ptr nonnull @.str.379)
  %i.fy = tail call ptr @_ZN2v87Isolate14ThrowExceptionENS_5LocalINS_5ValueEEE(ptr noundef nonnull align 1 dereferenceable(1) %i.fw, ptr %i.fx) #31 ; 0 uses
  br label %bb.bc

bb.ai:                                            ; preds = %_ZNK2v820FunctionCallbackInfoINS_5ValueEEixEi.exit70
  %i.fz = load i64, ptr %i.q, align 8
  %i.ga = trunc i64 %i.fz to i32
  %.not.i67 = icmp sgt i32 %i.ga, 4
  br i1 %.not.i67, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.gb = load ptr, ptr %0, align 8
  %i.gc = getelementptr inbounds nuw i8, ptr %i.gb, i64 8
  %i.gd = load ptr, ptr %i.gc, align 8
  %i.ge = ptrtoint ptr %i.gd to i64
  %i.gf = add i64 %i.ge, 648
  %i.gg = inttoptr i64 %i.gf to ptr
  br label %_ZNK2v820FunctionCallbackInfoINS_5ValueEEixEi.exit68

bb.ak:                                            ; preds = %bb.ai
  %i.gh = load ptr, ptr %i.t, align 8
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gh, i64 32
  br label %_ZNK2v820FunctionCallbackInfoINS_5ValueEEixEi.exit68

_ZNK2v820FunctionCallbackInfoINS_5ValueEEixEi.exit68: ; preds = %bb.aj, %bb.ak
  %.sroa.0134.0.a = phi ptr [ %i.gi, %bb.ak ], [ %i.gg, %bb.aj ]
  call void @_ZN4node23ArrayBufferViewContentsIcLm64EE9ReadValueEN2v85LocalINS2_5ValueEEE(ptr noundef nonnull align 8 dereferenceable(81) %2, ptr %.sroa.0134.0.a)
  %i.gj = load ptr, ptr %i.fa, align 8
  %i.gk = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.gl = load i64, ptr %i.gk, align 8
  br label %.critedge

.critedge:                                        ; preds = %bb.af, %_ZNK2v820FunctionCallbackInfoINS_5ValueEEixEi.exit68, %_ZNK2v85Value16QuickIsUndefinedEv.exit
  %.sroa.0113.0 = phi i64 [ 0, %_ZNK2v85Value16QuickIsUndefinedEv.exit ], [ %i.gl, %_ZNK2v820FunctionCallbackInfoINS_5ValueEEixEi.exit68 ], [ 0, %bb.af ] ; 2 uses
  %.sroa.5.0 = phi ptr [ null, %_ZNK2v85Value16QuickIsUndefinedEv.exit ], [ %i.gj, %_ZNK2v820FunctionCallbackInfoINS_5ValueEEixEi.exit68 ], [ null, %bb.af ]
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #31
  %i.gm = getelementptr inbounds nuw i8, ptr %.0.i.i98, i64 264
  call void @llvm.experimental.noalias.scope.decl(metadata !279)
  call void @llvm.lifetime.start.p0(ptr nonnull %1)
  %i.gn = getelementptr inbounds nuw i8, ptr %.0.i.i98, i64 408
  store i64 %.155, ptr %i.gn, align 8, !noalias !279
  %i.go = ptrtoint ptr %i.gm to i64
  %i.gp = add i64 %i.go, -264
  %i.gq = inttoptr i64 %i.gp to ptr
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gq, i64 232
  %i.gs = getelementptr i8, ptr %.0.i.i98, i64 400 ; 5 uses
  store ptr @_ZN4node12_GLOBAL__N_128CompressionStreamMemoryOwner14AllocForBrotliEPvm, ptr %1, align 8, !noalias !279
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr @_ZN4node12_GLOBAL__N_128CompressionStreamMemoryOwner11FreeForZlibEPvS2_, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !279
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  store ptr %i.gr, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !279
  %i.gt = call ptr @ZSTD_createCCtx_advanced(ptr noundef nonnull byval(%struct.ZSTD_customMem) align 8 %1) #31, !noalias !279 ; 2 uses
  %i.gu = load ptr, ptr %i.gs, align 8, !noalias !279 ; 2 uses
  store ptr %i.gt, ptr %i.gs, align 8, !noalias !279
  %.not.i.i.i99 = icmp eq ptr %i.gu, null
  br i1 %.not.i.i.i99, label %_ZNSt10unique_ptrI11ZSTD_CCtx_sN4node15FunctionDeleterIS0_XadL_ZNS1_12_GLOBAL__N_119ZstdCompressContext8FreeZstdEPS0_EEEEE5resetES5_.exit.i, label %bb.al

bb.al:                                            ; preds = %.critedge
  %i.gv = call i64 @ZSTD_freeCCtx(ptr noundef nonnull %i.gu) #31, !noalias !279 ; 0 uses
  %.val7.pr.i = load ptr, ptr %i.gs, align 8, !noalias !279
  br label %_ZNSt10unique_ptrI11ZSTD_CCtx_sN4node15FunctionDeleterIS0_XadL_ZNS1_12_GLOBAL__N_119ZstdCompressContext8FreeZstdEPS0_EEEEE5resetES5_.exit.i

_ZNSt10unique_ptrI11ZSTD_CCtx_sN4node15FunctionDeleterIS0_XadL_ZNS1_12_GLOBAL__N_119ZstdCompressContext8FreeZstdEPS0_EEEEE5resetES5_.exit.i: ; preds = %bb.al, %.critedge
  %.val7.i = phi ptr [ %i.gt, %.critedge ], [ %.val7.pr.i, %bb.al ] ; 3 uses
  %.not9.i = icmp eq ptr %.val7.i, null
  br i1 %.not9.i, label %bb.ao, label %bb.am

bb.am:                                            ; preds = %_ZNSt10unique_ptrI11ZSTD_CCtx_sN4node15FunctionDeleterIS0_XadL_ZNS1_12_GLOBAL__N_119ZstdCompressContext8FreeZstdEPS0_EEEEE5resetES5_.exit.i
  %i.gw = icmp eq i64 %.sroa.0113.0, 0
  br i1 %i.gw, label %.critedge.i, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.gx = call i64 @ZSTD_CCtx_loadDictionary(ptr noundef nonnull %.val7.i, ptr noundef %.sroa.5.0, i64 noundef %.sroa.0113.0) #31, !noalias !279
  %i.gy = call i32 @ZSTD_isError(i64 noundef %i.gx) #31, !noalias !279
  %.not.i100 = icmp eq i32 %i.gy, 0
  br i1 %.not.i100, label %..critedge_crit_edge.i, label %bb.ao

..critedge_crit_edge.i:                           ; preds = %bb.an
  %.val.pre.i = load ptr, ptr %i.gs, align 8, !noalias !279
  br label %.critedge.i

.critedge.i:                                      ; preds = %..critedge_crit_edge.i, %bb.am
  %.val.i = phi ptr [ %.val.pre.i, %..critedge_crit_edge.i ], [ %.val7.i, %bb.am ]
  %i.gz = call i64 @ZSTD_CCtx_setPledgedSrcSize(ptr noundef %.val.i, i64 noundef %.155) #31, !noalias !279
  %i.ha = call i32 @ZSTD_isError(i64 noundef %i.gz) #31, !noalias !279
  %.not5.i = icmp eq i32 %i.ha, 0
  br i1 %.not5.i, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %.critedge.i, %bb.an, %_ZNSt10unique_ptrI11ZSTD_CCtx_sN4node15FunctionDeleterIS0_XadL_ZNS1_12_GLOBAL__N_119ZstdCompressContext8FreeZstdEPS0_EEEEE5resetES5_.exit.i
  %.str.443.sink = phi ptr [ @.str.444, %bb.an ], [ @.str.443, %_ZNSt10unique_ptrI11ZSTD_CCtx_sN4node15FunctionDeleterIS0_XadL_ZNS1_12_GLOBAL__N_119ZstdCompressContext8FreeZstdEPS0_EEEEE5resetES5_.exit.i ], [ @.str.445, %.critedge.i ] ; 3 uses
  %.str.392.sink = phi ptr [ @.str.394, %bb.an ], [ @.str.392, %_ZNSt10unique_ptrI11ZSTD_CCtx_sN4node15FunctionDeleterIS0_XadL_ZNS1_12_GLOBAL__N_119ZstdCompressContext8FreeZstdEPS0_EEEEE5resetES5_.exit.i ], [ @.str.392, %.critedge.i ]
  store ptr %.str.443.sink, ptr %3, align 8, !alias.scope !279
  %i.hb = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %.str.392.sink, ptr %i.hb, align 8, !alias.scope !279
  %i.hc = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i32 -1, ptr %i.hc, align 8, !alias.scope !279
  call void @llvm.lifetime.end.p0(ptr nonnull %1)
  call fastcc void @_ZN4node12_GLOBAL__N_117CompressionStreamINS0_19ZstdCompressContextEE9EmitErrorERKNS0_16CompressionErrorE(ptr noundef nonnull align 8 dereferenceable(416) %.0.i.i98, ptr noundef nonnull align 8 dereferenceable(20) %3)
  %i.hd = getelementptr i8, ptr %.0.i.i98, i64 88
  %.val93 = load ptr, ptr %i.hd, align 8
  %i.he = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %.str.443.sink) #31
  %i.hf = getelementptr inbounds nuw i8, ptr %.val93, i64 200
  %i.hg = load ptr, ptr %i.hf, align 8            ; 2 uses
  %i.hh = call ptr @_ZN4node30ERR_ZLIB_INITIALIZATION_FAILEDIJEEEN2v85LocalINS1_6ObjectEEEPNS1_7IsolateESt17basic_string_viewIcSt11char_traitsIcEEDpOT_(ptr noundef %i.hg, i64 %i.he, ptr nonnull %.str.443.sink)
  %i.hi = call ptr @_ZN2v87Isolate14ThrowExceptionENS_5LocalINS_5ValueEEE(ptr noundef nonnull align 1 dereferenceable(1) %i.hg, ptr %i.hh) #31 ; 0 uses
  br label %.loopexit

bb.ap:                                            ; preds = %.critedge.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1)
  %i.hj = load i64, ptr %i.q, align 8
  %i.hk = trunc i64 %i.hj to i32
  %.not.i65 = icmp sgt i32 %i.hk, 0
  br i1 %.not.i65, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.hl = load ptr, ptr %0, align 8
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hl, i64 8
  %i.hn = load ptr, ptr %i.hm, align 8
  %i.ho = ptrtoint ptr %i.hn to i64
  %i.hp = add i64 %i.ho, 648
  %i.hq = inttoptr i64 %i.hp to ptr
  br label %_ZNK2v820FunctionCallbackInfoINS_5ValueEEixEi.exit66

bb.ar:                                            ; preds = %bb.ap
  %i.hr = load ptr, ptr %i.t, align 8
  br label %_ZNK2v820FunctionCallbackInfoINS_5ValueEEixEi.exit66

_ZNK2v820FunctionCallbackInfoINS_5ValueEEixEi.exit66: ; preds = %bb.aq, %bb.ar
  %.sroa.0133.0.a = phi ptr [ %i.hr, %bb.ar ], [ %i.hq, %bb.aq ]
  %i.hs = call noundef zeroext i1 @_ZNK2v85Value13IsUint32ArrayEv(ptr noundef nonnull align 1 dereferenceable(1) %.sroa.0133.0.a) #31
  br i1 %i.hs, label %bb.at, label %bb.as, !prof !35

bb.as:                                            ; preds = %_ZNK2v820FunctionCallbackInfoINS_5ValueEEixEi.exit66
  call void @_ZN4node6AssertERKNS_13AssertionInfoE(ptr noundef nonnull align 8 dereferenceable(24) @_ZZN4node12_GLOBAL__N_110ZstdStreamINS0_19ZstdCompressContextEE4InitERKN2v820FunctionCallbackInfoINS4_5ValueEEEE20error_and_abort_args_3) #31
  call void @abort() #32
  unreachable

bb.at:                                            ; preds = %_ZNK2v820FunctionCallbackInfoINS_5ValueEEixEi.exit66
  %i.ht = load i64, ptr %i.q, align 8
  %i.hu = trunc i64 %i.ht to i32
  %.not.i63 = icmp sgt i32 %i.hu, 0
  br i1 %.not.i63, label %bb.av, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.hv = load ptr, ptr %0, align 8
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hv, i64 8
  %i.hx = load ptr, ptr %i.hw, align 8
  %i.hy = ptrtoint ptr %i.hx to i64
  %i.hz = add i64 %i.hy, 648
  %i.ia = inttoptr i64 %i.hz to ptr
  br label %_ZNK2v820FunctionCallbackInfoINS_5ValueEEixEi.exit64

bb.av:                                            ; preds = %bb.at
  %i.ib = load ptr, ptr %i.t, align 8
  br label %_ZNK2v820FunctionCallbackInfoINS_5ValueEEixEi.exit64

_ZNK2v820FunctionCallbackInfoINS_5ValueEEixEi.exit64: ; preds = %bb.au, %bb.av
  %.sroa.0132.0 = phi ptr [ %i.ib, %bb.av ], [ %i.ia, %bb.au ]
  %i.ic = call noundef ptr @_ZN4node6Buffer4DataEN2v85LocalINS1_5ValueEEE(ptr %.sroa.0132.0) #31
  %i.id = load i64, ptr %i.q, align 8
  %i.ie = trunc i64 %i.id to i32
  %.not.i = icmp sgt i32 %i.ie, 0
  br i1 %.not.i, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %_ZNK2v820FunctionCallbackInfoINS_5ValueEEixEi.exit64
  %i.if = load ptr, ptr %0, align 8
  %i.ig = getelementptr inbounds nuw i8, ptr %i.if, i64 8
  %i.ih = load ptr, ptr %i.ig, align 8
  %i.ii = ptrtoint ptr %i.ih to i64
  %i.ij = add i64 %i.ii, 648
  %i.ik = inttoptr i64 %i.ij to ptr
  br label %_ZNK2v820FunctionCallbackInfoINS_5ValueEEixEi.exit

bb.ax:                                            ; preds = %_ZNK2v820FunctionCallbackInfoINS_5ValueEEixEi.exit64
  %i.il = load ptr, ptr %i.t, align 8
  br label %_ZNK2v820FunctionCallbackInfoINS_5ValueEEixEi.exit

_ZNK2v820FunctionCallbackInfoINS_5ValueEEixEi.exit: ; preds = %bb.aw, %bb.ax
  %.sroa.0131.0 = phi ptr [ %i.il, %bb.ax ], [ %i.ik, %bb.aw ]
  %i.im = call noundef i64 @_ZN2v810TypedArray6LengthEv(ptr noundef nonnull align 1 dereferenceable(1) %.sroa.0131.0) #31 ; 2 uses
  %.not252 = icmp eq i64 %i.im, 0
  br i1 %.not252, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNK2v820FunctionCallbackInfoINS_5ValueEEixEi.exit
  %5 = getelementptr inbounds nuw i8, ptr %4, i64 8
  %6 = getelementptr inbounds nuw i8, ptr %4, i64 16
  br label %bb.ay

bb.ay:                                            ; preds = %.lr.ph, %bb.bb
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.bb ] ; 3 uses
  %i.in = getelementptr inbounds nuw [4 x i8], ptr %i.ic, i64 %indvars.iv
  %i.io = load i32, ptr %i.in, align 4            ; 2 uses
  %i.ip = icmp eq i32 %i.io, -1
  br i1 %i.ip, label %bb.bb, label %bb.az

bb.az:                                            ; preds = %bb.ay
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #31
  %.val97 = load ptr, ptr %i.gs, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !280)
  %i.iq = trunc nuw nsw i64 %indvars.iv to i32
  %i.ir = call i64 @ZSTD_CCtx_setParameter(ptr noundef %.val97, i32 noundef %i.iq, i32 noundef %i.io) #31, !noalias !280
  %i.is = call i32 @ZSTD_isError(i64 noundef %i.ir) #31, !noalias !280
  %.not.i101 = icmp eq i32 %i.is, 0
  br i1 %.not.i101, label %.critedge62, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  store ptr @.str.397, ptr %4, align 8, !alias.scope !280
  store ptr @.str.446, ptr %5, align 8, !alias.scope !280
  store i32 -1, ptr %6, align 8, !alias.scope !280
  call fastcc void @_ZN4node12_GLOBAL__N_117CompressionStreamINS0_19ZstdCompressContextEE9EmitErrorERKNS0_16CompressionErrorE(ptr noundef nonnull align 8 dereferenceable(416) %.0.i.i98, ptr noundef nonnull align 8 dereferenceable(20) %4)
  %i.it = getelementptr i8, ptr %.0.i.i98, i64 88
  %.val92 = load ptr, ptr %i.it, align 8
  %i.iu = getelementptr inbounds nuw i8, ptr %.val92, i64 200
  %i.iv = load ptr, ptr %i.iu, align 8            ; 2 uses
  %i.iw = call ptr @_ZN4node30ERR_ZLIB_INITIALIZATION_FAILEDIJEEEN2v85LocalINS1_6ObjectEEEPNS1_7IsolateESt17basic_string_viewIcSt11char_traitsIcEEDpOT_(ptr noundef %i.iv, i64 24, ptr nonnull @.str.397)
  %i.ix = call ptr @_ZN2v87Isolate14ThrowExceptionENS_5LocalINS_5ValueEEE(ptr noundef nonnull align 1 dereferenceable(1) %i.iv, ptr %i.iw) #31 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31
  br label %.loopexit

.critedge62:                                      ; preds = %bb.az
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31
  br label %bb.bb

bb.bb:                                            ; preds = %.critedge62, %bb.ay
  %indvars.iv.next = add nuw i64 %indvars.iv, 1   ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.im
  br i1 %exitcond.not, label %.loopexit, label %bb.ay, !llvm.loop !278

.loopexit:                                        ; preds = %bb.bb, %_ZNK2v820FunctionCallbackInfoINS_5ValueEEixEi.exit, %bb.ba, %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31
  br label %bb.bc

bb.bc:                                            ; preds = %.loopexit, %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31
  %i.iy = getelementptr inbounds nuw i8, ptr %.0.i.i98, i64 232
  %i.iz = atomicrmw xchg ptr %i.iy, i64 0 monotonic, align 8 ; 5 uses
  %i.ja = icmp slt i64 %i.iz, 0
  %i.jb = getelementptr inbounds nuw i8, ptr %.0.i.i98, i64 240 ; 2 uses
  %i.jc = load i64, ptr %i.jb, align 8            ; 2 uses
  %i.jd = sub nsw i64 0, %i.iz
  %.not.i.i.i102 = icmp ult i64 %i.jc, %i.jd
  %or.cond.i.i.i = select i1 %i.ja, i1 %.not.i.i.i102, i1 false, !prof !43
  br i1 %or.cond.i.i.i, label %bb.bd, label %_ZN4node12_GLOBAL__N_128CompressionStreamMemoryOwner42ComputeAdjustmentToExternalAllocatedMemoryEv.exit.i.i, !prof !43

bb.bd:                                            ; preds = %bb.bc
  call void @_ZN4node6AssertERKNS_13AssertionInfoE(ptr noundef nonnull align 8 dereferenceable(24) @_ZZN4node12_GLOBAL__N_128CompressionStreamMemoryOwner42ComputeAdjustmentToExternalAllocatedMemoryEvE20error_and_abort_args) #31
  call void @abort() #32
  unreachable

_ZN4node12_GLOBAL__N_128CompressionStreamMemoryOwner42ComputeAdjustmentToExternalAllocatedMemoryEv.exit.i.i: ; preds = %bb.bc
  %i.je = add i64 %i.jc, %i.iz
  store i64 %i.je, ptr %i.jb, align 8
  %i.jf = icmp eq i64 %i.iz, 0
  br i1 %i.jf, label %_ZN4node12_GLOBAL__N_117CompressionStreamINS0_19ZstdCompressContextEE10AllocScopeD2Ev.exit, label %bb.be

bb.be:                                            ; preds = %_ZN4node12_GLOBAL__N_128CompressionStreamMemoryOwner42ComputeAdjustmentToExternalAllocatedMemoryEv.exit.i.i
  %i.jg = load ptr, ptr %i.cr, align 8
  %i.jh = getelementptr inbounds nuw i8, ptr %i.jg, i64 176
  %i.ji = load ptr, ptr %i.jh, align 8            ; 2 uses
  %i.jj = getelementptr inbounds nuw i8, ptr %i.ji, i64 208
  %i.jk = load ptr, ptr %i.jj, align 8
  %i.jl = getelementptr inbounds nuw i8, ptr %i.ji, i64 200
  %i.jm = load ptr, ptr %i.jl, align 8
  call void @_ZN2v823ExternalMemoryAccounter6UpdateEPNS_7IsolateEl(ptr noundef nonnull align 1 dereferenceable(1) %i.jk, ptr noundef %i.jm, i64 noundef %i.iz) #31
  br label %_ZN4node12_GLOBAL__N_117CompressionStreamINS0_19ZstdCompressContextEE10AllocScopeD2Ev.exit

_ZN4node12_GLOBAL__N_117CompressionStreamINS0_19ZstdCompressContextEE10AllocScopeD2Ev.exit: ; preds = %bb.ac, %bb.ae, %bb.be, %_ZN4node12_GLOBAL__N_128CompressionStreamMemoryOwner42ComputeAdjustmentToExternalAllocatedMemoryEv.exit.i.i, %_ZN4node10BaseObject12FromJSObjectEN2v85LocalINS1_5ValueEEE.exit
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal void @_ZN4node12_GLOBAL__N_110ZstdStreamINS0_19ZstdCompressContextEE6ParamsERKN2v820FunctionCallbackInfoINS4_5ValueEEE(ptr nofree nonnull readnone align 8 captures(none) %0) #22 align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN4node12_GLOBAL__N_117CompressionStreamINS0_19ZstdCompressContextEE5ResetERKN2v820FunctionCallbackInfoINS4_5ValueEEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) #0 align 2 {
bb.a:
  %1 = alloca %struct.ZSTD_customMem, align 8     ; 7 uses
  %2 = alloca %"struct.node::(anonymous namespace)::CompressionError", align 8 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds i8, ptr %i.b, i64 -8 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8              ; 2 uses
  %i.e = add i64 %i.d, -1
  %i.f = inttoptr i64 %i.e to ptr
  %i.g = load i64, ptr %i.f, align 8
  %i.h = add i64 %i.g, 11
  %i.i = inttoptr i64 %i.h to ptr
  %i.j = load i16, ptr %i.i, align 2              ; 2 uses
  %i.k = icmp eq i16 %i.j, 1040
  %i.l = add i16 %i.j, -1057
  %i.m = icmp ult i16 %i.l, 1002
  %i.n = or i1 %i.k, %i.m
  br i1 %i.n, label %bb.b, label %bb.c, !prof !35

bb.b:                                             ; preds = %bb.a
  %i.o = add i64 %i.d, 39
  %i.p = inttoptr i64 %i.o to ptr
  %i.q = load i64, ptr %i.p, align 8
  %i.r = inttoptr i64 %i.q to ptr
  br label %_ZN4node10BaseObject12FromJSObjectEN2v85LocalINS1_5ValueEEE.exit

bb.c:                                             ; preds = %bb.a
  %i.s = tail call noundef ptr @_ZN2v86Object38SlowGetAlignedPointerFromInternalFieldEi(ptr noundef nonnull align 1 dereferenceable(1) %i.c, i32 noundef 1) #31
  br label %_ZN4node10BaseObject12FromJSObjectEN2v85LocalINS1_5ValueEEE.exit

_ZN4node10BaseObject12FromJSObjectEN2v85LocalINS1_5ValueEEE.exit: ; preds = %bb.b, %bb.c
  %.0.i.i = phi ptr [ %i.r, %bb.b ], [ %i.s, %bb.c ] ; 8 uses
  %i.t = icmp eq ptr %.0.i.i, null
  br i1 %i.t, label %_ZN4node12_GLOBAL__N_117CompressionStreamINS0_19ZstdCompressContextEE10AllocScopeD2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZN4node10BaseObject12FromJSObjectEN2v85LocalINS1_5ValueEEE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #31
  %i.u = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 264
  tail call void @llvm.experimental.noalias.scope.decl(metadata !285)
  %i.v = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 408
  %i.w = load i64, ptr %i.v, align 8, !noalias !285
  tail call void @llvm.experimental.noalias.scope.decl(metadata !286)
  call void @llvm.lifetime.start.p0(ptr nonnull %1), !noalias !285
  %i.x = ptrtoint ptr %i.u to i64
  %i.y = add i64 %i.x, -264
  %i.z = inttoptr i64 %i.y to ptr
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 232
  %i.ab = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 400 ; 3 uses
  store ptr @_ZN4node12_GLOBAL__N_128CompressionStreamMemoryOwner14AllocForBrotliEPvm, ptr %1, align 8, !noalias !287
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr @_ZN4node12_GLOBAL__N_128CompressionStreamMemoryOwner11FreeForZlibEPvS2_, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !287
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  store ptr %i.aa, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !287
  %i.ac = tail call ptr @ZSTD_createCCtx_advanced(ptr noundef nonnull byval(%struct.ZSTD_customMem) align 8 %1) #31, !noalias !287 ; 2 uses
  %i.ad = load ptr, ptr %i.ab, align 8, !noalias !287 ; 2 uses
  store ptr %i.ac, ptr %i.ab, align 8, !noalias !287
  %.not.i.i.i.i = icmp eq ptr %i.ad, null
  br i1 %.not.i.i.i.i, label %_ZNSt10unique_ptrI11ZSTD_CCtx_sN4node15FunctionDeleterIS0_XadL_ZNS1_12_GLOBAL__N_119ZstdCompressContext8FreeZstdEPS0_EEEEE5resetES5_.exit.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ae = tail call i64 @ZSTD_freeCCtx(ptr noundef nonnull %i.ad) #31, !noalias !287 ; 0 uses
  %.val7.pr.i.i = load ptr, ptr %i.ab, align 8, !noalias !287
  br label %_ZNSt10unique_ptrI11ZSTD_CCtx_sN4node15FunctionDeleterIS0_XadL_ZNS1_12_GLOBAL__N_119ZstdCompressContext8FreeZstdEPS0_EEEEE5resetES5_.exit.i.i

_ZNSt10unique_ptrI11ZSTD_CCtx_sN4node15FunctionDeleterIS0_XadL_ZNS1_12_GLOBAL__N_119ZstdCompressContext8FreeZstdEPS0_EEEEE5resetES5_.exit.i.i: ; preds = %bb.e, %bb.d
  %.val7.i.i = phi ptr [ %i.ac, %bb.d ], [ %.val7.pr.i.i, %bb.e ] ; 2 uses
  %.not9.i.i = icmp eq ptr %.val7.i.i, null
  br i1 %.not9.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZNSt10unique_ptrI11ZSTD_CCtx_sN4node15FunctionDeleterIS0_XadL_ZNS1_12_GLOBAL__N_119ZstdCompressContext8FreeZstdEPS0_EEEEE5resetES5_.exit.i.i
  %i.af = tail call i64 @ZSTD_CCtx_setPledgedSrcSize(ptr noundef nonnull %.val7.i.i, i64 noundef %i.w) #31, !noalias !287
  %i.ag = tail call i32 @ZSTD_isError(i64 noundef %i.af) #31, !noalias !287
  %.not5.i.i = icmp eq i32 %i.ag, 0
  br i1 %.not5.i.i, label %_ZN4node12_GLOBAL__N_119ZstdCompressContext11ResetStreamEv.exit, label %bb.g

_ZN4node12_GLOBAL__N_119ZstdCompressContext11ResetStreamEv.exit: ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %1), !noalias !285
  br label %bb.h

bb.g:                                             ; preds = %bb.f, %_ZNSt10unique_ptrI11ZSTD_CCtx_sN4node15FunctionDeleterIS0_XadL_ZNS1_12_GLOBAL__N_119ZstdCompressContext8FreeZstdEPS0_EEEEE5resetES5_.exit.i.i
  %.str.443.sink = phi ptr [ @.str.443, %_ZNSt10unique_ptrI11ZSTD_CCtx_sN4node15FunctionDeleterIS0_XadL_ZNS1_12_GLOBAL__N_119ZstdCompressContext8FreeZstdEPS0_EEEEE5resetES5_.exit.i.i ], [ @.str.445, %bb.f ]
  store ptr %.str.443.sink, ptr %2, align 8, !alias.scope !287
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr @.str.392, ptr %i.ah, align 8, !alias.scope !287
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i32 -1, ptr %i.ai, align 8, !alias.scope !287
  call void @llvm.lifetime.end.p0(ptr nonnull %1), !noalias !285
  call fastcc void @_ZN4node12_GLOBAL__N_117CompressionStreamINS0_19ZstdCompressContextEE9EmitErrorERKNS0_16CompressionErrorE(ptr noundef nonnull align 8 dereferenceable(416) %.0.i.i, ptr noundef nonnull align 8 dereferenceable(20) %2)
  br label %bb.h

bb.h:                                             ; preds = %_ZN4node12_GLOBAL__N_119ZstdCompressContext11ResetStreamEv.exit, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31
  %i.aj = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 232
  %i.ak = atomicrmw xchg ptr %i.aj, i64 0 monotonic, align 8 ; 5 uses
  %i.al = icmp slt i64 %i.ak, 0
  %i.am = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 240 ; 2 uses
  %i.an = load i64, ptr %i.am, align 8            ; 2 uses
  %i.ao = sub nsw i64 0, %i.ak
  %.not.i.i.i = icmp ult i64 %i.an, %i.ao
  %or.cond.i.i.i = select i1 %i.al, i1 %.not.i.i.i, i1 false, !prof !43
  br i1 %or.cond.i.i.i, label %bb.i, label %_ZN4node12_GLOBAL__N_128CompressionStreamMemoryOwner42ComputeAdjustmentToExternalAllocatedMemoryEv.exit.i.i, !prof !43

bb.i:                                             ; preds = %bb.h
  tail call void @_ZN4node6AssertERKNS_13AssertionInfoE(ptr noundef nonnull align 8 dereferenceable(24) @_ZZN4node12_GLOBAL__N_128CompressionStreamMemoryOwner42ComputeAdjustmentToExternalAllocatedMemoryEvE20error_and_abort_args) #31
  tail call void @abort() #32
  unreachable

_ZN4node12_GLOBAL__N_128CompressionStreamMemoryOwner42ComputeAdjustmentToExternalAllocatedMemoryEv.exit.i.i: ; preds = %bb.h
  %i.ap = add i64 %i.an, %i.ak
  store i64 %i.ap, ptr %i.am, align 8
  %i.aq = icmp eq i64 %i.ak, 0
  br i1 %i.aq, label %_ZN4node12_GLOBAL__N_117CompressionStreamINS0_19ZstdCompressContextEE10AllocScopeD2Ev.exit, label %bb.j

bb.j:                                             ; preds = %_ZN4node12_GLOBAL__N_128CompressionStreamMemoryOwner42ComputeAdjustmentToExternalAllocatedMemoryEv.exit.i.i
  %i.ar = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 16
  %i.as = load ptr, ptr %i.ar, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 176
  %i.au = load ptr, ptr %i.at, align 8            ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 208
  %i.aw = load ptr, ptr %i.av, align 8
  %i.ax = getelementptr inbounds nuw i8, ptr %i.au, i64 200
  %i.ay = load ptr, ptr %i.ax, align 8
  tail call void @_ZN2v823ExternalMemoryAccounter6UpdateEPNS_7IsolateEl(ptr noundef nonnull align 1 dereferenceable(1) %i.aw, ptr noundef %i.ay, i64 noundef %i.ak) #31
  br label %_ZN4node12_GLOBAL__N_117CompressionStreamINS0_19ZstdCompressContextEE10AllocScopeD2Ev.exit

_ZN4node12_GLOBAL__N_117CompressionStreamINS0_19ZstdCompressContextEE10AllocScopeD2Ev.exit: ; preds = %bb.j, %_ZN4node12_GLOBAL__N_128CompressionStreamMemoryOwner42ComputeAdjustmentToExternalAllocatedMemoryEv.exit.i.i, %_ZN4node10BaseObject12FromJSObjectEN2v85LocalINS1_5ValueEEE.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
end_hunk_0
begin_hunk_1_@_ZN4node12_GLOBAL__N_110ZstdStreamINS0_21ZstdDecompressContextEE4InitERKN2v820FunctionCallbackInfoINS4_5ValueEEE:_ZN4node18ContextEmbedderTag13IsNodeContextEN2v85LocalINS1_7ContextEEE.exit.i.i
  %i.fg = load i64, ptr %i.ff, align 8            ; 3 uses
  %i.fh = and i64 %i.fg, 3
  %i.fi = icmp eq i64 %i.fh, 1
  br i1 %i.fi, label %bb.ag, label %_ZNK2v820FunctionCallbackInfoINS_5ValueEEixEi.exit70

bb.ag:                                            ; preds = %_ZNK2v820FunctionCallbackInfoINS_5ValueEEixEi.exit72
  %i.fj = add nsw i64 %i.fg, -1
  %i.fk = inttoptr i64 %i.fj to ptr
  %i.fl = load i64, ptr %i.fk, align 8
  %i.fm = add i64 %i.fl, 11
  %i.fn = inttoptr i64 %i.fm to ptr
  %i.fo = load i16, ptr %i.fn, align 2
  %.not.i87 = icmp eq i16 %i.fo, 131
  br i1 %.not.i87, label %_ZNK2v85Value16QuickIsUndefinedEv.exit, label %_ZNK2v820FunctionCallbackInfoINS_5ValueEEixEi.exit70

_ZNK2v85Value16QuickIsUndefinedEv.exit:           ; preds = %bb.ag
  %i.fp = add i64 %i.fg, 39
  %i.fq = inttoptr i64 %i.fp to ptr
  %i.fr = load i64, ptr %i.fq, align 8
  %.mask = and i64 %i.fr, -4294967296
  %i.fs = icmp eq i64 %.mask, 17179869184
  br i1 %i.fs, label %.critedge, label %_ZNK2v820FunctionCallbackInfoINS_5ValueEEixEi.exit70

_ZNK2v820FunctionCallbackInfoINS_5ValueEEixEi.exit70: ; preds = %bb.ag, %_ZNK2v820FunctionCallbackInfoINS_5ValueEEixEi.exit72, %_ZNK2v85Value16QuickIsUndefinedEv.exit
  %i.ft = tail call noundef zeroext i1 @_ZNK2v85Value17IsArrayBufferViewEv(ptr noundef nonnull align 1 dereferenceable(1) %i.ff) #31
  br i1 %i.ft, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %_ZNK2v820FunctionCallbackInfoINS_5ValueEEixEi.exit70
  %i.fu = getelementptr i8, ptr %.0.i.i98, i64 88
  %.val94 = load ptr, ptr %i.fu, align 8
  %i.fv = getelementptr inbounds nuw i8, ptr %.val94, i64 200
  %i.fw = load ptr, ptr %i.fv, align 8            ; 2 uses
  %i.fx = tail call ptr @_ZN4node20ERR_INVALID_ARG_TYPEIJEEEN2v85LocalINS1_6ObjectEEEPNS1_7IsolateESt17basic_string_viewIcSt11char_traitsIcEEDpOT_(ptr noundef %i.fw, i64 49, ptr nonnull @.str.379)
  %i.fy = tail call ptr @_ZN2v87Isolate14ThrowExceptionENS_5LocalINS_5ValueEEE(ptr noundef nonnull align 1 dereferenceable(1) %i.fw, ptr %i.fx) #31 ; 0 uses
  br label %bb.bc

bb.ai:                                            ; preds = %_ZNK2v820FunctionCallbackInfoINS_5ValueEEixEi.exit70
  %i.fz = load i64, ptr %i.q, align 8
  %i.ga = trunc i64 %i.fz to i32
  %.not.i67 = icmp sgt i32 %i.ga, 4
  br i1 %.not.i67, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.gb = load ptr, ptr %0, align 8
  %i.gc = getelementptr inbounds nuw i8, ptr %i.gb, i64 8
  %i.gd = load ptr, ptr %i.gc, align 8
  %i.ge = ptrtoint ptr %i.gd to i64
  %i.gf = add i64 %i.ge, 648
  %i.gg = inttoptr i64 %i.gf to ptr
  br label %_ZNK2v820FunctionCallbackInfoINS_5ValueEEixEi.exit68

bb.ak:                                            ; preds = %bb.ai
  %i.gh = load ptr, ptr %i.t, align 8
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gh, i64 32
  br label %_ZNK2v820FunctionCallbackInfoINS_5ValueEEixEi.exit68

_ZNK2v820FunctionCallbackInfoINS_5ValueEEixEi.exit68: ; preds = %bb.aj, %bb.ak
  %.sroa.0134.0.a = phi ptr [ %i.gi, %bb.ak ], [ %i.gg, %bb.aj ]
  call void @_ZN4node23ArrayBufferViewContentsIcLm64EE9ReadValueEN2v85LocalINS2_5ValueEEE(ptr noundef nonnull align 8 dereferenceable(81) %2, ptr %.sroa.0134.0.a)
  %i.gj = load ptr, ptr %i.fa, align 8
  %i.gk = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.gl = load i64, ptr %i.gk, align 8
  br label %.critedge

.critedge:                                        ; preds = %bb.af, %_ZNK2v820FunctionCallbackInfoINS_5ValueEEixEi.exit68, %_ZNK2v85Value16QuickIsUndefinedEv.exit
  %.sroa.0113.0 = phi i64 [ 0, %_ZNK2v85Value16QuickIsUndefinedEv.exit ], [ %i.gl, %_ZNK2v820FunctionCallbackInfoINS_5ValueEEixEi.exit68 ], [ 0, %bb.af ] ; 2 uses
  %.sroa.5.0 = phi ptr [ null, %_ZNK2v85Value16QuickIsUndefinedEv.exit ], [ %i.gj, %_ZNK2v820FunctionCallbackInfoINS_5ValueEEixEi.exit68 ], [ null, %bb.af ]
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #31
  %i.gm = getelementptr inbounds nuw i8, ptr %.0.i.i98, i64 264
  call void @llvm.experimental.noalias.scope.decl(metadata !303)
  call void @llvm.lifetime.start.p0(ptr nonnull %1)
  %i.gn = ptrtoint ptr %i.gm to i64
  %i.go = add i64 %i.gn, -264
  %i.gp = inttoptr i64 %i.go to ptr
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gp, i64 232
  %i.gr = getelementptr i8, ptr %.0.i.i98, i64 400 ; 4 uses
  store ptr @_ZN4node12_GLOBAL__N_128CompressionStreamMemoryOwner14AllocForBrotliEPvm, ptr %1, align 8, !noalias !303
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr @_ZN4node12_GLOBAL__N_128CompressionStreamMemoryOwner11FreeForZlibEPvS2_, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !303
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  store ptr %i.gq, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !303
  %i.gs = call ptr @ZSTD_createDCtx_advanced(ptr noundef nonnull byval(%struct.ZSTD_customMem) align 8 %1) #31, !noalias !303 ; 2 uses
  %i.gt = load ptr, ptr %i.gr, align 8, !noalias !303 ; 2 uses
  store ptr %i.gs, ptr %i.gr, align 8, !noalias !303
  %.not.i.i.i99 = icmp eq ptr %i.gt, null
  br i1 %.not.i.i.i99, label %_ZNSt10unique_ptrI11ZSTD_DCtx_sN4node15FunctionDeleterIS0_XadL_ZNS1_12_GLOBAL__N_121ZstdDecompressContext8FreeZstdEPS0_EEEEE5resetES5_.exit.i, label %bb.al

bb.al:                                            ; preds = %.critedge
  %i.gu = call i64 @ZSTD_freeDCtx(ptr noundef nonnull %i.gt) #31, !noalias !303 ; 0 uses
  %.val2.pr.i = load ptr, ptr %i.gr, align 8, !noalias !303
  br label %_ZNSt10unique_ptrI11ZSTD_DCtx_sN4node15FunctionDeleterIS0_XadL_ZNS1_12_GLOBAL__N_121ZstdDecompressContext8FreeZstdEPS0_EEEEE5resetES5_.exit.i

_ZNSt10unique_ptrI11ZSTD_DCtx_sN4node15FunctionDeleterIS0_XadL_ZNS1_12_GLOBAL__N_121ZstdDecompressContext8FreeZstdEPS0_EEEEE5resetES5_.exit.i: ; preds = %bb.al, %.critedge
  %.val2.i = phi ptr [ %i.gs, %.critedge ], [ %.val2.pr.i, %bb.al ] ; 2 uses
  %.not4.i = icmp eq ptr %.val2.i, null
  br i1 %.not4.i, label %bb.ao, label %bb.am

bb.am:                                            ; preds = %_ZNSt10unique_ptrI11ZSTD_DCtx_sN4node15FunctionDeleterIS0_XadL_ZNS1_12_GLOBAL__N_121ZstdDecompressContext8FreeZstdEPS0_EEEEE5resetES5_.exit.i
  %i.gv = icmp eq i64 %.sroa.0113.0, 0
  br i1 %i.gv, label %bb.ap, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.gw = call i64 @ZSTD_DCtx_loadDictionary(ptr noundef nonnull %.val2.i, ptr noundef %.sroa.5.0, i64 noundef %.sroa.0113.0) #31, !noalias !303
  %i.gx = call i32 @ZSTD_isError(i64 noundef %i.gw) #31, !noalias !303
  %.not.i100 = icmp eq i32 %i.gx, 0
  br i1 %.not.i100, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an, %_ZNSt10unique_ptrI11ZSTD_DCtx_sN4node15FunctionDeleterIS0_XadL_ZNS1_12_GLOBAL__N_121ZstdDecompressContext8FreeZstdEPS0_EEEEE5resetES5_.exit.i
  %.str.443.sink = phi ptr [ @.str.443, %_ZNSt10unique_ptrI11ZSTD_DCtx_sN4node15FunctionDeleterIS0_XadL_ZNS1_12_GLOBAL__N_121ZstdDecompressContext8FreeZstdEPS0_EEEEE5resetES5_.exit.i ], [ @.str.444, %bb.an ] ; 3 uses
  %.str.392.sink = phi ptr [ @.str.392, %_ZNSt10unique_ptrI11ZSTD_DCtx_sN4node15FunctionDeleterIS0_XadL_ZNS1_12_GLOBAL__N_121ZstdDecompressContext8FreeZstdEPS0_EEEEE5resetES5_.exit.i ], [ @.str.394, %bb.an ]
  store ptr %.str.443.sink, ptr %3, align 8, !alias.scope !303
  %i.gy = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %.str.392.sink, ptr %i.gy, align 8, !alias.scope !303
  %i.gz = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i32 -1, ptr %i.gz, align 8, !alias.scope !303
  call void @llvm.lifetime.end.p0(ptr nonnull %1)
  call fastcc void @_ZN4node12_GLOBAL__N_117CompressionStreamINS0_21ZstdDecompressContextEE9EmitErrorERKNS0_16CompressionErrorE(ptr noundef nonnull align 8 dereferenceable(408) %.0.i.i98, ptr noundef nonnull align 8 dereferenceable(20) %3)
  %i.ha = getelementptr i8, ptr %.0.i.i98, i64 88
  %.val93 = load ptr, ptr %i.ha, align 8
  %i.hb = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %.str.443.sink) #31
  %i.hc = getelementptr inbounds nuw i8, ptr %.val93, i64 200
  %i.hd = load ptr, ptr %i.hc, align 8            ; 2 uses
  %i.he = call ptr @_ZN4node30ERR_ZLIB_INITIALIZATION_FAILEDIJEEEN2v85LocalINS1_6ObjectEEEPNS1_7IsolateESt17basic_string_viewIcSt11char_traitsIcEEDpOT_(ptr noundef %i.hd, i64 %i.hb, ptr nonnull %.str.443.sink)
  %i.hf = call ptr @_ZN2v87Isolate14ThrowExceptionENS_5LocalINS_5ValueEEE(ptr noundef nonnull align 1 dereferenceable(1) %i.hd, ptr %i.he) #31 ; 0 uses
  br label %.loopexit

bb.ap:                                            ; preds = %bb.an, %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %1)
  %i.hg = load i64, ptr %i.q, align 8
  %i.hh = trunc i64 %i.hg to i32
  %.not.i65 = icmp sgt i32 %i.hh, 0
  br i1 %.not.i65, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.hi = load ptr, ptr %0, align 8
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hi, i64 8
  %i.hk = load ptr, ptr %i.hj, align 8
  %i.hl = ptrtoint ptr %i.hk to i64
  %i.hm = add i64 %i.hl, 648
  %i.hn = inttoptr i64 %i.hm to ptr
  br label %_ZNK2v820FunctionCallbackInfoINS_5ValueEEixEi.exit66

bb.ar:                                            ; preds = %bb.ap
  %i.ho = load ptr, ptr %i.t, align 8
  br label %_ZNK2v820FunctionCallbackInfoINS_5ValueEEixEi.exit66

_ZNK2v820FunctionCallbackInfoINS_5ValueEEixEi.exit66: ; preds = %bb.aq, %bb.ar
  %.sroa.0133.0.a = phi ptr [ %i.ho, %bb.ar ], [ %i.hn, %bb.aq ]
  %i.hp = call noundef zeroext i1 @_ZNK2v85Value13IsUint32ArrayEv(ptr noundef nonnull align 1 dereferenceable(1) %.sroa.0133.0.a) #31
  br i1 %i.hp, label %bb.at, label %bb.as, !prof !35

bb.as:                                            ; preds = %_ZNK2v820FunctionCallbackInfoINS_5ValueEEixEi.exit66
  call void @_ZN4node6AssertERKNS_13AssertionInfoE(ptr noundef nonnull align 8 dereferenceable(24) @_ZZN4node12_GLOBAL__N_110ZstdStreamINS0_21ZstdDecompressContextEE4InitERKN2v820FunctionCallbackInfoINS4_5ValueEEEE20error_and_abort_args_3) #31
  call void @abort() #32
  unreachable

bb.at:                                            ; preds = %_ZNK2v820FunctionCallbackInfoINS_5ValueEEixEi.exit66
  %i.hq = load i64, ptr %i.q, align 8
  %i.hr = trunc i64 %i.hq to i32
  %.not.i63 = icmp sgt i32 %i.hr, 0
  br i1 %.not.i63, label %bb.av, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.hs = load ptr, ptr %0, align 8
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hs, i64 8
  %i.hu = load ptr, ptr %i.ht, align 8
  %i.hv = ptrtoint ptr %i.hu to i64
  %i.hw = add i64 %i.hv, 648
  %i.hx = inttoptr i64 %i.hw to ptr
  br label %_ZNK2v820FunctionCallbackInfoINS_5ValueEEixEi.exit64

bb.av:                                            ; preds = %bb.at
  %i.hy = load ptr, ptr %i.t, align 8
  br label %_ZNK2v820FunctionCallbackInfoINS_5ValueEEixEi.exit64

_ZNK2v820FunctionCallbackInfoINS_5ValueEEixEi.exit64: ; preds = %bb.au, %bb.av
  %.sroa.0132.0 = phi ptr [ %i.hy, %bb.av ], [ %i.hx, %bb.au ]
  %i.hz = call noundef ptr @_ZN4node6Buffer4DataEN2v85LocalINS1_5ValueEEE(ptr %.sroa.0132.0) #31
  %i.ia = load i64, ptr %i.q, align 8
  %i.ib = trunc i64 %i.ia to i32
  %.not.i = icmp sgt i32 %i.ib, 0
  br i1 %.not.i, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %_ZNK2v820FunctionCallbackInfoINS_5ValueEEixEi.exit64
  %i.ic = load ptr, ptr %0, align 8
  %i.id = getelementptr inbounds nuw i8, ptr %i.ic, i64 8
  %i.ie = load ptr, ptr %i.id, align 8
  %i.if = ptrtoint ptr %i.ie to i64
  %i.ig = add i64 %i.if, 648
  %i.ih = inttoptr i64 %i.ig to ptr
  br label %_ZNK2v820FunctionCallbackInfoINS_5ValueEEixEi.exit

bb.ax:                                            ; preds = %_ZNK2v820FunctionCallbackInfoINS_5ValueEEixEi.exit64
  %i.ii = load ptr, ptr %i.t, align 8
  br label %_ZNK2v820FunctionCallbackInfoINS_5ValueEEixEi.exit

_ZNK2v820FunctionCallbackInfoINS_5ValueEEixEi.exit: ; preds = %bb.aw, %bb.ax
  %.sroa.0131.0 = phi ptr [ %i.ii, %bb.ax ], [ %i.ih, %bb.aw ]
  %i.ij = call noundef i64 @_ZN2v810TypedArray6LengthEv(ptr noundef nonnull align 1 dereferenceable(1) %.sroa.0131.0) #31 ; 2 uses
  %.not252 = icmp eq i64 %i.ij, 0
  br i1 %.not252, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNK2v820FunctionCallbackInfoINS_5ValueEEixEi.exit
  %5 = getelementptr inbounds nuw i8, ptr %4, i64 8
  %6 = getelementptr inbounds nuw i8, ptr %4, i64 16
  br label %bb.ay

bb.ay:                                            ; preds = %.lr.ph, %bb.bb
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.bb ] ; 3 uses
  %i.ik = getelementptr inbounds nuw [4 x i8], ptr %i.hz, i64 %indvars.iv
  %i.il = load i32, ptr %i.ik, align 4            ; 2 uses
  %i.im = icmp eq i32 %i.il, -1
  br i1 %i.im, label %bb.bb, label %bb.az

bb.az:                                            ; preds = %bb.ay
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #31
  %.val97 = load ptr, ptr %i.gr, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !304)
  %i.in = trunc nuw nsw i64 %indvars.iv to i32
  %i.io = call i64 @ZSTD_DCtx_setParameter(ptr noundef %.val97, i32 noundef %i.in, i32 noundef %i.il) #31, !noalias !304
  %i.ip = call i32 @ZSTD_isError(i64 noundef %i.io) #31, !noalias !304
  %.not.i101 = icmp eq i32 %i.ip, 0
  br i1 %.not.i101, label %.critedge62, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  store ptr @.str.397, ptr %4, align 8, !alias.scope !304
  store ptr @.str.446, ptr %5, align 8, !alias.scope !304
  store i32 -1, ptr %6, align 8, !alias.scope !304
  call fastcc void @_ZN4node12_GLOBAL__N_117CompressionStreamINS0_21ZstdDecompressContextEE9EmitErrorERKNS0_16CompressionErrorE(ptr noundef nonnull align 8 dereferenceable(408) %.0.i.i98, ptr noundef nonnull align 8 dereferenceable(20) %4)
  %i.iq = getelementptr i8, ptr %.0.i.i98, i64 88
  %.val92 = load ptr, ptr %i.iq, align 8
  %i.ir = getelementptr inbounds nuw i8, ptr %.val92, i64 200
  %i.is = load ptr, ptr %i.ir, align 8            ; 2 uses
  %i.it = call ptr @_ZN4node30ERR_ZLIB_INITIALIZATION_FAILEDIJEEEN2v85LocalINS1_6ObjectEEEPNS1_7IsolateESt17basic_string_viewIcSt11char_traitsIcEEDpOT_(ptr noundef %i.is, i64 24, ptr nonnull @.str.397)
  %i.iu = call ptr @_ZN2v87Isolate14ThrowExceptionENS_5LocalINS_5ValueEEE(ptr noundef nonnull align 1 dereferenceable(1) %i.is, ptr %i.it) #31 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31
  br label %.loopexit

.critedge62:                                      ; preds = %bb.az
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31
  br label %bb.bb

bb.bb:                                            ; preds = %.critedge62, %bb.ay
  %indvars.iv.next = add nuw i64 %indvars.iv, 1   ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.ij
  br i1 %exitcond.not, label %.loopexit, label %bb.ay, !llvm.loop !302

.loopexit:                                        ; preds = %bb.bb, %_ZNK2v820FunctionCallbackInfoINS_5ValueEEixEi.exit, %bb.ba, %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31
  br label %bb.bc

bb.bc:                                            ; preds = %.loopexit, %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31
  %i.iv = getelementptr inbounds nuw i8, ptr %.0.i.i98, i64 232
  %i.iw = atomicrmw xchg ptr %i.iv, i64 0 monotonic, align 8 ; 5 uses
  %i.ix = icmp slt i64 %i.iw, 0
  %i.iy = getelementptr inbounds nuw i8, ptr %.0.i.i98, i64 240 ; 2 uses
  %i.iz = load i64, ptr %i.iy, align 8            ; 2 uses
  %i.ja = sub nsw i64 0, %i.iw
  %.not.i.i.i102 = icmp ult i64 %i.iz, %i.ja
  %or.cond.i.i.i = select i1 %i.ix, i1 %.not.i.i.i102, i1 false, !prof !43
  br i1 %or.cond.i.i.i, label %bb.bd, label %_ZN4node12_GLOBAL__N_128CompressionStreamMemoryOwner42ComputeAdjustmentToExternalAllocatedMemoryEv.exit.i.i, !prof !43

bb.bd:                                            ; preds = %bb.bc
  call void @_ZN4node6AssertERKNS_13AssertionInfoE(ptr noundef nonnull align 8 dereferenceable(24) @_ZZN4node12_GLOBAL__N_128CompressionStreamMemoryOwner42ComputeAdjustmentToExternalAllocatedMemoryEvE20error_and_abort_args) #31
  call void @abort() #32
  unreachable

_ZN4node12_GLOBAL__N_128CompressionStreamMemoryOwner42ComputeAdjustmentToExternalAllocatedMemoryEv.exit.i.i: ; preds = %bb.bc
  %i.jb = add i64 %i.iz, %i.iw
  store i64 %i.jb, ptr %i.iy, align 8
  %i.jc = icmp eq i64 %i.iw, 0
  br i1 %i.jc, label %_ZN4node12_GLOBAL__N_117CompressionStreamINS0_21ZstdDecompressContextEE10AllocScopeD2Ev.exit, label %bb.be

bb.be:                                            ; preds = %_ZN4node12_GLOBAL__N_128CompressionStreamMemoryOwner42ComputeAdjustmentToExternalAllocatedMemoryEv.exit.i.i
  %i.jd = load ptr, ptr %i.cr, align 8
  %i.je = getelementptr inbounds nuw i8, ptr %i.jd, i64 176
  %i.jf = load ptr, ptr %i.je, align 8            ; 2 uses
  %i.jg = getelementptr inbounds nuw i8, ptr %i.jf, i64 208
  %i.jh = load ptr, ptr %i.jg, align 8
  %i.ji = getelementptr inbounds nuw i8, ptr %i.jf, i64 200
  %i.jj = load ptr, ptr %i.ji, align 8
  call void @_ZN2v823ExternalMemoryAccounter6UpdateEPNS_7IsolateEl(ptr noundef nonnull align 1 dereferenceable(1) %i.jh, ptr noundef %i.jj, i64 noundef %i.iw) #31
  br label %_ZN4node12_GLOBAL__N_117CompressionStreamINS0_21ZstdDecompressContextEE10AllocScopeD2Ev.exit

_ZN4node12_GLOBAL__N_117CompressionStreamINS0_21ZstdDecompressContextEE10AllocScopeD2Ev.exit: ; preds = %bb.ac, %bb.ae, %bb.be, %_ZN4node12_GLOBAL__N_128CompressionStreamMemoryOwner42ComputeAdjustmentToExternalAllocatedMemoryEv.exit.i.i, %_ZN4node10BaseObject12FromJSObjectEN2v85LocalINS1_5ValueEEE.exit
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal void @_ZN4node12_GLOBAL__N_110ZstdStreamINS0_21ZstdDecompressContextEE6ParamsERKN2v820FunctionCallbackInfoINS4_5ValueEEE(ptr nofree nonnull readnone align 8 captures(none) %0) #22 align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN4node12_GLOBAL__N_117CompressionStreamINS0_21ZstdDecompressContextEE5ResetERKN2v820FunctionCallbackInfoINS4_5ValueEEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) #0 align 2 {
bb.a:
  %1 = alloca %struct.ZSTD_customMem, align 8     ; 7 uses
  %2 = alloca %"struct.node::(anonymous namespace)::CompressionError", align 8 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds i8, ptr %i.b, i64 -8 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8              ; 2 uses
  %i.e = add i64 %i.d, -1
  %i.f = inttoptr i64 %i.e to ptr
  %i.g = load i64, ptr %i.f, align 8
  %i.h = add i64 %i.g, 11
  %i.i = inttoptr i64 %i.h to ptr
  %i.j = load i16, ptr %i.i, align 2              ; 2 uses
  %i.k = icmp eq i16 %i.j, 1040
  %i.l = add i16 %i.j, -1057
  %i.m = icmp ult i16 %i.l, 1002
  %i.n = or i1 %i.k, %i.m
  br i1 %i.n, label %bb.b, label %bb.c, !prof !35

bb.b:                                             ; preds = %bb.a
  %i.o = add i64 %i.d, 39
  %i.p = inttoptr i64 %i.o to ptr
  %i.q = load i64, ptr %i.p, align 8
  %i.r = inttoptr i64 %i.q to ptr
  br label %_ZN4node10BaseObject12FromJSObjectEN2v85LocalINS1_5ValueEEE.exit

bb.c:                                             ; preds = %bb.a
  %i.s = tail call noundef ptr @_ZN2v86Object38SlowGetAlignedPointerFromInternalFieldEi(ptr noundef nonnull align 1 dereferenceable(1) %i.c, i32 noundef 1) #31
  br label %_ZN4node10BaseObject12FromJSObjectEN2v85LocalINS1_5ValueEEE.exit

_ZN4node10BaseObject12FromJSObjectEN2v85LocalINS1_5ValueEEE.exit: ; preds = %bb.b, %bb.c
  %.0.i.i = phi ptr [ %i.r, %bb.b ], [ %i.s, %bb.c ] ; 7 uses
  %i.t = icmp eq ptr %.0.i.i, null
  br i1 %i.t, label %_ZN4node12_GLOBAL__N_117CompressionStreamINS0_21ZstdDecompressContextEE10AllocScopeD2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZN4node10BaseObject12FromJSObjectEN2v85LocalINS1_5ValueEEE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #31
  %i.u = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 264
  tail call void @llvm.experimental.noalias.scope.decl(metadata !309)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !310)
  call void @llvm.lifetime.start.p0(ptr nonnull %1), !noalias !309
  %i.v = ptrtoint ptr %i.u to i64
  %i.w = add i64 %i.v, -264
  %i.x = inttoptr i64 %i.w to ptr
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 232
  %i.z = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 400 ; 3 uses
  store ptr @_ZN4node12_GLOBAL__N_128CompressionStreamMemoryOwner14AllocForBrotliEPvm, ptr %1, align 8, !noalias !311
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr @_ZN4node12_GLOBAL__N_128CompressionStreamMemoryOwner11FreeForZlibEPvS2_, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !311
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  store ptr %i.y, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !311
  %i.aa = tail call ptr @ZSTD_createDCtx_advanced(ptr noundef nonnull byval(%struct.ZSTD_customMem) align 8 %1) #31, !noalias !311 ; 2 uses
  %i.ab = load ptr, ptr %i.z, align 8, !noalias !311 ; 2 uses
  store ptr %i.aa, ptr %i.z, align 8, !noalias !311
  %.not.i.i.i.i = icmp eq ptr %i.ab, null
  br i1 %.not.i.i.i.i, label %_ZNSt10unique_ptrI11ZSTD_DCtx_sN4node15FunctionDeleterIS0_XadL_ZNS1_12_GLOBAL__N_121ZstdDecompressContext8FreeZstdEPS0_EEEEE5resetES5_.exit.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ac = tail call i64 @ZSTD_freeDCtx(ptr noundef nonnull %i.ab) #31, !noalias !311 ; 0 uses
  %.val2.pr.i.i = load ptr, ptr %i.z, align 8, !noalias !311
  br label %_ZNSt10unique_ptrI11ZSTD_DCtx_sN4node15FunctionDeleterIS0_XadL_ZNS1_12_GLOBAL__N_121ZstdDecompressContext8FreeZstdEPS0_EEEEE5resetES5_.exit.i.i

_ZNSt10unique_ptrI11ZSTD_DCtx_sN4node15FunctionDeleterIS0_XadL_ZNS1_12_GLOBAL__N_121ZstdDecompressContext8FreeZstdEPS0_EEEEE5resetES5_.exit.i.i: ; preds = %bb.e, %bb.d
  %.val2.i.i = phi ptr [ %i.aa, %bb.d ], [ %.val2.pr.i.i, %bb.e ]
  %.not4.i.i.not = icmp eq ptr %.val2.i.i, null
  br i1 %.not4.i.i.not, label %bb.f, label %_ZN4node12_GLOBAL__N_121ZstdDecompressContext11ResetStreamEv.exit

_ZN4node12_GLOBAL__N_121ZstdDecompressContext11ResetStreamEv.exit: ; preds = %_ZNSt10unique_ptrI11ZSTD_DCtx_sN4node15FunctionDeleterIS0_XadL_ZNS1_12_GLOBAL__N_121ZstdDecompressContext8FreeZstdEPS0_EEEEE5resetES5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1), !noalias !309
  br label %bb.g

bb.f:                                             ; preds = %_ZNSt10unique_ptrI11ZSTD_DCtx_sN4node15FunctionDeleterIS0_XadL_ZNS1_12_GLOBAL__N_121ZstdDecompressContext8FreeZstdEPS0_EEEEE5resetES5_.exit.i.i
  store ptr @.str.443, ptr %2, align 8, !alias.scope !311
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr @.str.392, ptr %i.ad, align 8, !alias.scope !311
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i32 -1, ptr %i.ae, align 8, !alias.scope !311
  call void @llvm.lifetime.end.p0(ptr nonnull %1), !noalias !309
  call fastcc void @_ZN4node12_GLOBAL__N_117CompressionStreamINS0_21ZstdDecompressContextEE9EmitErrorERKNS0_16CompressionErrorE(ptr noundef nonnull align 8 dereferenceable(408) %.0.i.i, ptr noundef nonnull align 8 dereferenceable(20) %2)
  br label %bb.g

bb.g:                                             ; preds = %_ZN4node12_GLOBAL__N_121ZstdDecompressContext11ResetStreamEv.exit, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31
  %i.af = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 232
  %i.ag = atomicrmw xchg ptr %i.af, i64 0 monotonic, align 8 ; 5 uses
  %i.ah = icmp slt i64 %i.ag, 0
  %i.ai = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 240 ; 2 uses
  %i.aj = load i64, ptr %i.ai, align 8            ; 2 uses
  %i.ak = sub nsw i64 0, %i.ag
  %.not.i.i.i = icmp ult i64 %i.aj, %i.ak
  %or.cond.i.i.i = select i1 %i.ah, i1 %.not.i.i.i, i1 false, !prof !43
  br i1 %or.cond.i.i.i, label %bb.h, label %_ZN4node12_GLOBAL__N_128CompressionStreamMemoryOwner42ComputeAdjustmentToExternalAllocatedMemoryEv.exit.i.i, !prof !43

bb.h:                                             ; preds = %bb.g
  tail call void @_ZN4node6AssertERKNS_13AssertionInfoE(ptr noundef nonnull align 8 dereferenceable(24) @_ZZN4node12_GLOBAL__N_128CompressionStreamMemoryOwner42ComputeAdjustmentToExternalAllocatedMemoryEvE20error_and_abort_args) #31
  tail call void @abort() #32
  unreachable

_ZN4node12_GLOBAL__N_128CompressionStreamMemoryOwner42ComputeAdjustmentToExternalAllocatedMemoryEv.exit.i.i: ; preds = %bb.g
  %i.al = add i64 %i.aj, %i.ag
  store i64 %i.al, ptr %i.ai, align 8
  %i.am = icmp eq i64 %i.ag, 0
  br i1 %i.am, label %_ZN4node12_GLOBAL__N_117CompressionStreamINS0_21ZstdDecompressContextEE10AllocScopeD2Ev.exit, label %bb.i

bb.i:                                             ; preds = %_ZN4node12_GLOBAL__N_128CompressionStreamMemoryOwner42ComputeAdjustmentToExternalAllocatedMemoryEv.exit.i.i
  %i.an = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 16
  %i.ao = load ptr, ptr %i.an, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 176
  %i.aq = load ptr, ptr %i.ap, align 8            ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 208
  %i.as = load ptr, ptr %i.ar, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %i.aq, i64 200
  %i.au = load ptr, ptr %i.at, align 8
  tail call void @_ZN2v823ExternalMemoryAccounter6UpdateEPNS_7IsolateEl(ptr noundef nonnull align 1 dereferenceable(1) %i.as, ptr noundef %i.au, i64 noundef %i.ag) #31
  br label %_ZN4node12_GLOBAL__N_117CompressionStreamINS0_21ZstdDecompressContextEE10AllocScopeD2Ev.exit

_ZN4node12_GLOBAL__N_117CompressionStreamINS0_21ZstdDecompressContextEE10AllocScopeD2Ev.exit: ; preds = %bb.i, %_ZN4node12_GLOBAL__N_128CompressionStreamMemoryOwner42ComputeAdjustmentToExternalAllocatedMemoryEv.exit.i.i, %_ZN4node10BaseObject12FromJSObjectEN2v85LocalINS1_5ValueEEE.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN4node12_GLOBAL__N_117CompressionStreamINS0_21ZstdDecompressContextEED2Ev(ptr noundef nonnull align 8 dereferenceable(408) initializes((0, 8), (80, 88)) %0) unnamed_addr #0 align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 168) (i8, ptr @_ZTVN4node12_GLOBAL__N_117CompressionStreamINS0_21ZstdDecompressContextEEE, i64 16), ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN4node12_GLOBAL__N_117CompressionStreamINS0_21ZstdDecompressContextEEE, i64 200), ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 249
  %i.c = load i8, ptr %i.b, align 1, !range !33, !noundef !36
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.b, label %bb.c, !prof !31
end_hunk_1
