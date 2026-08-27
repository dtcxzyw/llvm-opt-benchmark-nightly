Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/COFFPlatform?download=true
inline.NumInlined: 7271
inline.NumDeleted: 3652
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_ZN4llvm3orc12COFFPlatform32associateRuntimeSupportFunctionsERNS0_8JITDylibE:bb.a
  store <2 x i32> %i.ax, ptr %i.at, align 16, !tbaa !102
  store i32 0, ptr %i.aw, align 4, !tbaa !102
  call void @_ZN4llvm3orc16ExecutionSession27registerJITDispatchHandlersERNS0_8JITDylibENS_8DenseMapINS0_15SymbolStringPtrENS_15unique_functionIFvNS6_IFvNS0_6shared21WrapperFunctionBufferEEEEPKcmEEENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SE_EEEE(ptr dead_on_unwind writable sret(%"class.llvm::Error") align 8 %0, ptr noundef nonnull align 8 dereferenceable(392) %i.aq, ptr noundef nonnull align 8 dereferenceable(272) %2, ptr nofree noundef nonnull align 8 dereferenceable(24) %8) #23
  %i.ay = load i32, ptr %i.av, align 4, !tbaa !545 ; 2 uses
  %i.az = icmp eq i32 %i.ay, 0
  br i1 %i.az, label %_ZN4llvm8DenseMapINS_3orc15SymbolStringPtrENS_15unique_functionIFvNS3_IFvNS1_6shared21WrapperFunctionBufferEEEEPKcmEEENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_SB_EEED2Ev.exit, label %.lr.ph7.preheader.i.i

.lr.ph7.preheader.i.i:                            ; preds = %_ZN4llvm6detail18UniqueFunctionBaseIvJNS_15unique_functionIFvNS_3orc6shared21WrapperFunctionBufferEEEEPKcmEED2Ev.exit15
  %i.ba = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.bb = load ptr, ptr %8, align 16, !tbaa !547
  %i.bc = load ptr, ptr %i.ba, align 8, !tbaa !548
  %i.bd = zext i32 %i.ay to i64
  %i.be = add nuw nsw i64 %i.bd, 31
  %i.bf = lshr i64 %i.be, 5
  br label %.lr.ph7.i.i

.lr.ph7.i.i:                                      ; preds = %._crit_edge.i.i, %.lr.ph7.preheader.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph7.preheader.i.i ], [ %indvars.iv.next.i.i, %._crit_edge.i.i ] ; 3 uses
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %i.bc, i64 %indvars.iv.i.i
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !102 ; 2 uses
  %.not11.i2.i.i = icmp eq i32 %i.bh, 0
  br i1 %.not11.i2.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph7.i.i
  %indvars.iv.tr.i.i = trunc i64 %indvars.iv.i.i to i32
  %i.bi = shl i32 %indvars.iv.tr.i.i, 5
  br label %bb.l

bb.l:                                             ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_15unique_functionIFvNS4_IFvNS2_6shared21WrapperFunctionBufferEEEEPKcmEEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_SC_EEEES3_SC_SE_SH_E10destroyAllEvENKUljE_clEj.exit.i.i, %.lr.ph.i.i
  %.0.i3.i.i = phi i32 [ %i.bh, %.lr.ph.i.i ], [ %i.bw, %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_15unique_functionIFvNS4_IFvNS2_6shared21WrapperFunctionBufferEEEEPKcmEEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_SC_EEEES3_SC_SE_SH_E10destroyAllEvENKUljE_clEj.exit.i.i ] ; 3 uses
  %i.bj = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i3.i.i, i1 true)
  %i.bk = or disjoint i32 %i.bj, %i.bi
  %i.bl = zext i32 %i.bk to i64
  %i.bm = getelementptr inbounds nuw [48 x i8], ptr %i.bb, i64 %i.bl ; 3 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 40
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !527 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.bo, null
  br i1 %.not.i.i.i.i, label %_ZN4llvm6detail18UniqueFunctionBaseIvJNS_15unique_functionIFvNS_3orc6shared21WrapperFunctionBufferEEEEPKcmEED2Ev.exit.i.i.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  call void %i.bo(ptr noundef null, ptr noundef nonnull align 8 dereferenceable(40) %i.bp) #23, !inline_history !549
  br label %_ZN4llvm6detail18UniqueFunctionBaseIvJNS_15unique_functionIFvNS_3orc6shared21WrapperFunctionBufferEEEEPKcmEED2Ev.exit.i.i.i

_ZN4llvm6detail18UniqueFunctionBaseIvJNS_15unique_functionIFvNS_3orc6shared21WrapperFunctionBufferEEEEPKcmEED2Ev.exit.i.i.i: ; preds = %bb.m, %bb.l
  %i.bq = load ptr, ptr %i.bm, align 8, !tbaa !112 ; 2 uses
  %i.br = ptrtoint ptr %i.bq to i64
  %notsub.i.i.i.i.i.i = add i64 %i.br, -1
  %i.bs = icmp ult i64 %notsub.i.i.i.i.i.i, -32
  br i1 %i.bs, label %bb.n, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_15unique_functionIFvNS4_IFvNS2_6shared21WrapperFunctionBufferEEEEPKcmEEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_SC_EEEES3_SC_SE_SH_E10destroyAllEvENKUljE_clEj.exit.i.i

bb.n:                                             ; preds = %_ZN4llvm6detail18UniqueFunctionBaseIvJNS_15unique_functionIFvNS_3orc6shared21WrapperFunctionBufferEEEEPKcmEED2Ev.exit.i.i.i
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  %i.bu = atomicrmw sub ptr %i.bt, i64 1 seq_cst, align 8 ; 0 uses
  br label %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_15unique_functionIFvNS4_IFvNS2_6shared21WrapperFunctionBufferEEEEPKcmEEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_SC_EEEES3_SC_SE_SH_E10destroyAllEvENKUljE_clEj.exit.i.i

_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_15unique_functionIFvNS4_IFvNS2_6shared21WrapperFunctionBufferEEEEPKcmEEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_SC_EEEES3_SC_SE_SH_E10destroyAllEvENKUljE_clEj.exit.i.i: ; preds = %bb.n, %_ZN4llvm6detail18UniqueFunctionBaseIvJNS_15unique_functionIFvNS_3orc6shared21WrapperFunctionBufferEEEEPKcmEED2Ev.exit.i.i.i
  %i.bv = add i32 %.0.i3.i.i, -1
  %i.bw = and i32 %i.bv, %.0.i3.i.i               ; 2 uses
  %.not11.i.i.i = icmp eq i32 %i.bw, 0
  br i1 %.not11.i.i.i, label %._crit_edge.i.i, label %bb.l, !llvm.loop !550

._crit_edge.i.i:                                  ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_15unique_functionIFvNS4_IFvNS2_6shared21WrapperFunctionBufferEEEEPKcmEEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_SC_EEEES3_SC_SE_SH_E10destroyAllEvENKUljE_clEj.exit.i.i, %.lr.ph7.i.i
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %.not.i.i.i16 = icmp eq i64 %indvars.iv.next.i.i, %i.bf
  br i1 %.not.i.i.i16, label %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_15unique_functionIFvNS4_IFvNS2_6shared21WrapperFunctionBufferEEEEPKcmEEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_SC_EEEES3_SC_SE_SH_E10destroyAllEv.exit.i, label %.lr.ph7.i.i, !llvm.loop !551

_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_15unique_functionIFvNS4_IFvNS2_6shared21WrapperFunctionBufferEEEEPKcmEEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_SC_EEEES3_SC_SE_SH_E10destroyAllEv.exit.i: ; preds = %._crit_edge.i.i
  %.pr.i = load i32, ptr %i.av, align 4, !tbaa !545 ; 2 uses
  %i.bx = icmp eq i32 %.pr.i, 0
  br i1 %i.bx, label %_ZN4llvm8DenseMapINS_3orc15SymbolStringPtrENS_15unique_functionIFvNS3_IFvNS1_6shared21WrapperFunctionBufferEEEEPKcmEEENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_SB_EEED2Ev.exit, label %bb.o

bb.o:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_15unique_functionIFvNS4_IFvNS2_6shared21WrapperFunctionBufferEEEEPKcmEEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_SC_EEEES3_SC_SE_SH_E10destroyAllEv.exit.i
  %i.by = load ptr, ptr %8, align 16, !tbaa !547
  %i.bz = zext i32 %.pr.i to i64                  ; 2 uses
  %i.ca = mul nuw nsw i64 %i.bz, 48
  %i.cb = add nuw nsw i64 %i.bz, 31
  %i.cc = lshr i64 %i.cb, 3
  %i.cd = and i64 %i.cc, 1073741820
  %i.ce = add nuw nsw i64 %i.cd, %i.ca
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.by, i64 noundef %i.ce, i64 noundef 8) #23
  br label %_ZN4llvm8DenseMapINS_3orc15SymbolStringPtrENS_15unique_functionIFvNS3_IFvNS1_6shared21WrapperFunctionBufferEEEEPKcmEEENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_SB_EEED2Ev.exit

_ZN4llvm8DenseMapINS_3orc15SymbolStringPtrENS_15unique_functionIFvNS3_IFvNS1_6shared21WrapperFunctionBufferEEEEPKcmEEENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_SB_EEED2Ev.exit: ; preds = %_ZN4llvm6detail18UniqueFunctionBaseIvJNS_15unique_functionIFvNS_3orc6shared21WrapperFunctionBufferEEEEPKcmEED2Ev.exit15, %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_15unique_functionIFvNS4_IFvNS2_6shared21WrapperFunctionBufferEEEEPKcmEEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_SC_EEEES3_SC_SE_SH_E10destroyAllEv.exit.i, %bb.o
  %i.cf = load i32, ptr %i.aw, align 4, !tbaa !545 ; 2 uses
  %i.cg = icmp eq i32 %i.cf, 0
  br i1 %i.cg, label %_ZN4llvm8DenseMapINS_3orc15SymbolStringPtrENS_15unique_functionIFvNS3_IFvNS1_6shared21WrapperFunctionBufferEEEEPKcmEEENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_SB_EEED2Ev.exit34, label %.lr.ph7.preheader.i.i17

.lr.ph7.preheader.i.i17:                          ; preds = %_ZN4llvm8DenseMapINS_3orc15SymbolStringPtrENS_15unique_functionIFvNS3_IFvNS1_6shared21WrapperFunctionBufferEEEEPKcmEEENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_SB_EEED2Ev.exit
  %i.ch = load ptr, ptr %3, align 16, !tbaa !547
  %i.ci = load ptr, ptr %i.ar, align 8, !tbaa !548
  %i.cj = zext i32 %i.cf to i64
  %i.ck = add nuw nsw i64 %i.cj, 31
  %i.cl = lshr i64 %i.ck, 5
  br label %.lr.ph7.i.i18

.lr.ph7.i.i18:                                    ; preds = %._crit_edge.i.i29, %.lr.ph7.preheader.i.i17
  %indvars.iv.i.i19 = phi i64 [ 0, %.lr.ph7.preheader.i.i17 ], [ %indvars.iv.next.i.i30, %._crit_edge.i.i29 ] ; 3 uses
  %i.cm = getelementptr inbounds nuw [4 x i8], ptr %i.ci, i64 %indvars.iv.i.i19
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !102 ; 2 uses
  %.not11.i2.i.i20 = icmp eq i32 %i.cn, 0
  br i1 %.not11.i2.i.i20, label %._crit_edge.i.i29, label %.lr.ph.i.i21

.lr.ph.i.i21:                                     ; preds = %.lr.ph7.i.i18
  %indvars.iv.tr.i.i22 = trunc i64 %indvars.iv.i.i19 to i32
  %i.co = shl i32 %indvars.iv.tr.i.i22, 5
  br label %bb.p

bb.p:                                             ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_15unique_functionIFvNS4_IFvNS2_6shared21WrapperFunctionBufferEEEEPKcmEEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_SC_EEEES3_SC_SE_SH_E10destroyAllEvENKUljE_clEj.exit.i.i27, %.lr.ph.i.i21
  %.0.i3.i.i23 = phi i32 [ %i.cn, %.lr.ph.i.i21 ], [ %i.dc, %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_15unique_functionIFvNS4_IFvNS2_6shared21WrapperFunctionBufferEEEEPKcmEEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_SC_EEEES3_SC_SE_SH_E10destroyAllEvENKUljE_clEj.exit.i.i27 ] ; 3 uses
  %i.cp = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i3.i.i23, i1 true)
  %i.cq = or disjoint i32 %i.cp, %i.co
  %i.cr = zext i32 %i.cq to i64
  %i.cs = getelementptr inbounds nuw [48 x i8], ptr %i.ch, i64 %i.cr ; 3 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 40
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !527 ; 2 uses
  %.not.i.i.i.i24 = icmp eq ptr %i.cu, null
  br i1 %.not.i.i.i.i24, label %_ZN4llvm6detail18UniqueFunctionBaseIvJNS_15unique_functionIFvNS_3orc6shared21WrapperFunctionBufferEEEEPKcmEED2Ev.exit.i.i.i25, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cs, i64 8
  call void %i.cu(ptr noundef null, ptr noundef nonnull align 8 dereferenceable(40) %i.cv) #23, !inline_history !549
  br label %_ZN4llvm6detail18UniqueFunctionBaseIvJNS_15unique_functionIFvNS_3orc6shared21WrapperFunctionBufferEEEEPKcmEED2Ev.exit.i.i.i25

_ZN4llvm6detail18UniqueFunctionBaseIvJNS_15unique_functionIFvNS_3orc6shared21WrapperFunctionBufferEEEEPKcmEED2Ev.exit.i.i.i25: ; preds = %bb.q, %bb.p
  %i.cw = load ptr, ptr %i.cs, align 8, !tbaa !112 ; 2 uses
  %i.cx = ptrtoint ptr %i.cw to i64
  %notsub.i.i.i.i.i.i26 = add i64 %i.cx, -1
  %i.cy = icmp ult i64 %notsub.i.i.i.i.i.i26, -32
  br i1 %i.cy, label %bb.r, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_15unique_functionIFvNS4_IFvNS2_6shared21WrapperFunctionBufferEEEEPKcmEEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_SC_EEEES3_SC_SE_SH_E10destroyAllEvENKUljE_clEj.exit.i.i27

bb.r:                                             ; preds = %_ZN4llvm6detail18UniqueFunctionBaseIvJNS_15unique_functionIFvNS_3orc6shared21WrapperFunctionBufferEEEEPKcmEED2Ev.exit.i.i.i25
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cw, i64 8
  %i.da = atomicrmw sub ptr %i.cz, i64 1 seq_cst, align 8 ; 0 uses
  br label %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_15unique_functionIFvNS4_IFvNS2_6shared21WrapperFunctionBufferEEEEPKcmEEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_SC_EEEES3_SC_SE_SH_E10destroyAllEvENKUljE_clEj.exit.i.i27

_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_15unique_functionIFvNS4_IFvNS2_6shared21WrapperFunctionBufferEEEEPKcmEEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_SC_EEEES3_SC_SE_SH_E10destroyAllEvENKUljE_clEj.exit.i.i27: ; preds = %bb.r, %_ZN4llvm6detail18UniqueFunctionBaseIvJNS_15unique_functionIFvNS_3orc6shared21WrapperFunctionBufferEEEEPKcmEED2Ev.exit.i.i.i25
  %i.db = add i32 %.0.i3.i.i23, -1
  %i.dc = and i32 %i.db, %.0.i3.i.i23             ; 2 uses
  %.not11.i.i.i28 = icmp eq i32 %i.dc, 0
  br i1 %.not11.i.i.i28, label %._crit_edge.i.i29, label %bb.p, !llvm.loop !550

._crit_edge.i.i29:                                ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_15unique_functionIFvNS4_IFvNS2_6shared21WrapperFunctionBufferEEEEPKcmEEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_SC_EEEES3_SC_SE_SH_E10destroyAllEvENKUljE_clEj.exit.i.i27, %.lr.ph7.i.i18
  %indvars.iv.next.i.i30 = add nuw nsw i64 %indvars.iv.i.i19, 1 ; 2 uses
  %.not.i.i.i31 = icmp eq i64 %indvars.iv.next.i.i30, %i.cl
  br i1 %.not.i.i.i31, label %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_15unique_functionIFvNS4_IFvNS2_6shared21WrapperFunctionBufferEEEEPKcmEEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_SC_EEEES3_SC_SE_SH_E10destroyAllEv.exit.i32, label %.lr.ph7.i.i18, !llvm.loop !551

_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_15unique_functionIFvNS4_IFvNS2_6shared21WrapperFunctionBufferEEEEPKcmEEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_SC_EEEES3_SC_SE_SH_E10destroyAllEv.exit.i32: ; preds = %._crit_edge.i.i29
  %.pr.i33 = load i32, ptr %i.aw, align 4, !tbaa !545 ; 2 uses
  %i.dd = icmp eq i32 %.pr.i33, 0
  br i1 %i.dd, label %_ZN4llvm8DenseMapINS_3orc15SymbolStringPtrENS_15unique_functionIFvNS3_IFvNS1_6shared21WrapperFunctionBufferEEEEPKcmEEENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_SB_EEED2Ev.exit34, label %bb.s

bb.s:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_15unique_functionIFvNS4_IFvNS2_6shared21WrapperFunctionBufferEEEEPKcmEEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_SC_EEEES3_SC_SE_SH_E10destroyAllEv.exit.i32
  %i.de = load ptr, ptr %3, align 16, !tbaa !547
  %i.df = zext i32 %.pr.i33 to i64                ; 2 uses
  %i.dg = mul nuw nsw i64 %i.df, 48
  %i.dh = add nuw nsw i64 %i.df, 31
  %i.di = lshr i64 %i.dh, 3
  %i.dj = and i64 %i.di, 1073741820
  %i.dk = add nuw nsw i64 %i.dj, %i.dg
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.de, i64 noundef %i.dk, i64 noundef 8) #23
  br label %_ZN4llvm8DenseMapINS_3orc15SymbolStringPtrENS_15unique_functionIFvNS3_IFvNS1_6shared21WrapperFunctionBufferEEEEPKcmEEENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_SB_EEED2Ev.exit34

_ZN4llvm8DenseMapINS_3orc15SymbolStringPtrENS_15unique_functionIFvNS3_IFvNS1_6shared21WrapperFunctionBufferEEEEPKcmEEENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_SB_EEED2Ev.exit34: ; preds = %_ZN4llvm8DenseMapINS_3orc15SymbolStringPtrENS_15unique_functionIFvNS3_IFvNS1_6shared21WrapperFunctionBufferEEEEPKcmEEENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_SB_EEED2Ev.exit, %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_15unique_functionIFvNS4_IFvNS2_6shared21WrapperFunctionBufferEEEEPKcmEEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_SC_EEEES3_SC_SE_SH_E10destroyAllEv.exit.i32, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm3orc12COFFPlatform20bootstrapCOFFRuntimeERNS0_8JITDylibE(ptr dead_on_unwind noalias writable sret(%"class.llvm::Error") align 8 %0, ptr noundef nonnull align 8 dereferenceable(320) %1, ptr noundef nonnull align 8 dereferenceable(272) %2) local_unnamed_addr #0 align 2 {
_ZNSt6vectorISt4pairIPN4llvm3orc8JITDylibENS2_19JITDylibLookupFlagsEESaIS6_EE9push_backEOS6_.exit.i:
  %3 = alloca %"class.llvm::orc::shared::SPSEmpty", align 1 ; 3 uses
  %4 = alloca %class.anon.872, align 8            ; 5 uses
  %5 = alloca %"class.llvm::orc::shared::SPSEmpty", align 1 ; 3 uses
  %6 = alloca %class.anon.871, align 8            ; 5 uses
  %7 = alloca %"class.llvm::orc::shared::SPSEmpty", align 1 ; 3 uses
  %8 = alloca %class.anon.832, align 8            ; 5 uses
  %9 = alloca %"class.std::vector.133", align 8   ; 7 uses
  %10 = alloca %"class.std::vector.366", align 8  ; 7 uses
  %11 = alloca %"class.llvm::orc::SymbolStringPtr", align 8 ; 6 uses
  %12 = alloca %"class.llvm::orc::SymbolStringPtr", align 8 ; 6 uses
  %13 = alloca %"class.llvm::orc::SymbolStringPtr", align 8 ; 6 uses
  %14 = alloca %"class.llvm::orc::SymbolStringPtr", align 8 ; 6 uses
  %15 = alloca %"class.llvm::orc::SymbolStringPtr", align 8 ; 6 uses
  %16 = alloca %"class.llvm::orc::SymbolStringPtr", align 8 ; 6 uses
  %17 = alloca %"struct.std::pair.374", align 8   ; 8 uses
  %i.a = alloca i8, align 1                       ; 4 uses
  %18 = alloca %"struct.std::pair.374", align 8   ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 10 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !333, !nonnull !15, !align !16
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #23
  tail call void @llvm.experimental.noalias.scope.decl(metadata !552)
  %i.d = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.e = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #25, !noalias !552 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  store ptr %2, ptr %i.e, align 8, !noalias !552
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i32 0, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !552
  store ptr %i.g, ptr %i.f, align 8, !tbaa !555, !alias.scope !552
  %.pre = load ptr, ptr %i.b, align 8, !tbaa !333
  store ptr %i.g, ptr %i.d, align 8, !alias.scope !552
  store ptr %i.e, ptr %9, align 8, !alias.scope !552
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #23
  %i.h = getelementptr inbounds nuw i8, ptr %.pre, i64 48
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !17, !noalias !556
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !182, !noalias !559
  call void @_ZN4llvm3orc16SymbolStringPool6internENS_9StringRefE(ptr dead_on_unwind nonnull writable sret(%"class.llvm::orc::SymbolStringPtr") align 8 %11, ptr noundef nonnull align 8 dereferenceable(64) %i.k, ptr nonnull @.str.37, i64 32)
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 160 ; 2 uses
  %i.m = load ptr, ptr %11, align 8, !tbaa !302   ; 4 uses
  store ptr null, ptr %11, align 8, !tbaa !302
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #23
  %i.n = load ptr, ptr %i.b, align 8, !tbaa !333, !nonnull !15, !align !16
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 48
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !17, !noalias !562
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !182, !noalias !565
  call void @_ZN4llvm3orc16SymbolStringPool6internENS_9StringRefE(ptr dead_on_unwind nonnull writable sret(%"class.llvm::orc::SymbolStringPtr") align 8 %12, ptr noundef nonnull align 8 dereferenceable(64) %i.r, ptr nonnull @.str.38, i64 31)
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 168
  %i.t = load ptr, ptr %12, align 8, !tbaa !302   ; 4 uses
  store ptr null, ptr %12, align 8, !tbaa !302
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #23
  %i.u = load ptr, ptr %i.b, align 8, !tbaa !333, !nonnull !15, !align !16
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 48
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !17, !noalias !568
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !182, !noalias !571
  call void @_ZN4llvm3orc16SymbolStringPool6internENS_9StringRefE(ptr dead_on_unwind nonnull writable sret(%"class.llvm::orc::SymbolStringPtr") align 8 %13, ptr noundef nonnull align 8 dereferenceable(64) %i.y, ptr nonnull @.str.39, i64 31)
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 192 ; 2 uses
  %i.aa = load ptr, ptr %13, align 8, !tbaa !302  ; 4 uses
  store ptr null, ptr %13, align 8, !tbaa !302
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #23
  %i.ab = load ptr, ptr %i.b, align 8, !tbaa !333, !nonnull !15, !align !16
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 48
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !17, !noalias !574
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !182, !noalias !577
  call void @_ZN4llvm3orc16SymbolStringPool6internENS_9StringRefE(ptr dead_on_unwind nonnull writable sret(%"class.llvm::orc::SymbolStringPtr") align 8 %14, ptr noundef nonnull align 8 dereferenceable(64) %i.af, ptr nonnull @.str.40, i64 33)
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 200
  %i.ah = load ptr, ptr %14, align 8, !tbaa !302  ; 4 uses
  store ptr null, ptr %14, align 8, !tbaa !302
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #23
  %i.ai = load ptr, ptr %i.b, align 8, !tbaa !333, !nonnull !15, !align !16
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 48
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !17, !noalias !580
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !182, !noalias !583
  call void @_ZN4llvm3orc16SymbolStringPool6internENS_9StringRefE(ptr dead_on_unwind nonnull writable sret(%"class.llvm::orc::SymbolStringPtr") align 8 %15, ptr noundef nonnull align 8 dereferenceable(64) %i.am, ptr nonnull @.str.41, i64 38)
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 176 ; 2 uses
  %i.ao = load ptr, ptr %15, align 8, !tbaa !302  ; 4 uses
  store ptr null, ptr %15, align 8, !tbaa !302
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #23
  %i.ap = load ptr, ptr %i.b, align 8, !tbaa !333, !nonnull !15, !align !16
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 48
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !17, !noalias !586
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !182, !noalias !589
  call void @_ZN4llvm3orc16SymbolStringPool6internENS_9StringRefE(ptr dead_on_unwind nonnull writable sret(%"class.llvm::orc::SymbolStringPtr") align 8 %16, ptr noundef nonnull align 8 dereferenceable(64) %i.at, ptr nonnull @.str.42, i64 40)
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 184
  %i.av = load ptr, ptr %16, align 8, !tbaa !302  ; 4 uses
  store ptr null, ptr %16, align 8, !tbaa !302
  %i.aw = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i64 0, ptr %i.aw, align 8
  %i.ax = call noalias noundef nonnull dereferenceable(96) ptr @_Znwm(i64 noundef 96) #25 ; 15 uses
  store ptr %i.ax, ptr %10, align 8, !tbaa !592
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 96
  %i.az = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  store ptr %i.ay, ptr %i.az, align 8, !tbaa !595
  store ptr %i.m, ptr %i.ax, align 8, !tbaa !112
  %i.ba = ptrtoint ptr %i.m to i64
  %notsub.i.i.i.i.i.i.i.i.i.i.i = add i64 %i.ba, -1
  %i.bb = icmp ult i64 %notsub.i.i.i.i.i.i.i.i.i.i.i, -32 ; 2 uses
  br i1 %i.bb, label %bb.a, label %_ZSt10_ConstructISt4pairIN4llvm3orc15SymbolStringPtrEPNS2_12ExecutorAddrEEJRKS6_EEvPT_DpOT0_.exit.i.i.i.i.i.i

bb.a:                                             ; preds = %_ZNSt6vectorISt4pairIPN4llvm3orc8JITDylibENS2_19JITDylibLookupFlagsEESaIS6_EE9push_backEOS6_.exit.i
  %i.bc = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.bd = atomicrmw add ptr %i.bc, i64 1 seq_cst, align 8 ; 0 uses
  br label %_ZSt10_ConstructISt4pairIN4llvm3orc15SymbolStringPtrEPNS2_12ExecutorAddrEEJRKS6_EEvPT_DpOT0_.exit.i.i.i.i.i.i

_ZSt10_ConstructISt4pairIN4llvm3orc15SymbolStringPtrEPNS2_12ExecutorAddrEEJRKS6_EEvPT_DpOT0_.exit.i.i.i.i.i.i: ; preds = %bb.a, %_ZNSt6vectorISt4pairIPN4llvm3orc8JITDylibENS2_19JITDylibLookupFlagsEESaIS6_EE9push_backEOS6_.exit.i
  %i.be = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  store ptr %i.l, ptr %i.be, align 8, !tbaa !596
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  store ptr %i.t, ptr %i.bf, align 8, !tbaa !112
  %i.bg = ptrtoint ptr %i.t to i64
  %notsub.i.i.i.i.i.i.i.i.i.i.i.1 = add i64 %i.bg, -1
  %i.bh = icmp ult i64 %notsub.i.i.i.i.i.i.i.i.i.i.i.1, -32 ; 2 uses
  br i1 %i.bh, label %bb.b, label %_ZSt10_ConstructISt4pairIN4llvm3orc15SymbolStringPtrEPNS2_12ExecutorAddrEEJRKS6_EEvPT_DpOT0_.exit.i.i.i.i.i.i.1

bb.b:                                             ; preds = %_ZSt10_ConstructISt4pairIN4llvm3orc15SymbolStringPtrEPNS2_12ExecutorAddrEEJRKS6_EEvPT_DpOT0_.exit.i.i.i.i.i.i
  %i.bi = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.bj = atomicrmw add ptr %i.bi, i64 1 seq_cst, align 8 ; 0 uses
  br label %_ZSt10_ConstructISt4pairIN4llvm3orc15SymbolStringPtrEPNS2_12ExecutorAddrEEJRKS6_EEvPT_DpOT0_.exit.i.i.i.i.i.i.1

_ZSt10_ConstructISt4pairIN4llvm3orc15SymbolStringPtrEPNS2_12ExecutorAddrEEJRKS6_EEvPT_DpOT0_.exit.i.i.i.i.i.i.1: ; preds = %bb.b, %_ZSt10_ConstructISt4pairIN4llvm3orc15SymbolStringPtrEPNS2_12ExecutorAddrEEJRKS6_EEvPT_DpOT0_.exit.i.i.i.i.i.i
  %i.bk = getelementptr inbounds nuw i8, ptr %i.ax, i64 24
  store ptr %i.s, ptr %i.bk, align 8, !tbaa !596
  %i.bl = getelementptr inbounds nuw i8, ptr %i.ax, i64 32
  store ptr %i.aa, ptr %i.bl, align 8, !tbaa !112
  %i.bm = ptrtoint ptr %i.aa to i64
  %notsub.i.i.i.i.i.i.i.i.i.i.i.2 = add i64 %i.bm, -1
  %i.bn = icmp ult i64 %notsub.i.i.i.i.i.i.i.i.i.i.i.2, -32 ; 2 uses
  br i1 %i.bn, label %bb.c, label %_ZSt10_ConstructISt4pairIN4llvm3orc15SymbolStringPtrEPNS2_12ExecutorAddrEEJRKS6_EEvPT_DpOT0_.exit.i.i.i.i.i.i.2

bb.c:                                             ; preds = %_ZSt10_ConstructISt4pairIN4llvm3orc15SymbolStringPtrEPNS2_12ExecutorAddrEEJRKS6_EEvPT_DpOT0_.exit.i.i.i.i.i.i.1
  %i.bo = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.bp = atomicrmw add ptr %i.bo, i64 1 seq_cst, align 8 ; 0 uses
  br label %_ZSt10_ConstructISt4pairIN4llvm3orc15SymbolStringPtrEPNS2_12ExecutorAddrEEJRKS6_EEvPT_DpOT0_.exit.i.i.i.i.i.i.2

_ZSt10_ConstructISt4pairIN4llvm3orc15SymbolStringPtrEPNS2_12ExecutorAddrEEJRKS6_EEvPT_DpOT0_.exit.i.i.i.i.i.i.2: ; preds = %bb.c, %_ZSt10_ConstructISt4pairIN4llvm3orc15SymbolStringPtrEPNS2_12ExecutorAddrEEJRKS6_EEvPT_DpOT0_.exit.i.i.i.i.i.i.1
  %i.bq = getelementptr inbounds nuw i8, ptr %i.ax, i64 40
  store ptr %i.z, ptr %i.bq, align 8, !tbaa !596
  %i.br = getelementptr inbounds nuw i8, ptr %i.ax, i64 48
  store ptr %i.ah, ptr %i.br, align 8, !tbaa !112
  %i.bs = ptrtoint ptr %i.ah to i64
  %notsub.i.i.i.i.i.i.i.i.i.i.i.3 = add i64 %i.bs, -1
  %i.bt = icmp ult i64 %notsub.i.i.i.i.i.i.i.i.i.i.i.3, -32 ; 2 uses
  br i1 %i.bt, label %bb.d, label %_ZSt10_ConstructISt4pairIN4llvm3orc15SymbolStringPtrEPNS2_12ExecutorAddrEEJRKS6_EEvPT_DpOT0_.exit.i.i.i.i.i.i.3

bb.d:                                             ; preds = %_ZSt10_ConstructISt4pairIN4llvm3orc15SymbolStringPtrEPNS2_12ExecutorAddrEEJRKS6_EEvPT_DpOT0_.exit.i.i.i.i.i.i.2
  %i.bu = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.bv = atomicrmw add ptr %i.bu, i64 1 seq_cst, align 8 ; 0 uses
  br label %_ZSt10_ConstructISt4pairIN4llvm3orc15SymbolStringPtrEPNS2_12ExecutorAddrEEJRKS6_EEvPT_DpOT0_.exit.i.i.i.i.i.i.3

_ZSt10_ConstructISt4pairIN4llvm3orc15SymbolStringPtrEPNS2_12ExecutorAddrEEJRKS6_EEvPT_DpOT0_.exit.i.i.i.i.i.i.3: ; preds = %bb.d, %_ZSt10_ConstructISt4pairIN4llvm3orc15SymbolStringPtrEPNS2_12ExecutorAddrEEJRKS6_EEvPT_DpOT0_.exit.i.i.i.i.i.i.2
  %i.bw = getelementptr inbounds nuw i8, ptr %i.ax, i64 56
  store ptr %i.ag, ptr %i.bw, align 8, !tbaa !596
  %i.bx = getelementptr inbounds nuw i8, ptr %i.ax, i64 64
  store ptr %i.ao, ptr %i.bx, align 8, !tbaa !112
  %i.by = ptrtoint ptr %i.ao to i64
  %notsub.i.i.i.i.i.i.i.i.i.i.i.4 = add i64 %i.by, -1
  %i.bz = icmp ult i64 %notsub.i.i.i.i.i.i.i.i.i.i.i.4, -32 ; 2 uses
  br i1 %i.bz, label %bb.e, label %_ZSt10_ConstructISt4pairIN4llvm3orc15SymbolStringPtrEPNS2_12ExecutorAddrEEJRKS6_EEvPT_DpOT0_.exit.i.i.i.i.i.i.4

bb.e:                                             ; preds = %_ZSt10_ConstructISt4pairIN4llvm3orc15SymbolStringPtrEPNS2_12ExecutorAddrEEJRKS6_EEvPT_DpOT0_.exit.i.i.i.i.i.i.3
  %i.ca = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.cb = atomicrmw add ptr %i.ca, i64 1 seq_cst, align 8 ; 0 uses
  br label %_ZSt10_ConstructISt4pairIN4llvm3orc15SymbolStringPtrEPNS2_12ExecutorAddrEEJRKS6_EEvPT_DpOT0_.exit.i.i.i.i.i.i.4

_ZSt10_ConstructISt4pairIN4llvm3orc15SymbolStringPtrEPNS2_12ExecutorAddrEEJRKS6_EEvPT_DpOT0_.exit.i.i.i.i.i.i.4: ; preds = %bb.e, %_ZSt10_ConstructISt4pairIN4llvm3orc15SymbolStringPtrEPNS2_12ExecutorAddrEEJRKS6_EEvPT_DpOT0_.exit.i.i.i.i.i.i.3
  %i.cc = getelementptr inbounds nuw i8, ptr %i.ax, i64 72
  store ptr %i.an, ptr %i.cc, align 8, !tbaa !596
  %i.cd = getelementptr inbounds nuw i8, ptr %i.ax, i64 80
  store ptr %i.av, ptr %i.cd, align 8, !tbaa !112
  %i.ce = ptrtoint ptr %i.av to i64
  %notsub.i.i.i.i.i.i.i.i.i.i.i.5 = add i64 %i.ce, -1
  %i.cf = icmp ult i64 %notsub.i.i.i.i.i.i.i.i.i.i.i.5, -32 ; 2 uses
  br i1 %i.cf, label %bb.f, label %_ZSt10_ConstructISt4pairIN4llvm3orc15SymbolStringPtrEPNS2_12ExecutorAddrEEJRKS6_EEvPT_DpOT0_.exit.i.i.i.i.i.i.5

bb.f:                                             ; preds = %_ZSt10_ConstructISt4pairIN4llvm3orc15SymbolStringPtrEPNS2_12ExecutorAddrEEJRKS6_EEvPT_DpOT0_.exit.i.i.i.i.i.i.4
  %i.cg = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %i.ch = atomicrmw add ptr %i.cg, i64 1 seq_cst, align 8 ; 0 uses
  br label %_ZSt10_ConstructISt4pairIN4llvm3orc15SymbolStringPtrEPNS2_12ExecutorAddrEEJRKS6_EEvPT_DpOT0_.exit.i.i.i.i.i.i.5

_ZSt10_ConstructISt4pairIN4llvm3orc15SymbolStringPtrEPNS2_12ExecutorAddrEEJRKS6_EEvPT_DpOT0_.exit.i.i.i.i.i.i.5: ; preds = %bb.f, %_ZSt10_ConstructISt4pairIN4llvm3orc15SymbolStringPtrEPNS2_12ExecutorAddrEEJRKS6_EEvPT_DpOT0_.exit.i.i.i.i.i.i.4
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ax, i64 88
  store ptr %i.au, ptr %i.ci, align 8, !tbaa !596
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ax, i64 96
  %i.ck = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  store ptr %i.cj, ptr %i.ck, align 8, !tbaa !599
  call void @_ZN4llvm3orc20lookupAndRecordAddrsERNS0_16ExecutionSessionENS0_10LookupKindERKSt6vectorISt4pairIPNS0_8JITDylibENS0_19JITDylibLookupFlagsEESaIS9_EES4_IS5_INS0_15SymbolStringPtrEPNS0_12ExecutorAddrEESaISH_EENS0_17SymbolLookupFlagsE(ptr dead_on_unwind writable sret(%"class.llvm::Error") align 8 %0, ptr noundef nonnull align 8 dereferenceable(392) %i.c, i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(24) %9, ptr nofree noundef nonnull align 8 dereferenceable(24) %10, i32 noundef 0) #23
  %i.cl = load ptr, ptr %10, align 8, !tbaa !592  ; 3 uses
  %i.cm = load ptr, ptr %i.ck, align 8, !tbaa !599 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.cl, %i.cm
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPSt4pairIN4llvm3orc15SymbolStringPtrEPNS2_12ExecutorAddrEEEvT_S8_.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZSt10_ConstructISt4pairIN4llvm3orc15SymbolStringPtrEPNS2_12ExecutorAddrEEJRKS6_EEvPT_DpOT0_.exit.i.i.i.i.i.i.5, %_ZSt8_DestroyISt4pairIN4llvm3orc15SymbolStringPtrEPNS2_12ExecutorAddrEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.cs, %_ZSt8_DestroyISt4pairIN4llvm3orc15SymbolStringPtrEPNS2_12ExecutorAddrEEEvPT_.exit.i.i.i ], [ %i.cl, %_ZSt10_ConstructISt4pairIN4llvm3orc15SymbolStringPtrEPNS2_12ExecutorAddrEEJRKS6_EEvPT_DpOT0_.exit.i.i.i.i.i.i.5 ] ; 2 uses
  %i.cn = load ptr, ptr %.05.i.i.i, align 8, !tbaa !112 ; 2 uses
  %i.co = ptrtoint ptr %i.cn to i64
  %notsub.i.i.i.i.i.i.i.i = add i64 %i.co, -1
  %i.cp = icmp ult i64 %notsub.i.i.i.i.i.i.i.i, -32
  br i1 %i.cp, label %bb.g, label %_ZSt8_DestroyISt4pairIN4llvm3orc15SymbolStringPtrEPNS2_12ExecutorAddrEEEvPT_.exit.i.i.i

bb.g:                                             ; preds = %.lr.ph.i.i.i
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cn, i64 8
  %i.cr = atomicrmw sub ptr %i.cq, i64 1 seq_cst, align 8 ; 0 uses
  br label %_ZSt8_DestroyISt4pairIN4llvm3orc15SymbolStringPtrEPNS2_12ExecutorAddrEEEvPT_.exit.i.i.i

_ZSt8_DestroyISt4pairIN4llvm3orc15SymbolStringPtrEPNS2_12ExecutorAddrEEEvPT_.exit.i.i.i: ; preds = %bb.g, %.lr.ph.i.i.i
  %i.cs = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i55 = icmp eq ptr %i.cs, %i.cm
  br i1 %.not.i.i.i55, label %_ZSt8_DestroyIPSt4pairIN4llvm3orc15SymbolStringPtrEPNS2_12ExecutorAddrEEEvT_S8_.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !600

_ZSt8_DestroyIPSt4pairIN4llvm3orc15SymbolStringPtrEPNS2_12ExecutorAddrEEEvT_S8_.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyISt4pairIN4llvm3orc15SymbolStringPtrEPNS2_12ExecutorAddrEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %10, align 8, !tbaa !592
  br label %_ZSt8_DestroyIPSt4pairIN4llvm3orc15SymbolStringPtrEPNS2_12ExecutorAddrEEEvT_S8_.exit.i

_ZSt8_DestroyIPSt4pairIN4llvm3orc15SymbolStringPtrEPNS2_12ExecutorAddrEEEvT_S8_.exit.i: ; preds = %_ZSt8_DestroyIPSt4pairIN4llvm3orc15SymbolStringPtrEPNS2_12ExecutorAddrEEEvT_S8_.exitthread-pre-split.i, %_ZSt10_ConstructISt4pairIN4llvm3orc15SymbolStringPtrEPNS2_12ExecutorAddrEEJRKS6_EEvPT_DpOT0_.exit.i.i.i.i.i.i.5
  %i.ct = phi ptr [ %.pr.i, %_ZSt8_DestroyIPSt4pairIN4llvm3orc15SymbolStringPtrEPNS2_12ExecutorAddrEEEvT_S8_.exitthread-pre-split.i ], [ %i.cl, %_ZSt10_ConstructISt4pairIN4llvm3orc15SymbolStringPtrEPNS2_12ExecutorAddrEEJRKS6_EEvPT_DpOT0_.exit.i.i.i.i.i.i.5 ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.ct, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorISt4pairIN4llvm3orc15SymbolStringPtrEPNS2_12ExecutorAddrEESaIS6_EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZSt8_DestroyIPSt4pairIN4llvm3orc15SymbolStringPtrEPNS2_12ExecutorAddrEEEvT_S8_.exit.i
  %i.cu = load ptr, ptr %i.az, align 8, !tbaa !595
  %i.cv = ptrtoint ptr %i.cu to i64
  %i.cw = ptrtoint ptr %i.ct to i64
  %i.cx = sub i64 %i.cv, %i.cw
  call void @_ZdlPvm(ptr noundef nonnull %i.ct, i64 noundef %i.cx) #26
  br label %_ZNSt6vectorISt4pairIN4llvm3orc15SymbolStringPtrEPNS2_12ExecutorAddrEESaIS6_EED2Ev.exit

_ZNSt6vectorISt4pairIN4llvm3orc15SymbolStringPtrEPNS2_12ExecutorAddrEESaIS6_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt4pairIN4llvm3orc15SymbolStringPtrEPNS2_12ExecutorAddrEEEvT_S8_.exit.i, %bb.h
  br i1 %i.cf, label %bb.i, label %_ZNSt4pairIN4llvm3orc15SymbolStringPtrEPNS1_12ExecutorAddrEED2Ev.exit

end_hunk_0
begin_hunk_1_@_ZN4llvm3orc12COFFPlatform24runBootstrapInitializersERNS1_16JDBootstrapStateE:bb.a

_ZN4llvmgeENS_9StringRefES0_.exit.i26:            ; preds = %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i23
  %.inv.i.i.i27 = icmp sgt i32 %.fr.i.i.i24, -1
  br i1 %.inv.i.i.i27, label %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i24.i32, label %.critedge22.i28

_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i24.i32: ; preds = %.thread.i.i.i42, %_ZN4llvmgeENS_9StringRefES0_.exit.i26
  %.sroa.speculated.i.i23.i31 = call i64 @llvm.umin.i64(i64 %i.au, i64 8)
  %i.ax = call i32 @memcmp(ptr noundef %i.as, ptr noundef nonnull @.str.36, i64 noundef %.sroa.speculated.i.i23.i31) #27, !noalias !914
  %.fr.i.i25.i33 = freeze i32 %i.ax               ; 2 uses
  %.not.not.i.i26.i34 = icmp eq i32 %.fr.i.i25.i33, 0
  br i1 %.not.not.i.i26.i34, label %.thread.i.i29.i40, label %_ZN4llvmleENS_9StringRefES0_.exit.i35

.thread.i.i29.i40:                                ; preds = %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i24.i32
  %or.cond.not.i41 = icmp ugt i64 %i.au, 8
  br i1 %or.cond.not.i41, label %.critedge22.i28, label %_ZN4llvmleENS_9StringRefES0_.exit.thread.i37

_ZN4llvmleENS_9StringRefES0_.exit.i35:            ; preds = %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i24.i32
  %.inv.i.i27.i36 = icmp slt i32 %.fr.i.i25.i33, 0
  br i1 %.inv.i.i27.i36, label %_ZN4llvmleENS_9StringRefES0_.exit.thread.i37, label %.critedge22.i28

_ZN4llvmleENS_9StringRefES0_.exit.thread.i37:     ; preds = %_ZN4llvmleENS_9StringRefES0_.exit.i35, %.thread.i.i29.i40
  %i.ay = getelementptr inbounds nuw i8, ptr %.047.i21, i64 32
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !457, !noalias !914 ; 2 uses
  %.not45.i38 = icmp eq i64 %i.az, 0
  br i1 %.not45.i38, label %.critedge22.i28, label %bb.i

bb.i:                                             ; preds = %_ZN4llvmleENS_9StringRefES0_.exit.thread.i37
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23, !noalias !914
  %i.ba = load ptr, ptr %i.aq, align 8, !tbaa !333, !noalias !914, !nonnull !15, !align !16
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 48
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !17, !noalias !914 ; 2 uses
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !84, !noalias !914
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 48
  %i.bf = load ptr, ptr %i.be, align 8, !noalias !914
  call void %i.bf(ptr dead_on_unwind nonnull writable sret(%"class.llvm::Expected.363") align 8 %3, ptr noundef nonnull align 8 dereferenceable(168) %i.bc, i64 %i.az) #23, !noalias !914, !inline_history !908
  %i.bg = load i8, ptr %i.ar, align 8, !noalias !914
  %i.bh = trunc i8 %i.bg to i1
  br i1 %i.bh, label %_ZN4llvm3orc12COFFPlatform34runBootstrapSubsectionInitializersERNS1_16JDBootstrapStateENS_9StringRefES4_.exit44, label %_ZN4llvm8ExpectedIiED2Ev.exit34.i39

_ZN4llvm8ExpectedIiED2Ev.exit34.i39:              ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23, !noalias !914
  br label %.critedge22.i28

.critedge22.i28:                                  ; preds = %bb.h, %_ZN4llvm8ExpectedIiED2Ev.exit34.i39, %_ZN4llvmleENS_9StringRefES0_.exit.thread.i37, %_ZN4llvmleENS_9StringRefES0_.exit.i35, %.thread.i.i29.i40, %_ZN4llvmgeENS_9StringRefES0_.exit.i26, %.thread.i.i.i42
  %i.bi = getelementptr inbounds nuw i8, ptr %.047.i21, i64 40 ; 2 uses
  %.not.i29 = icmp eq ptr %i.bi, %i.ap
  br i1 %.not.i29, label %_ZN4llvm5ErrorD2Ev.exit46, label %bb.h

_ZN4llvm3orc12COFFPlatform34runBootstrapSubsectionInitializersERNS1_16JDBootstrapStateENS_9StringRefES4_.exit44: ; preds = %bb.i
  call void @llvm.experimental.noalias.scope.decl(metadata !917)
  %i.bj = load i64, ptr %3, align 8, !tbaa !49, !noalias !920 ; 2 uses
  %i.bk = inttoptr i64 %i.bj to ptr
  store ptr %i.bk, ptr %0, align 8, !tbaa !133, !alias.scope !920
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23, !noalias !914
  %.not60 = icmp eq i64 %i.bj, 0
  br i1 %.not60, label %_ZN4llvm5ErrorD2Ev.exit46, label %bb.j

_ZN4llvm5ErrorD2Ev.exit46:                        ; preds = %.critedge22.i28, %bb.g, %_ZN4llvm3orc12COFFPlatform34runBootstrapSubsectionInitializersERNS1_16JDBootstrapStateENS_9StringRefES4_.exit44
  store ptr null, ptr %0, align 8, !tbaa !133
  br label %bb.j

bb.j:                                             ; preds = %_ZN4llvm3orc12COFFPlatform34runBootstrapSubsectionInitializersERNS1_16JDBootstrapStateENS_9StringRefES4_.exit44, %_ZN4llvm5ErrorD2Ev.exit14, %_ZN4llvm3orc12COFFPlatform34runBootstrapSubsectionInitializersERNS1_16JDBootstrapStateENS_9StringRefES4_.exit, %_ZN4llvm5ErrorD2Ev.exit46
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm3orc12COFFPlatform34runBootstrapSubsectionInitializersERNS1_16JDBootstrapStateENS_9StringRefES4_(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.llvm::Error") align 8 captures(none) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(320) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(128) %2, ptr nofree readonly captures(none) %3, i64 %4, ptr nofree noundef readonly byval(%"class.llvm::StringRef") align 8 captures(none) %5) local_unnamed_addr #0 align 2 {
bb.a:
  %6 = alloca %"class.llvm::Expected.363", align 8 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !660  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.d = load i32, ptr %i.c, align 8, !tbaa !662  ; 2 uses
  %i.e = zext i32 %i.d to i64
  %.idx = mul nuw nsw i64 %i.e, 40
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 %.idx
  %.not46 = icmp eq i32 %i.d, 0
  br i1 %.not46, label %_ZN4llvm5ErrorD2Ev.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 8
  %.sroa.2.0.copyload = load i64, ptr %.sroa.2.0..sroa_idx, align 8 ; 2 uses
  %.sroa.02.0.copyload = load ptr, ptr %5, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = getelementptr inbounds nuw i8, ptr %6, i64 8
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %.critedge22
  %.047 = phi ptr [ %i.b, %.lr.ph ], [ %i.ab, %.critedge22 ] ; 4 uses
  %i.i = load ptr, ptr %.047, align 8, !tbaa !33  ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.047, i64 8
  %i.k = load i64, ptr %i.j, align 8, !tbaa !34   ; 4 uses
  %.sroa.speculated.i.i = call i64 @llvm.umin.i64(i64 %4, i64 %i.k) ; 2 uses
  %i.l = icmp eq i64 %.sroa.speculated.i.i, 0
  br i1 %i.l, label %.thread.i.i, label %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i

_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i: ; preds = %bb.b
  %i.m = call i32 @memcmp(ptr noundef %i.i, ptr noundef %3, i64 noundef %.sroa.speculated.i.i) #27
  %.fr.i.i = freeze i32 %i.m                      ; 2 uses
  %.not.not.i.i = icmp eq i32 %.fr.i.i, 0
  br i1 %.not.not.i.i, label %.thread.i.i, label %_ZN4llvmgeENS_9StringRefES0_.exit

.thread.i.i:                                      ; preds = %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i, %bb.b
  %.not44 = icmp ult i64 %i.k, %4
  br i1 %.not44, label %.critedge22, label %bb.c

_ZN4llvmgeENS_9StringRefES0_.exit:                ; preds = %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i
  %.inv.i.i = icmp sgt i32 %.fr.i.i, -1
  br i1 %.inv.i.i, label %bb.c, label %.critedge22

bb.c:                                             ; preds = %.thread.i.i, %_ZN4llvmgeENS_9StringRefES0_.exit
  %.sroa.speculated.i.i23 = call i64 @llvm.umin.i64(i64 %.sroa.2.0.copyload, i64 %i.k) ; 2 uses
  %i.n = icmp eq i64 %.sroa.speculated.i.i23, 0
  br i1 %i.n, label %.thread.i.i29, label %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i24

_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i24: ; preds = %bb.c
  %i.o = call i32 @memcmp(ptr noundef %i.i, ptr noundef %.sroa.02.0.copyload, i64 noundef %.sroa.speculated.i.i23) #27
  %.fr.i.i25 = freeze i32 %i.o                    ; 2 uses
  %.not.not.i.i26 = icmp eq i32 %.fr.i.i25, 0
  br i1 %.not.not.i.i26, label %.thread.i.i29, label %_ZN4llvmleENS_9StringRefES0_.exit

.thread.i.i29:                                    ; preds = %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i24, %bb.c
  %or.cond.not = icmp ugt i64 %i.k, %.sroa.2.0.copyload
  br i1 %or.cond.not, label %.critedge22, label %_ZN4llvmleENS_9StringRefES0_.exit.thread

_ZN4llvmleENS_9StringRefES0_.exit:                ; preds = %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i24
  %.inv.i.i27 = icmp slt i32 %.fr.i.i25, 0
  br i1 %.inv.i.i27, label %_ZN4llvmleENS_9StringRefES0_.exit.thread, label %.critedge22

_ZN4llvmleENS_9StringRefES0_.exit.thread:         ; preds = %.thread.i.i29, %_ZN4llvmleENS_9StringRefES0_.exit
  %i.p = getelementptr inbounds nuw i8, ptr %.047, i64 32
  %i.q = load i64, ptr %i.p, align 8, !tbaa !457  ; 2 uses
  %.not45 = icmp eq i64 %i.q, 0
  br i1 %.not45, label %.critedge22, label %bb.d

bb.d:                                             ; preds = %_ZN4llvmleENS_9StringRefES0_.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23
  %i.r = load ptr, ptr %i.g, align 8, !tbaa !333, !nonnull !15, !align !16
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 48
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !17   ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !84
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 48
  %i.w = load ptr, ptr %i.v, align 8
  call void %i.w(ptr dead_on_unwind nonnull writable sret(%"class.llvm::Expected.363") align 8 %6, ptr noundef nonnull align 8 dereferenceable(168) %i.t, i64 %i.q) #23
  %i.x = load i8, ptr %i.h, align 8
  %i.y = trunc i8 %i.x to i1
  br i1 %i.y, label %bb.e, label %_ZN4llvm8ExpectedIiED2Ev.exit34

bb.e:                                             ; preds = %bb.d
  call void @llvm.experimental.noalias.scope.decl(metadata !921)
  %i.z = load i64, ptr %6, align 8, !tbaa !49, !noalias !921
  %i.aa = inttoptr i64 %i.z to ptr
  store ptr %i.aa, ptr %0, align 8, !tbaa !133, !alias.scope !921
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  br label %bb.f

_ZN4llvm8ExpectedIiED2Ev.exit34:                  ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  br label %.critedge22

.critedge22:                                      ; preds = %.thread.i.i29, %.thread.i.i, %_ZN4llvm8ExpectedIiED2Ev.exit34, %_ZN4llvmleENS_9StringRefES0_.exit.thread, %_ZN4llvmleENS_9StringRefES0_.exit, %_ZN4llvmgeENS_9StringRefES0_.exit
  %i.ab = getelementptr inbounds nuw i8, ptr %.047, i64 40 ; 2 uses
  %.not = icmp eq ptr %i.ab, %i.f
  br i1 %.not, label %_ZN4llvm5ErrorD2Ev.exit, label %bb.b

_ZN4llvm5ErrorD2Ev.exit:                          ; preds = %.critedge22, %bb.a
  store ptr null, ptr %0, align 8, !tbaa !133
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_ZN4llvm5ErrorD2Ev.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm3orc12COFFPlatform17runSymbolIfExistsERNS0_8JITDylibENS_9StringRefE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.llvm::Error") align 8 captures(none) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(320) %1, ptr noundef nonnull align 8 dereferenceable(272) %2, ptr %3, i64 %4) local_unnamed_addr #0 align 2 {
_ZNSt6vectorISt4pairIPN4llvm3orc8JITDylibENS2_19JITDylibLookupFlagsEESaIS6_EE9push_backEOS6_.exit.i:
  %5 = alloca %"class.llvm::Error", align 8       ; 3 uses
  %6 = alloca %"class.llvm::Error", align 8       ; 5 uses
  %7 = alloca %class.anon.581, align 1            ; 3 uses
  %8 = alloca %"class.llvm::orc::ExecutorAddr", align 8 ; 5 uses
  %9 = alloca %"class.llvm::Error", align 8       ; 7 uses
  %10 = alloca %"class.std::vector.133", align 8  ; 7 uses
  %11 = alloca %"class.std::vector.366", align 8  ; 7 uses
  %12 = alloca %"class.llvm::orc::SymbolStringPtr", align 8 ; 6 uses
  %13 = alloca %"class.llvm::Expected.363", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #23
  store i64 0, ptr %8, align 8, !tbaa !457
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #23
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !333, !nonnull !15, !align !16
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #23
  tail call void @llvm.experimental.noalias.scope.decl(metadata !924)
  %i.c = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.d = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #25, !noalias !924 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  store ptr %2, ptr %i.d, align 8, !noalias !924
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i32 0, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !924
  store ptr %i.f, ptr %i.e, align 8, !tbaa !555, !alias.scope !924
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !333
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre, i64 48
  %.pre37 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !17, !noalias !927
  %.phi.trans.insert38 = getelementptr inbounds nuw i8, ptr %.pre37, i64 8
  %.pre39 = load ptr, ptr %.phi.trans.insert38, align 8, !tbaa !182, !noalias !930
  store ptr %i.f, ptr %i.c, align 8, !alias.scope !924
  store ptr %i.d, ptr %10, align 8, !alias.scope !924
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #23
  call void @_ZN4llvm3orc16SymbolStringPool6internENS_9StringRefE(ptr dead_on_unwind nonnull writable sret(%"class.llvm::orc::SymbolStringPtr") align 8 %12, ptr noundef nonnull align 8 dereferenceable(64) %.pre39, ptr %3, i64 %4)
  %i.g = load ptr, ptr %12, align 8, !tbaa !302   ; 4 uses
  store ptr null, ptr %12, align 8, !tbaa !302
  %i.h = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i64 0, ptr %i.h, align 8
  %i.i = call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #25 ; 4 uses
  store ptr %i.i, ptr %11, align 8, !tbaa !592
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  store ptr %i.j, ptr %i.k, align 8, !tbaa !595
  store ptr %i.g, ptr %i.i, align 8, !tbaa !112
  %i.l = ptrtoint ptr %i.g to i64
  %notsub.i.i.i.i.i.i.i.i.i.i.i = add i64 %i.l, -1
  %i.m = icmp ult i64 %notsub.i.i.i.i.i.i.i.i.i.i.i, -32 ; 2 uses
  br i1 %i.m, label %bb.a, label %_ZSt10_ConstructISt4pairIN4llvm3orc15SymbolStringPtrEPNS2_12ExecutorAddrEEJRKS6_EEvPT_DpOT0_.exit.i.i.i.i.i.i

bb.a:                                             ; preds = %_ZNSt6vectorISt4pairIPN4llvm3orc8JITDylibENS2_19JITDylibLookupFlagsEESaIS6_EE9push_backEOS6_.exit.i
  %i.n = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.o = atomicrmw add ptr %i.n, i64 1 seq_cst, align 8 ; 0 uses
  br label %_ZSt10_ConstructISt4pairIN4llvm3orc15SymbolStringPtrEPNS2_12ExecutorAddrEEJRKS6_EEvPT_DpOT0_.exit.i.i.i.i.i.i

_ZSt10_ConstructISt4pairIN4llvm3orc15SymbolStringPtrEPNS2_12ExecutorAddrEEJRKS6_EEvPT_DpOT0_.exit.i.i.i.i.i.i: ; preds = %bb.a, %_ZNSt6vectorISt4pairIPN4llvm3orc8JITDylibENS2_19JITDylibLookupFlagsEESaIS6_EE9push_backEOS6_.exit.i
  %i.p = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr %8, ptr %i.p, align 8, !tbaa !596
  %i.q = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 2 uses
  store ptr %i.j, ptr %i.q, align 8, !tbaa !599
  call void @_ZN4llvm3orc20lookupAndRecordAddrsERNS0_16ExecutionSessionENS0_10LookupKindERKSt6vectorISt4pairIPNS0_8JITDylibENS0_19JITDylibLookupFlagsEESaIS9_EES4_IS5_INS0_15SymbolStringPtrEPNS0_12ExecutorAddrEESaISH_EENS0_17SymbolLookupFlagsE(ptr dead_on_unwind nonnull writable sret(%"class.llvm::Error") align 8 %9, ptr noundef nonnull align 8 dereferenceable(392) %i.b, i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(24) %10, ptr nofree noundef nonnull align 8 dereferenceable(24) %11, i32 noundef 0) #23
  %i.r = load ptr, ptr %11, align 8, !tbaa !592   ; 3 uses
  %i.s = load ptr, ptr %i.q, align 8, !tbaa !599  ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.r, %i.s
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPSt4pairIN4llvm3orc15SymbolStringPtrEPNS2_12ExecutorAddrEEEvT_S8_.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZSt10_ConstructISt4pairIN4llvm3orc15SymbolStringPtrEPNS2_12ExecutorAddrEEJRKS6_EEvPT_DpOT0_.exit.i.i.i.i.i.i, %_ZSt8_DestroyISt4pairIN4llvm3orc15SymbolStringPtrEPNS2_12ExecutorAddrEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.y, %_ZSt8_DestroyISt4pairIN4llvm3orc15SymbolStringPtrEPNS2_12ExecutorAddrEEEvPT_.exit.i.i.i ], [ %i.r, %_ZSt10_ConstructISt4pairIN4llvm3orc15SymbolStringPtrEPNS2_12ExecutorAddrEEJRKS6_EEvPT_DpOT0_.exit.i.i.i.i.i.i ] ; 2 uses
  %i.t = load ptr, ptr %.05.i.i.i, align 8, !tbaa !112 ; 2 uses
  %i.u = ptrtoint ptr %i.t to i64
  %notsub.i.i.i.i.i.i.i.i = add i64 %i.u, -1
  %i.v = icmp ult i64 %notsub.i.i.i.i.i.i.i.i, -32
  br i1 %i.v, label %bb.b, label %_ZSt8_DestroyISt4pairIN4llvm3orc15SymbolStringPtrEPNS2_12ExecutorAddrEEEvPT_.exit.i.i.i

bb.b:                                             ; preds = %.lr.ph.i.i.i
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.x = atomicrmw sub ptr %i.w, i64 1 seq_cst, align 8 ; 0 uses
  br label %_ZSt8_DestroyISt4pairIN4llvm3orc15SymbolStringPtrEPNS2_12ExecutorAddrEEEvPT_.exit.i.i.i

_ZSt8_DestroyISt4pairIN4llvm3orc15SymbolStringPtrEPNS2_12ExecutorAddrEEEvPT_.exit.i.i.i: ; preds = %bb.b, %.lr.ph.i.i.i
  %i.y = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i7 = icmp eq ptr %i.y, %i.s
  br i1 %.not.i.i.i7, label %_ZSt8_DestroyIPSt4pairIN4llvm3orc15SymbolStringPtrEPNS2_12ExecutorAddrEEEvT_S8_.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !600

_ZSt8_DestroyIPSt4pairIN4llvm3orc15SymbolStringPtrEPNS2_12ExecutorAddrEEEvT_S8_.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyISt4pairIN4llvm3orc15SymbolStringPtrEPNS2_12ExecutorAddrEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %11, align 8, !tbaa !592
  br label %_ZSt8_DestroyIPSt4pairIN4llvm3orc15SymbolStringPtrEPNS2_12ExecutorAddrEEEvT_S8_.exit.i

_ZSt8_DestroyIPSt4pairIN4llvm3orc15SymbolStringPtrEPNS2_12ExecutorAddrEEEvT_S8_.exit.i: ; preds = %_ZSt8_DestroyIPSt4pairIN4llvm3orc15SymbolStringPtrEPNS2_12ExecutorAddrEEEvT_S8_.exitthread-pre-split.i, %_ZSt10_ConstructISt4pairIN4llvm3orc15SymbolStringPtrEPNS2_12ExecutorAddrEEJRKS6_EEvPT_DpOT0_.exit.i.i.i.i.i.i
  %i.z = phi ptr [ %.pr.i, %_ZSt8_DestroyIPSt4pairIN4llvm3orc15SymbolStringPtrEPNS2_12ExecutorAddrEEEvT_S8_.exitthread-pre-split.i ], [ %i.r, %_ZSt10_ConstructISt4pairIN4llvm3orc15SymbolStringPtrEPNS2_12ExecutorAddrEEJRKS6_EEvPT_DpOT0_.exit.i.i.i.i.i.i ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.z, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorISt4pairIN4llvm3orc15SymbolStringPtrEPNS2_12ExecutorAddrEESaIS6_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPSt4pairIN4llvm3orc15SymbolStringPtrEPNS2_12ExecutorAddrEEEvT_S8_.exit.i
  %i.aa = load ptr, ptr %i.k, align 8, !tbaa !595
  %i.ab = ptrtoint ptr %i.aa to i64
  %i.ac = ptrtoint ptr %i.z to i64
  %i.ad = sub i64 %i.ab, %i.ac
  call void @_ZdlPvm(ptr noundef nonnull %i.z, i64 noundef %i.ad) #26
  br label %_ZNSt6vectorISt4pairIN4llvm3orc15SymbolStringPtrEPNS2_12ExecutorAddrEESaIS6_EED2Ev.exit

_ZNSt6vectorISt4pairIN4llvm3orc15SymbolStringPtrEPNS2_12ExecutorAddrEESaIS6_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt4pairIN4llvm3orc15SymbolStringPtrEPNS2_12ExecutorAddrEEEvT_S8_.exit.i, %bb.c
  br i1 %i.m, label %bb.d, label %_ZNSt4pairIN4llvm3orc15SymbolStringPtrEPNS1_12ExecutorAddrEED2Ev.exit

bb.d:                                             ; preds = %_ZNSt6vectorISt4pairIN4llvm3orc15SymbolStringPtrEPNS2_12ExecutorAddrEESaIS6_EED2Ev.exit
  %i.ae = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.af = atomicrmw sub ptr %i.ae, i64 1 seq_cst, align 8 ; 0 uses
  br label %_ZNSt4pairIN4llvm3orc15SymbolStringPtrEPNS1_12ExecutorAddrEED2Ev.exit

_ZNSt4pairIN4llvm3orc15SymbolStringPtrEPNS1_12ExecutorAddrEED2Ev.exit: ; preds = %_ZNSt6vectorISt4pairIN4llvm3orc15SymbolStringPtrEPNS2_12ExecutorAddrEESaIS6_EED2Ev.exit, %bb.d
  %i.ag = load ptr, ptr %12, align 8, !tbaa !112  ; 2 uses
  %i.ah = ptrtoint ptr %i.ag to i64
  %notsub.i.i.i = add i64 %i.ah, -1
  %i.ai = icmp ult i64 %notsub.i.i.i, -32
  br i1 %i.ai, label %bb.e, label %_ZN4llvm3orc15SymbolStringPtrD2Ev.exit

bb.e:                                             ; preds = %_ZNSt4pairIN4llvm3orc15SymbolStringPtrEPNS1_12ExecutorAddrEED2Ev.exit
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.ak = atomicrmw sub ptr %i.aj, i64 1 seq_cst, align 8 ; 0 uses
  br label %_ZN4llvm3orc15SymbolStringPtrD2Ev.exit

_ZN4llvm3orc15SymbolStringPtrD2Ev.exit:           ; preds = %_ZNSt4pairIN4llvm3orc15SymbolStringPtrEPNS1_12ExecutorAddrEED2Ev.exit, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #23
  %i.al = load ptr, ptr %10, align 8, !tbaa !601  ; 3 uses
  %.not.i.i.i8 = icmp eq ptr %i.al, null
  br i1 %.not.i.i.i8, label %_ZNSt6vectorISt4pairIPN4llvm3orc8JITDylibENS2_19JITDylibLookupFlagsEESaIS6_EED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %_ZN4llvm3orc15SymbolStringPtrD2Ev.exit
  %i.am = load ptr, ptr %i.c, align 8, !tbaa !602
  %i.an = ptrtoint ptr %i.am to i64
  %i.ao = ptrtoint ptr %i.al to i64
  %i.ap = sub i64 %i.an, %i.ao
  call void @_ZdlPvm(ptr noundef nonnull %i.al, i64 noundef %i.ap) #26
  br label %_ZNSt6vectorISt4pairIPN4llvm3orc8JITDylibENS2_19JITDylibLookupFlagsEESaIS6_EED2Ev.exit

_ZNSt6vectorISt4pairIPN4llvm3orc8JITDylibENS2_19JITDylibLookupFlagsEESaIS6_EED2Ev.exit: ; preds = %_ZN4llvm3orc15SymbolStringPtrD2Ev.exit, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23
  %i.aq = load ptr, ptr %9, align 8, !tbaa !133   ; 3 uses
  %.not = icmp eq ptr %i.aq, null
  br i1 %.not, label %bb.g, label %_ZNK4llvm5Error3isAINS_3orc15SymbolsNotFoundEEEbv.exit

bb.g:                                             ; preds = %_ZNSt6vectorISt4pairIPN4llvm3orc8JITDylibENS2_19JITDylibLookupFlagsEESaIS6_EED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #23
  %i.ar = load ptr, ptr %i.a, align 8, !tbaa !333, !nonnull !15, !align !16
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 48
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !17 ; 2 uses
  %.sroa.0.0.copyload = load i64, ptr %8, align 8, !tbaa !178
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !84
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 48
  %i.aw = load ptr, ptr %i.av, align 8
  call void %i.aw(ptr dead_on_unwind nonnull writable sret(%"class.llvm::Expected.363") align 8 %13, ptr noundef nonnull align 8 dereferenceable(168) %i.at, i64 %.sroa.0.0.copyload) #23
  %i.ax = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.ay = load i8, ptr %i.ax, align 8
  %i.az = trunc i8 %i.ay to i1
  br i1 %i.az, label %bb.h, label %_ZN4llvm8ExpectedIiED2Ev.exit

bb.h:                                             ; preds = %bb.g
  %i.ba = load i64, ptr %13, align 8, !tbaa !49, !noalias !933
  %i.bb = inttoptr i64 %i.ba to ptr
  store ptr null, ptr %13, align 8, !tbaa !49, !noalias !933
  br label %_ZN4llvm8ExpectedIiED2Ev.exit

_ZN4llvm8ExpectedIiED2Ev.exit:                    ; preds = %bb.g, %bb.h
  %storemerge = phi ptr [ %i.bb, %bb.h ], [ null, %bb.g ]
  store ptr %storemerge, ptr %0, align 8, !tbaa !133
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #23
  br label %bb.k

_ZNK4llvm5Error3isAINS_3orc15SymbolsNotFoundEEEbv.exit: ; preds = %_ZNSt6vectorISt4pairIPN4llvm3orc8JITDylibENS2_19JITDylibLookupFlagsEESaIS6_EED2Ev.exit
  %i.bc = load ptr, ptr %i.aq, align 8, !tbaa !84
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 48
  %i.be = load ptr, ptr %i.bd, align 8
  %i.bf = call noundef zeroext i1 %i.be(ptr noundef nonnull align 8 dereferenceable(8) %i.aq, ptr noundef nonnull @_ZN4llvm3orc15SymbolsNotFound2IDE) #23, !inline_history !936
  %i.bg = load ptr, ptr %9, align 8, !tbaa !133   ; 2 uses
  br i1 %i.bf, label %bb.i, label %.thread

.thread:                                          ; preds = %_ZNK4llvm5Error3isAINS_3orc15SymbolsNotFoundEEEbv.exit
  store ptr %i.bg, ptr %0, align 8, !tbaa !133
  br label %_ZN4llvm5ErrorD2Ev.exit14

bb.i:                                             ; preds = %_ZNK4llvm5Error3isAINS_3orc15SymbolsNotFoundEEEbv.exit
  store ptr null, ptr %9, align 8, !tbaa !133
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  store ptr %i.bg, ptr %6, align 8, !tbaa !133
  call void @_ZN4llvm12handleErrorsIJZNS_12consumeErrorENS_5ErrorEEUlRKNS_13ErrorInfoBaseEE_EEES1_S1_DpOT_(ptr dead_on_unwind nonnull writable sret(%"class.llvm::Error") align 8 %5, ptr nofree noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 1 dereferenceable(1) %7)
  %i.bh = load ptr, ptr %6, align 8, !tbaa !133   ; 3 uses
  %i.bi = icmp eq ptr %i.bh, null
  br i1 %i.bi, label %_ZN4llvm5ErrorD2Ev.exit13, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bj = load ptr, ptr %i.bh, align 8, !tbaa !84
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  %i.bl = load ptr, ptr %i.bk, align 8
  call void %i.bl(ptr noundef nonnull align 8 dereferenceable(8) %i.bh) #23, !inline_history !937
  br label %_ZN4llvm5ErrorD2Ev.exit13

_ZN4llvm5ErrorD2Ev.exit13:                        ; preds = %bb.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  store ptr null, ptr %0, align 8, !tbaa !133
  br label %bb.k

bb.k:                                             ; preds = %_ZN4llvm5ErrorD2Ev.exit13, %_ZN4llvm8ExpectedIiED2Ev.exit
  %.pr = load ptr, ptr %9, align 8, !tbaa !133    ; 3 uses
  %i.bm = icmp eq ptr %.pr, null
  br i1 %i.bm, label %_ZN4llvm5ErrorD2Ev.exit14, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bn = load ptr, ptr %.pr, align 8, !tbaa !84
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  %i.bp = load ptr, ptr %i.bo, align 8
  call void %i.bp(ptr noundef nonnull align 8 dereferenceable(8) %.pr) #23, !inline_history !242
  br label %_ZN4llvm5ErrorD2Ev.exit14

_ZN4llvm5ErrorD2Ev.exit14:                        ; preds = %.thread, %bb.k, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  ret void
}

declare void @_ZN4llvm3orc20lookupAndRecordAddrsERNS0_16ExecutionSessionENS0_10LookupKindERKSt6vectorISt4pairIPNS0_8JITDylibENS0_19JITDylibLookupFlagsEESaIS9_EES4_IS5_INS0_15SymbolStringPtrEPNS0_12ExecutorAddrEESaISH_EENS0_17SymbolLookupFlagsE(ptr dead_on_unwind writable sret(%"class.llvm::Error") align 8, ptr noundef nonnull align 8 dereferenceable(392), i32 noundef, ptr noundef nonnull align 8 dereferenceable(24), ptr nofree noundef align 8 dereferenceable(24), i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm3orc12COFFPlatform18COFFPlatformPlugin16modifyPassConfigERNS0_29MaterializationResponsibilityERNS_7jitlink9LinkGraphERNS5_17PassConfigurationE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(48) %1, ptr nofree nonnull readnone align 8 captures(none) %2, ptr noundef nonnull align 8 dereferenceable(120) %3) unnamed_addr #0 align 2 {
bb.a:
  %4 = alloca %"class.llvm::unique_function.386", align 8 ; 10 uses
  %5 = alloca %"class.llvm::unique_function.386", align 8 ; 9 uses
  %6 = alloca %"class.llvm::unique_function.386", align 8 ; 9 uses
  %7 = alloca %"class.llvm::unique_function.386", align 8 ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !938, !nonnull !15, !align !16
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 152
end_hunk_1
