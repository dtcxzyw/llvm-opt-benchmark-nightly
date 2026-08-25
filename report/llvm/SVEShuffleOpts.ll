Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/SVEShuffleOpts?download=true
begin_hunk_0_@_ZL11processLoopRN4llvm4LoopERKNS_16AArch64SubtargetENS_10DataLayoutE:bb.a
  br label %_ZN4llvm5APIntD2Ev.exit.i.i

_ZN4llvm5APIntD2Ev.exit.i.i:                      ; preds = %bb.ap, %bb.ao, %bb.an
  %i.hy = load i32, ptr %i.bm, align 8, !tbaa !302
  %i.hz = icmp ugt i32 %i.hy, 64
  br i1 %i.hz, label %bb.aq, label %_ZL20evaluateDeinterleavePN4llvm13IntrinsicInstERNS_13SmallDenseMapIPNS_8CallInstESt5arrayIPNS_8CastInstELm4EELj4ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S8_EEEERNS_4LoopERKNS_21AArch64TargetLoweringENS_10DataLayoutE.exit

bb.aq:                                            ; preds = %_ZN4llvm5APIntD2Ev.exit.i.i
  %i.ia = load ptr, ptr %22, align 8, !tbaa !113  ; 2 uses
  %i.ib = icmp eq ptr %i.ia, null
  br i1 %i.ib, label %_ZL20evaluateDeinterleavePN4llvm13IntrinsicInstERNS_13SmallDenseMapIPNS_8CallInstESt5arrayIPNS_8CastInstELm4EELj4ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S8_EEEERNS_4LoopERKNS_21AArch64TargetLoweringENS_10DataLayoutE.exit, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  call void @_ZdaPv(ptr noundef nonnull %i.ia) #20
  br label %_ZL20evaluateDeinterleavePN4llvm13IntrinsicInstERNS_13SmallDenseMapIPNS_8CallInstESt5arrayIPNS_8CastInstELm4EELj4ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S8_EEEERNS_4LoopERKNS_21AArch64TargetLoweringENS_10DataLayoutE.exit

_ZL20evaluateDeinterleavePN4llvm13IntrinsicInstERNS_13SmallDenseMapIPNS_8CallInstESt5arrayIPNS_8CastInstELm4EELj4ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S8_EEEERNS_4LoopERKNS_21AArch64TargetLoweringENS_10DataLayoutE.exit: ; preds = %_ZN4llvm5APIntD2Ev.exit.i.i, %bb.aq, %bb.ar
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #16
  call void @_ZN4llvm10DataLayoutD1Ev(ptr noundef nonnull align 8 dead_on_return(912) dereferenceable(912) %27) #16
  br label %_ZN4llvm12PatternMatch5matchINS_11InstructionENS_19PatternMatchHelpers17match_combine_andIJNS0_17IntrinsicID_matchENS0_14Argument_matchINS3_9match_isaIJNS_5ValueEEEEEEEEEEEbPT_RKT0_.exit.thread

_ZN4llvm12PatternMatch5matchINS_11InstructionENS_19PatternMatchHelpers17match_combine_andIJNS0_17IntrinsicID_matchENS0_14Argument_matchINS3_9match_isaIJNS_5ValueEEEEEEEEEEEbPT_RKT0_.exit.thread: ; preds = %bb.f, %.lr.ph, %bb.e, %_ZL20evaluateDeinterleavePN4llvm13IntrinsicInstERNS_13SmallDenseMapIPNS_8CallInstESt5arrayIPNS_8CastInstELm4EELj4ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S8_EEEERNS_4LoopERKNS_21AArch64TargetLoweringENS_10DataLayoutE.exit, %_ZN4llvm12PatternMatch5matchINS_11InstructionENS_19PatternMatchHelpers17match_combine_andIJNS0_17IntrinsicID_matchENS0_14Argument_matchINS3_9match_isaIJNS_5ValueEEEEEEEEEEEbPT_RKT0_.exit
  %i.ic = getelementptr inbounds nuw i8, ptr %.sroa.046.068, i64 8
  %.sroa.046.0 = load ptr, ptr %i.ic, align 8, !tbaa !278 ; 2 uses
  %.not51 = icmp eq ptr %.sroa.046.0, %i.bq
  br i1 %.not51, label %._crit_edge, label %.lr.ph

bb.as:                                            ; preds = %._crit_edge75
  %i.id = getelementptr inbounds nuw i8, ptr %28, i64 168 ; 2 uses
  store i32 1, ptr %28, align 8
  store i32 0, ptr %i.id, align 8
  call void @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_8CallInstESt5arrayIPNS_8CastInstELm4EELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S7_EEEES3_S7_S9_SC_E8copyFromERKSD_(ptr noundef nonnull align 8 dereferenceable(176) %28, ptr noundef nonnull align 8 dereferenceable(176) %26)
  call void @llvm.lifetime.start.p0(ptr nonnull %16)
  call void @llvm.lifetime.start.p0(ptr nonnull %17)
  %i.ie = load i32, ptr %28, align 8, !noalias !326 ; 2 uses
  %i.if = and i32 %i.ie, 1
  %.not.i.i.i.i.i32 = icmp eq i32 %i.if, 0        ; 3 uses
  %i.ig = getelementptr inbounds nuw i8, ptr %28, i64 8 ; 3 uses
  %i.ih = load ptr, ptr %i.ig, align 8, !noalias !326
  %i.ii = select i1 %.not.i.i.i.i.i32, ptr %i.ih, ptr %i.ig
  %i.ij = getelementptr inbounds nuw i8, ptr %28, i64 16
  %i.ik = load ptr, ptr %i.ij, align 8, !noalias !326
  %i.il = select i1 %.not.i.i.i.i.i32, ptr %i.ik, ptr %i.id ; 4 uses
  %i.im = getelementptr inbounds nuw i8, ptr %28, i64 24 ; 2 uses
  %i.in = load i32, ptr %i.im, align 8, !noalias !326
  %i.io = select i1 %.not.i.i.i.i.i32, i32 %i.in, i32 4 ; 2 uses
  %i.ip = icmp ult i32 %i.ie, 2
  %i.iq = zext i32 %i.io to i64                   ; 3 uses
  %.idx208.i = mul nuw nsw i64 %i.iq, 40          ; 2 uses
  %.not.i.not.i.i.i = icmp eq i32 %i.io, 0
  %or.cond.i = select i1 %i.ip, i1 true, i1 %.not.i.not.i.i.i
  br i1 %or.cond.i, label %_ZL31optimizeSVEDeinterleavedExtendsN4llvm13SmallDenseMapIPNS_8CallInstESt5arrayIPNS_8CastInstELm4EELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S6_EEEE.exit, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.ir = add nuw nsw i64 %i.iq, 31
  %i.is = lshr i64 %i.ir, 5                       ; 4 uses
  %i.it = load i32, ptr %i.il, align 4, !tbaa !316, !noalias !329 ; 2 uses
  %i.iu = icmp eq i32 %i.it, 0
  br i1 %i.iu, label %.lr.ph.i.i.i.i.preheader, label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_8CallInstESt5arrayIPNS_8CastInstELm4EELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S7_EEEES3_S7_S9_SC_E5beginEv.exit.i

.lr.ph.i.i.i.i.preheader:                         ; preds = %bb.at
  %i.iv = icmp eq i64 %i.is, 1
  br i1 %i.iv, label %_ZL31optimizeSVEDeinterleavedExtendsN4llvm13SmallDenseMapIPNS_8CallInstESt5arrayIPNS_8CastInstELm4EELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S6_EEEE.exit, label %.lr.ph162

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph162
  %i.iw = add nuw nsw i64 %i.iy, 1                ; 2 uses
  %i.ix = icmp eq i64 %i.iw, %i.is
  br i1 %i.ix, label %_ZL31optimizeSVEDeinterleavedExtendsN4llvm13SmallDenseMapIPNS_8CallInstESt5arrayIPNS_8CastInstELm4EELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S6_EEEE.exit, label %.lr.ph162, !llvm.loop !332

.lr.ph162:                                        ; preds = %.lr.ph.i.i.i.i.preheader, %.lr.ph.i.i.i.i
  %i.iy = phi i64 [ %i.iw, %.lr.ph.i.i.i.i ], [ 1, %.lr.ph.i.i.i.i.preheader ] ; 3 uses
  %i.iz = getelementptr inbounds nuw [4 x i8], ptr %i.il, i64 %i.iy
  %i.ja = load i32, ptr %i.iz, align 4, !tbaa !316, !noalias !329 ; 2 uses
  %i.jb = icmp eq i32 %i.ja, 0
  br i1 %i.jb, label %.lr.ph.i.i.i.i, label %._crit_edge.i.loopexit.i.i.i, !llvm.loop !332

._crit_edge.i.loopexit.i.i.i:                     ; preds = %.lr.ph162
  %i.jc = mul i64 %i.iy, 1280
  br label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_8CallInstESt5arrayIPNS_8CastInstELm4EELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S7_EEEES3_S7_S9_SC_E5beginEv.exit.i

_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_8CallInstESt5arrayIPNS_8CastInstELm4EELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S7_EEEES3_S7_S9_SC_E5beginEv.exit.i: ; preds = %._crit_edge.i.loopexit.i.i.i, %bb.at
  %.012.lcssa.i.i.i.i = phi i64 [ 0, %bb.at ], [ %i.jc, %._crit_edge.i.loopexit.i.i.i ]
  %.0.lcssa.i.i.i.i = phi i32 [ %i.it, %bb.at ], [ %i.ja, %._crit_edge.i.loopexit.i.i.i ]
  %i.jd = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.lcssa.i.i.i.i, i1 true)
  %narrow.i = mul nuw nsw i32 %i.jd, 40
  %.idx.i = zext nneg i32 %narrow.i to i64
  %i.je = add i64 %.012.lcssa.i.i.i.i, %.idx.i    ; 2 uses
  %.not135154.i = icmp eq i64 %i.je, %.idx208.i
  br i1 %.not135154.i, label %_ZL31optimizeSVEDeinterleavedExtendsN4llvm13SmallDenseMapIPNS_8CallInstESt5arrayIPNS_8CastInstELm4EELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S6_EEEE.exit, label %.lr.ph156.i

.lr.ph156.i:                                      ; preds = %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_8CallInstESt5arrayIPNS_8CastInstELm4EELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S7_EEEES3_S7_S9_SC_E5beginEv.exit.i
  %i.jf = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 3 uses
  %i.jg = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 3 uses
  %i.jh = getelementptr inbounds nuw i8, ptr %10, i64 88 ; 3 uses
  %i.ji = getelementptr inbounds nuw i8, ptr %10, i64 96 ; 2 uses
  %i.jj = getelementptr inbounds nuw i8, ptr %10, i64 32
  %i.jk = getelementptr inbounds nuw i8, ptr %10, i64 40 ; 6 uses
  %i.jl = getelementptr inbounds nuw i8, ptr %10, i64 48 ; 6 uses
  %i.jm = getelementptr inbounds nuw i8, ptr %10, i64 56 ; 4 uses
  %i.jn = getelementptr inbounds nuw i8, ptr %10, i64 64 ; 4 uses
  %i.jo = getelementptr inbounds nuw i8, ptr %10, i64 68 ; 2 uses
  %i.jp = getelementptr inbounds nuw i8, ptr %10, i64 69
  %i.jq = getelementptr inbounds nuw i8, ptr %10, i64 70
  %i.jr = getelementptr inbounds nuw i8, ptr %10, i64 72
  %i.js = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.jt = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 6 uses
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %10, i64 24 ; 6 uses
  %i.ju = getelementptr inbounds nuw i8, ptr %11, i64 32
  %i.jv = getelementptr inbounds nuw i8, ptr %12, i64 32
  %i.jw = getelementptr inbounds nuw i8, ptr %7, i64 32
  %i.jx = getelementptr inbounds nuw i8, ptr %7, i64 33
  %i.jy = getelementptr inbounds nuw i8, ptr %13, i64 32
  %i.jz = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.ka = getelementptr inbounds nuw i8, ptr %6, i64 33
  %i.kb = getelementptr inbounds nuw i8, ptr %14, i64 32
  %i.kc = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.kd = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.ke = getelementptr inbounds nuw i8, ptr %15, i64 32
  %i.kf = getelementptr inbounds nuw i8, ptr %17, i64 8
  %i.kg = ptrtoint ptr %18 to i64
  %i.kh = getelementptr inbounds nuw i8, ptr %19, i64 32
  %i.ki = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.kj = getelementptr inbounds nuw i8, ptr %20, i64 32
  %i.kk = getelementptr inbounds nuw i8, ptr %3, i64 32
  br label %bb.au

bb.au:                                            ; preds = %_ZN4llvm16DenseMapIteratorIPNS_8CallInstESt5arrayIPNS_8CastInstELm4EENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S6_EELb0EEppEv.exit.i, %.lr.ph156.i
  %.pn.i = phi i64 [ %i.je, %.lr.ph156.i ], [ %i.th, %_ZN4llvm16DenseMapIteratorIPNS_8CallInstESt5arrayIPNS_8CastInstELm4EENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S6_EELb0EEppEv.exit.i ] ; 2 uses
  %.sroa.0124.0155.i = getelementptr i8, ptr %i.ii, i64 %.pn.i ; 5 uses
  %.ptr137.i = getelementptr inbounds nuw i8, ptr %.sroa.0124.0155.i, i64 8 ; 2 uses
  %i.kl = load ptr, ptr %.ptr137.i, align 8, !tbaa !317 ; 3 uses
  %i.km = getelementptr inbounds nuw i8, ptr %i.kl, i64 8
  %i.kn = load ptr, ptr %i.km, align 8, !tbaa !290 ; 9 uses
  %i.ko = getelementptr inbounds i8, ptr %i.kl, i64 -32
  %i.kp = load ptr, ptr %i.ko, align 8, !tbaa !280
  %i.kq = getelementptr inbounds nuw i8, ptr %i.kp, i64 8
  %i.kr = load ptr, ptr %i.kq, align 8, !tbaa !290
  %i.ks = call noundef i32 @_ZNK4llvm4Type19getScalarSizeInBitsEv(ptr noundef nonnull align 8 dereferenceable(24) %i.kn) #19 ; 4 uses
  %i.kt = call noundef i32 @_ZNK4llvm4Type19getScalarSizeInBitsEv(ptr noundef nonnull align 8 dereferenceable(24) %i.kr) #19 ; 3 uses
  %i.ku = load i8, ptr %i.kl, align 8, !tbaa !279
  %i.kv = icmp eq i8 %i.ku, 74
  %i.kw = getelementptr inbounds nuw i8, ptr %i.kn, i64 24
  %i.kx = load ptr, ptr %i.kw, align 8, !tbaa !292
  %i.ky = call { i64, i8 } @_ZNK4llvm4Type22getPrimitiveSizeInBitsEv(ptr noundef nonnull align 8 dereferenceable(24) %i.kx) #19
  %.fca.0.extract.i.i = extractvalue { i64, i8 } %i.ky, 0
  %i.kz = trunc i64 %.fca.0.extract.i.i to i32
  %i.la = load ptr, ptr %i.kn, align 8, !tbaa !298, !nonnull !34, !align !35
  %i.lb = call noundef ptr @_ZN4llvm11IntegerType3getERNS_11LLVMContextEj(ptr noundef nonnull align 8 dereferenceable(8) %i.la, i32 noundef %i.kz) #16
  %i.lc = getelementptr inbounds nuw i8, ptr %i.kn, i64 32
  %i.ld = load i32, ptr %i.lc, align 8, !tbaa !299
  %i.le = getelementptr inbounds nuw i8, ptr %i.kn, i64 8
  %i.lf = load i32, ptr %i.le, align 8
  %i.lg = and i32 %i.lf, 255
  %i.lh = icmp eq i32 %i.lg, 19
  %.sroa.2.0.insert.shift.i.i.i.i = select i1 %i.lh, i64 4294967296, i64 0
  %.sroa.0.0.insert.ext.i.i.i.i = zext i32 %i.ld to i64
  %.sroa.0.0.insert.insert.i.i.i.i = or disjoint i64 %.sroa.2.0.insert.shift.i.i.i.i, %.sroa.0.0.insert.ext.i.i.i.i
  %i.li = call noundef ptr @_ZN4llvm10VectorType3getEPNS_4TypeENS_12ElementCountE(ptr noundef %i.lb, i64 %.sroa.0.0.insert.insert.i.i.i.i) #16 ; 6 uses
  %i.lj = load ptr, ptr %.sroa.0124.0155.i, align 8, !tbaa !334 ; 2 uses
  %i.lk = getelementptr inbounds nuw i8, ptr %i.lj, i64 4
  %i.ll = load i32, ptr %i.lk, align 4
  %i.lm = and i32 %i.ll, 268435455
  %i.ln = zext nneg i32 %i.lm to i64
  %i.lo = sub nsw i64 0, %i.ln
  %i.lp = getelementptr inbounds [32 x i8], ptr %i.lj, i64 %i.lo
  %i.lq = load ptr, ptr %i.lp, align 8, !tbaa !280 ; 2 uses
  %i.lr = getelementptr inbounds nuw i8, ptr %i.lq, i64 8
  %i.ls = load ptr, ptr %i.lr, align 8, !tbaa !290 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #16
  store i32 %i.ks, ptr %i.jf, align 8, !tbaa !302, !alias.scope !337
  %i.lt = icmp ult i32 %i.ks, 65
  br i1 %i.lt, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au
  %i.lu = sub nsw i32 0, %i.ks
  %i.lv = and i32 %i.lu, 63
  %i.lw = zext nneg i32 %i.lv to i64
  %i.lx = lshr i64 -1, %i.lw
  %i.ly = icmp eq i32 %i.ks, 0
  %spec.select.i.i.i38 = select i1 %i.ly, i64 0, i64 %i.lx, !prof !340
  store i64 %spec.select.i.i.i38, ptr %8, align 8, !tbaa !113, !alias.scope !337
  br label %_ZN4llvm5APInt10getAllOnesEj.exit.i

bb.aw:                                            ; preds = %bb.au
  call void @_ZN4llvm5APInt12initSlowCaseEmb(ptr noundef nonnull align 8 dereferenceable(12) %8, i64 noundef -1, i1 noundef zeroext true) #16
  br label %_ZN4llvm5APInt10getAllOnesEj.exit.i

_ZN4llvm5APInt10getAllOnesEj.exit.i:              ; preds = %bb.aw, %bb.av
  %i.lz = zext nneg i32 %i.kt to i64
  br label %bb.ay

bb.ax:                                            ; preds = %bb.ck
  %i.ma = load ptr, ptr %.sroa.0124.0155.i, align 8, !tbaa !334 ; 2 uses
  %i.mb = getelementptr inbounds nuw i8, ptr %i.ma, i64 16
  %i.mc = load ptr, ptr %i.mb, align 8, !tbaa !312 ; 2 uses
  %.not138152.i = icmp eq ptr %i.mc, null
  br i1 %.not138152.i, label %._crit_edge.i, label %.lr.ph.i34

bb.ay:                                            ; preds = %bb.ck, %_ZN4llvm5APInt10getAllOnesEj.exit.i
  %.sroa.0116.0.ptr151.i = phi ptr [ %.ptr137.i, %_ZN4llvm5APInt10getAllOnesEj.exit.i ], [ %.sroa.0116.0.ptr.i, %bb.ck ] ; 4 uses
  %.sroa.7.0150.i = phi i64 [ 0, %_ZN4llvm5APInt10getAllOnesEj.exit.i ], [ %i.sh, %bb.ck ] ; 2 uses
  %.sroa.0116.0.idx149.i = phi i64 [ 8, %_ZN4llvm5APInt10getAllOnesEj.exit.i ], [ %.sroa.0116.0.add.i, %bb.ck ]
  %i.md = load ptr, ptr %.sroa.0116.0.ptr151.i, align 8, !tbaa !317
  %.not.i33 = icmp eq ptr %i.md, null
  br i1 %.not.i33, label %bb.ck, label %bb.az

bb.az:                                            ; preds = %bb.ay
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #16
  call void @llvm.experimental.noalias.scope.decl(metadata !341)
  call void @llvm.experimental.noalias.scope.decl(metadata !344)
  %i.me = load i32, ptr %i.jf, align 8, !tbaa !302, !noalias !347 ; 3 uses
  store i32 %i.me, ptr %i.jg, align 8, !tbaa !302, !alias.scope !347
  %i.mf = icmp ult i32 %i.me, 65
  br i1 %i.mf, label %_ZN4llvm5APInt15clearUnusedBitsEv.exit.i.i.i.i, label %_ZN4llvm5APIntC2ERKS0_.exit.i.i.i

_ZN4llvm5APIntC2ERKS0_.exit.i.i.i:                ; preds = %bb.az
  call void @_ZN4llvm5APInt12initSlowCaseERKS0_(ptr noundef nonnull align 8 dereferenceable(12) %9, ptr noundef nonnull align 8 dereferenceable(12) %8) #16
  %.pr.i.i.i = load i32, ptr %i.jg, align 8, !tbaa !302, !alias.scope !347 ; 2 uses
  %i.mg = icmp ult i32 %.pr.i.i.i, 65
  br i1 %i.mg, label %_ZN4llvm5APInt15clearUnusedBitsEv.exit.i.i.i.i, label %bb.ba

_ZN4llvm5APInt15clearUnusedBitsEv.exit.i.i.i.i:   ; preds = %_ZN4llvm5APIntC2ERKS0_.exit.i.i.i, %bb.az
  %.sink.i.i.i = phi ptr [ %8, %bb.az ], [ %9, %_ZN4llvm5APIntC2ERKS0_.exit.i.i.i ]
  %i.mh = phi i32 [ %i.me, %bb.az ], [ %.pr.i.i.i, %_ZN4llvm5APIntC2ERKS0_.exit.i.i.i ] ; 3 uses
  %.pre.i.i.i = load i64, ptr %.sink.i.i.i, align 8
  %i.mi = icmp eq i32 %i.kt, %i.mh
  %i.mj = shl i64 %.pre.i.i.i, %i.lz
  %storemerge.i.i.i.i = select i1 %i.mi, i64 0, i64 %i.mj
  %i.mk = sub nsw i32 0, %i.mh
  %i.ml = and i32 %i.mk, 63
  %i.mm = zext nneg i32 %i.ml to i64
  %i.mn = lshr i64 -1, %i.mm
  %i.mo = icmp eq i32 %i.mh, 0
  %.04.i.i.i.i.i = select i1 %i.mo, i64 0, i64 %i.mn, !prof !340
  %i.mp = and i64 %.04.i.i.i.i.i, %storemerge.i.i.i.i
  store i64 %i.mp, ptr %9, align 8, !tbaa !113, !alias.scope !347
  br label %_ZNK4llvm5APIntlsEj.exit.i

bb.ba:                                            ; preds = %_ZN4llvm5APIntC2ERKS0_.exit.i.i.i
  call void @_ZN4llvm5APInt11shlSlowCaseEj(ptr noundef nonnull align 8 dereferenceable(12) %9, i32 noundef %i.kt) #16
  br label %_ZNK4llvm5APIntlsEj.exit.i

_ZNK4llvm5APIntlsEj.exit.i:                       ; preds = %bb.ba, %_ZN4llvm5APInt15clearUnusedBitsEv.exit.i.i.i.i
  %i.mq = call noundef nonnull align 8 dereferenceable(12) ptr @_ZN4llvm5APIntpLEm(ptr noundef nonnull align 8 dereferenceable(12) %9, i64 noundef %.sroa.7.0150.i) #16 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #16
  %i.mr = load ptr, ptr %.sroa.0116.0.ptr151.i, align 8, !tbaa !317 ; 4 uses
  %i.ms = getelementptr inbounds nuw i8, ptr %i.mr, i64 8
  %i.mt = load ptr, ptr %i.ms, align 8, !tbaa !290
  %i.mu = load ptr, ptr %i.mt, align 8, !tbaa !298, !nonnull !34, !align !35
  store ptr null, ptr %10, align 8, !tbaa !348
  store ptr %i.mu, ptr %i.jj, align 8, !tbaa !351
  store ptr %i.jh, ptr %i.jk, align 8, !tbaa !352
  store ptr %i.ji, ptr %i.jl, align 8, !tbaa !354
  store ptr null, ptr %i.jm, align 8, !tbaa !356
  store i32 0, ptr %i.jn, align 8, !tbaa !366
  store i8 0, ptr %i.jo, align 4, !tbaa !367
  store i8 2, ptr %i.jp, align 1, !tbaa !368
  store i8 7, ptr %i.jq, align 2, !tbaa !369
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.jr, i8 0, i64 16, i1 false)
  store <2 x ptr> <ptr getelementptr inbounds nuw inrange(-16, 160) (i8, ptr @_ZTVN4llvm14ConstantFolderE, i64 16), ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4llvm24IRBuilderDefaultInserterE, i64 16)>, ptr %i.jh, align 8, !tbaa !29
  %i.mv = getelementptr inbounds nuw i8, ptr %i.mr, i64 24
  %i.mw = getelementptr inbounds nuw i8, ptr %i.mr, i64 40
  %i.mx = load ptr, ptr %i.mw, align 8, !tbaa !314
  store ptr %i.mx, ptr %i.js, align 8, !tbaa !370
  store ptr %i.mv, ptr %i.jt, align 8
  store i16 0, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8
  %i.my = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK4llvm11Instruction17getStableDebugLocEv(ptr noundef nonnull align 8 dereferenceable(72) %i.mr) #16
  %i.mz = load i64, ptr %i.my, align 8, !tbaa !371
  store i64 %i.mz, ptr %10, align 8, !tbaa !371
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #16
  store i16 257, ptr %i.ju, align 8
  %i.na = call noundef ptr @_ZN4llvm13IRBuilderBase16CreateStepVectorEPNS_4TypeERKNS_5TwineE(ptr noundef nonnull align 8 dereferenceable(88) %10, ptr noundef %i.li, ptr noundef nonnull align 8 dereferenceable(34) %11) #16 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #16
  %i.nb = call noundef ptr @_ZN4llvm11ConstantInt3getEPNS_4TypeEmbb(ptr noundef %i.li, i64 noundef 4, i1 noundef zeroext false, i1 noundef zeroext false) #16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #16
  store i16 257, ptr %i.jv, align 8
  %i.nc = load ptr, ptr %i.jk, align 8, !tbaa !372, !nonnull !34, !align !35 ; 2 uses
  %i.nd = load ptr, ptr %i.nc, align 8, !tbaa !29
  %i.ne = getelementptr inbounds nuw i8, ptr %i.nd, i64 32
  %i.nf = load ptr, ptr %i.ne, align 8
  %i.ng = call noundef ptr %i.nf(ptr noundef nonnull align 8 dereferenceable(8) %i.nc, i32 noundef 18, ptr noundef %i.na, ptr noundef %i.nb, i1 noundef zeroext true, i1 noundef zeroext false) #16, !inline_history !373 ; 2 uses
  %.not.not.i.i.i = icmp eq ptr %i.ng, null
  br i1 %.not.not.i.i.i, label %bb.bb, label %_ZN4llvm13IRBuilderBase12CreateNUWMulEPNS_5ValueES2_RKNS_5TwineE.exit.i

bb.bb:                                            ; preds = %_ZNK4llvm5APIntlsEj.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #16
  store i8 1, ptr %i.jw, align 8, !tbaa !374
  store i8 1, ptr %i.jx, align 1, !tbaa !377
  %i.nh = call noundef ptr @_ZN4llvm14BinaryOperator6CreateENS_11Instruction9BinaryOpsEPNS_5ValueES4_RKNS_5TwineENS_14InsertPositionE(i32 noundef 18, ptr noundef %i.na, ptr noundef %i.nb, ptr noundef nonnull align 8 dereferenceable(34) %7, ptr null, i64 0) #16 ; 4 uses
  %i.ni = load ptr, ptr %i.jl, align 8, !tbaa !378, !nonnull !34, !align !35 ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i49.i = load ptr, ptr %i.jt, align 8
  %.sroa.2.0.copyload.i.i.i.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8
  %i.nj = load ptr, ptr %i.ni, align 8, !tbaa !29
  %i.nk = getelementptr inbounds nuw i8, ptr %i.nj, i64 16
  %i.nl = load ptr, ptr %i.nk, align 8
  call void %i.nl(ptr noundef nonnull align 8 dereferenceable(8) %i.ni, ptr noundef %i.nh, ptr noundef nonnull align 8 dereferenceable(34) %12, ptr %.sroa.0.0.copyload.i.i.i.i49.i, i64 %.sroa.2.0.copyload.i.i.i.i.i) #16, !inline_history !379
  call void @_ZNK4llvm13IRBuilderBase20SetInstDebugLocationEPNS_11InstructionE(ptr noundef nonnull align 8 dereferenceable(88) %10, ptr noundef %i.nh) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #16
  call void @_ZN4llvm11Instruction20setHasNoUnsignedWrapEb(ptr noundef nonnull align 8 dereferenceable(72) %i.nh, i1 noundef zeroext true) #16
  br label %_ZN4llvm13IRBuilderBase12CreateNUWMulEPNS_5ValueES2_RKNS_5TwineE.exit.i

_ZN4llvm13IRBuilderBase12CreateNUWMulEPNS_5ValueES2_RKNS_5TwineE.exit.i: ; preds = %bb.bb, %_ZNK4llvm5APIntlsEj.exit.i
  %.1.i.i.i = phi ptr [ %i.ng, %_ZNK4llvm5APIntlsEj.exit.i ], [ %i.nh, %bb.bb ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #16
  %i.nm = call noundef ptr @_ZN4llvm11ConstantInt3getEPNS_4TypeERKNS_5APIntE(ptr noundef %i.li, ptr noundef nonnull align 8 dereferenceable(12) %9) #16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #16
  store i16 257, ptr %i.jy, align 8
  %i.nn = load ptr, ptr %i.jk, align 8, !tbaa !372, !nonnull !34, !align !35 ; 2 uses
  %i.no = load ptr, ptr %i.nn, align 8, !tbaa !29
  %i.np = getelementptr inbounds nuw i8, ptr %i.no, i64 32
  %i.nq = load ptr, ptr %i.np, align 8
  %i.nr = call noundef ptr %i.nq(ptr noundef nonnull align 8 dereferenceable(8) %i.nn, i32 noundef 14, ptr noundef nonnull %.1.i.i.i, ptr noundef %i.nm, i1 noundef zeroext true, i1 noundef zeroext false) #16, !inline_history !380 ; 2 uses
  %.not.not.i.i50.i = icmp eq ptr %i.nr, null
  br i1 %.not.not.i.i50.i, label %bb.bc, label %_ZN4llvm13IRBuilderBase12CreateNUWAddEPNS_5ValueES2_RKNS_5TwineE.exit.i

bb.bc:                                            ; preds = %_ZN4llvm13IRBuilderBase12CreateNUWMulEPNS_5ValueES2_RKNS_5TwineE.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #16
  store i8 1, ptr %i.jz, align 8, !tbaa !374
  store i8 1, ptr %i.ka, align 1, !tbaa !377
  %i.ns = call noundef ptr @_ZN4llvm14BinaryOperator6CreateENS_11Instruction9BinaryOpsEPNS_5ValueES4_RKNS_5TwineENS_14InsertPositionE(i32 noundef 14, ptr noundef nonnull %.1.i.i.i, ptr noundef %i.nm, ptr noundef nonnull align 8 dereferenceable(34) %6, ptr null, i64 0) #16 ; 4 uses
  %i.nt = load ptr, ptr %i.jl, align 8, !tbaa !378, !nonnull !34, !align !35 ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i52.i = load ptr, ptr %i.jt, align 8
  %.sroa.2.0.copyload.i.i.i.i54.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8
  %i.nu = load ptr, ptr %i.nt, align 8, !tbaa !29
  %i.nv = getelementptr inbounds nuw i8, ptr %i.nu, i64 16
  %i.nw = load ptr, ptr %i.nv, align 8
  call void %i.nw(ptr noundef nonnull align 8 dereferenceable(8) %i.nt, ptr noundef %i.ns, ptr noundef nonnull align 8 dereferenceable(34) %13, ptr %.sroa.0.0.copyload.i.i.i.i52.i, i64 %.sroa.2.0.copyload.i.i.i.i54.i) #16, !inline_history !381
  call void @_ZNK4llvm13IRBuilderBase20SetInstDebugLocationEPNS_11InstructionE(ptr noundef nonnull align 8 dereferenceable(88) %10, ptr noundef %i.ns) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #16
  call void @_ZN4llvm11Instruction20setHasNoUnsignedWrapEb(ptr noundef nonnull align 8 dereferenceable(72) %i.ns, i1 noundef zeroext true) #16
  br label %_ZN4llvm13IRBuilderBase12CreateNUWAddEPNS_5ValueES2_RKNS_5TwineE.exit.i

_ZN4llvm13IRBuilderBase12CreateNUWAddEPNS_5ValueES2_RKNS_5TwineE.exit.i: ; preds = %bb.bc, %_ZN4llvm13IRBuilderBase12CreateNUWMulEPNS_5ValueES2_RKNS_5TwineE.exit.i
  %.1.i.i51.i = phi ptr [ %i.nr, %_ZN4llvm13IRBuilderBase12CreateNUWMulEPNS_5ValueES2_RKNS_5TwineE.exit.i ], [ %i.ns, %bb.bc ] ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #16
  %i.nx = getelementptr inbounds nuw i8, ptr %.1.i.i51.i, i64 8
  store i16 257, ptr %i.kb, align 8
  %i.ny = load ptr, ptr %i.nx, align 8, !tbaa !290
  %i.nz = icmp eq ptr %i.ny, %i.ls
  br i1 %i.nz, label %_ZN4llvm13IRBuilderBase10CreateCastENS_11Instruction7CastOpsEPNS_5ValueEPNS_4TypeERKNS_5TwineEPNS_6MDNodeENS_9FMFSourceE.exit.i, label %bb.bd

bb.bd:                                            ; preds = %_ZN4llvm13IRBuilderBase12CreateNUWAddEPNS_5ValueES2_RKNS_5TwineE.exit.i
  %i.oa = load ptr, ptr %i.jk, align 8, !tbaa !372, !nonnull !34, !align !35 ; 2 uses
  %i.ob = load ptr, ptr %i.oa, align 8, !tbaa !29
  %i.oc = getelementptr inbounds nuw i8, ptr %i.ob, i64 120
  %i.od = load ptr, ptr %i.oc, align 8
  %i.oe = call noundef ptr %i.od(ptr noundef nonnull align 8 dereferenceable(8) %i.oa, i32 noundef 51, ptr noundef nonnull %.1.i.i51.i, ptr noundef %i.ls) #16, !inline_history !382 ; 2 uses
  %.not.not.i.i = icmp eq ptr %i.oe, null
  br i1 %.not.not.i.i, label %bb.be, label %_ZN4llvm13IRBuilderBase10CreateCastENS_11Instruction7CastOpsEPNS_5ValueEPNS_4TypeERKNS_5TwineEPNS_6MDNodeENS_9FMFSourceE.exit.i

bb.be:                                            ; preds = %bb.bd
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #16
  store i16 257, ptr %i.kc, align 8
  %i.of = call noundef ptr @_ZN4llvm8CastInst6CreateENS_11Instruction7CastOpsEPNS_5ValueEPNS_4TypeERKNS_5TwineENS_14InsertPositionE(i32 noundef 51, ptr noundef nonnull %.1.i.i51.i, ptr noundef %i.ls, ptr noundef nonnull align 8 dereferenceable(34) %5, ptr null, i64 0) #16 ; 7 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #16
  %i.og = load i8, ptr %i.of, align 8, !tbaa !279 ; 2 uses
  %i.oh = icmp ult i8 %i.og, 30
  br i1 %i.oh, label %_ZN4llvm14FPMathOperator7classofEPKNS_5ValueE.exit.thread129.i, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  switch i8 %i.og, label %_ZN4llvm14FPMathOperator7classofEPKNS_5ValueE.exit.thread129.i [
    i8 43, label %_ZN4llvm14FPMathOperator7classofEPKNS_5ValueE.exit.thread.i
    i8 45, label %_ZN4llvm14FPMathOperator7classofEPKNS_5ValueE.exit.thread.i
    i8 47, label %_ZN4llvm14FPMathOperator7classofEPKNS_5ValueE.exit.thread.i
    i8 49, label %_ZN4llvm14FPMathOperator7classofEPKNS_5ValueE.exit.thread.i
    i8 52, label %_ZN4llvm14FPMathOperator7classofEPKNS_5ValueE.exit.thread.i
    i8 55, label %_ZN4llvm14FPMathOperator7classofEPKNS_5ValueE.exit.thread.i
    i8 76, label %_ZN4llvm14FPMathOperator7classofEPKNS_5ValueE.exit.thread.i
    i8 77, label %_ZN4llvm14FPMathOperator7classofEPKNS_5ValueE.exit.thread.i
    i8 74, label %_ZN4llvm14FPMathOperator7classofEPKNS_5ValueE.exit.thread.i
    i8 75, label %_ZN4llvm14FPMathOperator7classofEPKNS_5ValueE.exit.thread.i
    i8 86, label %_ZN4llvm14FPMathOperator7classofEPKNS_5ValueE.exit.thread.i
    i8 87, label %bb.bg
    i8 89, label %bb.bg
    i8 88, label %bb.bg
  ]

bb.bg:                                            ; preds = %bb.bf, %bb.bf, %bb.bf
  %i.oi = getelementptr inbounds nuw i8, ptr %i.of, i64 8
  %i.oj = load ptr, ptr %i.oi, align 8, !tbaa !290 ; 6 uses
  %i.ok = getelementptr inbounds nuw i8, ptr %i.oj, i64 8
  %i.ol = load i32, ptr %i.ok, align 8            ; 5 uses
  %i.om = and i32 %i.ol, 254
  %spec.select.i.i.i.i.i.i = icmp eq i32 %i.om, 18
  br i1 %spec.select.i.i.i.i.i.i, label %bb.bh, label %_ZNK4llvm4Type13getScalarTypeEv.exit.i.i.i.i

bb.bh:                                            ; preds = %bb.bg
  %i.on = getelementptr inbounds nuw i8, ptr %i.oj, i64 16
  %i.oo = load ptr, ptr %i.on, align 8, !tbaa !383
  %i.op = load ptr, ptr %i.oo, align 8, !tbaa !304
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.op, i64 8
  %.pre.i.i.i.i = load i32, ptr %.phi.trans.insert.i.i.i.i, align 8
  br label %_ZNK4llvm4Type13getScalarTypeEv.exit.i.i.i.i

_ZNK4llvm4Type13getScalarTypeEv.exit.i.i.i.i:     ; preds = %bb.bh, %bb.bg
  %i.oq = phi i32 [ %.pre.i.i.i.i, %bb.bh ], [ %i.ol, %bb.bg ] ; 2 uses
  %trunc.i.i.i.i.i.i = trunc i32 %i.oq to i8
  switch i8 %trunc.i.i.i.i.i.i, label %_ZNK4llvm4Type16isFPOrFPVectorTyEv.exit.i.i.i [
    i8 3, label %_ZN4llvm14FPMathOperator7classofEPKNS_5ValueE.exit.thread.i
    i8 2, label %_ZN4llvm14FPMathOperator7classofEPKNS_5ValueE.exit.thread.i
    i8 0, label %_ZN4llvm14FPMathOperator7classofEPKNS_5ValueE.exit.thread.i
    i8 1, label %_ZN4llvm14FPMathOperator7classofEPKNS_5ValueE.exit.thread.i
    i8 5, label %_ZN4llvm14FPMathOperator7classofEPKNS_5ValueE.exit.thread.i
  ]

_ZNK4llvm4Type16isFPOrFPVectorTyEv.exit.i.i.i:    ; preds = %_ZNK4llvm4Type13getScalarTypeEv.exit.i.i.i.i
  %i.or = and i32 %i.oq, 253
  %spec.select.i.i.i.i.i = icmp eq i32 %i.or, 4
  br i1 %spec.select.i.i.i.i.i, label %_ZN4llvm14FPMathOperator7classofEPKNS_5ValueE.exit.thread.i, label %bb.bi

bb.bi:                                            ; preds = %_ZNK4llvm4Type16isFPOrFPVectorTyEv.exit.i.i.i
  %trunc.i.i.i = trunc i32 %i.ol to i8
  switch i8 %trunc.i.i.i, label %.loopexit.i.i.i.i [
    i8 16, label %bb.bj
    i8 17, label %.preheader.i.i.i.i
  ]

bb.bj:                                            ; preds = %bb.bi
  %i.os = and i32 %i.ol, 1024
  %.not26.i.i.i.i = icmp eq i32 %i.os, 0
  br i1 %.not26.i.i.i.i, label %_ZN4llvm14FPMathOperator7classofEPKNS_5ValueE.exit.thread129.i, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.ot = call noundef zeroext i1 @_ZNK4llvm10StructType24containsHomogeneousTypesEv(ptr noundef nonnull align 8 dereferenceable(32) %i.oj) #16
  br i1 %i.ot, label %bb.bl, label %_ZN4llvm14FPMathOperator7classofEPKNS_5ValueE.exit.thread129.i

bb.bl:                                            ; preds = %bb.bk
  %i.ou = getelementptr inbounds nuw i8, ptr %i.oj, i64 16
  %i.ov = load ptr, ptr %i.ou, align 8, !tbaa !383
  %i.ow = load ptr, ptr %i.ov, align 8, !tbaa !304 ; 2 uses
  %.phi.trans.insert.i2.i.i.i = getelementptr inbounds nuw i8, ptr %i.ow, i64 8
  %.pre.i3.i.i.i = load i32, ptr %.phi.trans.insert.i2.i.i.i, align 8
  br label %.loopexit.i.i.i.i

.preheader.i.i.i.i:                               ; preds = %bb.bi, %.preheader.i.i.i.i
  %.0.i.i.i.i = phi ptr [ %i.oy, %.preheader.i.i.i.i ], [ %i.oj, %bb.bi ]
  %i.ox = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i, i64 24
  %i.oy = load ptr, ptr %i.ox, align 8, !tbaa !384 ; 4 uses
  %i.oz = getelementptr inbounds nuw i8, ptr %i.oy, i64 8
  %i.pa = load i32, ptr %i.oz, align 8            ; 2 uses
  %i.pb = and i32 %i.pa, 255
  %i.pc = icmp ne i32 %i.pb, 17
  %.not1828.i.i.i.i = icmp eq ptr %i.oy, null
end_hunk_0
begin_hunk_1_@_ZL11processLoopRN4llvm4LoopERKNS_16AArch64SubtargetENS_10DataLayoutE:bb.a
    i8 3, label %_ZN4llvm14FPMathOperator7classofEPKNS_5ValueE.exit102.thread.i
    i8 2, label %_ZN4llvm14FPMathOperator7classofEPKNS_5ValueE.exit102.thread.i
    i8 0, label %_ZN4llvm14FPMathOperator7classofEPKNS_5ValueE.exit102.thread.i
    i8 1, label %_ZN4llvm14FPMathOperator7classofEPKNS_5ValueE.exit102.thread.i
    i8 5, label %_ZN4llvm14FPMathOperator7classofEPKNS_5ValueE.exit102.thread.i
  ]

_ZNK4llvm4Type16isFPOrFPVectorTyEv.exit.i.i81.i:  ; preds = %_ZNK4llvm4Type13getScalarTypeEv.exit.i.i.i78.i
  %i.qk = and i32 %i.qj, 253
  %spec.select.i.i.i.i82.i = icmp eq i32 %i.qk, 4
  br i1 %spec.select.i.i.i.i82.i, label %_ZN4llvm14FPMathOperator7classofEPKNS_5ValueE.exit102.thread.i, label %bb.bt

bb.bt:                                            ; preds = %_ZNK4llvm4Type16isFPOrFPVectorTyEv.exit.i.i81.i
  %trunc.i.i83.i = trunc i32 %i.qe to i8
  switch i8 %trunc.i.i83.i, label %.loopexit.i.i.i88.i [
    i8 16, label %bb.bu
    i8 17, label %.preheader.i.i.i84.i
  ]

bb.bu:                                            ; preds = %bb.bt
  %i.ql = and i32 %i.qe, 1024
  %.not26.i.i.i97.i = icmp eq i32 %i.ql, 0
  br i1 %.not26.i.i.i97.i, label %_ZN4llvm14FPMathOperator7classofEPKNS_5ValueE.exit102.thread133.i, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.qm = call noundef zeroext i1 @_ZNK4llvm10StructType24containsHomogeneousTypesEv(ptr noundef nonnull align 8 dereferenceable(32) %i.qc) #16
  br i1 %i.qm, label %bb.bw, label %_ZN4llvm14FPMathOperator7classofEPKNS_5ValueE.exit102.thread133.i

bb.bw:                                            ; preds = %bb.bv
  %i.qn = getelementptr inbounds nuw i8, ptr %i.qc, i64 16
  %i.qo = load ptr, ptr %i.qn, align 8, !tbaa !383
  %i.qp = load ptr, ptr %i.qo, align 8, !tbaa !304 ; 2 uses
  %.phi.trans.insert.i2.i.i98.i = getelementptr inbounds nuw i8, ptr %i.qp, i64 8
  %.pre.i3.i.i99.i = load i32, ptr %.phi.trans.insert.i2.i.i98.i, align 8
  br label %.loopexit.i.i.i88.i

.preheader.i.i.i84.i:                             ; preds = %bb.bt, %.preheader.i.i.i84.i
  %.0.i.i.i85.i = phi ptr [ %i.qr, %.preheader.i.i.i84.i ], [ %i.qc, %bb.bt ]
  %i.qq = getelementptr inbounds nuw i8, ptr %.0.i.i.i85.i, i64 24
  %i.qr = load ptr, ptr %i.qq, align 8, !tbaa !384 ; 4 uses
  %i.qs = getelementptr inbounds nuw i8, ptr %i.qr, i64 8
  %i.qt = load i32, ptr %i.qs, align 8            ; 2 uses
  %i.qu = and i32 %i.qt, 255
  %i.qv = icmp ne i32 %i.qu, 17
  %.not1828.i.i.i86.i = icmp eq ptr %i.qr, null
  %.not18.i.i.i87.i = or i1 %.not1828.i.i.i86.i, %i.qv
  br i1 %.not18.i.i.i87.i, label %.loopexit.i.i.i88.i, label %.preheader.i.i.i84.i, !llvm.loop !386

.loopexit.i.i.i88.i:                              ; preds = %.preheader.i.i.i84.i, %bb.bw, %bb.bt
  %i.qw = phi i32 [ %i.qe, %bb.bt ], [ %.pre.i3.i.i99.i, %bb.bw ], [ %i.qt, %.preheader.i.i.i84.i ] ; 2 uses
  %.2.ph.i.i.i89.i = phi ptr [ %i.qc, %bb.bt ], [ %i.qp, %bb.bw ], [ %i.qr, %.preheader.i.i.i84.i ]
  %i.qx = and i32 %i.qw, 254
  %spec.select.i.i.i.i.i.i90.i = icmp eq i32 %i.qx, 18
  br i1 %spec.select.i.i.i.i.i.i90.i, label %bb.bx, label %_ZNK4llvm4Type13getScalarTypeEv.exit.i.i.i.i91.i

bb.bx:                                            ; preds = %.loopexit.i.i.i88.i
  %i.qy = getelementptr inbounds nuw i8, ptr %.2.ph.i.i.i89.i, i64 16
  %i.qz = load ptr, ptr %i.qy, align 8, !tbaa !383
  %i.ra = load ptr, ptr %i.qz, align 8, !tbaa !304
  %.phi.trans.insert.i.i.i.i95.i = getelementptr inbounds nuw i8, ptr %i.ra, i64 8
  %.pre.i.i.i.i96.i = load i32, ptr %.phi.trans.insert.i.i.i.i95.i, align 8
  br label %_ZNK4llvm4Type13getScalarTypeEv.exit.i.i.i.i91.i

_ZNK4llvm4Type13getScalarTypeEv.exit.i.i.i.i91.i: ; preds = %bb.bx, %.loopexit.i.i.i88.i
  %i.rb = phi i32 [ %.pre.i.i.i.i96.i, %bb.bx ], [ %i.qw, %.loopexit.i.i.i88.i ] ; 2 uses
  %trunc.i.i.i.i.i.i92.i = trunc i32 %i.rb to i8
  switch i8 %trunc.i.i.i.i.i.i92.i, label %_ZN4llvm14FPMathOperator7classofEPKNS_5ValueE.exit102.i [
    i8 3, label %_ZN4llvm14FPMathOperator7classofEPKNS_5ValueE.exit102.thread.i
    i8 2, label %_ZN4llvm14FPMathOperator7classofEPKNS_5ValueE.exit102.thread.i
    i8 0, label %_ZN4llvm14FPMathOperator7classofEPKNS_5ValueE.exit102.thread.i
    i8 1, label %_ZN4llvm14FPMathOperator7classofEPKNS_5ValueE.exit102.thread.i
    i8 5, label %_ZN4llvm14FPMathOperator7classofEPKNS_5ValueE.exit102.thread.i
  ]

_ZN4llvm14FPMathOperator7classofEPKNS_5ValueE.exit102.i: ; preds = %_ZNK4llvm4Type13getScalarTypeEv.exit.i.i.i.i91.i
  %i.rc = and i32 %i.rb, 253
  %spec.select.i.i21.i.i.i94.i = icmp eq i32 %i.rc, 4
  br i1 %spec.select.i.i21.i.i.i94.i, label %_ZN4llvm14FPMathOperator7classofEPKNS_5ValueE.exit102.thread.i, label %_ZN4llvm14FPMathOperator7classofEPKNS_5ValueE.exit102.thread133.i

_ZN4llvm14FPMathOperator7classofEPKNS_5ValueE.exit102.thread.i: ; preds = %_ZN4llvm14FPMathOperator7classofEPKNS_5ValueE.exit102.i, %_ZNK4llvm4Type13getScalarTypeEv.exit.i.i.i.i91.i, %_ZNK4llvm4Type13getScalarTypeEv.exit.i.i.i.i91.i, %_ZNK4llvm4Type13getScalarTypeEv.exit.i.i.i.i91.i, %_ZNK4llvm4Type13getScalarTypeEv.exit.i.i.i.i91.i, %_ZNK4llvm4Type13getScalarTypeEv.exit.i.i.i.i91.i, %_ZNK4llvm4Type16isFPOrFPVectorTyEv.exit.i.i81.i, %_ZNK4llvm4Type13getScalarTypeEv.exit.i.i.i78.i, %_ZNK4llvm4Type13getScalarTypeEv.exit.i.i.i78.i, %_ZNK4llvm4Type13getScalarTypeEv.exit.i.i.i78.i, %_ZNK4llvm4Type13getScalarTypeEv.exit.i.i.i78.i, %_ZNK4llvm4Type13getScalarTypeEv.exit.i.i.i78.i, %bb.bq, %bb.bq, %bb.bq, %bb.bq, %bb.bq, %bb.bq, %bb.bq, %bb.bq, %bb.bq, %bb.bq, %bb.bq
  %.sroa.0.0.copyload.i63.i = load i32, ptr %i.jn, align 8, !tbaa !316
  %i.rd = load ptr, ptr %i.jm, align 8            ; 2 uses
  %.not9.i.i64.i = icmp eq ptr %i.rd, null
  br i1 %.not9.i.i64.i, label %_ZNK4llvm13IRBuilderBase10setFPAttrsEPNS_11InstructionEPNS_6MDNodeENS_13FastMathFlagsE.exit.i65.i, label %bb.by

bb.by:                                            ; preds = %_ZN4llvm14FPMathOperator7classofEPKNS_5ValueE.exit102.thread.i
  call void @_ZN4llvm11Instruction11setMetadataEjPNS_6MDNodeE(ptr noundef nonnull align 8 dereferenceable(72) %i.py, i32 noundef 3, ptr noundef nonnull %i.rd) #16
  br label %_ZNK4llvm13IRBuilderBase10setFPAttrsEPNS_11InstructionEPNS_6MDNodeENS_13FastMathFlagsE.exit.i65.i

_ZNK4llvm13IRBuilderBase10setFPAttrsEPNS_11InstructionEPNS_6MDNodeENS_13FastMathFlagsE.exit.i65.i: ; preds = %bb.by, %_ZN4llvm14FPMathOperator7classofEPKNS_5ValueE.exit102.thread.i
  call void @_ZN4llvm11Instruction16setFastMathFlagsENS_13FastMathFlagsE(ptr noundef nonnull align 8 dereferenceable(72) %i.py, i32 %.sroa.0.0.copyload.i63.i) #16
  br label %_ZN4llvm14FPMathOperator7classofEPKNS_5ValueE.exit102.thread133.i

_ZN4llvm14FPMathOperator7classofEPKNS_5ValueE.exit102.thread133.i: ; preds = %_ZNK4llvm13IRBuilderBase10setFPAttrsEPNS_11InstructionEPNS_6MDNodeENS_13FastMathFlagsE.exit.i65.i, %_ZN4llvm14FPMathOperator7classofEPKNS_5ValueE.exit102.i, %bb.bv, %bb.bu, %bb.bq, %bb.bp
  %i.re = load ptr, ptr %i.jl, align 8, !tbaa !378, !nonnull !34, !align !35 ; 2 uses
  %.sroa.0.0.copyload.i.i60.i = load ptr, ptr %i.jt, align 8
  %.sroa.2.0.copyload.i.i62.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8
  %i.rf = load ptr, ptr %i.re, align 8, !tbaa !29
  %i.rg = getelementptr inbounds nuw i8, ptr %i.rf, i64 16
  %i.rh = load ptr, ptr %i.rg, align 8
  call void %i.rh(ptr noundef nonnull align 8 dereferenceable(8) %i.re, ptr noundef nonnull %i.py, ptr noundef nonnull align 8 dereferenceable(34) %19, ptr %.sroa.0.0.copyload.i.i60.i, i64 %.sroa.2.0.copyload.i.i62.i) #16, !inline_history !387
  call void @_ZNK4llvm13IRBuilderBase20SetInstDebugLocationEPNS_11InstructionE(ptr noundef nonnull align 8 dereferenceable(88) %10, ptr noundef nonnull %i.py) #16
  br label %_ZN4llvm13IRBuilderBase10CreateCastENS_11Instruction7CastOpsEPNS_5ValueEPNS_4TypeERKNS_5TwineEPNS_6MDNodeENS_9FMFSourceE.exit66.i

_ZN4llvm13IRBuilderBase10CreateCastENS_11Instruction7CastOpsEPNS_5ValueEPNS_4TypeERKNS_5TwineEPNS_6MDNodeENS_9FMFSourceE.exit66.i: ; preds = %_ZN4llvm14FPMathOperator7classofEPKNS_5ValueE.exit102.thread133.i, %bb.bo, %_ZN4llvm13IRBuilderBase10CreateCastENS_11Instruction7CastOpsEPNS_5ValueEPNS_4TypeERKNS_5TwineEPNS_6MDNodeENS_9FMFSourceE.exit.i
  %.1.i59.i = phi ptr [ %i.px, %bb.bo ], [ %i.py, %_ZN4llvm14FPMathOperator7classofEPKNS_5ValueE.exit102.thread133.i ], [ %i.pp, %_ZN4llvm13IRBuilderBase10CreateCastENS_11Instruction7CastOpsEPNS_5ValueEPNS_4TypeERKNS_5TwineEPNS_6MDNodeENS_9FMFSourceE.exit.i ] ; 6 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #16
  br i1 %i.kv, label %bb.bz, label %bb.ch

bb.bz:                                            ; preds = %_ZN4llvm13IRBuilderBase10CreateCastENS_11Instruction7CastOpsEPNS_5ValueEPNS_4TypeERKNS_5TwineEPNS_6MDNodeENS_9FMFSourceE.exit66.i
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #16
  store i16 257, ptr %i.kj, align 8
  %i.ri = load i8, ptr %i.jo, align 4, !tbaa !367, !range !276, !noundef !34
  %i.rj = trunc nuw i8 %i.ri to i1
  br i1 %i.rj, label %bb.ca, label %bb.cb

bb.ca:                                            ; preds = %bb.bz
  %i.rk = call noundef ptr @_ZN4llvm13IRBuilderBase23CreateConstrainedFPCastEjPNS_5ValueEPNS_4TypeENS_9FMFSourceERKNS_5TwineEPNS_6MDNodeESt8optionalINS_12RoundingModeEESB_INS_2fp17ExceptionBehaviorEE(ptr noundef nonnull align 8 dereferenceable(88) %10, i32 noundef 150, ptr noundef nonnull %.1.i59.i, ptr noundef nonnull %i.kn, i64 0, ptr noundef nonnull align 8 dereferenceable(34) %20, ptr noundef null, i16 0, i16 0) #16
  br label %_ZN4llvm13IRBuilderBase12CreateUIToFPEPNS_5ValueEPNS_4TypeERKNS_5TwineEbPNS_6MDNodeE.exit.i

bb.cb:                                            ; preds = %bb.bz
  %i.rl = getelementptr inbounds nuw i8, ptr %.1.i59.i, i64 8
  %i.rm = load ptr, ptr %i.rl, align 8, !tbaa !290
  %i.rn = icmp eq ptr %i.rm, %i.kn
  br i1 %i.rn, label %_ZN4llvm13IRBuilderBase12CreateUIToFPEPNS_5ValueEPNS_4TypeERKNS_5TwineEbPNS_6MDNodeE.exit.i, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.ro = load ptr, ptr %i.jk, align 8, !tbaa !372, !nonnull !34, !align !35 ; 2 uses
  %i.rp = load ptr, ptr %i.ro, align 8, !tbaa !29
  %i.rq = getelementptr inbounds nuw i8, ptr %i.rp, i64 120
  %i.rr = load ptr, ptr %i.rq, align 8
  %i.rs = call noundef ptr %i.rr(ptr noundef nonnull align 8 dereferenceable(8) %i.ro, i32 noundef 44, ptr noundef nonnull %.1.i59.i, ptr noundef nonnull %i.kn) #16, !inline_history !382 ; 2 uses
  %.not.not.i67.i = icmp eq ptr %i.rs, null
  br i1 %.not.not.i67.i, label %bb.cd, label %_ZN4llvm13IRBuilderBase12CreateUIToFPEPNS_5ValueEPNS_4TypeERKNS_5TwineEbPNS_6MDNodeE.exit.i

bb.cd:                                            ; preds = %bb.cc
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #16
  store i16 257, ptr %i.kk, align 8
  %i.rt = call noundef ptr @_ZN4llvm8CastInst6CreateENS_11Instruction7CastOpsEPNS_5ValueEPNS_4TypeERKNS_5TwineENS_14InsertPositionE(i32 noundef 44, ptr noundef nonnull %.1.i59.i, ptr noundef nonnull %i.kn, ptr noundef nonnull align 8 dereferenceable(34) %3, ptr null, i64 0) #16 ; 6 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  %i.ru = call noundef zeroext i1 @_ZN4llvm14FPMathOperator7classofEPKNS_5ValueE(ptr noundef nonnull align 8 dereferenceable(72) %i.rt)
  br i1 %i.ru, label %bb.ce, label %bb.cg

bb.ce:                                            ; preds = %bb.cd
  %.sroa.0.0.copyload.i72.i = load i32, ptr %i.jn, align 8, !tbaa !316
  %i.rv = load ptr, ptr %i.jm, align 8            ; 2 uses
  %.not9.i.i73.i = icmp eq ptr %i.rv, null
  br i1 %.not9.i.i73.i, label %_ZNK4llvm13IRBuilderBase10setFPAttrsEPNS_11InstructionEPNS_6MDNodeENS_13FastMathFlagsE.exit.i74.i, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  call void @_ZN4llvm11Instruction11setMetadataEjPNS_6MDNodeE(ptr noundef nonnull align 8 dereferenceable(72) %i.rt, i32 noundef 3, ptr noundef nonnull %i.rv) #16
  br label %_ZNK4llvm13IRBuilderBase10setFPAttrsEPNS_11InstructionEPNS_6MDNodeENS_13FastMathFlagsE.exit.i74.i

_ZNK4llvm13IRBuilderBase10setFPAttrsEPNS_11InstructionEPNS_6MDNodeENS_13FastMathFlagsE.exit.i74.i: ; preds = %bb.cf, %bb.ce
  call void @_ZN4llvm11Instruction16setFastMathFlagsENS_13FastMathFlagsE(ptr noundef nonnull align 8 dereferenceable(72) %i.rt, i32 %.sroa.0.0.copyload.i72.i) #16
  br label %bb.cg

bb.cg:                                            ; preds = %_ZNK4llvm13IRBuilderBase10setFPAttrsEPNS_11InstructionEPNS_6MDNodeENS_13FastMathFlagsE.exit.i74.i, %bb.cd
  %i.rw = load ptr, ptr %i.jl, align 8, !tbaa !378, !nonnull !34, !align !35 ; 2 uses
  %.sroa.0.0.copyload.i.i69.i = load ptr, ptr %i.jt, align 8
  %.sroa.2.0.copyload.i.i71.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8
  %i.rx = load ptr, ptr %i.rw, align 8, !tbaa !29
  %i.ry = getelementptr inbounds nuw i8, ptr %i.rx, i64 16
  %i.rz = load ptr, ptr %i.ry, align 8
  call void %i.rz(ptr noundef nonnull align 8 dereferenceable(8) %i.rw, ptr noundef nonnull %i.rt, ptr noundef nonnull align 8 dereferenceable(34) %20, ptr %.sroa.0.0.copyload.i.i69.i, i64 %.sroa.2.0.copyload.i.i71.i) #16, !inline_history !387
  call void @_ZNK4llvm13IRBuilderBase20SetInstDebugLocationEPNS_11InstructionE(ptr noundef nonnull align 8 dereferenceable(88) %10, ptr noundef nonnull %i.rt) #16
  br label %_ZN4llvm13IRBuilderBase12CreateUIToFPEPNS_5ValueEPNS_4TypeERKNS_5TwineEbPNS_6MDNodeE.exit.i

_ZN4llvm13IRBuilderBase12CreateUIToFPEPNS_5ValueEPNS_4TypeERKNS_5TwineEbPNS_6MDNodeE.exit.i: ; preds = %bb.cg, %bb.cc, %bb.cb, %bb.ca
  %.0.i.i = phi ptr [ %i.rk, %bb.ca ], [ %i.rs, %bb.cc ], [ %i.rt, %bb.cg ], [ %.1.i59.i, %bb.cb ]
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #16
  br label %bb.ch

bb.ch:                                            ; preds = %_ZN4llvm13IRBuilderBase12CreateUIToFPEPNS_5ValueEPNS_4TypeERKNS_5TwineEbPNS_6MDNodeE.exit.i, %_ZN4llvm13IRBuilderBase10CreateCastENS_11Instruction7CastOpsEPNS_5ValueEPNS_4TypeERKNS_5TwineEPNS_6MDNodeENS_9FMFSourceE.exit66.i
  %.0.i = phi ptr [ %.0.i.i, %_ZN4llvm13IRBuilderBase12CreateUIToFPEPNS_5ValueEPNS_4TypeERKNS_5TwineEbPNS_6MDNodeE.exit.i ], [ %.1.i59.i, %_ZN4llvm13IRBuilderBase10CreateCastENS_11Instruction7CastOpsEPNS_5ValueEPNS_4TypeERKNS_5TwineEPNS_6MDNodeENS_9FMFSourceE.exit66.i ]
  %i.sa = load ptr, ptr %.sroa.0116.0.ptr151.i, align 8, !tbaa !317
  call void @_ZN4llvm5Value18replaceAllUsesWithEPS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.sa, ptr noundef %.0.i) #16
  %i.sb = load ptr, ptr %.sroa.0116.0.ptr151.i, align 8, !tbaa !317
  %i.sc = call { ptr, i64 } @_ZN4llvm11Instruction15eraseFromParentEv(ptr noundef nonnull align 8 dereferenceable(72) %i.sb) #16 ; 0 uses
  call void @_ZN4llvm24IRBuilderDefaultInserterD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ji) #16
  call void @_ZN4llvm15IRBuilderFolderD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.jh) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #16
  %i.sd = load i32, ptr %i.jg, align 8, !tbaa !302
  %i.se = icmp ugt i32 %i.sd, 64
  br i1 %i.se, label %bb.ci, label %_ZN4llvm5APIntD2Ev.exit.i

bb.ci:                                            ; preds = %bb.ch
  %i.sf = load ptr, ptr %9, align 8, !tbaa !113   ; 2 uses
  %i.sg = icmp eq ptr %i.sf, null
  br i1 %i.sg, label %_ZN4llvm5APIntD2Ev.exit.i, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  call void @_ZdaPv(ptr noundef nonnull %i.sf) #20
  br label %_ZN4llvm5APIntD2Ev.exit.i

_ZN4llvm5APIntD2Ev.exit.i:                        ; preds = %bb.cj, %bb.ci, %bb.ch
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #16
  br label %bb.ck

bb.ck:                                            ; preds = %_ZN4llvm5APIntD2Ev.exit.i, %bb.ay
  %i.sh = add nuw nsw i64 %.sroa.7.0150.i, 1
  %.sroa.0116.0.add.i = add nuw nsw i64 %.sroa.0116.0.idx149.i, 8 ; 3 uses
  %.sroa.0116.0.ptr.i = getelementptr inbounds nuw i8, ptr %.sroa.0124.0155.i, i64 %.sroa.0116.0.add.i
  %.not136.i = icmp eq i64 %.sroa.0116.0.add.i, 40
  br i1 %.not136.i, label %bb.ax, label %bb.ay

._crit_edge.loopexit.i:                           ; preds = %.lr.ph.i34
  %.pre.i35 = load ptr, ptr %.sroa.0124.0155.i, align 8, !tbaa !334
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.loopexit.i, %bb.ax
  %i.si = phi ptr [ %.pre.i35, %._crit_edge.loopexit.i ], [ %i.ma, %bb.ax ]
  %i.sj = call { ptr, i64 } @_ZN4llvm11Instruction15eraseFromParentEv(ptr noundef nonnull align 8 dereferenceable(72) %i.si) #16 ; 0 uses
  %i.sk = load i32, ptr %i.jf, align 8, !tbaa !302
  %i.sl = icmp ugt i32 %i.sk, 64
  br i1 %i.sl, label %bb.cl, label %_ZN4llvm5APIntD2Ev.exit55.i

bb.cl:                                            ; preds = %._crit_edge.i
  %i.sm = load ptr, ptr %8, align 8, !tbaa !113   ; 2 uses
  %i.sn = icmp eq ptr %i.sm, null
  br i1 %i.sn, label %_ZN4llvm5APIntD2Ev.exit55.i, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  call void @_ZdaPv(ptr noundef nonnull %i.sm) #20
  br label %_ZN4llvm5APIntD2Ev.exit55.i

_ZN4llvm5APIntD2Ev.exit55.i:                      ; preds = %bb.cm, %bb.cl, %._crit_edge.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #16
  %i.so = add i64 %.pn.i, 40
  %i.sp = sdiv exact i64 %i.so, 40                ; 3 uses
  %.not.i.i.i36 = icmp ult i64 %i.sp, %i.iq
  br i1 %.not.i.i.i36, label %bb.cn, label %_ZL31optimizeSVEDeinterleavedExtendsN4llvm13SmallDenseMapIPNS_8CallInstESt5arrayIPNS_8CastInstELm4EELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S6_EEEE.exit

bb.cn:                                            ; preds = %_ZN4llvm5APIntD2Ev.exit55.i
  %i.sq = lshr i64 %i.sp, 5                       ; 3 uses
  %i.sr = getelementptr inbounds nuw [4 x i8], ptr %i.il, i64 %i.sq
  %i.ss = load i32, ptr %i.sr, align 4, !tbaa !316
  %i.st = trunc nuw i64 %i.sp to i32
  %i.su = and i32 %i.st, 31
  %i.sv = shl nsw i32 -1, %i.su
  %i.sw = and i32 %i.ss, %i.sv                    ; 2 uses
  %i.sx = icmp eq i32 %i.sw, 0
  br i1 %i.sx, label %.lr.ph.i.i.i.preheader, label %_ZN4llvm16DenseMapIteratorIPNS_8CallInstESt5arrayIPNS_8CastInstELm4EENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S6_EELb0EEppEv.exit.i

.lr.ph.i.i.i.preheader:                           ; preds = %bb.cn
  %i.sy = add nuw nsw i64 %i.sq, 1                ; 2 uses
  %i.sz = icmp eq i64 %i.sy, %i.is
  br i1 %i.sz, label %_ZL31optimizeSVEDeinterleavedExtendsN4llvm13SmallDenseMapIPNS_8CallInstESt5arrayIPNS_8CastInstELm4EELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S6_EEEE.exit, label %.lr.ph163

.lr.ph.i.i.i:                                     ; preds = %.lr.ph163
  %i.ta = add i64 %i.tc, 1                        ; 2 uses
  %i.tb = icmp eq i64 %i.ta, %i.is
  br i1 %i.tb, label %_ZL31optimizeSVEDeinterleavedExtendsN4llvm13SmallDenseMapIPNS_8CallInstESt5arrayIPNS_8CastInstELm4EELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S6_EEEE.exit, label %.lr.ph163, !llvm.loop !332

.lr.ph163:                                        ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i
  %i.tc = phi i64 [ %i.ta, %.lr.ph.i.i.i ], [ %i.sy, %.lr.ph.i.i.i.preheader ] ; 3 uses
  %i.td = getelementptr inbounds nuw [4 x i8], ptr %i.il, i64 %i.tc
  %i.te = load i32, ptr %i.td, align 4, !tbaa !316 ; 2 uses
  %i.tf = icmp eq i32 %i.te, 0
  br i1 %i.tf, label %.lr.ph.i.i.i, label %_ZN4llvm16DenseMapIteratorIPNS_8CallInstESt5arrayIPNS_8CastInstELm4EENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S6_EELb0EEppEv.exit.i, !llvm.loop !332

_ZN4llvm16DenseMapIteratorIPNS_8CallInstESt5arrayIPNS_8CastInstELm4EENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S6_EELb0EEppEv.exit.i: ; preds = %.lr.ph163, %bb.cn
  %.012.lcssa.i.i.i = phi i64 [ %i.sq, %bb.cn ], [ %i.tc, %.lr.ph163 ]
  %.0.lcssa.i.i.i = phi i32 [ %i.sw, %bb.cn ], [ %i.te, %.lr.ph163 ]
  %i.tg = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.lcssa.i.i.i, i1 true)
  %.idx.i.i.i = mul i64 %.012.lcssa.i.i.i, 1280
  %narrow210.i = mul nuw nsw i32 %i.tg, 40
  %.idx209.i = zext nneg i32 %narrow210.i to i64
  %i.th = add i64 %.idx.i.i.i, %.idx209.i         ; 2 uses
  %.not135.i = icmp eq i64 %i.th, %.idx208.i
  br i1 %.not135.i, label %_ZL31optimizeSVEDeinterleavedExtendsN4llvm13SmallDenseMapIPNS_8CallInstESt5arrayIPNS_8CastInstELm4EELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S6_EEEE.exit, label %bb.au

.lr.ph.i34:                                       ; preds = %bb.ax, %.lr.ph.i34
  %.sroa.0103.0153.i = phi ptr [ %i.tj, %.lr.ph.i34 ], [ %i.mc, %bb.ax ] ; 2 uses
  %i.ti = getelementptr inbounds nuw i8, ptr %.sroa.0103.0153.i, i64 8
  %i.tj = load ptr, ptr %i.ti, align 8, !tbaa !313 ; 2 uses
  %i.tk = getelementptr inbounds nuw i8, ptr %.sroa.0103.0153.i, i64 24
  %i.tl = load ptr, ptr %i.tk, align 8, !tbaa !311
  %i.tm = call { ptr, i64 } @_ZN4llvm11Instruction15eraseFromParentEv(ptr noundef nonnull align 8 dereferenceable(72) %i.tl) #16 ; 0 uses
  %.not138.i = icmp eq ptr %i.tj, null
  br i1 %.not138.i, label %._crit_edge.loopexit.i, label %.lr.ph.i34

_ZL31optimizeSVEDeinterleavedExtendsN4llvm13SmallDenseMapIPNS_8CallInstESt5arrayIPNS_8CastInstELm4EELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S6_EEEE.exit: ; preds = %.lr.ph.i.i.i.i, %_ZN4llvm5APIntD2Ev.exit55.i, %_ZN4llvm16DenseMapIteratorIPNS_8CallInstESt5arrayIPNS_8CastInstELm4EENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S6_EELb0EEppEv.exit.i, %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i, %.lr.ph.i.i.i.i.preheader, %bb.as, %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_8CallInstESt5arrayIPNS_8CastInstELm4EELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S7_EEEES3_S7_S9_SC_E5beginEv.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %16)
  call void @llvm.lifetime.end.p0(ptr nonnull %17)
  %i.tn = load i32, ptr %28, align 8
  %i.to = and i32 %i.tn, 1
  %.not.i.i39 = icmp eq i32 %i.to, 0
  br i1 %.not.i.i39, label %bb.co, label %_ZN4llvm13SmallDenseMapIPNS_8CallInstESt5arrayIPNS_8CastInstELm4EELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S6_EEED2Ev.exit

bb.co:                                            ; preds = %_ZL31optimizeSVEDeinterleavedExtendsN4llvm13SmallDenseMapIPNS_8CallInstESt5arrayIPNS_8CastInstELm4EELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S6_EEEE.exit
  %i.tp = load i32, ptr %i.im, align 8, !tbaa !113 ; 2 uses
  %i.tq = icmp eq i32 %i.tp, 0
  br i1 %i.tq, label %_ZN4llvm13SmallDenseMapIPNS_8CallInstESt5arrayIPNS_8CastInstELm4EELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S6_EEED2Ev.exit, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  %i.tr = load ptr, ptr %i.ig, align 8, !tbaa !113
  %i.ts = zext i32 %i.tp to i64                   ; 2 uses
  %i.tt = mul nuw nsw i64 %i.ts, 40
  %i.tu = add nuw nsw i64 %i.ts, 31
  %i.tv = lshr i64 %i.tu, 3
  %i.tw = and i64 %i.tv, 1073741820
  %i.tx = add nuw nsw i64 %i.tw, %i.tt
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.tr, i64 noundef %i.tx, i64 noundef 8) #16
  br label %_ZN4llvm13SmallDenseMapIPNS_8CallInstESt5arrayIPNS_8CastInstELm4EELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S6_EEED2Ev.exit

_ZN4llvm13SmallDenseMapIPNS_8CallInstESt5arrayIPNS_8CastInstELm4EELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S6_EEED2Ev.exit: ; preds = %bb.c, %bb.cp, %bb.co, %_ZL31optimizeSVEDeinterleavedExtendsN4llvm13SmallDenseMapIPNS_8CallInstESt5arrayIPNS_8CastInstELm4EELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S6_EEEE.exit, %._crit_edge75
  %i.ty = phi i1 [ false, %._crit_edge75 ], [ true, %bb.cp ], [ true, %bb.co ], [ true, %_ZL31optimizeSVEDeinterleavedExtendsN4llvm13SmallDenseMapIPNS_8CallInstESt5arrayIPNS_8CastInstELm4EELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S6_EEEE.exit ], [ false, %bb.c ]
  %i.tz = load i32, ptr %26, align 8
  %i.ua = and i32 %i.tz, 1
  %.not.i.i40 = icmp eq i32 %i.ua, 0
  br i1 %.not.i.i40, label %bb.cq, label %_ZN4llvm13SmallDenseMapIPNS_8CallInstESt5arrayIPNS_8CastInstELm4EELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S6_EEED2Ev.exit41

bb.cq:                                            ; preds = %_ZN4llvm13SmallDenseMapIPNS_8CallInstESt5arrayIPNS_8CastInstELm4EELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S6_EEED2Ev.exit
  %i.ub = getelementptr inbounds nuw i8, ptr %26, i64 24
  %i.uc = load i32, ptr %i.ub, align 8, !tbaa !113 ; 2 uses
  %i.ud = icmp eq i32 %i.uc, 0
  br i1 %i.ud, label %_ZN4llvm13SmallDenseMapIPNS_8CallInstESt5arrayIPNS_8CastInstELm4EELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S6_EEED2Ev.exit41, label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  %i.ue = getelementptr inbounds nuw i8, ptr %26, i64 8
  %i.uf = load ptr, ptr %i.ue, align 8, !tbaa !113
  %i.ug = zext i32 %i.uc to i64                   ; 2 uses
  %i.uh = mul nuw nsw i64 %i.ug, 40
  %i.ui = add nuw nsw i64 %i.ug, 31
  %i.uj = lshr i64 %i.ui, 3
  %i.uk = and i64 %i.uj, 1073741820
  %i.ul = add nuw nsw i64 %i.uk, %i.uh
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.uf, i64 noundef %i.ul, i64 noundef 8) #16
  br label %_ZN4llvm13SmallDenseMapIPNS_8CallInstESt5arrayIPNS_8CastInstELm4EELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S6_EEED2Ev.exit41

_ZN4llvm13SmallDenseMapIPNS_8CallInstESt5arrayIPNS_8CastInstELm4EELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S6_EEED2Ev.exit41: ; preds = %_ZN4llvm13SmallDenseMapIPNS_8CallInstESt5arrayIPNS_8CastInstELm4EELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S6_EEED2Ev.exit, %bb.cq, %bb.cr
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #16
  br label %bb.cs

bb.cs:                                            ; preds = %bb.a, %bb.b, %_ZN4llvm13SmallDenseMapIPNS_8CallInstESt5arrayIPNS_8CastInstELm4EELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S6_EEED2Ev.exit41
  %.1 = phi i1 [ %i.ty, %_ZN4llvm13SmallDenseMapIPNS_8CallInstESt5arrayIPNS_8CastInstELm4EELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S6_EEED2Ev.exit41 ], [ false, %bb.b ], [ false, %bb.a ]
  ret i1 %.1
}

; Function Attrs: nounwind
declare void @_ZN4llvm10DataLayoutD1Ev(ptr noundef nonnull align 8 dead_on_return(912) dereferenceable(912)) unnamed_addr #3

declare void @_ZN4llvm30initializeTargetPassConfigPassERNS_12PassRegistryE(ptr noundef nonnull align 8 dereferenceable(160)) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define internal noalias noundef nonnull ptr @_ZN4llvm15callDefaultCtorIN12_GLOBAL__N_114SVEShuffleOptsEEEPNS_4PassEv() #0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #18 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr null, ptr %i.b, align 8, !tbaa !23
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr @_ZN12_GLOBAL__N_114SVEShuffleOpts2IDE, ptr %i.c, align 8, !tbaa !27
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i32 1, ptr %i.d, align 8, !tbaa !28
  store ptr getelementptr inbounds nuw inrange(-16, 152) (i8, ptr @_ZTVN12_GLOBAL__N_114SVEShuffleOptsE, i64 16), ptr %i.a, align 8, !tbaa !29
  ret ptr %i.a
}

declare void @_ZN4llvm12PassRegistry12registerPassERKNS_8PassInfoEb(ptr noundef nonnull align 8 dereferenceable(160), ptr noundef nonnull align 8 dereferenceable(56), i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nounwind
declare void @_ZN4llvm4PassD2Ev(ptr noundef nonnull align 8 dead_on_return(28) dereferenceable(28)) unnamed_addr #3

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN12_GLOBAL__N_114SVEShuffleOptsD0Ev(ptr noundef nonnull align 8 dereferenceable(28) %0) unnamed_addr #5 align 2 {
bb.a:
  tail call void @_ZN4llvm4PassD2Ev(ptr noundef nonnull align 8 dead_on_return(28) dereferenceable(28) %0) #16
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 32) #20
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal { ptr, i64 } @_ZNK12_GLOBAL__N_114SVEShuffleOpts11getPassNameEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #6 align 2 {
bb.a:
  ret { ptr, i64 } { ptr @.str.1, i64 25 }
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvm4Pass16doInitializationERNS_6ModuleE(ptr noundef nonnull align 8 dereferenceable(28) %0, ptr noundef nonnull align 8 dereferenceable(1288) %1) unnamed_addr #0 comdat align 2 {
bb.a:
  ret i1 false
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvm4Pass14doFinalizationERNS_6ModuleE(ptr noundef nonnull align 8 dereferenceable(28) %0, ptr noundef nonnull align 8 dereferenceable(1288) %1) unnamed_addr #0 comdat align 2 {
bb.a:
  ret i1 false
}

declare void @_ZNK4llvm4Pass5printERNS_11raw_ostreamEPKNS_6ModuleE(ptr noundef nonnull align 8 dereferenceable(28), ptr noundef nonnull align 8 dereferenceable(48), ptr noundef) unnamed_addr #4

declare noundef ptr @_ZNK4llvm8LoopPass17createPrinterPassERNS_11raw_ostreamERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(28), ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #4

declare void @_ZN4llvm8LoopPass17assignPassManagerERNS_7PMStackENS_15PassManagerTypeE(ptr noundef nonnull align 8 dereferenceable(28), ptr noundef nonnull align 8 dereferenceable(24), i32 noundef) unnamed_addr #4

declare void @_ZN4llvm8LoopPass18preparePassManagerERNS_7PMStackE(ptr noundef nonnull align 8 dereferenceable(28), ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
end_hunk_1
