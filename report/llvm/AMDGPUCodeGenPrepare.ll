Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/AMDGPUCodeGenPrepare?download=true
inline.NumInlined: 4478
inline.NumDeleted: 2495
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN12_GLOBAL__N_124AMDGPUCodeGenPrepareImpl19visitBinaryOperatorERN4llvm14BinaryOperatorE:bb.a
bb.bt:                                            ; preds = %bb.bs, %bb.br
  %i.lp = phi ptr [ %i.ln, %bb.br ], [ %i.lo, %bb.bs ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #20
  %i.lq = load i32, ptr %i.ib, align 8, !tbaa !94 ; 2 uses
  %i.lr = load i32, ptr %i.ic, align 4, !tbaa !95
  %.not.i66.i = icmp ult i32 %i.lq, %i.lr
  br i1 %.not.i66.i, label %bb.bv, label %bb.bu, !prof !49

bb.bu:                                            ; preds = %bb.bt
  call void @_ZN4llvm23SmallVectorTemplateBaseIPNS_5ValueELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %23, ptr noundef %i.lp)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPNS_5ValueELb1EE9push_backES2_.exit.i

bb.bv:                                            ; preds = %bb.bt
  %i.ls = zext i32 %i.lq to i64
  %i.lt = load ptr, ptr %23, align 8, !tbaa !21
  %i.lu = getelementptr inbounds nuw [8 x i8], ptr %i.lt, i64 %i.ls
  store ptr %i.lp, ptr %i.lu, align 1
  %i.lv = load i32, ptr %i.ib, align 8, !tbaa !94
  %i.lw = add i32 %i.lv, 1
  store i32 %i.lw, ptr %i.ib, align 8, !tbaa !94
  br label %_ZN4llvm23SmallVectorTemplateBaseIPNS_5ValueELb1EE9push_backES2_.exit.i

_ZN4llvm23SmallVectorTemplateBaseIPNS_5ValueELb1EE9push_backES2_.exit.i: ; preds = %bb.bv, %bb.bu
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %.not56.i = icmp eq i64 %indvars.iv.next.i, %i.iy
  br i1 %.not56.i, label %._crit_edge.i, label %bb.bn, !llvm.loop !606

_ZNK12_GLOBAL__N_124AMDGPUCodeGenPrepareImpl19replaceMulWithMul24ERN4llvm14BinaryOperatorE.exit: ; preds = %bb.ax, %bb.ay, %bb.az
  call void @_ZN4llvm24IRBuilderDefaultInserterD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.eh) #20
  call void @_ZN4llvm15IRBuilderFolderD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.eg) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #20
  br label %.sink.split

.sink.split:                                      ; preds = %bb.af, %bb.ae, %bb.ac, %_ZNK12_GLOBAL__N_124AMDGPUCodeGenPrepareImpl19replaceMulWithMul24ERN4llvm14BinaryOperatorE.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %29)
  call void @llvm.lifetime.end.p0(ptr nonnull %30)
  br label %bb.bw

bb.bw:                                            ; preds = %.sink.split, %bb.ab
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  %i.lx = load i8, ptr %1, align 8, !tbaa !137
  %i.ly = zext i8 %i.lx to i32
  %i.lz = add nsw i32 %i.ly, -30                  ; 4 uses
  %i.ma = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  %i.mb = load ptr, ptr %i.ma, align 8, !tbaa !148 ; 7 uses
  switch i32 %i.lz, label %_ZN12_GLOBAL__N_124AMDGPUCodeGenPrepareImpl25tryNarrowMathIfNoOverflowEPN4llvm11InstructionE.exit.thread [
    i32 18, label %bb.bx
    i32 14, label %bb.bx
  ]

bb.bx:                                            ; preds = %bb.bw, %bb.bw
  %i.mc = call noundef i32 @_ZNK4llvm4Type19getScalarSizeInBitsEv(ptr noundef nonnull align 8 dereferenceable(24) %i.mb) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  %i.md = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.me = load ptr, ptr %i.md, align 8, !tbaa !411, !nonnull !19, !align !26
  call void @_ZN4llvm16computeKnownBitsEPKNS_5ValueERKNS_10DataLayoutEPNS_15AssumptionCacheEPKNS_11InstructionEPKNS_13DominatorTreeEbj(ptr dead_on_unwind nonnull writable sret(%"struct.llvm::KnownBits") align 8 %5, ptr noundef nonnull %1, ptr noundef nonnull align 8 dereferenceable(912) %i.me, ptr noundef null, ptr noundef null, ptr noundef null, i1 noundef zeroext true, i32 noundef 0) #20
  %i.mf = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.mg = load i32, ptr %i.mf, align 8, !tbaa !432 ; 6 uses
  %i.mh = icmp ult i32 %i.mg, 65
  br i1 %i.mh, label %bb.by, label %bb.ca

bb.by:                                            ; preds = %bb.bx
  %i.mi = icmp eq i32 %i.mg, 0
  br i1 %i.mi, label %_ZNK4llvm9KnownBits18countMaxActiveBitsEv.exit.i, label %bb.bz, !prof !410

bb.bz:                                            ; preds = %bb.by
  %i.mj = load i64, ptr %5, align 8, !tbaa !198
  %i.mk = sub nuw nsw i32 64, %i.mg
  %i.ml = zext nneg i32 %i.mk to i64
  %i.mm = shl i64 %i.mj, %i.ml
  %i.mn = xor i64 %i.mm, -1
  %i.mo = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.mn, i1 false)
  %i.mp = trunc nuw nsw i64 %i.mo to i32
  br label %_ZNK4llvm9KnownBits18countMaxActiveBitsEv.exit.i

bb.ca:                                            ; preds = %bb.bx
  %i.mq = call noundef i32 @_ZNK4llvm5APInt24countLeadingOnesSlowCaseEv(ptr noundef nonnull align 8 dereferenceable(32) %5) #21
  br label %_ZNK4llvm9KnownBits18countMaxActiveBitsEv.exit.i

_ZNK4llvm9KnownBits18countMaxActiveBitsEv.exit.i: ; preds = %bb.ca, %bb.bz, %bb.by
  %.0.i.i.i.i = phi i32 [ %i.mq, %bb.ca ], [ %i.mp, %bb.bz ], [ 0, %bb.by ]
  %i.mr = sub i32 %i.mg, %.0.i.i.i.i
  %.fr.i = freeze i32 %i.mr                       ; 3 uses
  %i.ms = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.mt = load i32, ptr %i.ms, align 8, !tbaa !432
  %i.mu = icmp ugt i32 %i.mt, 64
  br i1 %i.mu, label %bb.cb, label %_ZN4llvm5APIntD2Ev.exit.i.i

bb.cb:                                            ; preds = %_ZNK4llvm9KnownBits18countMaxActiveBitsEv.exit.i
  %i.mv = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.mw = load ptr, ptr %i.mv, align 8, !tbaa !198 ; 2 uses
  %i.mx = icmp eq ptr %i.mw, null
  br i1 %i.mx, label %_ZN4llvm5APIntD2Ev.exit.i.i, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  call void @_ZdaPv(ptr noundef nonnull %i.mw) #23
  %.pre.i = load i32, ptr %i.mf, align 8, !tbaa !432
  br label %_ZN4llvm5APIntD2Ev.exit.i.i

_ZN4llvm5APIntD2Ev.exit.i.i:                      ; preds = %bb.cc, %bb.cb, %_ZNK4llvm9KnownBits18countMaxActiveBitsEv.exit.i
  %i.my = phi i32 [ %.pre.i, %bb.cc ], [ %i.mg, %bb.cb ], [ %i.mg, %_ZNK4llvm9KnownBits18countMaxActiveBitsEv.exit.i ]
  %i.mz = icmp ugt i32 %i.my, 64
  br i1 %i.mz, label %bb.cd, label %_ZN4llvm9KnownBitsD2Ev.exit.i

bb.cd:                                            ; preds = %_ZN4llvm5APIntD2Ev.exit.i.i
  %i.na = load ptr, ptr %5, align 8, !tbaa !198   ; 2 uses
  %i.nb = icmp eq ptr %i.na, null
  br i1 %i.nb, label %_ZN4llvm9KnownBitsD2Ev.exit.i, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  call void @_ZdaPv(ptr noundef nonnull %i.na) #23
  br label %_ZN4llvm9KnownBitsD2Ev.exit.i

_ZN4llvm9KnownBitsD2Ev.exit.i:                    ; preds = %bb.ce, %bb.cd, %_ZN4llvm5APIntD2Ev.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  %i.nc = icmp ult i32 %.fr.i, 2
  br i1 %i.nc, label %_ZN4llvm8bit_ceilIjEET_S1_.exit.thread.i, label %_ZN4llvm8bit_ceilIjEET_S1_.exit.i

_ZN4llvm8bit_ceilIjEET_S1_.exit.i:                ; preds = %_ZN4llvm9KnownBitsD2Ev.exit.i
  %i.nd = add i32 %.fr.i, -1
  %i.ne = call noundef range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.nd, i1 false)
  %i.nf = sub nuw nsw i32 32, %i.ne
  %i.ng = shl nuw i32 1, %i.nf
  %i.nh = icmp ult i32 %.fr.i, 5
  br i1 %i.nh, label %_ZN4llvm8bit_ceilIjEET_S1_.exit.thread.i, label %bb.cf

_ZN4llvm8bit_ceilIjEET_S1_.exit.thread.i:         ; preds = %_ZN4llvm8bit_ceilIjEET_S1_.exit.i, %_ZN4llvm9KnownBitsD2Ev.exit.i
  br label %bb.cf

bb.cf:                                            ; preds = %_ZN4llvm8bit_ceilIjEET_S1_.exit.thread.i, %_ZN4llvm8bit_ceilIjEET_S1_.exit.i
  %i.ni = phi i32 [ 8, %_ZN4llvm8bit_ceilIjEET_S1_.exit.thread.i ], [ %i.ng, %_ZN4llvm8bit_ceilIjEET_S1_.exit.i ]
  %i.nj = load ptr, ptr %i.md, align 8, !tbaa !411, !nonnull !19, !align !26
  %i.nk = load ptr, ptr %i.ma, align 8, !tbaa !148
  %i.nl = load ptr, ptr %i.nk, align 8, !tbaa !413, !nonnull !19, !align !26
  %i.nm = call noundef ptr @_ZNK4llvm10DataLayout23getSmallestLegalIntTypeERNS_11LLVMContextEj(ptr noundef nonnull align 8 dereferenceable(912) %i.nj, ptr noundef nonnull align 8 dereferenceable(8) %i.nl, i32 noundef %i.ni) #20 ; 2 uses
  %.not.i105 = icmp eq ptr %i.nm, null
  br i1 %.not.i105, label %_ZN12_GLOBAL__N_124AMDGPUCodeGenPrepareImpl25tryNarrowMathIfNoOverflowEPN4llvm11InstructionE.exit.thread, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %i.nn = getelementptr inbounds nuw i8, ptr %i.nm, i64 8
  %i.no = load i32, ptr %i.nn, align 8
  %i.np = lshr i32 %i.no, 8                       ; 2 uses
  %.not78.i = icmp ult i32 %i.np, %i.mc
  br i1 %.not78.i, label %bb.ch, label %_ZN12_GLOBAL__N_124AMDGPUCodeGenPrepareImpl25tryNarrowMathIfNoOverflowEPN4llvm11InstructionE.exit.thread

bb.ch:                                            ; preds = %bb.cg
  %i.nq = load ptr, ptr %i.ma, align 8, !tbaa !148 ; 3 uses
  %i.nr = load ptr, ptr %i.nq, align 8, !tbaa !413, !nonnull !19, !align !26
  %i.ns = call noundef ptr @_ZN4llvm4Type9getIntNTyERNS_11LLVMContextEj(ptr noundef nonnull align 8 dereferenceable(8) %i.nr, i32 noundef %i.np) #20 ; 2 uses
  %i.nt = getelementptr inbounds nuw i8, ptr %i.nq, i64 8
  %i.nu = load i32, ptr %i.nt, align 8            ; 2 uses
  %i.nv = and i32 %i.nu, 254
  %spec.select.i.i.i.i.i.i.i.i.not.i.i.i = icmp eq i32 %i.nv, 18
  br i1 %spec.select.i.i.i.i.i.i.i.i.not.i.i.i, label %bb.ci, label %_ZNK4llvm4Type18getWithNewBitWidthEj.exit.i

bb.ci:                                            ; preds = %bb.ch
  %i.nw = getelementptr inbounds nuw i8, ptr %i.nq, i64 32
  %i.nx = load i32, ptr %i.nw, align 8, !tbaa !451
  %i.ny = and i32 %i.nu, 19
  %i.nz = icmp eq i32 %i.ny, 19
  %.sroa.2.0.insert.shift.i.i.i.i.i = select i1 %i.nz, i64 4294967296, i64 0
  %.sroa.0.0.insert.ext.i.i.i.i.i = zext i32 %i.nx to i64
  %.sroa.0.0.insert.insert.i.i.i.i.i = or disjoint i64 %.sroa.2.0.insert.shift.i.i.i.i.i, %.sroa.0.0.insert.ext.i.i.i.i.i
  %i.oa = call noundef ptr @_ZN4llvm10VectorType3getEPNS_4TypeENS_12ElementCountE(ptr noundef %i.ns, i64 %.sroa.0.0.insert.insert.i.i.i.i.i) #20
  br label %_ZNK4llvm4Type18getWithNewBitWidthEj.exit.i

_ZNK4llvm4Type18getWithNewBitWidthEj.exit.i:      ; preds = %bb.ci, %bb.ch
  %spec.select.i.i.i107 = phi ptr [ %i.oa, %bb.ci ], [ %i.ns, %bb.ch ] ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #20
  %i.ob = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.oc = load ptr, ptr %i.ob, align 8, !tbaa !607, !nonnull !19, !align !26 ; 2 uses
  %i.od = load ptr, ptr %0, align 8, !tbaa !123, !nonnull !19, !align !26
  %i.oe = load ptr, ptr %i.oc, align 8, !tbaa !8
  %i.of = getelementptr inbounds nuw i8, ptr %i.oe, i64 104
  %i.og = load ptr, ptr %i.of, align 8
  call void %i.og(ptr dead_on_unwind nonnull writable sret(%"class.llvm::TargetTransformInfo") align 8 %6, ptr noundef nonnull align 8 dereferenceable(1728) %i.oc, ptr noundef nonnull align 8 dereferenceable(140) %i.od) #20, !inline_history !608
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %7, i8 0, i64 16, i1 false)
  %i.oh = call { i64, i32 } @_ZNK4llvm19TargetTransformInfo22getArithmeticInstrCostEjPNS_4TypeENS0_14TargetCostKindENS0_16OperandValueInfoES4_NS_8ArrayRefIPKNS_5ValueEEEPKNS_11InstructionEPKNS_17TargetLibraryInfoE(ptr noundef nonnull align 8 dereferenceable(8) %6, i32 noundef %i.lz, ptr noundef nonnull %i.mb, i32 noundef 0, i64 0, i64 0, ptr noundef nonnull byval(%"class.llvm::ArrayRef.299") align 8 %7, ptr noundef null, ptr noundef null) #20 ; 2 uses
  %.fca.0.extract23.i = extractvalue { i64, i32 } %i.oh, 0
  %.fca.1.extract24.i = extractvalue { i64, i32 } %i.oh, 1 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %8, i8 0, i64 16, i1 false)
  %i.oi = call { i64, i32 } @_ZNK4llvm19TargetTransformInfo22getArithmeticInstrCostEjPNS_4TypeENS0_14TargetCostKindENS0_16OperandValueInfoES4_NS_8ArrayRefIPKNS_5ValueEEEPKNS_11InstructionEPKNS_17TargetLibraryInfoE(ptr noundef nonnull align 8 dereferenceable(8) %6, i32 noundef %i.lz, ptr noundef %spec.select.i.i.i107, i32 noundef 0, i64 0, i64 0, ptr noundef nonnull byval(%"class.llvm::ArrayRef.299") align 8 %8, ptr noundef null, ptr noundef null) #20 ; 2 uses
  %.fca.0.extract15.i = extractvalue { i64, i32 } %i.oi, 0
  %.fca.1.extract16.i = extractvalue { i64, i32 } %i.oi, 1
  %i.oj = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 3 uses
  %i.ok = load i32, ptr %i.oj, align 4            ; 2 uses
  %i.ol = and i32 %i.ok, 1073741824
  %.not.i.i.i = icmp eq i32 %i.ol, 0
  br i1 %.not.i.i.i, label %_ZNK4llvm4User10getOperandEj.exit.i, label %_ZNK4llvm4User10getOperandEj.exit.thread.i

_ZNK4llvm4User10getOperandEj.exit.i:              ; preds = %_ZNK4llvm4Type18getWithNewBitWidthEj.exit.i
  %i.om = and i32 %i.ok, 268435455
  %i.on = zext nneg i32 %i.om to i64
  %i.oo = sub nsw i64 0, %i.on
  %i.op = getelementptr inbounds [32 x i8], ptr %1, i64 %i.oo ; 2 uses
  %i.oq = load ptr, ptr %i.op, align 8, !tbaa !155
  %i.or = load i8, ptr %i.oq, align 8, !tbaa !137
  %i.os = icmp ult i8 %i.or, 23
  br i1 %i.os, label %.critedge.i, label %_ZNK4llvm4User10getOperandEj.exit80.i

_ZNK4llvm4User10getOperandEj.exit.thread.i:       ; preds = %_ZNK4llvm4Type18getWithNewBitWidthEj.exit.i
  %i.ot = getelementptr inbounds i8, ptr %1, i64 -8
  %i.ou = load ptr, ptr %i.ot, align 8, !tbaa !166 ; 2 uses
  %i.ov = load ptr, ptr %i.ou, align 8, !tbaa !155
  %i.ow = load i8, ptr %i.ov, align 8, !tbaa !137
  %i.ox = icmp ult i8 %i.ow, 23
  br i1 %i.ox, label %.critedge.i, label %_ZNK4llvm4User10getOperandEj.exit80.i

_ZNK4llvm4User10getOperandEj.exit80.i:            ; preds = %_ZNK4llvm4User10getOperandEj.exit.thread.i, %_ZNK4llvm4User10getOperandEj.exit.i
  %i.oy = phi ptr [ %i.ou, %_ZNK4llvm4User10getOperandEj.exit.thread.i ], [ %i.op, %_ZNK4llvm4User10getOperandEj.exit.i ]
  %i.oz = getelementptr inbounds nuw i8, ptr %i.oy, i64 32
  %i.pa = load ptr, ptr %i.oz, align 8, !tbaa !155
  %i.pb = load i8, ptr %i.pa, align 8, !tbaa !137
  %i.pc = icmp ult i8 %i.pb, 23
  br i1 %i.pc, label %.critedge.i, label %48

.critedge.i:                                      ; preds = %_ZNK4llvm4User10getOperandEj.exit80.i, %_ZNK4llvm4User10getOperandEj.exit.thread.i, %_ZNK4llvm4User10getOperandEj.exit.i
  br label %48

48:                                               ; preds = %.critedge.i, %_ZNK4llvm4User10getOperandEj.exit80.i
  %.075.i = phi i64 [ 4, %.critedge.i ], [ 8, %_ZNK4llvm4User10getOperandEj.exit80.i ] ; 2 uses
  %49 = call noundef zeroext i8 @_ZN4llvm19TargetTransformInfo18getCastContextHintEPKNS_11InstructionE(ptr noundef nonnull %1) #20
  %50 = call { i64, i32 } @_ZNK4llvm19TargetTransformInfo16getCastInstrCostEjPNS_4TypeES2_NS0_15CastContextHintENS0_14TargetCostKindEPKNS_11InstructionE(ptr noundef nonnull align 8 dereferenceable(8) %6, i32 noundef 39, ptr noundef %spec.select.i.i.i107, ptr noundef nonnull %i.mb, i8 noundef zeroext %49, i32 noundef 0, ptr noundef null) #20 ; 2 uses
  %.fca.0.extract11.i = extractvalue { i64, i32 } %50, 0 ; 3 uses
  %.fca.1.extract12.i = extractvalue { i64, i32 } %50, 1
  %51 = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %.075.i, i64 %.fca.0.extract11.i)
  %52 = extractvalue { i64, i1 } %51, 1
  br i1 %52, label %53, label %.critedge.i.a

53:                                               ; preds = %48
  %54 = icmp sgt i64 %.fca.0.extract11.i, 0
  %spec.select.i = select i1 %54, i64 9223372036854775807, i64 -9223372036854775808
  br label %_ZN4llvmmlERKNS_15InstructionCostES2_.exit.i

.critedge.i.a:                                    ; preds = %48
  %55 = mul nsw i64 %.fca.0.extract11.i, %.075.i
  %56 = ashr exact i64 %55, 2
  br label %_ZN4llvmmlERKNS_15InstructionCostES2_.exit.i

_ZN4llvmmlERKNS_15InstructionCostES2_.exit.i:     ; preds = %.critedge.i.a, %53
  %.075.i.a = phi i64 [ %56, %.critedge.i.a ], [ %spec.select.i, %53 ]
  %i.pd = icmp eq i32 %.fca.1.extract12.i, 1
  %i.pe = call noundef zeroext i8 @_ZN4llvm19TargetTransformInfo18getCastContextHintEPKNS_11InstructionE(ptr noundef nonnull %1) #20
  %i.pf = call { i64, i32 } @_ZNK4llvm19TargetTransformInfo16getCastInstrCostEjPNS_4TypeES2_NS0_15CastContextHintENS0_14TargetCostKindEPKNS_11InstructionE(ptr noundef nonnull align 8 dereferenceable(8) %6, i32 noundef 40, ptr noundef nonnull %i.mb, ptr noundef %spec.select.i.i.i107, i8 noundef zeroext %i.pe, i32 noundef 0, ptr noundef null) #20 ; 2 uses
  %.fca.1.extract.i = extractvalue { i64, i32 } %i.pf, 1
  %i.pg = icmp eq i32 %.fca.1.extract.i, 1
  %i.ph = select i1 %i.pg, i1 true, i1 %i.pd
  %.sroa.8.1.i = select i1 %i.ph, i32 1, i32 %.fca.1.extract16.i ; 2 uses
  %i.pi = icmp slt i32 %.sroa.8.1.i, %.fca.1.extract24.i
  br i1 %i.pi, label %_ZNK4llvm15InstructionCostgeERKS0_.exit.thread124.i, label %bb.cj

bb.cj:                                            ; preds = %_ZN4llvmmlERKNS_15InstructionCostES2_.exit.i
  %.0.i82.i = call i64 @llvm.sadd.sat.i64(i64 %.fca.0.extract15.i, i64 %.075.i.a)
  %.fca.0.extract.i = extractvalue { i64, i32 } %i.pf, 0
  %.0.i83.i = call i64 @llvm.sadd.sat.i64(i64 %.0.i82.i, i64 %.fca.0.extract.i)
  %i.pj = icmp slt i32 %.fca.1.extract24.i, %.sroa.8.1.i
  %i.pk = icmp sge i64 %.0.i83.i, %.fca.0.extract23.i
  %or.cond.i108 = select i1 %i.pj, i1 true, i1 %i.pk
  br i1 %or.cond.i108, label %_ZN12_GLOBAL__N_124AMDGPUCodeGenPrepareImpl25tryNarrowMathIfNoOverflowEPN4llvm11InstructionE.exit, label %_ZNK4llvm15InstructionCostgeERKS0_.exit.thread124.i

_ZNK4llvm15InstructionCostgeERKS0_.exit.thread124.i: ; preds = %bb.cj, %_ZN4llvmmlERKNS_15InstructionCostES2_.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #20
  %i.pl = load ptr, ptr %i.ma, align 8, !tbaa !148
  %i.pm = load ptr, ptr %i.pl, align 8, !tbaa !413, !nonnull !19, !align !26
  %i.pn = getelementptr inbounds nuw i8, ptr %9, i64 88 ; 3 uses
  %i.po = getelementptr inbounds nuw i8, ptr %9, i64 96 ; 3 uses
  store ptr null, ptr %9, align 8, !tbaa !171
  %i.pp = getelementptr inbounds nuw i8, ptr %9, i64 32
  store ptr %i.pm, ptr %i.pp, align 8, !tbaa !174
  %i.pq = getelementptr inbounds nuw i8, ptr %9, i64 40 ; 4 uses
  store ptr %i.pn, ptr %i.pq, align 8, !tbaa !175
  %i.pr = getelementptr inbounds nuw i8, ptr %9, i64 48 ; 4 uses
  store ptr %i.po, ptr %i.pr, align 8, !tbaa !177
  %i.ps = getelementptr inbounds nuw i8, ptr %9, i64 56
  store ptr null, ptr %i.ps, align 8, !tbaa !179
  %i.pt = getelementptr inbounds nuw i8, ptr %9, i64 64
  store i32 0, ptr %i.pt, align 8, !tbaa !190
  %i.pu = getelementptr inbounds nuw i8, ptr %9, i64 68
  store i8 0, ptr %i.pu, align 4, !tbaa !191
  %i.pv = getelementptr inbounds nuw i8, ptr %9, i64 69
  store i8 2, ptr %i.pv, align 1, !tbaa !192
  %i.pw = getelementptr inbounds nuw i8, ptr %9, i64 70
  store i8 7, ptr %i.pw, align 2, !tbaa !193
  %i.px = getelementptr inbounds nuw i8, ptr %9, i64 72
  %i.py = getelementptr inbounds nuw i8, ptr %9, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.px, i8 0, i64 16, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 160) (i8, ptr @_ZTVN4llvm14ConstantFolderE, i64 16), ptr %i.pn, align 8, !tbaa !8
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4llvm24IRBuilderDefaultInserterE, i64 16), ptr %i.po, align 8, !tbaa !8
  %i.pz = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.qa = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.qb = load ptr, ptr %i.qa, align 8, !tbaa !167
  store ptr %i.qb, ptr %i.py, align 8, !tbaa !194
  %i.qc = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 4 uses
  store ptr %i.pz, ptr %i.qc, align 8
  %.sroa.4.0..sroa_idx.i.i.i109 = getelementptr inbounds nuw i8, ptr %9, i64 24 ; 4 uses
  store i16 0, ptr %.sroa.4.0..sroa_idx.i.i.i109, align 8
  %i.qd = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK4llvm11Instruction17getStableDebugLocEv(ptr noundef nonnull align 8 dereferenceable(72) %1) #20
  %i.qe = load i64, ptr %i.qd, align 8, !tbaa !195
  store i64 %i.qe, ptr %9, align 8, !tbaa !195
  %i.qf = load i32, ptr %i.oj, align 4            ; 2 uses
  %i.qg = and i32 %i.qf, 1073741824
  %.not.i.i86.i = icmp eq i32 %i.qg, 0
  br i1 %.not.i.i86.i, label %bb.cl, label %bb.ck

bb.ck:                                            ; preds = %_ZNK4llvm15InstructionCostgeERKS0_.exit.thread124.i
  %i.qh = getelementptr inbounds i8, ptr %1, i64 -8
  %i.qi = load ptr, ptr %i.qh, align 8, !tbaa !166
  br label %_ZNK4llvm4User10getOperandEj.exit87.i

bb.cl:                                            ; preds = %_ZNK4llvm15InstructionCostgeERKS0_.exit.thread124.i
  %i.qj = and i32 %i.qf, 268435455
  %i.qk = zext nneg i32 %i.qj to i64
  %i.ql = sub nsw i64 0, %i.qk
  %i.qm = getelementptr inbounds [32 x i8], ptr %1, i64 %i.ql
  br label %_ZNK4llvm4User10getOperandEj.exit87.i

_ZNK4llvm4User10getOperandEj.exit87.i:            ; preds = %bb.cl, %bb.ck
  %i.qn = phi ptr [ %i.qi, %bb.ck ], [ %i.qm, %bb.cl ]
  %i.qo = load ptr, ptr %i.qn, align 8, !tbaa !155 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #20
  %i.qp = getelementptr inbounds nuw i8, ptr %10, i64 32
  %i.qq = getelementptr inbounds nuw i8, ptr %i.qo, i64 8
  store i16 257, ptr %i.qp, align 8
  %i.qr = load ptr, ptr %i.qq, align 8, !tbaa !148
  %i.qs = icmp eq ptr %i.qr, %spec.select.i.i.i107
  br i1 %i.qs, label %_ZN4llvm13IRBuilderBase11CreateTruncEPNS_5ValueEPNS_4TypeERKNS_5TwineEbb.exit.i, label %bb.cm

bb.cm:                                            ; preds = %_ZNK4llvm4User10getOperandEj.exit87.i
  %i.qt = load ptr, ptr %i.pq, align 8, !tbaa !217, !nonnull !19, !align !26 ; 2 uses
  %i.qu = load ptr, ptr %i.qt, align 8, !tbaa !8
  %i.qv = getelementptr inbounds nuw i8, ptr %i.qu, i64 120
  %i.qw = load ptr, ptr %i.qv, align 8
  %i.qx = call noundef ptr %i.qw(ptr noundef nonnull align 8 dereferenceable(8) %i.qt, i32 noundef 39, ptr noundef nonnull %i.qo, ptr noundef %spec.select.i.i.i107) #20, !inline_history !609 ; 2 uses
  %.not.not.i.i = icmp eq ptr %i.qx, null
  br i1 %.not.not.i.i, label %bb.cn, label %_ZN4llvm13IRBuilderBase11CreateTruncEPNS_5ValueEPNS_4TypeERKNS_5TwineEbb.exit.i

bb.cn:                                            ; preds = %bb.cm
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  %i.qy = getelementptr inbounds nuw i8, ptr %4, i64 32
  store i16 257, ptr %i.qy, align 8
  %i.qz = call noundef ptr @_ZN4llvm8CastInst6CreateENS_11Instruction7CastOpsEPNS_5ValueEPNS_4TypeERKNS_5TwineENS_14InsertPositionE(i32 noundef 39, ptr noundef nonnull %i.qo, ptr noundef %spec.select.i.i.i107, ptr noundef nonnull align 8 dereferenceable(34) %4, ptr null, i64 0) #20 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  %i.ra = load ptr, ptr %i.pr, align 8, !tbaa !219, !nonnull !19, !align !26 ; 2 uses
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %i.qc, align 8
  %.sroa.2.0.copyload.i.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i.i109, align 8
  %i.rb = load ptr, ptr %i.ra, align 8, !tbaa !8
  %i.rc = getelementptr inbounds nuw i8, ptr %i.rb, i64 16
  %i.rd = load ptr, ptr %i.rc, align 8
  call void %i.rd(ptr noundef nonnull align 8 dereferenceable(8) %i.ra, ptr noundef %i.qz, ptr noundef nonnull align 8 dereferenceable(34) %10, ptr %.sroa.0.0.copyload.i.i.i, i64 %.sroa.2.0.copyload.i.i.i) #20, !inline_history !610
  call void @_ZNK4llvm13IRBuilderBase20SetInstDebugLocationEPNS_11InstructionE(ptr noundef nonnull align 8 dereferenceable(88) %9, ptr noundef %i.qz) #20
  br label %_ZN4llvm13IRBuilderBase11CreateTruncEPNS_5ValueEPNS_4TypeERKNS_5TwineEbb.exit.i

_ZN4llvm13IRBuilderBase11CreateTruncEPNS_5ValueEPNS_4TypeERKNS_5TwineEbb.exit.i: ; preds = %bb.cn, %bb.cm, %_ZNK4llvm4User10getOperandEj.exit87.i
  %.1.i.i = phi ptr [ %i.qx, %bb.cm ], [ %i.qz, %bb.cn ], [ %i.qo, %_ZNK4llvm4User10getOperandEj.exit87.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #20
  %i.re = load i32, ptr %i.oj, align 4            ; 2 uses
  %i.rf = and i32 %i.re, 1073741824
  %.not.i.i88.i = icmp eq i32 %i.rf, 0
  br i1 %.not.i.i88.i, label %bb.cp, label %bb.co

bb.co:                                            ; preds = %_ZN4llvm13IRBuilderBase11CreateTruncEPNS_5ValueEPNS_4TypeERKNS_5TwineEbb.exit.i
  %i.rg = getelementptr inbounds i8, ptr %1, i64 -8
  %i.rh = load ptr, ptr %i.rg, align 8, !tbaa !166
  br label %_ZNK4llvm4User10getOperandEj.exit89.i

bb.cp:                                            ; preds = %_ZN4llvm13IRBuilderBase11CreateTruncEPNS_5ValueEPNS_4TypeERKNS_5TwineEbb.exit.i
  %i.ri = and i32 %i.re, 268435455
  %i.rj = zext nneg i32 %i.ri to i64
  %i.rk = sub nsw i64 0, %i.rj
  %i.rl = getelementptr inbounds [32 x i8], ptr %1, i64 %i.rk
  br label %_ZNK4llvm4User10getOperandEj.exit89.i

_ZNK4llvm4User10getOperandEj.exit89.i:            ; preds = %bb.cp, %bb.co
  %i.rm = phi ptr [ %i.rh, %bb.co ], [ %i.rl, %bb.cp ]
  %i.rn = getelementptr inbounds nuw i8, ptr %i.rm, i64 32
  %i.ro = load ptr, ptr %i.rn, align 8, !tbaa !155 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #20
  %i.rp = getelementptr inbounds nuw i8, ptr %11, i64 32
  %i.rq = getelementptr inbounds nuw i8, ptr %i.ro, i64 8
  store i16 257, ptr %i.rp, align 8
  %i.rr = load ptr, ptr %i.rq, align 8, !tbaa !148
  %i.rs = icmp eq ptr %i.rr, %spec.select.i.i.i107
  br i1 %i.rs, label %_ZN4llvm13IRBuilderBase11CreateTruncEPNS_5ValueEPNS_4TypeERKNS_5TwineEbb.exit95.i, label %bb.cq

bb.cq:                                            ; preds = %_ZNK4llvm4User10getOperandEj.exit89.i
  %i.rt = load ptr, ptr %i.pq, align 8, !tbaa !217, !nonnull !19, !align !26 ; 2 uses
  %i.ru = load ptr, ptr %i.rt, align 8, !tbaa !8
  %i.rv = getelementptr inbounds nuw i8, ptr %i.ru, i64 120
  %i.rw = load ptr, ptr %i.rv, align 8
  %i.rx = call noundef ptr %i.rw(ptr noundef nonnull align 8 dereferenceable(8) %i.rt, i32 noundef 39, ptr noundef nonnull %i.ro, ptr noundef %spec.select.i.i.i107) #20, !inline_history !609 ; 2 uses
  %.not.not.i90.i = icmp eq ptr %i.rx, null
  br i1 %.not.not.i90.i, label %bb.cr, label %_ZN4llvm13IRBuilderBase11CreateTruncEPNS_5ValueEPNS_4TypeERKNS_5TwineEbb.exit95.i

bb.cr:                                            ; preds = %bb.cq
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  %i.ry = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i16 257, ptr %i.ry, align 8
  %i.rz = call noundef ptr @_ZN4llvm8CastInst6CreateENS_11Instruction7CastOpsEPNS_5ValueEPNS_4TypeERKNS_5TwineENS_14InsertPositionE(i32 noundef 39, ptr noundef nonnull %i.ro, ptr noundef %spec.select.i.i.i107, ptr noundef nonnull align 8 dereferenceable(34) %3, ptr null, i64 0) #20 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  %i.sa = load ptr, ptr %i.pr, align 8, !tbaa !219, !nonnull !19, !align !26 ; 2 uses
  %.sroa.0.0.copyload.i.i92.i = load ptr, ptr %i.qc, align 8
  %.sroa.2.0.copyload.i.i94.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i.i109, align 8
  %i.sb = load ptr, ptr %i.sa, align 8, !tbaa !8
  %i.sc = getelementptr inbounds nuw i8, ptr %i.sb, i64 16
  %i.sd = load ptr, ptr %i.sc, align 8
  call void %i.sd(ptr noundef nonnull align 8 dereferenceable(8) %i.sa, ptr noundef %i.rz, ptr noundef nonnull align 8 dereferenceable(34) %11, ptr %.sroa.0.0.copyload.i.i92.i, i64 %.sroa.2.0.copyload.i.i94.i) #20, !inline_history !610
  call void @_ZNK4llvm13IRBuilderBase20SetInstDebugLocationEPNS_11InstructionE(ptr noundef nonnull align 8 dereferenceable(88) %9, ptr noundef %i.rz) #20
  br label %_ZN4llvm13IRBuilderBase11CreateTruncEPNS_5ValueEPNS_4TypeERKNS_5TwineEbb.exit95.i

_ZN4llvm13IRBuilderBase11CreateTruncEPNS_5ValueEPNS_4TypeERKNS_5TwineEbb.exit95.i: ; preds = %bb.cr, %bb.cq, %_ZNK4llvm4User10getOperandEj.exit89.i
  %.1.i91.i = phi ptr [ %i.rx, %bb.cq ], [ %i.rz, %bb.cr ], [ %i.ro, %_ZNK4llvm4User10getOperandEj.exit89.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #20
  %i.se = getelementptr inbounds nuw i8, ptr %12, i64 32
  store i16 257, ptr %i.se, align 8
  %i.sf = call noundef ptr @_ZN4llvm13IRBuilderBase14CreateBinOpFMFENS_11Instruction9BinaryOpsEPNS_5ValueES4_NS_9FMFSourceERKNS_5TwineEPNS_6MDNodeE(ptr noundef nonnull align 8 dereferenceable(88) %9, i32 noundef %i.lz, ptr noundef %.1.i.i, ptr noundef %.1.i91.i, i64 0, ptr noundef nonnull align 8 dereferenceable(34) %12, ptr noundef null) ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #20
  %i.sg = getelementptr inbounds nuw i8, ptr %13, i64 32
  %i.sh = getelementptr inbounds nuw i8, ptr %i.sf, i64 8
  store i16 257, ptr %i.sg, align 8
  %i.si = load ptr, ptr %i.sh, align 8, !tbaa !148
  %i.sj = icmp eq ptr %i.si, %i.mb
  br i1 %i.sj, label %_ZN4llvm13IRBuilderBase10CreateZExtEPNS_5ValueEPNS_4TypeERKNS_5TwineEb.exit.i, label %bb.cs

bb.cs:                                            ; preds = %_ZN4llvm13IRBuilderBase11CreateTruncEPNS_5ValueEPNS_4TypeERKNS_5TwineEbb.exit95.i
  %i.sk = load ptr, ptr %i.pq, align 8, !tbaa !217, !nonnull !19, !align !26 ; 2 uses
  %i.sl = load ptr, ptr %i.sk, align 8, !tbaa !8
  %i.sm = getelementptr inbounds nuw i8, ptr %i.sl, i64 120
  %i.sn = load ptr, ptr %i.sm, align 8
  %i.so = call noundef ptr %i.sn(ptr noundef nonnull align 8 dereferenceable(8) %i.sk, i32 noundef 40, ptr noundef nonnull %i.sf, ptr noundef nonnull %i.mb) #20, !inline_history !611 ; 2 uses
  %.not.not.i96.i = icmp eq ptr %i.so, null
  br i1 %.not.not.i96.i, label %bb.ct, label %_ZN4llvm13IRBuilderBase10CreateZExtEPNS_5ValueEPNS_4TypeERKNS_5TwineEb.exit.i

bb.ct:                                            ; preds = %bb.cs
  %i.sp = call noundef ptr @_ZN4llvm4UsernwEmNS0_28IntrusiveOperandsAllocMarkerE(i64 noundef 72, i32 1) #20 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  %i.sq = getelementptr inbounds nuw i8, ptr %2, i64 32
  store i16 257, ptr %i.sq, align 8
  call void @_ZN4llvm8ZExtInstC1EPNS_5ValueEPNS_4TypeERKNS_5TwineENS_14InsertPositionE(ptr noundef nonnull align 8 dereferenceable(72) %i.sp, ptr noundef nonnull %i.sf, ptr noundef nonnull %i.mb, ptr noundef nonnull align 8 dereferenceable(34) %2, ptr null, i64 0) #20
  %i.sr = load ptr, ptr %i.pr, align 8, !tbaa !219, !nonnull !19, !align !26 ; 2 uses
  %.sroa.0.0.copyload.i.i98.i = load ptr, ptr %i.qc, align 8
  %.sroa.2.0.copyload.i.i100.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i.i109, align 8
  %i.ss = load ptr, ptr %i.sr, align 8, !tbaa !8
  %i.st = getelementptr inbounds nuw i8, ptr %i.ss, i64 16
  %i.su = load ptr, ptr %i.st, align 8
  call void %i.su(ptr noundef nonnull align 8 dereferenceable(8) %i.sr, ptr noundef nonnull %i.sp, ptr noundef nonnull align 8 dereferenceable(34) %13, ptr %.sroa.0.0.copyload.i.i98.i, i64 %.sroa.2.0.copyload.i.i100.i) #20, !inline_history !612
  call void @_ZNK4llvm13IRBuilderBase20SetInstDebugLocationEPNS_11InstructionE(ptr noundef nonnull align 8 dereferenceable(88) %9, ptr noundef nonnull %i.sp) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  br label %_ZN4llvm13IRBuilderBase10CreateZExtEPNS_5ValueEPNS_4TypeERKNS_5TwineEb.exit.i

_ZN4llvm13IRBuilderBase10CreateZExtEPNS_5ValueEPNS_4TypeERKNS_5TwineEb.exit.i: ; preds = %bb.ct, %bb.cs, %_ZN4llvm13IRBuilderBase11CreateTruncEPNS_5ValueEPNS_4TypeERKNS_5TwineEbb.exit95.i
  %.1.i97.i = phi ptr [ %i.so, %bb.cs ], [ %i.sf, %_ZN4llvm13IRBuilderBase11CreateTruncEPNS_5ValueEPNS_4TypeERKNS_5TwineEbb.exit95.i ], [ %i.sp, %bb.ct ]
end_hunk_0
