Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/WasmSSAOps?download=true
inline.NumInlined: 25934
inline.NumDeleted: 4043
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN4mlir7wasmssa13BlockReturnOp5printERNS_12OpAsmPrinterE:bb.a
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 44
  %i.ci = load i32, ptr %i.ch, align 4
  %i.cj = and i32 %i.ci, 8388608
  %.not.i.i.i.i16 = icmp eq i32 %i.cj, 0
  br i1 %.not.i.i.i.i16, label %_ZN4mlir7wasmssa13BlockReturnOp9getInputsEv.exit20, label %bb.p, !prof !57

bb.p:                                             ; preds = %_ZN4mlirlsINS_12OpAsmPrinterEcTnPNSt9enable_ifIXaaaaaaaaaantsr3std14is_convertibleIRT0_RNS_5ValueEEE5valuentsr3std14is_convertibleIS4_RNS_4TypeEEE5valuentsr3std14is_convertibleIS4_RNS_9AttributeEEE5valuentsr3std14is_convertibleIS4_NS_10ValueRangeEEE5valuentsr3std14is_convertibleIS4_RN4llvm7APFloatEEE5valuentsr4llvm9is_one_ofIS3_bfdEE5valueES3_E4typeELPc0EvEERT_SK_RKS3_.exit15
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cg, i64 68
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !61
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cg, i64 72
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !60
  %i.co = zext i32 %i.cl to i64
  br label %_ZN4mlir7wasmssa13BlockReturnOp9getInputsEv.exit20

_ZN4mlir7wasmssa13BlockReturnOp9getInputsEv.exit20: ; preds = %_ZN4mlirlsINS_12OpAsmPrinterEcTnPNSt9enable_ifIXaaaaaaaaaantsr3std14is_convertibleIRT0_RNS_5ValueEEE5valuentsr3std14is_convertibleIS4_RNS_4TypeEEE5valuentsr3std14is_convertibleIS4_RNS_9AttributeEEE5valuentsr3std14is_convertibleIS4_NS_10ValueRangeEEE5valuentsr3std14is_convertibleIS4_RN4llvm7APFloatEEE5valuentsr4llvm9is_one_ofIS3_bfdEE5valueES3_E4typeELPc0EvEERT_SK_RKS3_.exit15, %bb.p
  %.sroa.0.0.i.i.i.i.i17 = phi ptr [ %i.cn, %bb.p ], [ null, %_ZN4mlirlsINS_12OpAsmPrinterEcTnPNSt9enable_ifIXaaaaaaaaaantsr3std14is_convertibleIRT0_RNS_5ValueEEE5valuentsr3std14is_convertibleIS4_RNS_4TypeEEE5valuentsr3std14is_convertibleIS4_RNS_9AttributeEEE5valuentsr3std14is_convertibleIS4_NS_10ValueRangeEEE5valuentsr3std14is_convertibleIS4_RN4llvm7APFloatEEE5valuentsr4llvm9is_one_ofIS3_bfdEE5valueES3_E4typeELPc0EvEERT_SK_RKS3_.exit15 ]
  %i.cp = phi i64 [ %i.co, %bb.p ], [ 0, %_ZN4mlirlsINS_12OpAsmPrinterEcTnPNSt9enable_ifIXaaaaaaaaaantsr3std14is_convertibleIRT0_RNS_5ValueEEE5valuentsr3std14is_convertibleIS4_RNS_4TypeEEE5valuentsr3std14is_convertibleIS4_RNS_9AttributeEEE5valuentsr3std14is_convertibleIS4_NS_10ValueRangeEEE5valuentsr3std14is_convertibleIS4_RN4llvm7APFloatEEE5valuentsr4llvm9is_one_ofIS3_bfdEE5valueES3_E4typeELPc0EvEERT_SK_RKS3_.exit15 ]
  store ptr %.sroa.0.0.i.i.i.i.i17, ptr %4, align 8
  %i.cq = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.cp, ptr %i.cq, align 8
  call void @_ZNK4mlir12OperandRange8getTypesEv(ptr dead_on_unwind nonnull writable sret(%"class.mlir::ValueTypeRange") align 8 %3, ptr noundef nonnull align 8 dereferenceable(16) %4) #24
  %.sroa.0.0.copyload.i.i.i.i.i.i.i = load ptr, ptr %3, align 8 ; 2 uses
  %.sroa.2.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.sroa.2.0.copyload.i.i.i.i.i.i.i = load i64, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i.i.i, align 8 ; 3 uses
  %.sroa.2.0..sroa_idx.i.i.i9.i.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 24
  %.sroa.2.0.copyload.i.i.i10.i.i.i.i = load i64, ptr %.sroa.2.0..sroa_idx.i.i.i9.i.i.i.i, align 8 ; 3 uses
  %i.cr = icmp eq i64 %.sroa.2.0.copyload.i.i.i.i.i.i.i, %.sroa.2.0.copyload.i.i.i10.i.i.i.i
  br i1 %i.cr, label %_ZN4mlirlsINS_12OpAsmPrinterENS_12OperandRangeEvEERT_S4_RKNS_14ValueTypeRangeIT0_EE.exit, label %bb.q

bb.q:                                             ; preds = %_ZN4mlir7wasmssa13BlockReturnOp9getInputsEv.exit20
  %i.cs = getelementptr inbounds [32 x i8], ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i, i64 %.sroa.2.0.copyload.i.i.i.i.i.i.i
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 24
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i21 = load ptr, ptr %i.ct, align 8, !tbaa !104
  %i.cu = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i21, i64 8
  %.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.cu, align 8
  %i.cv = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i, -8
  %i.cw = inttoptr i64 %i.cv to ptr
  %i.cx = load ptr, ptr %1, align 8, !tbaa !119
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 56
  %i.cz = load ptr, ptr %i.cy, align 8
  call void %i.cz(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr %i.cw) #24, !inline_history !10
  %.sroa.3.016.i.i.i.i.i = add nsw i64 %.sroa.2.0.copyload.i.i.i.i.i.i.i, 1 ; 2 uses
  %.not17.i.i.i.i.i = icmp eq i64 %.sroa.3.016.i.i.i.i.i, %.sroa.2.0.copyload.i.i.i10.i.i.i.i
  br i1 %.not17.i.i.i.i.i, label %_ZN4mlirlsINS_12OpAsmPrinterENS_12OperandRangeEvEERT_S4_RKNS_14ValueTypeRangeIT0_EE.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.q, %_ZZN4llvm10interleaveIN4mlir14ValueTypeRangeINS1_12OperandRangeEEEZNS_15interleaveCommaIS4_NS1_12OpAsmPrinterENS1_4TypeEEEvRKT_RT0_EUlRKS7_E_S6_S7_EEvSA_RT1_SB_RKNS_9StringRefEENKUlvE_clEv.exit.i.i.i.i.i
  %.sroa.3.018.i.i.i.i.i = phi i64 [ %.sroa.3.0.i.i.i.i.i, %_ZZN4llvm10interleaveIN4mlir14ValueTypeRangeINS1_12OperandRangeEEEZNS_15interleaveCommaIS4_NS1_12OpAsmPrinterENS1_4TypeEEEvRKT_RT0_EUlRKS7_E_S6_S7_EEvSA_RT1_SB_RKNS_9StringRefEENKUlvE_clEv.exit.i.i.i.i.i ], [ %.sroa.3.016.i.i.i.i.i, %bb.q ] ; 2 uses
  %i.da = load ptr, ptr %1, align 8, !tbaa !119
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 16
  %i.dc = load ptr, ptr %i.db, align 8
  %i.dd = call noundef nonnull align 8 dereferenceable(48) ptr %i.dc(ptr noundef nonnull align 8 dereferenceable(16) %1) #24, !inline_history !11 ; 3 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 24
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !124
  %i.dg = getelementptr inbounds nuw i8, ptr %i.dd, i64 32 ; 3 uses
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !123 ; 2 uses
  %i.di = ptrtoint ptr %i.df to i64
  %i.dj = ptrtoint ptr %i.dh to i64
  %i.dk = sub i64 %i.di, %i.dj
  %i.dl = icmp ult i64 %i.dk, 2
  br i1 %i.dl, label %bb.r, label %bb.s

bb.r:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.dm = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.dd, ptr noundef nonnull @.str.305, i64 noundef 2) #24 ; 0 uses
  br label %_ZZN4llvm10interleaveIN4mlir14ValueTypeRangeINS1_12OperandRangeEEEZNS_15interleaveCommaIS4_NS1_12OpAsmPrinterENS1_4TypeEEEvRKT_RT0_EUlRKS7_E_S6_S7_EEvSA_RT1_SB_RKNS_9StringRefEENKUlvE_clEv.exit.i.i.i.i.i

bb.s:                                             ; preds = %.lr.ph.i.i.i.i.i
  store i16 8236, ptr %i.dh, align 1
  %i.dn = load ptr, ptr %i.dg, align 8, !tbaa !123
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 2
  store ptr %i.do, ptr %i.dg, align 8, !tbaa !123
  br label %_ZZN4llvm10interleaveIN4mlir14ValueTypeRangeINS1_12OperandRangeEEEZNS_15interleaveCommaIS4_NS1_12OpAsmPrinterENS1_4TypeEEEvRKT_RT0_EUlRKS7_E_S6_S7_EEvSA_RT1_SB_RKNS_9StringRefEENKUlvE_clEv.exit.i.i.i.i.i

_ZZN4llvm10interleaveIN4mlir14ValueTypeRangeINS1_12OperandRangeEEEZNS_15interleaveCommaIS4_NS1_12OpAsmPrinterENS1_4TypeEEEvRKT_RT0_EUlRKS7_E_S6_S7_EEvSA_RT1_SB_RKNS_9StringRefEENKUlvE_clEv.exit.i.i.i.i.i: ; preds = %bb.s, %bb.r
  %i.dp = getelementptr inbounds [32 x i8], ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i, i64 %.sroa.3.018.i.i.i.i.i
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 24
  %.sroa.0.0.copyload.i.i.i.i1.i.i.i.i.i = load ptr, ptr %i.dq, align 8, !tbaa !104
  %i.dr = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i1.i.i.i.i.i, i64 8
  %.0.copyload.i.i.i.i.i.i.i2.i.i.i.i.i = load i64, ptr %i.dr, align 8
  %i.ds = and i64 %.0.copyload.i.i.i.i.i.i.i2.i.i.i.i.i, -8
  %i.dt = inttoptr i64 %i.ds to ptr
  %i.du = load ptr, ptr %1, align 8, !tbaa !119
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 56
  %i.dw = load ptr, ptr %i.dv, align 8
  call void %i.dw(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr %i.dt) #24, !inline_history !10
  %.sroa.3.0.i.i.i.i.i = add nsw i64 %.sroa.3.018.i.i.i.i.i, 1 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i64 %.sroa.3.0.i.i.i.i.i, %.sroa.2.0.copyload.i.i.i10.i.i.i.i
  br i1 %.not.i.i.i.i.i, label %_ZN4mlirlsINS_12OpAsmPrinterENS_12OperandRangeEvEERT_S4_RKNS_14ValueTypeRangeIT0_EE.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !12

_ZN4mlirlsINS_12OpAsmPrinterENS_12OperandRangeEvEERT_S4_RKNS_14ValueTypeRangeIT0_EE.exit: ; preds = %_ZZN4llvm10interleaveIN4mlir14ValueTypeRangeINS1_12OperandRangeEEEZNS_15interleaveCommaIS4_NS1_12OpAsmPrinterENS1_4TypeEEEvRKT_RT0_EUlRKS7_E_S6_S7_EEvSA_RT1_SB_RKNS_9StringRefEENKUlvE_clEv.exit.i.i.i.i.i, %_ZN4mlir7wasmssa13BlockReturnOp9getInputsEv.exit20, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  %.pre = load ptr, ptr %0, align 8, !tbaa !102
  br label %_ZN4mlir7wasmssa13BlockReturnOp9getInputsEv.exit.thread

_ZN4mlir7wasmssa13BlockReturnOp9getInputsEv.exit.thread: ; preds = %bb.a, %_ZN4mlirlsINS_12OpAsmPrinterENS_12OperandRangeEvEERT_S4_RKNS_14ValueTypeRangeIT0_EE.exit, %_ZN4mlir7wasmssa13BlockReturnOp9getInputsEv.exit
  %i.dx = phi ptr [ %i.a, %bb.a ], [ %.pre, %_ZN4mlirlsINS_12OpAsmPrinterENS_12OperandRangeEvEERT_S4_RKNS_14ValueTypeRangeIT0_EE.exit ], [ %i.a, %_ZN4mlir7wasmssa13BlockReturnOp9getInputsEv.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  %i.dy = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  store ptr %i.dy, ptr %5, align 8, !tbaa !86
  %i.dz = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store i32 0, ptr %i.dz, align 8, !tbaa !83
  %i.ea = getelementptr inbounds nuw i8, ptr %5, i64 12
  store i32 2, ptr %i.ea, align 4, !tbaa !84
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  %i.eb = call ptr @_ZN4mlir9Operation17getAttrDictionaryEv(ptr noundef nonnull align 8 dereferenceable(64) %i.dx) #24
  store ptr %i.eb, ptr %2, align 8
  %i.ec = call { ptr, i64 } @_ZNK4mlir14DictionaryAttr8getValueEv(ptr noundef nonnull align 8 dereferenceable(8) %2) #24 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  %i.ed = extractvalue { ptr, i64 } %i.ec, 0
  %i.ee = extractvalue { ptr, i64 } %i.ec, 1
  %i.ef = load ptr, ptr %5, align 8, !tbaa !86
  %i.eg = load i32, ptr %i.dz, align 8, !tbaa !83
  %i.eh = zext i32 %i.eg to i64
  %i.ei = load ptr, ptr %1, align 8, !tbaa !119
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 200
  %i.ek = load ptr, ptr %i.ej, align 8
  call void %i.ek(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr %i.ed, i64 %i.ee, ptr %i.ef, i64 %i.eh) #24
  %i.el = load ptr, ptr %5, align 8, !tbaa !86    ; 2 uses
  %i.em = icmp eq ptr %i.el, %i.dy
  br i1 %i.em, label %_ZN4llvm11SmallVectorINS_9StringRefELj2EED2Ev.exit, label %bb.t

bb.t:                                             ; preds = %_ZN4mlir7wasmssa13BlockReturnOp9getInputsEv.exit.thread
  call void @free(ptr noundef %i.el) #24
  br label %_ZN4llvm11SmallVectorINS_9StringRefELj2EED2Ev.exit

_ZN4llvm11SmallVectorINS_9StringRefELj2EED2Ev.exit: ; preds = %_ZN4mlir7wasmssa13BlockReturnOp9getInputsEv.exit.thread, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4mlir7wasmssa6detail28BranchIfOpGenericAdaptorBaseC2ENS0_10BranchIfOpE(ptr noundef nonnull align 8 dereferenceable(48) initializes((0, 17), (24, 32)) %0, ptr %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 56
  %.sroa.0.0.copyload.i = load ptr, ptr %i.a, align 8
  store ptr %.sroa.0.0.copyload.i, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.sroa.0.0.copyload.i1 = load ptr, ptr %i.c, align 8, !tbaa !37
  %i.d = ptrtoint ptr %.sroa.0.0.copyload.i1 to i64
  store i64 %i.d, ptr %i.b, align 8, !tbaa !37
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 1, ptr %i.e, align 8, !tbaa !40
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 44 ; 2 uses
  %i.h = load i32, ptr %i.g, align 4              ; 2 uses
  %.not.i.i = icmp ugt i32 %i.h, 16777215
  tail call void @llvm.assume(i1 %.not.i.i)
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.j = lshr i32 %i.h, 23
  %.lobit.i.i.i.i.i.i.i.i = and i32 %i.j, 1
  %i.k = zext nneg i32 %.lobit.i.i.i.i.i.i.i.i to i64
  %i.l = getelementptr inbounds nuw [16 x i8], ptr %i.i, i64 %i.k
  %i.m = load i64, ptr %i.l, align 8
  store i64 %i.m, ptr %i.f, align 8
  %i.n = load i32, ptr %i.g, align 4              ; 3 uses
  %i.o = and i32 %i.n, 8388607                    ; 2 uses
  %i.p = icmp eq i32 %i.o, 0
  br i1 %i.p, label %_ZN4mlir9Operation10getRegionsEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.q = zext nneg i32 %i.o to i64
  %i.r = lshr i32 %i.n, 23
  %.lobit.i.i.i.i.i.i.i.i.i = and i32 %i.r, 1
  %i.s = zext nneg i32 %.lobit.i.i.i.i.i.i.i.i.i to i64
  %i.t = getelementptr inbounds nuw [16 x i8], ptr %i.i, i64 %i.s
  %i.u = lshr i32 %i.n, 21
  %i.v = and i32 %i.u, 2040
  %i.w = zext nneg i32 %i.v to i64
  %i.x = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.w
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.z = load i32, ptr %i.y, align 8, !tbaa !56
  %i.aa = zext i32 %i.z to i64
  %i.ab = getelementptr inbounds nuw [32 x i8], ptr %i.x, i64 %i.aa
  br label %_ZN4mlir9Operation10getRegionsEv.exit

_ZN4mlir9Operation10getRegionsEv.exit:            ; preds = %bb.a, %bb.b
  %.sroa.0.0.i = phi ptr [ %i.ab, %bb.b ], [ null, %bb.a ]
  %.sroa.4.0.i = phi i64 [ %i.q, %bb.b ], [ 0, %bb.a ]
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @_ZN4mlir11RegionRangeC1EN4llvm15MutableArrayRefINS_6RegionEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.ac, ptr %.sroa.0.0.i, i64 %.sroa.4.0.i) #24
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local i64 @_ZN4mlir7wasmssa6detail28BranchIfOpGenericAdaptorBase27getODSOperandIndexAndLengthEjj(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(48) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #3 align 2 {
bb.a:
  %.not = icmp eq i32 %1, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %min.iters.check = icmp ult i32 %1, 8
  br i1 %min.iters.check, label %.lr.ph.preheader19, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i32 %1, -8                         ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i32 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %8, %vector.body ]
  %vec.phi18 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.b, %vector.body ]
  %vec.ind = phi <4 x i8> [ <i8 0, i8 1, i8 2, i8 3>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %step.add = add <4 x i8> %vec.ind, splat (i8 4)
  %3 = shl nsw <4 x i8> splat (i8 -1), %vec.ind
  %4 = shl nsw <4 x i8> splat (i8 -1), %step.add
  %5 = xor <4 x i8> %3, splat (i8 -1)
  %6 = xor <4 x i8> %4, splat (i8 -1)
  %7 = zext nneg <4 x i8> %5 to <4 x i32>
  %i.a = zext nneg <4 x i8> %6 to <4 x i32>
  %8 = add <4 x i32> %vec.phi, %7                 ; 2 uses
  %i.b = add <4 x i32> %vec.phi18, %i.a           ; 2 uses
  %index.next = add nuw i32 %index, 8             ; 2 uses
  %vec.ind.next = add <4 x i8> %vec.ind, splat (i8 8)
  %i.c = icmp eq i32 %index.next, %n.vec
  br i1 %i.c, label %middle.block, label %vector.body, !llvm.loop !243

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.b, %8
  %i.d = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i32 %1, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader19

.lr.ph.preheader19:                               ; preds = %.lr.ph.preheader, %middle.block
  %.015.ph = phi i32 [ 0, %.lr.ph.preheader ], [ %i.d, %middle.block ]
  %.01114.ph = phi i32 [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %bb.a
  %.0.lcssa = phi i32 [ 0, %bb.a ], [ %i.d, %middle.block ], [ %spec.select, %.lr.ph ]
  %i.e = add i32 %2, -1
  %i.f = add i32 %2, -2
  %i.g = mul nsw i32 %.0.lcssa, %i.f
  %i.h = add i32 %i.g, %1
  %9 = and i32 %1, 255
  %.not17 = icmp eq i32 %9, 0
  %i.i = zext i32 %i.e to i64
  %i.j = shl nuw i64 %i.i, 32
  %.sroa.2.0.insert.shift = select i1 %.not17, i64 4294967296, i64 %i.j
  %.sroa.0.0.insert.ext = zext i32 %i.h to i64
  %.sroa.0.0.insert.insert = or disjoint i64 %.sroa.2.0.insert.shift, %.sroa.0.0.insert.ext
  ret i64 %.sroa.0.0.insert.insert

.lr.ph:                                           ; preds = %.lr.ph.preheader19, %.lr.ph
  %.015 = phi i32 [ %spec.select, %.lr.ph ], [ %.015.ph, %.lr.ph.preheader19 ]
  %.01114 = phi i32 [ %i.l, %.lr.ph ], [ %.01114.ph, %.lr.ph.preheader19 ] ; 2 uses
  %10 = trunc i32 %.01114 to i8
  %notmask = shl nsw i8 -1, %10
  %11 = xor i8 %notmask, -1
  %i.k = zext nneg i8 %11 to i32
  %spec.select = add nuw nsw i32 %.015, %i.k      ; 2 uses
  %i.l = add nuw i32 %.01114, 1                   ; 2 uses
  %exitcond.not = icmp eq i32 %i.l, %1
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !244
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef i32 @_ZN4mlir7wasmssa6detail28BranchIfOpGenericAdaptorBase12getExitLevelEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %1 = alloca %"class.mlir::IntegerAttr", align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #24
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.a, align 8, !tbaa !142
  store ptr %.sroa.0.0.copyload.i.i, ptr %1, align 8
  %i.b = call noundef nonnull align 8 dereferenceable(12) ptr @_ZNK4mlir11IntegerAttr8getValueEv(ptr noundef nonnull align 8 dereferenceable(8) %1) #24 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load i32, ptr %i.c, align 8, !tbaa !144
  %i.e = icmp ult i32 %i.d, 65
  %i.f = load ptr, ptr %i.b, align 8
  %spec.select.i = select i1 %i.e, ptr %i.b, ptr %i.f
  %.0.i = load i64, ptr %spec.select.i, align 8, !tbaa !108
  %i.g = trunc i64 %.0.i to i32
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #24
  ret i32 %i.g
}

declare noundef nonnull align 8 dereferenceable(12) ptr @_ZNK4mlir11IntegerAttr8getValueEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4mlir7wasmssa17BranchIfOpAdaptorC2ENS0_10BranchIfOpE(ptr noundef nonnull align 8 dereferenceable(64) initializes((0, 17), (24, 32)) %0, ptr %1) unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.mlir::ValueRange", align 16 ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 44 ; 3 uses
  %i.b = load i32, ptr %i.a, align 4
  %i.c = and i32 %i.b, 8388608
  %.not.i.i = icmp eq i32 %i.c, 0
  br i1 %.not.i.i, label %_ZN4mlir9Operation11getOperandsEv.exit, label %bb.b, !prof !57

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !60
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.g = load i32, ptr %i.f, align 4, !tbaa !61
  %i.h = zext i32 %i.g to i64
  br label %_ZN4mlir9Operation11getOperandsEv.exit

_ZN4mlir9Operation11getOperandsEv.exit:           ; preds = %bb.a, %bb.b
  %.sroa.0.0.i.i = phi ptr [ %i.e, %bb.b ], [ null, %bb.a ]
  %.sroa.4.0.i.i = phi i64 [ %i.h, %bb.b ], [ 0, %bb.a ]
  call void @_ZN4mlir10ValueRangeC1ENS_12OperandRangeE(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr %.sroa.0.0.i.i, i64 %.sroa.4.0.i.i) #24
  %i.i = load <2 x i64>, ptr %2, align 16
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 56
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %i.j, align 8
  store ptr %.sroa.0.0.copyload.i.i.i, ptr %0, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.sroa.0.0.copyload.i1.i.i = load ptr, ptr %i.l, align 8, !tbaa !37
  %i.m = ptrtoint ptr %.sroa.0.0.copyload.i1.i.i to i64
  store i64 %i.m, ptr %i.k, align 8, !tbaa !37
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 1, ptr %i.n, align 8, !tbaa !40
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.p = load i32, ptr %i.a, align 4              ; 2 uses
  %.not.i.i.i.i = icmp ugt i32 %i.p, 16777215
  call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.r = lshr i32 %i.p, 23
  %.lobit.i.i.i.i.i.i.i.i.i.i = and i32 %i.r, 1
  %i.s = zext nneg i32 %.lobit.i.i.i.i.i.i.i.i.i.i to i64
  %i.t = getelementptr inbounds nuw [16 x i8], ptr %i.q, i64 %i.s
  %i.u = load i64, ptr %i.t, align 8
  store i64 %i.u, ptr %i.o, align 8
  %i.v = load i32, ptr %i.a, align 4              ; 3 uses
  %i.w = and i32 %i.v, 8388607                    ; 2 uses
  %i.x = icmp eq i32 %i.w, 0
  br i1 %i.x, label %_ZN4mlir7wasmssa24BranchIfOpGenericAdaptorINS_10ValueRangeEEC2INS0_10BranchIfOpEvEES2_T_.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4mlir9Operation11getOperandsEv.exit
  %i.y = zext nneg i32 %i.w to i64
  %i.z = lshr i32 %i.v, 23
  %.lobit.i.i.i.i.i.i.i.i.i.i.i = and i32 %i.z, 1
  %i.aa = zext nneg i32 %.lobit.i.i.i.i.i.i.i.i.i.i.i to i64
  %i.ab = getelementptr inbounds nuw [16 x i8], ptr %i.q, i64 %i.aa
  %i.ac = lshr i32 %i.v, 21
  %i.ad = and i32 %i.ac, 2040
  %i.ae = zext nneg i32 %i.ad to i64
  %i.af = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.ae
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !56
  %i.ai = zext i32 %i.ah to i64
  %i.aj = getelementptr inbounds nuw [32 x i8], ptr %i.af, i64 %i.ai
  br label %_ZN4mlir7wasmssa24BranchIfOpGenericAdaptorINS_10ValueRangeEEC2INS0_10BranchIfOpEvEES2_T_.exit

_ZN4mlir7wasmssa24BranchIfOpGenericAdaptorINS_10ValueRangeEEC2INS0_10BranchIfOpEvEES2_T_.exit: ; preds = %_ZN4mlir9Operation11getOperandsEv.exit, %bb.c
  %.sroa.0.0.i.i.i = phi ptr [ %i.aj, %bb.c ], [ null, %_ZN4mlir9Operation11getOperandsEv.exit ]
  %.sroa.4.0.i.i.i = phi i64 [ %i.y, %bb.c ], [ 0, %_ZN4mlir9Operation11getOperandsEv.exit ]
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @_ZN4mlir11RegionRangeC1EN4llvm15MutableArrayRefINS_6RegionEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.ak, ptr %.sroa.0.0.i.i.i, i64 %.sroa.4.0.i.i.i) #24
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 48
  store <2 x i64> %i.i, ptr %i.al, align 8
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local i8 @_ZN4mlir7wasmssa17BranchIfOpAdaptor6verifyENS_8LocationE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %0, ptr %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.mlir::InFlightDiagnostic", align 8 ; 8 uses
  %3 = alloca %"class.llvm::Twine", align 8       ; 6 uses
  %4 = alloca %"class.mlir::Type", align 8        ; 4 uses
  %5 = alloca %"class.mlir::IntegerAttr", align 8 ; 4 uses
  %6 = alloca %"class.mlir::InFlightDiagnostic", align 8 ; 8 uses
  %7 = alloca %"class.llvm::Twine", align 8       ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i64, ptr %i.a, align 8              ; 2 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 33
  store i8 1, ptr %i.e, align 1, !tbaa !107
  store ptr @.str.11, ptr %3, align 8, !tbaa !108
  store i8 3, ptr %i.d, align 8, !tbaa !109
  call void @_ZN4mlir9emitErrorENS_8LocationERKN4llvm5TwineE(ptr dead_on_unwind nonnull writable sret(%"class.mlir::InFlightDiagnostic") align 8 %2, ptr %1, ptr noundef nonnull align 8 dereferenceable(34) %3) #24
  %i.f = call i8 @_ZNK4mlir18InFlightDiagnosticcvN4llvm13LogicalResultEEv(ptr noundef nonnull align 8 dereferenceable(208) %2) #24
  %i.g = load ptr, ptr %2, align 8, !tbaa !74
  %.not.i = icmp eq ptr %i.g, null
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @_ZN4mlir18InFlightDiagnostic6reportEv(ptr noundef nonnull align 8 dereferenceable(208) %2) #24
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 200 ; 2 uses
  %i.i = load i8, ptr %i.h, align 8, !tbaa !87, !range !88, !noundef !89
  %i.j = trunc nuw i8 %i.i to i1
  store i8 0, ptr %i.h, align 8, !tbaa !87
  br i1 %i.j, label %bb.e, label %_ZN4mlir18InFlightDiagnosticD2Ev.exit

bb.e:                                             ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 8
  call void @_ZN4mlir10DiagnosticD2Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(200) %i.k) #24
  br label %_ZN4mlir18InFlightDiagnosticD2Ev.exit

_ZN4mlir18InFlightDiagnosticD2Ev.exit:            ; preds = %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  br label %bb.k

bb.f:                                             ; preds = %bb.a
  %i.l = inttoptr i64 %i.b to ptr
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  store ptr %i.l, ptr %5, align 8
  %i.m = call ptr @_ZNK4mlir11IntegerAttr7getTypeEv(ptr noundef nonnull align 8 dereferenceable(8) %5) #24
  store ptr %i.m, ptr %4, align 8
  %i.n = call noundef zeroext i1 @_ZNK4mlir4Type17isUnsignedIntegerEj(ptr noundef nonnull align 8 dereferenceable(8) %4, i32 noundef 32) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  br i1 %i.n, label %bb.k, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #24
  %i.o = getelementptr inbounds nuw i8, ptr %7, i64 32
  %i.p = getelementptr inbounds nuw i8, ptr %7, i64 33
  store i8 1, ptr %i.p, align 1, !tbaa !107
  store ptr @.str.12, ptr %7, align 8, !tbaa !108
  store i8 3, ptr %i.o, align 8, !tbaa !109
  call void @_ZN4mlir9emitErrorENS_8LocationERKN4llvm5TwineE(ptr dead_on_unwind nonnull writable sret(%"class.mlir::InFlightDiagnostic") align 8 %6, ptr %1, ptr noundef nonnull align 8 dereferenceable(34) %7) #24
  %i.q = call i8 @_ZNK4mlir18InFlightDiagnosticcvN4llvm13LogicalResultEEv(ptr noundef nonnull align 8 dereferenceable(208) %6) #24
  %i.r = load ptr, ptr %6, align 8, !tbaa !74
  %.not.i6 = icmp eq ptr %i.r, null
  br i1 %.not.i6, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @_ZN4mlir18InFlightDiagnostic6reportEv(ptr noundef nonnull align 8 dereferenceable(208) %6) #24
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.s = getelementptr inbounds nuw i8, ptr %6, i64 200 ; 2 uses
  %i.t = load i8, ptr %i.s, align 8, !tbaa !87, !range !88, !noundef !89
  %i.u = trunc nuw i8 %i.t to i1
  store i8 0, ptr %i.s, align 8, !tbaa !87
  br i1 %i.u, label %bb.j, label %_ZN4mlir18InFlightDiagnosticD2Ev.exit7

bb.j:                                             ; preds = %bb.i
  %i.v = getelementptr inbounds nuw i8, ptr %6, i64 8
  call void @_ZN4mlir10DiagnosticD2Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(200) %i.v) #24
  br label %_ZN4mlir18InFlightDiagnosticD2Ev.exit7

_ZN4mlir18InFlightDiagnosticD2Ev.exit7:           ; preds = %bb.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  br label %bb.k

bb.k:                                             ; preds = %bb.f, %_ZN4mlir18InFlightDiagnosticD2Ev.exit7, %_ZN4mlir18InFlightDiagnosticD2Ev.exit
  %.sroa.03.0 = phi i8 [ %i.f, %_ZN4mlir18InFlightDiagnosticD2Ev.exit ], [ %i.q, %_ZN4mlir18InFlightDiagnosticD2Ev.exit7 ], [ 1, %bb.f ]
  ret i8 %.sroa.03.0
}

declare void @_ZN4mlir9emitErrorENS_8LocationERKN4llvm5TwineE(ptr dead_on_unwind writable sret(%"class.mlir::InFlightDiagnostic") align 8, ptr, ptr noundef nonnull align 8 dereferenceable(34)) local_unnamed_addr #2

declare ptr @_ZNK4mlir11IntegerAttr7getTypeEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

declare noundef zeroext i1 @_ZNK4mlir4Type17isUnsignedIntegerEj(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local i64 @_ZN4mlir7wasmssa10BranchIfOp27getODSOperandIndexAndLengthEj(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0, i32 noundef %1) local_unnamed_addr #7 align 2 {
bb.a:
  %.not = icmp eq i32 %1, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %min.iters.check = icmp ult i32 %1, 8
  br i1 %min.iters.check, label %.lr.ph.preheader18, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i32 %1, -8                         ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i32 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %7, %vector.body ]
  %vec.phi17 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.b, %vector.body ]
  %vec.ind = phi <4 x i8> [ <i8 0, i8 1, i8 2, i8 3>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %step.add = add <4 x i8> %vec.ind, splat (i8 4)
  %2 = shl nsw <4 x i8> splat (i8 -1), %vec.ind
  %3 = shl nsw <4 x i8> splat (i8 -1), %step.add
  %4 = xor <4 x i8> %2, splat (i8 -1)
  %5 = xor <4 x i8> %3, splat (i8 -1)
  %6 = zext nneg <4 x i8> %4 to <4 x i32>
  %i.a = zext nneg <4 x i8> %5 to <4 x i32>
  %7 = add <4 x i32> %vec.phi, %6                 ; 2 uses
  %i.b = add <4 x i32> %vec.phi17, %i.a           ; 2 uses
  %index.next = add nuw i32 %index, 8             ; 2 uses
  %vec.ind.next = add <4 x i8> %vec.ind, splat (i8 8)
  %i.c = icmp eq i32 %index.next, %n.vec
  br i1 %i.c, label %middle.block, label %vector.body, !llvm.loop !245

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.b, %7
  %i.d = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i32 %1, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader18

.lr.ph.preheader18:                               ; preds = %.lr.ph.preheader, %middle.block
  %.014.ph = phi i32 [ 0, %.lr.ph.preheader ], [ %i.d, %middle.block ]
  %.01013.ph = phi i32 [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %bb.a
  %.0.lcssa = phi i32 [ 0, %bb.a ], [ %i.d, %middle.block ], [ %spec.select, %.lr.ph ]
  %i.e = load ptr, ptr %0, align 8, !tbaa !102    ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 44
  %i.g = load i32, ptr %i.f, align 4
  %i.h = and i32 %i.g, 8388608
  %.not.i = icmp eq i32 %i.h, 0
  br i1 %.not.i, label %_ZN4mlir9Operation14getNumOperandsEv.exit, label %bb.b, !prof !57

bb.b:                                             ; preds = %._crit_edge
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 68
  %i.j = load i32, ptr %i.i, align 4, !tbaa !61
  br label %_ZN4mlir9Operation14getNumOperandsEv.exit

_ZN4mlir9Operation14getNumOperandsEv.exit:        ; preds = %._crit_edge, %bb.b
  %i.k = phi i32 [ %i.j, %bb.b ], [ 0, %._crit_edge ] ; 2 uses
  %i.l = add i32 %i.k, -1
  %i.m = add i32 %i.k, -2
  %i.n = mul nsw i32 %i.m, %.0.lcssa
  %i.o = add i32 %i.n, %1
  %8 = and i32 %1, 255
  %.not16 = icmp eq i32 %8, 0
  %i.p = zext i32 %i.l to i64
  %i.q = shl nuw i64 %i.p, 32
  %.sroa.2.0.insert.shift = select i1 %.not16, i64 4294967296, i64 %i.q
  %.sroa.0.0.insert.ext = zext i32 %i.o to i64
  %.sroa.0.0.insert.insert = or disjoint i64 %.sroa.2.0.insert.shift, %.sroa.0.0.insert.ext
  ret i64 %.sroa.0.0.insert.insert

.lr.ph:                                           ; preds = %.lr.ph.preheader18, %.lr.ph
  %.014 = phi i32 [ %spec.select, %.lr.ph ], [ %.014.ph, %.lr.ph.preheader18 ]
  %.01013 = phi i32 [ %i.s, %.lr.ph ], [ %.01013.ph, %.lr.ph.preheader18 ] ; 2 uses
  %9 = trunc i32 %.01013 to i8
  %notmask = shl nsw i8 -1, %9
  %10 = xor i8 %notmask, -1
  %i.r = zext nneg i8 %10 to i32
  %spec.select = add nuw nsw i32 %.014, %i.r      ; 2 uses
  %i.s = add nuw i32 %.01013, 1                   ; 2 uses
  %exitcond.not = icmp eq i32 %i.s, %1
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !246
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4mlir7wasmssa10BranchIfOp16getInputsMutableEv(ptr dead_on_unwind noalias writable sret(%"class.mlir::MutableOperandRange") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1) local_unnamed_addr #0 align 2 {
.lr.ph.i:
  %i.a = load ptr, ptr %1, align 8, !tbaa !102    ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 44
  %i.c = load i32, ptr %i.b, align 4
  %i.d = and i32 %i.c, 8388608
  %.not.i.i = icmp eq i32 %i.d, 0
  br i1 %.not.i.i, label %_ZN4mlir7wasmssa10BranchIfOp27getODSOperandIndexAndLengthEj.exit, label %bb.a, !prof !57

bb.a:                                             ; preds = %.lr.ph.i
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 68
  %i.f = load i32, ptr %i.e, align 4, !tbaa !61
  %i.g = add i32 %i.f, -1
  br label %_ZN4mlir7wasmssa10BranchIfOp27getODSOperandIndexAndLengthEj.exit

_ZN4mlir7wasmssa10BranchIfOp27getODSOperandIndexAndLengthEj.exit: ; preds = %.lr.ph.i, %bb.a
  %i.h = phi i32 [ %i.g, %bb.a ], [ -1, %.lr.ph.i ]
  tail call void @_ZN4mlir19MutableOperandRangeC1EPNS_9OperationEjjN4llvm8ArrayRefISt4pairIjNS_14NamedAttributeEEEE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull %i.a, i32 noundef 1, i32 noundef %i.h, ptr null, i64 0) #24
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local range(i8 0, 2) i8 @_ZN4mlir7wasmssa10BranchIfOp21setPropertiesFromAttrERNS0_6detail28BranchIfOpGenericAdaptorBase10PropertiesENS_9AttributeEN4llvm12function_refIFNS_18InFlightDiagnosticEvEEE(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(8) %0, ptr %1, ptr nofree readonly captures(none) %2, i64 %3) local_unnamed_addr #0 align 2 {
bb.a:
  %4 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 5 uses
  %5 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 7 uses
  %6 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 7 uses
  %7 = alloca %"class.mlir::DictionaryAttr", align 8 ; 4 uses
  %8 = alloca %"class.mlir::InFlightDiagnostic", align 8 ; 11 uses
  %9 = alloca %"class.mlir::InFlightDiagnostic", align 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #24
  %i.a = load ptr, ptr %1, align 8, !tbaa !64
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 144
  %.sroa.0.0.copyload.i.i.i.i.i.i = load ptr, ptr %i.b, align 8, !tbaa !66
  %i.c = icmp eq ptr %.sroa.0.0.copyload.i.i.i.i.i.i, @_ZN4mlir6detail14TypeIDResolverINS_14DictionaryAttrEvE2idE
  %spec.select.i.i = select i1 %i.c, ptr %1, ptr null ; 2 uses
  store ptr %spec.select.i.i, ptr %7, align 8
  %i.d = icmp eq ptr %spec.select.i.i, null
  br i1 %i.d, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #24
  call void %2(ptr dead_on_unwind nonnull writable sret(%"class.mlir::InFlightDiagnostic") align 8 %8, i64 noundef %3) #24, !inline_history !0
  %i.e = load ptr, ptr %8, align 8, !tbaa !74
  %.not.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i, label %_ZNO4mlir18InFlightDiagnosticlsIRA42_KcEEOS0_OT_.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %8, i64 24 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  store i32 3, ptr %6, align 8, !tbaa !77
  %i.g = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr @.str, ptr %i.g, align 8, !tbaa !79
  %.sroa.2.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i64 41, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i, align 8, !tbaa !81
  %i.h = getelementptr inbounds nuw i8, ptr %8, i64 32 ; 3 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !83   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %8, i64 36
  %i.k = load i32, ptr %i.j, align 4, !tbaa !84
  %.not.i.i.i.i.i = icmp ult i32 %i.i, %i.k
  br i1 %.not.i.i.i.i.i, label %bb.e, label %bb.d, !prof !85

bb.d:                                             ; preds = %bb.c
  call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir18DiagnosticArgumentELb1EE15growAndPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(16) %i.f, ptr noundef nonnull align 8 dereferenceable(24) %6)
  br label %_ZNO4mlir18InFlightDiagnosticlsIRA42_KcEEOS0_OT_.exit

bb.e:                                             ; preds = %bb.c
  %i.l = zext i32 %i.i to i64
  %i.m = load ptr, ptr %i.f, align 8, !tbaa !86
  %i.n = getelementptr inbounds nuw [24 x i8], ptr %i.m, i64 %i.l
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.n, ptr noundef nonnull align 8 dereferenceable(24) %6, i64 24, i1 false)
  %i.o = load i32, ptr %i.h, align 8, !tbaa !83
  %i.p = add i32 %i.o, 1
  store i32 %i.p, ptr %i.h, align 8, !tbaa !83
  br label %_ZNO4mlir18InFlightDiagnosticlsIRA42_KcEEOS0_OT_.exit

_ZNO4mlir18InFlightDiagnosticlsIRA42_KcEEOS0_OT_.exit: ; preds = %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  %.pr = load ptr, ptr %8, align 8, !tbaa !74
  %.not.i = icmp eq ptr %.pr, null
  br i1 %.not.i, label %_ZNO4mlir18InFlightDiagnosticlsIRA42_KcEEOS0_OT_.exit.thread, label %bb.f

bb.f:                                             ; preds = %_ZNO4mlir18InFlightDiagnosticlsIRA42_KcEEOS0_OT_.exit
  call void @_ZN4mlir18InFlightDiagnostic6reportEv(ptr noundef nonnull align 8 dereferenceable(208) %8) #24
  br label %_ZNO4mlir18InFlightDiagnosticlsIRA42_KcEEOS0_OT_.exit.thread

_ZNO4mlir18InFlightDiagnosticlsIRA42_KcEEOS0_OT_.exit.thread: ; preds = %bb.b, %bb.f, %_ZNO4mlir18InFlightDiagnosticlsIRA42_KcEEOS0_OT_.exit
  %i.q = getelementptr inbounds nuw i8, ptr %8, i64 200 ; 2 uses
  %i.r = load i8, ptr %i.q, align 8, !tbaa !87, !range !88, !noundef !89
  %i.s = trunc nuw i8 %i.r to i1
  store i8 0, ptr %i.q, align 8, !tbaa !87
  br i1 %i.s, label %bb.g, label %_ZN4mlir18InFlightDiagnosticD2Ev.exit

bb.g:                                             ; preds = %_ZNO4mlir18InFlightDiagnosticlsIRA42_KcEEOS0_OT_.exit.thread
  %i.t = getelementptr inbounds nuw i8, ptr %8, i64 8
  call void @_ZN4mlir10DiagnosticD2Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(200) %i.t) #24
  br label %_ZN4mlir18InFlightDiagnosticD2Ev.exit

_ZN4mlir18InFlightDiagnosticD2Ev.exit:            ; preds = %_ZNO4mlir18InFlightDiagnosticlsIRA42_KcEEOS0_OT_.exit.thread, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  br label %bb.u

bb.h:                                             ; preds = %bb.a
  %i.u = call ptr @_ZNK4mlir14DictionaryAttr3getEN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr nonnull @.str.13, i64 9) #24 ; 4 uses
  %.not = icmp eq ptr %i.u, null
  br i1 %.not, label %bb.u, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !64
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 144
  %.sroa.0.0.copyload.i.i.i.i.i.i5 = load ptr, ptr %i.w, align 8, !tbaa !66
  %i.x = icmp eq ptr %.sroa.0.0.copyload.i.i.i.i.i.i5, @_ZN4mlir6detail14TypeIDResolverINS_11IntegerAttrEvE2idE
  br i1 %i.x, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.y = ptrtoint ptr %i.u to i64
  store i64 %i.y, ptr %0, align 8
  br label %bb.u

bb.k:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #24
  call void %2(ptr dead_on_unwind nonnull writable sret(%"class.mlir::InFlightDiagnostic") align 8 %9, i64 noundef %3) #24, !inline_history !0
  %i.z = load ptr, ptr %9, align 8, !tbaa !74
  %.not.i.i7 = icmp eq ptr %i.z, null
  br i1 %.not.i.i7, label %_ZNO4mlir18InFlightDiagnosticlsIRNS_9AttributeEEEOS0_OT_.exit.thread, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.aa = getelementptr inbounds nuw i8, ptr %9, i64 24 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  store i32 3, ptr %5, align 8, !tbaa !77
  %i.ab = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr @.str.14, ptr %i.ab, align 8, !tbaa !79
  %.sroa.2.0..sroa_idx.i.i.i.i.i8 = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i64 54, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i8, align 8, !tbaa !81
  %i.ac = getelementptr inbounds nuw i8, ptr %9, i64 32 ; 6 uses
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !83 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %9, i64 36 ; 2 uses
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !84
  %.not.i.i.i.i.i9 = icmp ult i32 %i.ad, %i.af
  br i1 %.not.i.i.i.i.i9, label %bb.n, label %bb.m, !prof !85

bb.m:                                             ; preds = %bb.l
  call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir18DiagnosticArgumentELb1EE15growAndPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(16) %i.aa, ptr noundef nonnull align 8 dereferenceable(24) %5)
  br label %_ZNO4mlir18InFlightDiagnosticlsIRA55_KcEEOS0_OT_.exit

bb.n:                                             ; preds = %bb.l
  %i.ag = zext i32 %i.ad to i64
  %i.ah = load ptr, ptr %i.aa, align 8, !tbaa !86
  %i.ai = getelementptr inbounds nuw [24 x i8], ptr %i.ah, i64 %i.ag
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.ai, ptr noundef nonnull align 8 dereferenceable(24) %5, i64 24, i1 false)
  %i.aj = load i32, ptr %i.ac, align 8, !tbaa !83
  %i.ak = add i32 %i.aj, 1
  store i32 %i.ak, ptr %i.ac, align 8, !tbaa !83
  br label %_ZNO4mlir18InFlightDiagnosticlsIRA55_KcEEOS0_OT_.exit

_ZNO4mlir18InFlightDiagnosticlsIRA55_KcEEOS0_OT_.exit: ; preds = %bb.m, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  %.pr21 = load ptr, ptr %9, align 8, !tbaa !74
  %.not.i.i10 = icmp eq ptr %.pr21, null
  br i1 %.not.i.i10, label %_ZNO4mlir18InFlightDiagnosticlsIRNS_9AttributeEEEOS0_OT_.exit.thread, label %bb.o

bb.o:                                             ; preds = %_ZNO4mlir18InFlightDiagnosticlsIRA55_KcEEOS0_OT_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  call void @_ZN4mlir18DiagnosticArgumentC1ENS_9AttributeE(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr nonnull %i.u) #24
  %i.al = load i32, ptr %i.ac, align 8, !tbaa !83 ; 2 uses
  %i.am = load i32, ptr %i.ae, align 4, !tbaa !84
  %.not.i.i.i.i.i11 = icmp ult i32 %i.al, %i.am
  br i1 %.not.i.i.i.i.i11, label %bb.q, label %bb.p, !prof !85

bb.p:                                             ; preds = %bb.o
  call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir18DiagnosticArgumentELb1EE15growAndPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(16) %i.aa, ptr noundef nonnull align 8 dereferenceable(24) %4)
  br label %_ZNO4mlir18InFlightDiagnosticlsIRNS_9AttributeEEEOS0_OT_.exit

bb.q:                                             ; preds = %bb.o
  %i.an = zext i32 %i.al to i64
  %i.ao = load ptr, ptr %i.aa, align 8, !tbaa !86
  %i.ap = getelementptr inbounds nuw [24 x i8], ptr %i.ao, i64 %i.an
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.ap, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 24, i1 false)
  %i.aq = load i32, ptr %i.ac, align 8, !tbaa !83
  %i.ar = add i32 %i.aq, 1
  store i32 %i.ar, ptr %i.ac, align 8, !tbaa !83
  br label %_ZNO4mlir18InFlightDiagnosticlsIRNS_9AttributeEEEOS0_OT_.exit

_ZNO4mlir18InFlightDiagnosticlsIRNS_9AttributeEEEOS0_OT_.exit: ; preds = %bb.p, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  %.pr23 = load ptr, ptr %9, align 8, !tbaa !74
  %.not.i12 = icmp eq ptr %.pr23, null
  br i1 %.not.i12, label %_ZNO4mlir18InFlightDiagnosticlsIRNS_9AttributeEEEOS0_OT_.exit.thread, label %bb.r

bb.r:                                             ; preds = %_ZNO4mlir18InFlightDiagnosticlsIRNS_9AttributeEEEOS0_OT_.exit
  call void @_ZN4mlir18InFlightDiagnostic6reportEv(ptr noundef nonnull align 8 dereferenceable(208) %9) #24
  br label %_ZNO4mlir18InFlightDiagnosticlsIRNS_9AttributeEEEOS0_OT_.exit.thread

end_hunk_0
begin_hunk_1_@_ZN4mlir7wasmssa6GtUIOp5printERNS_12OpAsmPrinterE:bb.a
bb.j:                                             ; preds = %_ZN4mlirlsINS_12OpAsmPrinterEA2_cTnPNSt9enable_ifIXaaaaaaaaaantsr3std14is_convertibleIRT0_RNS_5ValueEEE5valuentsr3std14is_convertibleIS5_RNS_4TypeEEE5valuentsr3std14is_convertibleIS5_RNS_9AttributeEEE5valuentsr3std14is_convertibleIS5_NS_10ValueRangeEEE5valuentsr3std14is_convertibleIS5_RN4llvm7APFloatEEE5valuentsr4llvm9is_one_ofIS4_bfdEE5valueES4_E4typeELPS2_0EvEERT_SL_RKS4_.exit
  %i.bm = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEh(ptr noundef nonnull align 8 dereferenceable(48) %i.bh, i8 noundef zeroext 32) #24 ; 0 uses
  br label %_ZN4mlirlsINS_12OpAsmPrinterEcTnPNSt9enable_ifIXaaaaaaaaaantsr3std14is_convertibleIRT0_RNS_5ValueEEE5valuentsr3std14is_convertibleIS4_RNS_4TypeEEE5valuentsr3std14is_convertibleIS4_RNS_9AttributeEEE5valuentsr3std14is_convertibleIS4_NS_10ValueRangeEEE5valuentsr3std14is_convertibleIS4_RN4llvm7APFloatEEE5valuentsr4llvm9is_one_ofIS3_bfdEE5valueES3_E4typeELPc0EvEERT_SK_RKS3_.exit27

bb.k:                                             ; preds = %_ZN4mlirlsINS_12OpAsmPrinterEA2_cTnPNSt9enable_ifIXaaaaaaaaaantsr3std14is_convertibleIRT0_RNS_5ValueEEE5valuentsr3std14is_convertibleIS5_RNS_4TypeEEE5valuentsr3std14is_convertibleIS5_RNS_9AttributeEEE5valuentsr3std14is_convertibleIS5_NS_10ValueRangeEEE5valuentsr3std14is_convertibleIS5_RN4llvm7APFloatEEE5valuentsr4llvm9is_one_ofIS4_bfdEE5valueES4_E4typeELPS2_0EvEERT_SL_RKS4_.exit
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bj, i64 1
  store ptr %i.bn, ptr %i.bi, align 8, !tbaa !123
  store i8 32, ptr %i.bj, align 1, !tbaa !108
  br label %_ZN4mlirlsINS_12OpAsmPrinterEcTnPNSt9enable_ifIXaaaaaaaaaantsr3std14is_convertibleIRT0_RNS_5ValueEEE5valuentsr3std14is_convertibleIS4_RNS_4TypeEEE5valuentsr3std14is_convertibleIS4_RNS_9AttributeEEE5valuentsr3std14is_convertibleIS4_NS_10ValueRangeEEE5valuentsr3std14is_convertibleIS4_RN4llvm7APFloatEEE5valuentsr4llvm9is_one_ofIS3_bfdEE5valueES3_E4typeELPc0EvEERT_SK_RKS3_.exit27

_ZN4mlirlsINS_12OpAsmPrinterEcTnPNSt9enable_ifIXaaaaaaaaaantsr3std14is_convertibleIRT0_RNS_5ValueEEE5valuentsr3std14is_convertibleIS4_RNS_4TypeEEE5valuentsr3std14is_convertibleIS4_RNS_9AttributeEEE5valuentsr3std14is_convertibleIS4_NS_10ValueRangeEEE5valuentsr3std14is_convertibleIS4_RN4llvm7APFloatEEE5valuentsr4llvm9is_one_ofIS3_bfdEE5valueES3_E4typeELPc0EvEERT_SK_RKS3_.exit27: ; preds = %bb.j, %bb.k
  %i.bo = load ptr, ptr %0, align 8, !tbaa !102
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 72
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !60
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 24
  %.sroa.0.0.copyload.i.i.i.i29 = load ptr, ptr %i.br, align 8, !tbaa !104
  %i.bs = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i29, i64 8
  %.0.copyload.i.i.i.i.i = load i64, ptr %i.bs, align 8
  %i.bt = and i64 %.0.copyload.i.i.i.i.i, -8
  %i.bu = inttoptr i64 %i.bt to ptr
  %i.bv = load ptr, ptr %1, align 8, !tbaa !119
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 56
  %i.bx = load ptr, ptr %i.bw, align 8
  tail call void %i.bx(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr %i.bu) #24
  %i.by = load ptr, ptr %1, align 8, !tbaa !119
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 16
  %i.ca = load ptr, ptr %i.bz, align 8
  %i.cb = tail call noundef nonnull align 8 dereferenceable(48) ptr %i.ca(ptr noundef nonnull align 8 dereferenceable(16) %1) #24, !inline_history !3 ; 3 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 32 ; 2 uses
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !123 ; 3 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cb, i64 24
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !124
  %.not.i.i30 = icmp ult ptr %i.cd, %i.cf
  br i1 %.not.i.i30, label %bb.m, label %bb.l

bb.l:                                             ; preds = %_ZN4mlirlsINS_12OpAsmPrinterEcTnPNSt9enable_ifIXaaaaaaaaaantsr3std14is_convertibleIRT0_RNS_5ValueEEE5valuentsr3std14is_convertibleIS4_RNS_4TypeEEE5valuentsr3std14is_convertibleIS4_RNS_9AttributeEEE5valuentsr3std14is_convertibleIS4_NS_10ValueRangeEEE5valuentsr3std14is_convertibleIS4_RN4llvm7APFloatEEE5valuentsr4llvm9is_one_ofIS3_bfdEE5valueES3_E4typeELPc0EvEERT_SK_RKS3_.exit27
  %i.cg = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEh(ptr noundef nonnull align 8 dereferenceable(48) %i.cb, i8 noundef zeroext 32) #24 ; 0 uses
  br label %_ZN4mlirlsINS_12OpAsmPrinterEcTnPNSt9enable_ifIXaaaaaaaaaantsr3std14is_convertibleIRT0_RNS_5ValueEEE5valuentsr3std14is_convertibleIS4_RNS_4TypeEEE5valuentsr3std14is_convertibleIS4_RNS_9AttributeEEE5valuentsr3std14is_convertibleIS4_NS_10ValueRangeEEE5valuentsr3std14is_convertibleIS4_RN4llvm7APFloatEEE5valuentsr4llvm9is_one_ofIS3_bfdEE5valueES3_E4typeELPc0EvEERT_SK_RKS3_.exit31

bb.m:                                             ; preds = %_ZN4mlirlsINS_12OpAsmPrinterEcTnPNSt9enable_ifIXaaaaaaaaaantsr3std14is_convertibleIRT0_RNS_5ValueEEE5valuentsr3std14is_convertibleIS4_RNS_4TypeEEE5valuentsr3std14is_convertibleIS4_RNS_9AttributeEEE5valuentsr3std14is_convertibleIS4_NS_10ValueRangeEEE5valuentsr3std14is_convertibleIS4_RN4llvm7APFloatEEE5valuentsr4llvm9is_one_ofIS3_bfdEE5valueES3_E4typeELPc0EvEERT_SK_RKS3_.exit27
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cd, i64 1
  store ptr %i.ch, ptr %i.cc, align 8, !tbaa !123
  store i8 32, ptr %i.cd, align 1, !tbaa !108
  br label %_ZN4mlirlsINS_12OpAsmPrinterEcTnPNSt9enable_ifIXaaaaaaaaaantsr3std14is_convertibleIRT0_RNS_5ValueEEE5valuentsr3std14is_convertibleIS4_RNS_4TypeEEE5valuentsr3std14is_convertibleIS4_RNS_9AttributeEEE5valuentsr3std14is_convertibleIS4_NS_10ValueRangeEEE5valuentsr3std14is_convertibleIS4_RN4llvm7APFloatEEE5valuentsr4llvm9is_one_ofIS3_bfdEE5valueES3_E4typeELPc0EvEERT_SK_RKS3_.exit31

_ZN4mlirlsINS_12OpAsmPrinterEcTnPNSt9enable_ifIXaaaaaaaaaantsr3std14is_convertibleIRT0_RNS_5ValueEEE5valuentsr3std14is_convertibleIS4_RNS_4TypeEEE5valuentsr3std14is_convertibleIS4_RNS_9AttributeEEE5valuentsr3std14is_convertibleIS4_NS_10ValueRangeEEE5valuentsr3std14is_convertibleIS4_RN4llvm7APFloatEEE5valuentsr4llvm9is_one_ofIS3_bfdEE5valueES3_E4typeELPc0EvEERT_SK_RKS3_.exit31: ; preds = %bb.l, %bb.m
  %i.ci = load ptr, ptr %1, align 8, !tbaa !119
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 16
  %i.ck = load ptr, ptr %i.cj, align 8
  %i.cl = tail call noundef nonnull align 8 dereferenceable(48) ptr %i.ck(ptr noundef nonnull align 8 dereferenceable(16) %1) #24, !inline_history !16 ; 3 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 24
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !124
  %i.co = getelementptr inbounds nuw i8, ptr %i.cl, i64 32 ; 3 uses
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !123 ; 2 uses
  %i.cq = ptrtoint ptr %i.cn to i64
  %i.cr = ptrtoint ptr %i.cp to i64
  %i.cs = sub i64 %i.cq, %i.cr
  %i.ct = icmp ult i64 %i.cs, 2
  br i1 %i.ct, label %bb.n, label %bb.o

bb.n:                                             ; preds = %_ZN4mlirlsINS_12OpAsmPrinterEcTnPNSt9enable_ifIXaaaaaaaaaantsr3std14is_convertibleIRT0_RNS_5ValueEEE5valuentsr3std14is_convertibleIS4_RNS_4TypeEEE5valuentsr3std14is_convertibleIS4_RNS_9AttributeEEE5valuentsr3std14is_convertibleIS4_NS_10ValueRangeEEE5valuentsr3std14is_convertibleIS4_RN4llvm7APFloatEEE5valuentsr4llvm9is_one_ofIS3_bfdEE5valueES3_E4typeELPc0EvEERT_SK_RKS3_.exit31
  %i.cu = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.cl, ptr noundef nonnull @.str.29, i64 noundef 2) #24 ; 0 uses
  br label %_ZN4mlirlsINS_12OpAsmPrinterEA3_cTnPNSt9enable_ifIXaaaaaaaaaantsr3std14is_convertibleIRT0_RNS_5ValueEEE5valuentsr3std14is_convertibleIS5_RNS_4TypeEEE5valuentsr3std14is_convertibleIS5_RNS_9AttributeEEE5valuentsr3std14is_convertibleIS5_NS_10ValueRangeEEE5valuentsr3std14is_convertibleIS5_RN4llvm7APFloatEEE5valuentsr4llvm9is_one_ofIS4_bfdEE5valueES4_E4typeELPS2_0EvEERT_SL_RKS4_.exit

bb.o:                                             ; preds = %_ZN4mlirlsINS_12OpAsmPrinterEcTnPNSt9enable_ifIXaaaaaaaaaantsr3std14is_convertibleIRT0_RNS_5ValueEEE5valuentsr3std14is_convertibleIS4_RNS_4TypeEEE5valuentsr3std14is_convertibleIS4_RNS_9AttributeEEE5valuentsr3std14is_convertibleIS4_NS_10ValueRangeEEE5valuentsr3std14is_convertibleIS4_RN4llvm7APFloatEEE5valuentsr4llvm9is_one_ofIS3_bfdEE5valueES3_E4typeELPc0EvEERT_SK_RKS3_.exit31
  store i16 15917, ptr %i.cp, align 1
  %i.cv = load ptr, ptr %i.co, align 8, !tbaa !123
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 2
  store ptr %i.cw, ptr %i.co, align 8, !tbaa !123
  br label %_ZN4mlirlsINS_12OpAsmPrinterEA3_cTnPNSt9enable_ifIXaaaaaaaaaantsr3std14is_convertibleIRT0_RNS_5ValueEEE5valuentsr3std14is_convertibleIS5_RNS_4TypeEEE5valuentsr3std14is_convertibleIS5_RNS_9AttributeEEE5valuentsr3std14is_convertibleIS5_NS_10ValueRangeEEE5valuentsr3std14is_convertibleIS5_RN4llvm7APFloatEEE5valuentsr4llvm9is_one_ofIS4_bfdEE5valueES4_E4typeELPS2_0EvEERT_SL_RKS4_.exit

_ZN4mlirlsINS_12OpAsmPrinterEA3_cTnPNSt9enable_ifIXaaaaaaaaaantsr3std14is_convertibleIRT0_RNS_5ValueEEE5valuentsr3std14is_convertibleIS5_RNS_4TypeEEE5valuentsr3std14is_convertibleIS5_RNS_9AttributeEEE5valuentsr3std14is_convertibleIS5_NS_10ValueRangeEEE5valuentsr3std14is_convertibleIS5_RN4llvm7APFloatEEE5valuentsr4llvm9is_one_ofIS4_bfdEE5valueES4_E4typeELPS2_0EvEERT_SL_RKS4_.exit: ; preds = %bb.n, %bb.o
  %i.cx = load ptr, ptr %1, align 8, !tbaa !119
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 16
  %i.cz = load ptr, ptr %i.cy, align 8
  %i.da = tail call noundef nonnull align 8 dereferenceable(48) ptr %i.cz(ptr noundef nonnull align 8 dereferenceable(16) %1) #24, !inline_history !3 ; 3 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 32 ; 2 uses
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !123 ; 3 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.da, i64 24
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !124
  %.not.i.i33 = icmp ult ptr %i.dc, %i.de
  br i1 %.not.i.i33, label %bb.q, label %bb.p

bb.p:                                             ; preds = %_ZN4mlirlsINS_12OpAsmPrinterEA3_cTnPNSt9enable_ifIXaaaaaaaaaantsr3std14is_convertibleIRT0_RNS_5ValueEEE5valuentsr3std14is_convertibleIS5_RNS_4TypeEEE5valuentsr3std14is_convertibleIS5_RNS_9AttributeEEE5valuentsr3std14is_convertibleIS5_NS_10ValueRangeEEE5valuentsr3std14is_convertibleIS5_RN4llvm7APFloatEEE5valuentsr4llvm9is_one_ofIS4_bfdEE5valueES4_E4typeELPS2_0EvEERT_SL_RKS4_.exit
  %i.df = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEh(ptr noundef nonnull align 8 dereferenceable(48) %i.da, i8 noundef zeroext 32) #24 ; 0 uses
  br label %_ZN4mlirlsINS_12OpAsmPrinterEcTnPNSt9enable_ifIXaaaaaaaaaantsr3std14is_convertibleIRT0_RNS_5ValueEEE5valuentsr3std14is_convertibleIS4_RNS_4TypeEEE5valuentsr3std14is_convertibleIS4_RNS_9AttributeEEE5valuentsr3std14is_convertibleIS4_NS_10ValueRangeEEE5valuentsr3std14is_convertibleIS4_RN4llvm7APFloatEEE5valuentsr4llvm9is_one_ofIS3_bfdEE5valueES3_E4typeELPc0EvEERT_SK_RKS3_.exit34

bb.q:                                             ; preds = %_ZN4mlirlsINS_12OpAsmPrinterEA3_cTnPNSt9enable_ifIXaaaaaaaaaantsr3std14is_convertibleIRT0_RNS_5ValueEEE5valuentsr3std14is_convertibleIS5_RNS_4TypeEEE5valuentsr3std14is_convertibleIS5_RNS_9AttributeEEE5valuentsr3std14is_convertibleIS5_NS_10ValueRangeEEE5valuentsr3std14is_convertibleIS5_RN4llvm7APFloatEEE5valuentsr4llvm9is_one_ofIS4_bfdEE5valueES4_E4typeELPS2_0EvEERT_SL_RKS4_.exit
  %i.dg = getelementptr inbounds nuw i8, ptr %i.dc, i64 1
  store ptr %i.dg, ptr %i.db, align 8, !tbaa !123
  store i8 32, ptr %i.dc, align 1, !tbaa !108
  br label %_ZN4mlirlsINS_12OpAsmPrinterEcTnPNSt9enable_ifIXaaaaaaaaaantsr3std14is_convertibleIRT0_RNS_5ValueEEE5valuentsr3std14is_convertibleIS4_RNS_4TypeEEE5valuentsr3std14is_convertibleIS4_RNS_9AttributeEEE5valuentsr3std14is_convertibleIS4_NS_10ValueRangeEEE5valuentsr3std14is_convertibleIS4_RN4llvm7APFloatEEE5valuentsr4llvm9is_one_ofIS3_bfdEE5valueES3_E4typeELPc0EvEERT_SK_RKS3_.exit34

_ZN4mlirlsINS_12OpAsmPrinterEcTnPNSt9enable_ifIXaaaaaaaaaantsr3std14is_convertibleIRT0_RNS_5ValueEEE5valuentsr3std14is_convertibleIS4_RNS_4TypeEEE5valuentsr3std14is_convertibleIS4_RNS_9AttributeEEE5valuentsr3std14is_convertibleIS4_NS_10ValueRangeEEE5valuentsr3std14is_convertibleIS4_RN4llvm7APFloatEEE5valuentsr4llvm9is_one_ofIS3_bfdEE5valueES3_E4typeELPc0EvEERT_SK_RKS3_.exit34: ; preds = %bb.p, %bb.q
  %i.dh = load ptr, ptr %0, align 8, !tbaa !102
  %i.di = getelementptr inbounds i8, ptr %i.dh, i64 -16
  %i.dj = tail call noundef ptr @_ZN4mlir6detail12OpResultImpl21getNextResultAtOffsetEl(ptr noundef nonnull align 8 dereferenceable(16) %i.di, i64 noundef 0) #24
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 8
  %.0.copyload.i.i.i.i.i.i = load i64, ptr %i.dk, align 8
  %i.dl = and i64 %.0.copyload.i.i.i.i.i.i, -8
  %i.dm = inttoptr i64 %i.dl to ptr
  %i.dn = load ptr, ptr %1, align 8, !tbaa !119
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 56
  %i.dp = load ptr, ptr %i.do, align 8
  tail call void %i.dp(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr %i.dm) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  %i.dq = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  store ptr %i.dq, ptr %3, align 8, !tbaa !86
  %i.dr = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store i32 0, ptr %i.dr, align 8, !tbaa !83
  %i.ds = getelementptr inbounds nuw i8, ptr %3, i64 12
  store i32 2, ptr %i.ds, align 4, !tbaa !84
  %i.dt = load ptr, ptr %0, align 8, !tbaa !102
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  %i.du = call ptr @_ZN4mlir9Operation17getAttrDictionaryEv(ptr noundef nonnull align 8 dereferenceable(64) %i.dt) #24
  store ptr %i.du, ptr %2, align 8
  %i.dv = call { ptr, i64 } @_ZNK4mlir14DictionaryAttr8getValueEv(ptr noundef nonnull align 8 dereferenceable(8) %2) #24 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  %i.dw = extractvalue { ptr, i64 } %i.dv, 0
  %i.dx = extractvalue { ptr, i64 } %i.dv, 1
  %i.dy = load ptr, ptr %3, align 8, !tbaa !86
  %i.dz = load i32, ptr %i.dr, align 8, !tbaa !83
  %i.ea = zext i32 %i.dz to i64
  %i.eb = load ptr, ptr %1, align 8, !tbaa !119
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 200
  %i.ed = load ptr, ptr %i.ec, align 8
  call void %i.ed(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr %i.dw, i64 %i.dx, ptr %i.dy, i64 %i.ea) #24
  %i.ee = load ptr, ptr %3, align 8, !tbaa !86    ; 2 uses
  %i.ef = icmp eq ptr %i.ee, %i.dq
  br i1 %i.ef, label %_ZN4llvm11SmallVectorINS_9StringRefELj2EED2Ev.exit, label %bb.r

bb.r:                                             ; preds = %_ZN4mlirlsINS_12OpAsmPrinterEcTnPNSt9enable_ifIXaaaaaaaaaantsr3std14is_convertibleIRT0_RNS_5ValueEEE5valuentsr3std14is_convertibleIS4_RNS_4TypeEEE5valuentsr3std14is_convertibleIS4_RNS_9AttributeEEE5valuentsr3std14is_convertibleIS4_NS_10ValueRangeEEE5valuentsr3std14is_convertibleIS4_RN4llvm7APFloatEEE5valuentsr4llvm9is_one_ofIS3_bfdEE5valueES3_E4typeELPc0EvEERT_SK_RKS3_.exit34
  call void @free(ptr noundef %i.ee) #24
  br label %_ZN4llvm11SmallVectorINS_9StringRefELj2EED2Ev.exit

_ZN4llvm11SmallVectorINS_9StringRefELj2EED2Ev.exit: ; preds = %_ZN4mlirlsINS_12OpAsmPrinterEcTnPNSt9enable_ifIXaaaaaaaaaantsr3std14is_convertibleIRT0_RNS_5ValueEEE5valuentsr3std14is_convertibleIS4_RNS_4TypeEEE5valuentsr3std14is_convertibleIS4_RNS_9AttributeEEE5valuentsr3std14is_convertibleIS4_NS_10ValueRangeEEE5valuentsr3std14is_convertibleIS4_RN4llvm7APFloatEEE5valuentsr4llvm9is_one_ofIS3_bfdEE5valueES3_E4typeELPc0EvEERT_SK_RKS3_.exit34, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4mlir7wasmssa6detail22IfOpGenericAdaptorBaseC2ENS0_4IfOpE(ptr noundef nonnull align 8 dereferenceable(48) initializes((0, 17)) %0, ptr %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 56
  %.sroa.0.0.copyload.i = load ptr, ptr %i.a, align 8
  store ptr %.sroa.0.0.copyload.i, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.sroa.0.0.copyload.i1 = load ptr, ptr %i.c, align 8, !tbaa !37
  %i.d = ptrtoint ptr %.sroa.0.0.copyload.i1 to i64
  store i64 %i.d, ptr %i.b, align 8, !tbaa !37
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 1, ptr %i.e, align 8, !tbaa !40
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.g = load i32, ptr %i.f, align 4              ; 3 uses
  %i.h = and i32 %i.g, 8388607                    ; 2 uses
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %_ZN4mlir9Operation10getRegionsEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = zext nneg i32 %i.h to i64
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.l = lshr i32 %i.g, 23
  %.lobit.i.i.i.i.i.i.i.i.i = and i32 %i.l, 1
  %i.m = zext nneg i32 %.lobit.i.i.i.i.i.i.i.i.i to i64
  %i.n = getelementptr inbounds nuw [16 x i8], ptr %i.k, i64 %i.m
  %i.o = lshr i32 %i.g, 21
  %i.p = and i32 %i.o, 2040
  %i.q = zext nneg i32 %i.p to i64
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.q
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.t = load i32, ptr %i.s, align 8, !tbaa !56
  %i.u = zext i32 %i.t to i64
  %i.v = getelementptr inbounds nuw [32 x i8], ptr %i.r, i64 %i.u
  br label %_ZN4mlir9Operation10getRegionsEv.exit

_ZN4mlir9Operation10getRegionsEv.exit:            ; preds = %bb.a, %bb.b
  %.sroa.0.0.i = phi ptr [ %i.v, %bb.b ], [ null, %bb.a ]
  %.sroa.4.0.i = phi i64 [ %i.j, %bb.b ], [ 0, %bb.a ]
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @_ZN4mlir11RegionRangeC1EN4llvm15MutableArrayRefINS_6RegionEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.w, ptr %.sroa.0.0.i, i64 %.sroa.4.0.i) #24
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local i64 @_ZN4mlir7wasmssa6detail22IfOpGenericAdaptorBase27getODSOperandIndexAndLengthEjj(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(48) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #3 align 2 {
bb.a:
  %.not = icmp eq i32 %1, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %min.iters.check = icmp ult i32 %1, 8
  br i1 %min.iters.check, label %.lr.ph.preheader19, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i32 %1, -8                         ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i32 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %8, %vector.body ]
  %vec.phi18 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.b, %vector.body ]
  %vec.ind = phi <4 x i8> [ <i8 0, i8 1, i8 2, i8 3>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %step.add = add <4 x i8> %vec.ind, splat (i8 4)
  %3 = shl nsw <4 x i8> splat (i8 -1), %vec.ind
  %4 = shl nsw <4 x i8> splat (i8 -1), %step.add
  %5 = xor <4 x i8> %3, splat (i8 -1)
  %6 = xor <4 x i8> %4, splat (i8 -1)
  %7 = zext nneg <4 x i8> %5 to <4 x i32>
  %i.a = zext nneg <4 x i8> %6 to <4 x i32>
  %8 = add <4 x i32> %vec.phi, %7                 ; 2 uses
  %i.b = add <4 x i32> %vec.phi18, %i.a           ; 2 uses
  %index.next = add nuw i32 %index, 8             ; 2 uses
  %vec.ind.next = add <4 x i8> %vec.ind, splat (i8 8)
  %i.c = icmp eq i32 %index.next, %n.vec
  br i1 %i.c, label %middle.block, label %vector.body, !llvm.loop !385

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.b, %8
  %i.d = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i32 %1, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader19

.lr.ph.preheader19:                               ; preds = %.lr.ph.preheader, %middle.block
  %.015.ph = phi i32 [ 0, %.lr.ph.preheader ], [ %i.d, %middle.block ]
  %.01114.ph = phi i32 [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %bb.a
  %.0.lcssa = phi i32 [ 0, %bb.a ], [ %i.d, %middle.block ], [ %spec.select, %.lr.ph ]
  %i.e = add i32 %2, -1
  %i.f = add i32 %2, -2
  %i.g = mul nsw i32 %.0.lcssa, %i.f
  %i.h = add i32 %i.g, %1
  %9 = and i32 %1, 255
  %.not17 = icmp eq i32 %9, 0
  %i.i = zext i32 %i.e to i64
  %i.j = shl nuw i64 %i.i, 32
  %.sroa.2.0.insert.shift = select i1 %.not17, i64 4294967296, i64 %i.j
  %.sroa.0.0.insert.ext = zext i32 %i.h to i64
  %.sroa.0.0.insert.insert = or disjoint i64 %.sroa.2.0.insert.shift, %.sroa.0.0.insert.ext
  ret i64 %.sroa.0.0.insert.insert

.lr.ph:                                           ; preds = %.lr.ph.preheader19, %.lr.ph
  %.015 = phi i32 [ %spec.select, %.lr.ph ], [ %.015.ph, %.lr.ph.preheader19 ]
  %.01114 = phi i32 [ %i.l, %.lr.ph ], [ %.01114.ph, %.lr.ph.preheader19 ] ; 2 uses
  %10 = trunc i32 %.01114 to i8
  %notmask = shl nsw i8 -1, %10
  %11 = xor i8 %notmask, -1
  %i.k = zext nneg i8 %11 to i32
  %spec.select = add nuw nsw i32 %.015, %i.k      ; 2 uses
  %i.l = add nuw i32 %.01114, 1                   ; 2 uses
  %exitcond.not = icmp eq i32 %i.l, %1
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !386
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4mlir7wasmssa11IfOpAdaptorC2ENS0_4IfOpE(ptr noundef nonnull align 8 dereferenceable(64) initializes((0, 17)) %0, ptr %1) unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.mlir::ValueRange", align 16 ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 44 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4
  %i.c = and i32 %i.b, 8388608
  %.not.i.i = icmp eq i32 %i.c, 0
  br i1 %.not.i.i, label %_ZN4mlir9Operation11getOperandsEv.exit, label %bb.b, !prof !57

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !60
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.g = load i32, ptr %i.f, align 4, !tbaa !61
  %i.h = zext i32 %i.g to i64
  br label %_ZN4mlir9Operation11getOperandsEv.exit

_ZN4mlir9Operation11getOperandsEv.exit:           ; preds = %bb.a, %bb.b
  %.sroa.0.0.i.i = phi ptr [ %i.e, %bb.b ], [ null, %bb.a ]
  %.sroa.4.0.i.i = phi i64 [ %i.h, %bb.b ], [ 0, %bb.a ]
  call void @_ZN4mlir10ValueRangeC1ENS_12OperandRangeE(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr %.sroa.0.0.i.i, i64 %.sroa.4.0.i.i) #24
  %i.i = load <2 x i64>, ptr %2, align 16
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 56
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %i.j, align 8
  store ptr %.sroa.0.0.copyload.i.i.i, ptr %0, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.sroa.0.0.copyload.i1.i.i = load ptr, ptr %i.l, align 8, !tbaa !37
  %i.m = ptrtoint ptr %.sroa.0.0.copyload.i1.i.i to i64
  store i64 %i.m, ptr %i.k, align 8, !tbaa !37
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 1, ptr %i.n, align 8, !tbaa !40
  %i.o = load i32, ptr %i.a, align 4              ; 3 uses
  %i.p = and i32 %i.o, 8388607                    ; 2 uses
  %i.q = icmp eq i32 %i.p, 0
  br i1 %i.q, label %_ZN4mlir7wasmssa18IfOpGenericAdaptorINS_10ValueRangeEEC2INS0_4IfOpEvEES2_T_.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4mlir9Operation11getOperandsEv.exit
  %i.r = zext nneg i32 %i.p to i64
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.t = lshr i32 %i.o, 23
  %.lobit.i.i.i.i.i.i.i.i.i.i.i = and i32 %i.t, 1
  %i.u = zext nneg i32 %.lobit.i.i.i.i.i.i.i.i.i.i.i to i64
  %i.v = getelementptr inbounds nuw [16 x i8], ptr %i.s, i64 %i.u
  %i.w = lshr i32 %i.o, 21
  %i.x = and i32 %i.w, 2040
  %i.y = zext nneg i32 %i.x to i64
  %i.z = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.y
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !56
  %i.ac = zext i32 %i.ab to i64
  %i.ad = getelementptr inbounds nuw [32 x i8], ptr %i.z, i64 %i.ac
  br label %_ZN4mlir7wasmssa18IfOpGenericAdaptorINS_10ValueRangeEEC2INS0_4IfOpEvEES2_T_.exit

_ZN4mlir7wasmssa18IfOpGenericAdaptorINS_10ValueRangeEEC2INS0_4IfOpEvEES2_T_.exit: ; preds = %_ZN4mlir9Operation11getOperandsEv.exit, %bb.c
  %.sroa.0.0.i.i.i = phi ptr [ %i.ad, %bb.c ], [ null, %_ZN4mlir9Operation11getOperandsEv.exit ]
  %.sroa.4.0.i.i.i = phi i64 [ %i.r, %bb.c ], [ 0, %_ZN4mlir9Operation11getOperandsEv.exit ]
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @_ZN4mlir11RegionRangeC1EN4llvm15MutableArrayRefINS_6RegionEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.ae, ptr %.sroa.0.0.i.i.i, i64 %.sroa.4.0.i.i.i) #24
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 48
  store <2 x i64> %i.i, ptr %i.af, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i8 @_ZN4mlir7wasmssa11IfOpAdaptor6verifyENS_8LocationE(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(64) %0, ptr nofree readnone captures(none) %1) local_unnamed_addr #3 align 2 {
bb.a:
  ret i8 1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local i64 @_ZN4mlir7wasmssa4IfOp27getODSOperandIndexAndLengthEj(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0, i32 noundef %1) local_unnamed_addr #7 align 2 {
bb.a:
  %.not = icmp eq i32 %1, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %min.iters.check = icmp ult i32 %1, 8
  br i1 %min.iters.check, label %.lr.ph.preheader18, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i32 %1, -8                         ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i32 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %7, %vector.body ]
  %vec.phi17 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.b, %vector.body ]
  %vec.ind = phi <4 x i8> [ <i8 0, i8 1, i8 2, i8 3>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %step.add = add <4 x i8> %vec.ind, splat (i8 4)
  %2 = shl nsw <4 x i8> splat (i8 -1), %vec.ind
  %3 = shl nsw <4 x i8> splat (i8 -1), %step.add
  %4 = xor <4 x i8> %2, splat (i8 -1)
  %5 = xor <4 x i8> %3, splat (i8 -1)
  %6 = zext nneg <4 x i8> %4 to <4 x i32>
  %i.a = zext nneg <4 x i8> %5 to <4 x i32>
  %7 = add <4 x i32> %vec.phi, %6                 ; 2 uses
  %i.b = add <4 x i32> %vec.phi17, %i.a           ; 2 uses
  %index.next = add nuw i32 %index, 8             ; 2 uses
  %vec.ind.next = add <4 x i8> %vec.ind, splat (i8 8)
  %i.c = icmp eq i32 %index.next, %n.vec
  br i1 %i.c, label %middle.block, label %vector.body, !llvm.loop !387

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.b, %7
  %i.d = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i32 %1, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader18

.lr.ph.preheader18:                               ; preds = %.lr.ph.preheader, %middle.block
  %.014.ph = phi i32 [ 0, %.lr.ph.preheader ], [ %i.d, %middle.block ]
  %.01013.ph = phi i32 [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %bb.a
  %.0.lcssa = phi i32 [ 0, %bb.a ], [ %i.d, %middle.block ], [ %spec.select, %.lr.ph ]
  %i.e = load ptr, ptr %0, align 8, !tbaa !102    ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 44
  %i.g = load i32, ptr %i.f, align 4
  %i.h = and i32 %i.g, 8388608
  %.not.i = icmp eq i32 %i.h, 0
  br i1 %.not.i, label %_ZN4mlir9Operation14getNumOperandsEv.exit, label %bb.b, !prof !57

bb.b:                                             ; preds = %._crit_edge
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 68
  %i.j = load i32, ptr %i.i, align 4, !tbaa !61
  br label %_ZN4mlir9Operation14getNumOperandsEv.exit

_ZN4mlir9Operation14getNumOperandsEv.exit:        ; preds = %._crit_edge, %bb.b
  %i.k = phi i32 [ %i.j, %bb.b ], [ 0, %._crit_edge ] ; 2 uses
  %i.l = add i32 %i.k, -1
  %i.m = add i32 %i.k, -2
  %i.n = mul nsw i32 %i.m, %.0.lcssa
  %i.o = add i32 %i.n, %1
  %8 = and i32 %1, 255
  %.not16 = icmp eq i32 %8, 0
  %i.p = zext i32 %i.l to i64
  %i.q = shl nuw i64 %i.p, 32
  %.sroa.2.0.insert.shift = select i1 %.not16, i64 4294967296, i64 %i.q
  %.sroa.0.0.insert.ext = zext i32 %i.o to i64
  %.sroa.0.0.insert.insert = or disjoint i64 %.sroa.2.0.insert.shift, %.sroa.0.0.insert.ext
  ret i64 %.sroa.0.0.insert.insert

.lr.ph:                                           ; preds = %.lr.ph.preheader18, %.lr.ph
  %.014 = phi i32 [ %spec.select, %.lr.ph ], [ %.014.ph, %.lr.ph.preheader18 ]
  %.01013 = phi i32 [ %i.s, %.lr.ph ], [ %.01013.ph, %.lr.ph.preheader18 ] ; 2 uses
  %9 = trunc i32 %.01013 to i8
  %notmask = shl nsw i8 -1, %9
  %10 = xor i8 %notmask, -1
  %i.r = zext nneg i8 %10 to i32
  %spec.select = add nuw nsw i32 %.014, %i.r      ; 2 uses
  %i.s = add nuw i32 %.01013, 1                   ; 2 uses
  %exitcond.not = icmp eq i32 %i.s, %1
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !388
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4mlir7wasmssa4IfOp16getInputsMutableEv(ptr dead_on_unwind noalias writable sret(%"class.mlir::MutableOperandRange") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1) local_unnamed_addr #0 align 2 {
.lr.ph.i:
  %i.a = load ptr, ptr %1, align 8, !tbaa !102    ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 44
  %i.c = load i32, ptr %i.b, align 4
  %i.d = and i32 %i.c, 8388608
  %.not.i.i = icmp eq i32 %i.d, 0
  br i1 %.not.i.i, label %_ZN4mlir7wasmssa4IfOp27getODSOperandIndexAndLengthEj.exit, label %bb.a, !prof !57

bb.a:                                             ; preds = %.lr.ph.i
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 68
  %i.f = load i32, ptr %i.e, align 4, !tbaa !61
  %i.g = add i32 %i.f, -1
  br label %_ZN4mlir7wasmssa4IfOp27getODSOperandIndexAndLengthEj.exit

_ZN4mlir7wasmssa4IfOp27getODSOperandIndexAndLengthEj.exit: ; preds = %.lr.ph.i, %bb.a
  %i.h = phi i32 [ %i.g, %bb.a ], [ -1, %.lr.ph.i ]
  tail call void @_ZN4mlir19MutableOperandRangeC1EPNS_9OperationEjjN4llvm8ArrayRefISt4pairIjNS_14NamedAttributeEEEE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull %i.a, i32 noundef 1, i32 noundef %i.h, ptr null, i64 0) #24
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local range(i8 0, 2) i8 @_ZN4mlir7wasmssa4IfOp21setPropertiesFromAttrERNS_15EmptyPropertiesENS_9AttributeEN4llvm12function_refIFNS_18InFlightDiagnosticEvEEE(ptr nofree noundef nonnull readnone align 1 captures(none) dereferenceable(1) %0, ptr nofree readonly captures(none) %1, ptr nofree readonly captures(none) %2, i64 %3) local_unnamed_addr #0 align 2 {
bb.a:
  %4 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 7 uses
  %5 = alloca %"class.mlir::InFlightDiagnostic", align 8 ; 11 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !64
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 144
  %.sroa.0.0.copyload.i.i.i.i.i.i = load ptr, ptr %i.b, align 8, !tbaa !66
  %.not = icmp eq ptr %.sroa.0.0.copyload.i.i.i.i.i.i, @_ZN4mlir6detail14TypeIDResolverINS_14DictionaryAttrEvE2idE
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  call void %2(ptr dead_on_unwind nonnull writable sret(%"class.mlir::InFlightDiagnostic") align 8 %5, i64 noundef %3) #24, !inline_history !0
  %i.c = load ptr, ptr %5, align 8, !tbaa !74
  %.not.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i, label %_ZNO4mlir18InFlightDiagnosticlsIRA42_KcEEOS0_OT_.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  store i32 3, ptr %4, align 8, !tbaa !77
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr @.str, ptr %i.e, align 8, !tbaa !79
  %.sroa.2.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i64 41, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i, align 8, !tbaa !81
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 3 uses
  %i.g = load i32, ptr %i.f, align 8, !tbaa !83   ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 36
  %i.i = load i32, ptr %i.h, align 4, !tbaa !84
  %.not.i.i.i.i.i = icmp ult i32 %i.g, %i.i
  br i1 %.not.i.i.i.i.i, label %bb.e, label %bb.d, !prof !85

bb.d:                                             ; preds = %bb.c
  call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir18DiagnosticArgumentELb1EE15growAndPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(16) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %4)
  br label %_ZNO4mlir18InFlightDiagnosticlsIRA42_KcEEOS0_OT_.exit

bb.e:                                             ; preds = %bb.c
  %i.j = zext i32 %i.g to i64
  %i.k = load ptr, ptr %i.d, align 8, !tbaa !86
  %i.l = getelementptr inbounds nuw [24 x i8], ptr %i.k, i64 %i.j
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.l, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 24, i1 false)
  %i.m = load i32, ptr %i.f, align 8, !tbaa !83
  %i.n = add i32 %i.m, 1
  store i32 %i.n, ptr %i.f, align 8, !tbaa !83
  br label %_ZNO4mlir18InFlightDiagnosticlsIRA42_KcEEOS0_OT_.exit

_ZNO4mlir18InFlightDiagnosticlsIRA42_KcEEOS0_OT_.exit: ; preds = %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  %.pr = load ptr, ptr %5, align 8, !tbaa !74
  %.not.i = icmp eq ptr %.pr, null
  br i1 %.not.i, label %_ZNO4mlir18InFlightDiagnosticlsIRA42_KcEEOS0_OT_.exit.thread, label %bb.f

bb.f:                                             ; preds = %_ZNO4mlir18InFlightDiagnosticlsIRA42_KcEEOS0_OT_.exit
  call void @_ZN4mlir18InFlightDiagnostic6reportEv(ptr noundef nonnull align 8 dereferenceable(208) %5) #24
  br label %_ZNO4mlir18InFlightDiagnosticlsIRA42_KcEEOS0_OT_.exit.thread

_ZNO4mlir18InFlightDiagnosticlsIRA42_KcEEOS0_OT_.exit.thread: ; preds = %bb.b, %bb.f, %_ZNO4mlir18InFlightDiagnosticlsIRA42_KcEEOS0_OT_.exit
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 200 ; 2 uses
  %i.p = load i8, ptr %i.o, align 8, !tbaa !87, !range !88, !noundef !89
  %i.q = trunc nuw i8 %i.p to i1
  store i8 0, ptr %i.o, align 8, !tbaa !87
  br i1 %i.q, label %bb.g, label %_ZN4mlir18InFlightDiagnosticD2Ev.exit

bb.g:                                             ; preds = %_ZNO4mlir18InFlightDiagnosticlsIRA42_KcEEOS0_OT_.exit.thread
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 8
  call void @_ZN4mlir10DiagnosticD2Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(200) %i.r) #24
  br label %_ZN4mlir18InFlightDiagnosticD2Ev.exit

_ZN4mlir18InFlightDiagnosticD2Ev.exit:            ; preds = %_ZNO4mlir18InFlightDiagnosticlsIRA42_KcEEOS0_OT_.exit.thread, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  br label %bb.h

bb.h:                                             ; preds = %bb.a, %_ZN4mlir18InFlightDiagnosticD2Ev.exit
  %.sroa.0.0 = phi i8 [ 0, %_ZN4mlir18InFlightDiagnosticD2Ev.exit ], [ 1, %bb.a ]
  ret i8 %.sroa.0.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noalias noundef ptr @_ZN4mlir7wasmssa4IfOp19getPropertiesAsAttrEPNS_11MLIRContextERKNS_15EmptyPropertiesE(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef nonnull readnone align 1 captures(none) dereferenceable(1) %1) local_unnamed_addr #3 align 2 {
_ZN4llvm11SmallVectorIN4mlir14NamedAttributeELj3EED2Ev.exit:
  ret ptr null
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef i64 @_ZN4mlir7wasmssa4IfOp21computePropertiesHashERKNS_15EmptyPropertiesE(ptr nofree noundef nonnull readnone align 1 captures(none) dereferenceable(1) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %1 = alloca %"struct.std::array.1702", align 1  ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #24
  %i.a = call noundef i64 @_ZN4llvm11xxh3_64bitsEPKhm(ptr noundef nonnull %1, i64 noundef 0) #24
  %i.b = xor i64 %i.a, -49064778989728563
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #24
  ret i64 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local { ptr, i8 } @_ZN4mlir7wasmssa4IfOp15getInherentAttrEPNS_11MLIRContextERKNS_15EmptyPropertiesEN4llvm9StringRefE(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef nonnull readnone align 1 captures(none) dereferenceable(1) %1, ptr nofree readnone captures(none) %2, i64 %3) local_unnamed_addr #3 align 2 {
bb.a:
  ret { ptr, i8 } { ptr undef, i8 0 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @_ZN4mlir7wasmssa4IfOp15setInherentAttrERNS_15EmptyPropertiesEN4llvm9StringRefENS_9AttributeE(ptr nofree noundef nonnull readnone align 1 captures(none) dereferenceable(1) %0, ptr nofree readnone captures(none) %1, i64 %2, ptr nofree readnone captures(none) %3) local_unnamed_addr #3 align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @_ZN4mlir7wasmssa4IfOp21populateInherentAttrsEPNS_11MLIRContextERKNS_15EmptyPropertiesERNS_13NamedAttrListE(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef nonnull readnone align 1 captures(none) dereferenceable(1) %1, ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(88) %2) local_unnamed_addr #3 align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i8 @_ZN4mlir7wasmssa4IfOp19verifyInherentAttrsENS_13OperationNameERNS_13NamedAttrListEN4llvm12function_refIFNS_18InFlightDiagnosticEvEEE(ptr nofree readnone captures(none) %0, ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(88) %1, ptr nofree readnone captures(none) %2, i64 %3) local_unnamed_addr #3 align 2 {
bb.a:
  ret i8 1
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4mlir7wasmssa4IfOp5buildERNS_9OpBuilderERNS_14OperationStateENS_5ValueENS_10ValueRangeEPNS_5BlockE(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(304) %1, ptr %2, i64 %3, i64 %4, ptr noundef %5) local_unnamed_addr #0 align 2 {
bb.a:
  %6 = alloca %"class.mlir::Value", align 8       ; 2 uses
  store ptr %2, ptr %6, align 8
  %i.a = ptrtoint ptr %6 to i64
  call void @_ZN4mlir14OperationState11addOperandsENS_10ValueRangeE(ptr noundef nonnull align 8 dereferenceable(304) %1, i64 %i.a, i64 1) #24
  call void @_ZN4mlir14OperationState11addOperandsENS_10ValueRangeE(ptr noundef nonnull align 8 dereferenceable(304) %1, i64 %3, i64 %4) #24
  %i.b = call noundef ptr @_ZN4mlir14OperationState9addRegionEv(ptr noundef nonnull align 8 dereferenceable(304) %1) #24 ; 0 uses
  %i.c = call noundef ptr @_ZN4mlir14OperationState9addRegionEv(ptr noundef nonnull align 8 dereferenceable(304) %1) #24 ; 0 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 200 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 208 ; 3 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !83   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 212
  %i.h = load i32, ptr %i.g, align 4, !tbaa !84
  %.not.i.i = icmp ult i32 %i.f, %i.h
  br i1 %.not.i.i, label %bb.c, label %bb.b, !prof !85

bb.b:                                             ; preds = %bb.a
  call void @_ZN4llvm23SmallVectorTemplateBaseIPN4mlir5BlockELb1EE15growAndPushBackES3_(ptr noundef nonnull align 8 dereferenceable(16) %i.d, ptr noundef %5)
  br label %_ZN4mlir14OperationState13addSuccessorsEPNS_5BlockE.exit

bb.c:                                             ; preds = %bb.a
  %i.i = zext i32 %i.f to i64
  %i.j = load ptr, ptr %i.d, align 8, !tbaa !86
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.i
  store ptr %5, ptr %i.k, align 1
  %i.l = load i32, ptr %i.e, align 8, !tbaa !83
  %i.m = add i32 %i.l, 1
  store i32 %i.m, ptr %i.e, align 8, !tbaa !83
  br label %_ZN4mlir14OperationState13addSuccessorsEPNS_5BlockE.exit

_ZN4mlir14OperationState13addSuccessorsEPNS_5BlockE.exit: ; preds = %bb.b, %bb.c
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local ptr @_ZN4mlir7wasmssa4IfOp6createERNS_9OpBuilderENS_8LocationENS_5ValueENS_10ValueRangeEPNS_5BlockE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr %1, ptr %2, i64 %3, i64 %4, ptr noundef %5) local_unnamed_addr #0 align 2 {
bb.a:
  %6 = alloca %"class.mlir::Value", align 8       ; 4 uses
  %7 = alloca %"struct.mlir::OperationState", align 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #24
  call void @_ZN4mlir14OperationStateC1ENS_8LocationEN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(304) %7, ptr %1, ptr nonnull @.str.248, i64 10) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  store ptr %2, ptr %6, align 8
  %i.a = ptrtoint ptr %6 to i64
  call void @_ZN4mlir14OperationState11addOperandsENS_10ValueRangeE(ptr noundef nonnull align 8 dereferenceable(304) %7, i64 %i.a, i64 1) #24
  call void @_ZN4mlir14OperationState11addOperandsENS_10ValueRangeE(ptr noundef nonnull align 8 dereferenceable(304) %7, i64 %3, i64 %4) #24
  %i.b = call noundef ptr @_ZN4mlir14OperationState9addRegionEv(ptr noundef nonnull align 8 dereferenceable(304) %7) #24 ; 0 uses
  %i.c = call noundef ptr @_ZN4mlir14OperationState9addRegionEv(ptr noundef nonnull align 8 dereferenceable(304) %7) #24 ; 0 uses
  %i.d = getelementptr inbounds nuw i8, ptr %7, i64 200 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %7, i64 208 ; 3 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !83   ; 2 uses
end_hunk_1
