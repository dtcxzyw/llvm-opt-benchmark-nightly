Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/ControlFlowOps?download=true
inline.NumInlined: 1920
inline.NumDeleted: 1171
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_ZN4mlir5spirv6LoopOp5printERNS_12OpAsmPrinterE:bb.a
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 16
  %i.cu = load ptr, ptr %i.ct, align 8
  %i.cv = call noundef nonnull align 8 dereferenceable(48) ptr %i.cu(ptr noundef nonnull align 8 dereferenceable(16) %1) #16, !inline_history !0 ; 3 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 32 ; 2 uses
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !61 ; 3 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cv, i64 24
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !62
  %.not.i.i = icmp ult ptr %i.cx, %i.cz
  br i1 %.not.i.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.da = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEh(ptr noundef nonnull align 8 dereferenceable(48) %i.cv, i8 noundef zeroext 32) #16 ; 0 uses
  br label %_ZN4mlirlsINS_12OpAsmPrinterEcTnPNSt9enable_ifIXaaaaaaaaaantsr3std14is_convertibleIRT0_RNS_5ValueEEE5valuentsr3std14is_convertibleIS4_RNS_4TypeEEE5valuentsr3std14is_convertibleIS4_RNS_9AttributeEEE5valuentsr3std14is_convertibleIS4_NS_10ValueRangeEEE5valuentsr3std14is_convertibleIS4_RN4llvm7APFloatEEE5valuentsr4llvm9is_one_ofIS3_bfdEE5valueES3_E4typeELPc0EvEERT_SK_RKS3_.exit

bb.p:                                             ; preds = %bb.n
  %i.db = getelementptr inbounds nuw i8, ptr %i.cx, i64 1
  store ptr %i.db, ptr %i.cw, align 8, !tbaa !61
  store i8 32, ptr %i.cx, align 1, !tbaa !43
  br label %_ZN4mlirlsINS_12OpAsmPrinterEcTnPNSt9enable_ifIXaaaaaaaaaantsr3std14is_convertibleIRT0_RNS_5ValueEEE5valuentsr3std14is_convertibleIS4_RNS_4TypeEEE5valuentsr3std14is_convertibleIS4_RNS_9AttributeEEE5valuentsr3std14is_convertibleIS4_NS_10ValueRangeEEE5valuentsr3std14is_convertibleIS4_RN4llvm7APFloatEEE5valuentsr4llvm9is_one_ofIS3_bfdEE5valueES3_E4typeELPc0EvEERT_SK_RKS3_.exit

_ZN4mlirlsINS_12OpAsmPrinterEcTnPNSt9enable_ifIXaaaaaaaaaantsr3std14is_convertibleIRT0_RNS_5ValueEEE5valuentsr3std14is_convertibleIS4_RNS_4TypeEEE5valuentsr3std14is_convertibleIS4_RNS_9AttributeEEE5valuentsr3std14is_convertibleIS4_NS_10ValueRangeEEE5valuentsr3std14is_convertibleIS4_RN4llvm7APFloatEEE5valuentsr4llvm9is_one_ofIS3_bfdEE5valueES3_E4typeELPc0EvEERT_SK_RKS3_.exit: ; preds = %bb.o, %bb.p
  %i.dc = load ptr, ptr %0, align 8, !tbaa !65    ; 3 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 44
  %i.de = load i32, ptr %i.dd, align 4            ; 3 uses
  %i.df = and i32 %i.de, 8388607
  %i.dg = icmp ne i32 %i.df, 0
  call void @llvm.assume(i1 %i.dg)
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dc, i64 64
  %i.di = lshr i32 %i.de, 23
  %.lobit.i.i.i.i.i.i.i.i.i.i.i = and i32 %i.di, 1
  %i.dj = zext nneg i32 %.lobit.i.i.i.i.i.i.i.i.i.i.i to i64
  %i.dk = getelementptr inbounds nuw [16 x i8], ptr %i.dh, i64 %i.dj
  %i.dl = lshr i32 %i.de, 21
  %i.dm = and i32 %i.dl, 2040
  %i.dn = zext nneg i32 %i.dm to i64
  %i.do = getelementptr inbounds nuw i8, ptr %i.dk, i64 %i.dn
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dc, i64 40
  %i.dq = load i32, ptr %i.dp, align 8, !tbaa !120
  %i.dr = zext i32 %i.dq to i64
  %i.ds = getelementptr inbounds nuw [32 x i8], ptr %i.do, i64 %i.dr
  %i.dt = load ptr, ptr %1, align 8, !tbaa !22
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 232
  %i.dv = load ptr, ptr %i.du, align 8
  call void %i.dv(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(28) %i.ds, i1 noundef zeroext false, i1 noundef zeroext true, i1 noundef zeroext false) #16
  ret void
}

declare noundef i32 @_ZN4mlir5spirv6LoopOp14getLoopControlEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

declare void @_ZN4mlir5spirv20stringifyLoopControlB5cxx11ENS0_11LoopControlE(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define dso_local i8 @_ZN4mlir5spirv6LoopOp13verifyRegionsEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %1 = alloca %"class.mlir::InFlightDiagnostic", align 8 ; 8 uses
  %2 = alloca %"class.llvm::Twine", align 8       ; 6 uses
  %3 = alloca %"class.mlir::InFlightDiagnostic", align 8 ; 8 uses
  %4 = alloca %"class.llvm::Twine", align 8       ; 6 uses
  %5 = alloca %"class.mlir::InFlightDiagnostic", align 8 ; 8 uses
  %6 = alloca %"class.llvm::Twine", align 8       ; 6 uses
  %7 = alloca %"class.mlir::InFlightDiagnostic", align 8 ; 8 uses
  %8 = alloca %"class.llvm::Twine", align 8       ; 6 uses
  %9 = alloca %"class.mlir::InFlightDiagnostic", align 8 ; 5 uses
  %10 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %11 = alloca %"class.mlir::InFlightDiagnostic", align 8 ; 5 uses
  %12 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %13 = alloca %"class.mlir::InFlightDiagnostic", align 8 ; 5 uses
  %14 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %15 = alloca %"class.mlir::InFlightDiagnostic", align 8 ; 8 uses
  %16 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %17 = alloca %"class.mlir::InFlightDiagnostic", align 8 ; 5 uses
  %18 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !65     ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 44
  %i.c = load i32, ptr %i.b, align 4              ; 3 uses
  %i.d = and i32 %i.c, 8388607
  %i.e = icmp ne i32 %i.d, 0
  tail call void @llvm.assume(i1 %i.e)
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.g = lshr i32 %i.c, 23
  %.lobit.i.i.i.i.i.i.i.i.i.i = and i32 %i.g, 1
  %i.h = zext nneg i32 %.lobit.i.i.i.i.i.i.i.i.i.i to i64
  %i.i = getelementptr inbounds nuw [16 x i8], ptr %i.f, i64 %i.h
  %i.j = lshr i32 %i.c, 21
  %i.k = and i32 %i.j, 2040
  %i.l = zext nneg i32 %i.k to i64
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.l
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.o = load i32, ptr %i.n, align 8, !tbaa !120
  %i.p = zext i32 %i.o to i64
  %i.q = getelementptr inbounds nuw [32 x i8], ptr %i.m, i64 %i.p ; 13 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !121  ; 3 uses
  %i.s = icmp eq ptr %i.q, %i.r
  br i1 %i.s, label %bb.ad, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 40
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !122  ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.r, i64 32 ; 2 uses
  %.not.i.i = icmp eq ptr %i.u, %i.v
  br i1 %.not.i.i, label %_ZN4mlir5spirvL12isMergeBlockERNS_5BlockE.exit.thread, label %_ZN4llvm16hasSingleElementIRN4mlir5BlockEEEbOT_.exit.i

_ZN4llvm16hasSingleElementIRN4mlir5BlockEEEbOT_.exit.i: ; preds = %bb.b
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !122
  %i.y = icmp eq ptr %i.x, %i.v
  br i1 %i.y, label %_ZN4mlir5spirvL12isMergeBlockERNS_5BlockE.exit, label %_ZN4mlir5spirvL12isMergeBlockERNS_5BlockE.exit.thread

_ZN4mlir5spirvL12isMergeBlockERNS_5BlockE.exit:   ; preds = %_ZN4llvm16hasSingleElementIRN4mlir5BlockEEEbOT_.exit.i
  %i.z = tail call noundef nonnull align 8 dereferenceable(64) ptr @_ZN4llvm12ilist_detail18SpecificNodeAccessINS0_12node_optionsIN4mlir9OperationELb0ELb0EvLb0EvEEE11getValuePtrEPNS_15ilist_node_implIS5_EE(ptr noundef nonnull %i.u) #16
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 48
  %.sroa.0.0.copyload.i.i.i.i.i.i.i = load ptr, ptr %i.aa, align 8, !tbaa !29
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !102
  %i.ad = icmp eq ptr %i.ac, @_ZN4mlir6detail14TypeIDResolverINS_5spirv7MergeOpEvE2idE
  br i1 %i.ad, label %bb.f, label %_ZN4mlir5spirvL12isMergeBlockERNS_5BlockE.exit.thread

_ZN4mlir5spirvL12isMergeBlockERNS_5BlockE.exit.thread: ; preds = %bb.b, %_ZN4llvm16hasSingleElementIRN4mlir5BlockEEEbOT_.exit.i, %_ZN4mlir5spirvL12isMergeBlockERNS_5BlockE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #16
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 33
  store i8 1, ptr %i.af, align 1, !tbaa !42
  store ptr @.str.21, ptr %2, align 8, !tbaa !43
  store i8 3, ptr %i.ae, align 8, !tbaa !44
  call void @_ZN4mlir7OpState11emitOpErrorERKN4llvm5TwineE(ptr dead_on_unwind nonnull writable sret(%"class.mlir::InFlightDiagnostic") align 8 %1, ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(34) %2) #16
  %i.ag = call i8 @_ZNK4mlir18InFlightDiagnosticcvN4llvm13LogicalResultEEv(ptr noundef nonnull align 8 dereferenceable(208) %1) #16
  %i.ah = load ptr, ptr %1, align 8, !tbaa !53
  %.not.i = icmp eq ptr %i.ah, null
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZN4mlir5spirvL12isMergeBlockERNS_5BlockE.exit.thread
  call void @_ZN4mlir18InFlightDiagnostic6reportEv(ptr noundef nonnull align 8 dereferenceable(208) %1) #16
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %_ZN4mlir5spirvL12isMergeBlockERNS_5BlockE.exit.thread
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 200 ; 2 uses
  %i.aj = load i8, ptr %i.ai, align 8, !tbaa !54, !range !55, !noundef !56
  %i.ak = trunc nuw i8 %i.aj to i1
  store i8 0, ptr %i.ai, align 8, !tbaa !54
  br i1 %i.ak, label %bb.e, label %_ZN4mlir18InFlightDiagnosticD2Ev.exit

bb.e:                                             ; preds = %bb.d
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @_ZN4mlir10DiagnosticD2Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(200) %i.al) #16
  br label %_ZN4mlir18InFlightDiagnosticD2Ev.exit

_ZN4mlir18InFlightDiagnosticD2Ev.exit:            ; preds = %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #16
  br label %bb.ad

bb.f:                                             ; preds = %_ZN4mlir5spirvL12isMergeBlockERNS_5BlockE.exit
  %i.am = tail call fastcc noundef zeroext i1 @_ZN4mlir5spirvL13hasOtherMergeERNS_6RegionE(ptr noundef nonnull align 8 dereferenceable(28) %i.q)
  br i1 %i.am, label %bb.g, label %bb.k

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #16
  %i.an = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.ao = getelementptr inbounds nuw i8, ptr %4, i64 33
  store i8 1, ptr %i.ao, align 1, !tbaa !42
  store ptr @.str.22, ptr %4, align 8, !tbaa !43
  store i8 3, ptr %i.an, align 8, !tbaa !44
  call void @_ZN4mlir7OpState11emitOpErrorERKN4llvm5TwineE(ptr dead_on_unwind nonnull writable sret(%"class.mlir::InFlightDiagnostic") align 8 %3, ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(34) %4) #16
  %i.ap = call i8 @_ZNK4mlir18InFlightDiagnosticcvN4llvm13LogicalResultEEv(ptr noundef nonnull align 8 dereferenceable(208) %3) #16
  %i.aq = load ptr, ptr %3, align 8, !tbaa !53
  %.not.i52 = icmp eq ptr %i.aq, null
  br i1 %.not.i52, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @_ZN4mlir18InFlightDiagnostic6reportEv(ptr noundef nonnull align 8 dereferenceable(208) %3) #16
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.ar = getelementptr inbounds nuw i8, ptr %3, i64 200 ; 2 uses
  %i.as = load i8, ptr %i.ar, align 8, !tbaa !54, !range !55, !noundef !56
  %i.at = trunc nuw i8 %i.as to i1
  store i8 0, ptr %i.ar, align 8, !tbaa !54
  br i1 %i.at, label %bb.j, label %_ZN4mlir18InFlightDiagnosticD2Ev.exit53

bb.j:                                             ; preds = %bb.i
  %i.au = getelementptr inbounds nuw i8, ptr %3, i64 8
  call void @_ZN4mlir10DiagnosticD2Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(200) %i.au) #16
  br label %_ZN4mlir18InFlightDiagnosticD2Ev.exit53

_ZN4mlir18InFlightDiagnosticD2Ev.exit53:          ; preds = %bb.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  br label %bb.ad

bb.k:                                             ; preds = %bb.f
  %i.av = load ptr, ptr %i.q, align 8, !tbaa !121
  %i.aw = icmp ne ptr %i.q, %i.av
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !122 ; 3 uses
  %.phi.trans.insert135 = getelementptr inbounds nuw i8, ptr %.pre, i64 8
  %.pre136 = load ptr, ptr %.phi.trans.insert135, align 8, !tbaa !122 ; 3 uses
  %i.ax = icmp eq ptr %.pre136, %i.q
  %or.cond = select i1 %i.aw, i1 %i.ax, i1 false
  br i1 %or.cond, label %bb.l, label %_ZN4mlir6Region11hasOneBlockEv.exit.thread

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #16
  %i.ay = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.az = getelementptr inbounds nuw i8, ptr %6, i64 33
  store i8 1, ptr %i.az, align 1, !tbaa !42
  store ptr @.str.23, ptr %6, align 8, !tbaa !43
  store i8 3, ptr %i.ay, align 8, !tbaa !44
  call void @_ZN4mlir7OpState11emitOpErrorERKN4llvm5TwineE(ptr dead_on_unwind nonnull writable sret(%"class.mlir::InFlightDiagnostic") align 8 %5, ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(34) %6) #16
  %i.ba = call i8 @_ZNK4mlir18InFlightDiagnosticcvN4llvm13LogicalResultEEv(ptr noundef nonnull align 8 dereferenceable(208) %5) #16
  %i.bb = load ptr, ptr %5, align 8, !tbaa !53
  %.not.i54 = icmp eq ptr %i.bb, null
  br i1 %.not.i54, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @_ZN4mlir18InFlightDiagnostic6reportEv(ptr noundef nonnull align 8 dereferenceable(208) %5) #16
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.bc = getelementptr inbounds nuw i8, ptr %5, i64 200 ; 2 uses
  %i.bd = load i8, ptr %i.bc, align 8, !tbaa !54, !range !55, !noundef !56
  %i.be = trunc nuw i8 %i.bd to i1
  store i8 0, ptr %i.bc, align 8, !tbaa !54
  br i1 %i.be, label %bb.o, label %_ZN4mlir18InFlightDiagnosticD2Ev.exit55

bb.o:                                             ; preds = %bb.n
  %i.bf = getelementptr inbounds nuw i8, ptr %5, i64 8
  call void @_ZN4mlir10DiagnosticD2Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(200) %i.bf) #16
  br label %_ZN4mlir18InFlightDiagnosticD2Ev.exit55

_ZN4mlir18InFlightDiagnosticD2Ev.exit55:          ; preds = %bb.n, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #16
  br label %bb.ad

_ZN4mlir6Region11hasOneBlockEv.exit.thread:       ; preds = %bb.k
  %19 = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 2 uses
  %20 = getelementptr inbounds nuw i8, ptr %.pre136, i64 8
  %21 = load ptr, ptr %20, align 8, !tbaa !122
  %22 = icmp eq ptr %21, %i.q
  br i1 %22, label %bb.p, label %.preheader.preheader

.preheader.preheader:                             ; preds = %_ZN4mlir6Region11hasOneBlockEv.exit.thread
  %i.bg = getelementptr inbounds i8, ptr %.pre136, i64 -8 ; 3 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.pre, i64 40
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !122 ; 2 uses
  %23 = getelementptr inbounds nuw i8, ptr %.pre, i64 32 ; 3 uses
  %.not.i.i62.a = icmp eq ptr %i.bi, %23
  br i1 %.not.i.i62.a, label %_ZN4mlir5spirvL16hasOneBranchOpToERNS_5BlockES2_.exit.thread, label %_ZN4llvm16hasSingleElementIRN4mlir5BlockEEEbOT_.exit.i63

bb.p:                                             ; preds = %_ZN4mlir6Region11hasOneBlockEv.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #16
  %i.bj = getelementptr inbounds nuw i8, ptr %8, i64 32
  %i.bk = getelementptr inbounds nuw i8, ptr %8, i64 33
  store i8 1, ptr %i.bk, align 1, !tbaa !42
  store ptr @.str.24, ptr %8, align 8, !tbaa !43
  store i8 3, ptr %i.bj, align 8, !tbaa !44
  call void @_ZN4mlir7OpState11emitOpErrorERKN4llvm5TwineE(ptr dead_on_unwind nonnull writable sret(%"class.mlir::InFlightDiagnostic") align 8 %7, ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(34) %8) #16
  %i.bl = call i8 @_ZNK4mlir18InFlightDiagnosticcvN4llvm13LogicalResultEEv(ptr noundef nonnull align 8 dereferenceable(208) %7) #16
  %i.bm = load ptr, ptr %7, align 8, !tbaa !53
  %.not.i56 = icmp eq ptr %i.bm, null
  br i1 %.not.i56, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  call void @_ZN4mlir18InFlightDiagnostic6reportEv(ptr noundef nonnull align 8 dereferenceable(208) %7) #16
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.bn = getelementptr inbounds nuw i8, ptr %7, i64 200 ; 2 uses
  %i.bo = load i8, ptr %i.bn, align 8, !tbaa !54, !range !55, !noundef !56
  %i.bp = trunc nuw i8 %i.bo to i1
  store i8 0, ptr %i.bn, align 8, !tbaa !54
  br i1 %i.bp, label %bb.s, label %_ZN4mlir18InFlightDiagnosticD2Ev.exit57

bb.s:                                             ; preds = %bb.r
  %i.bq = getelementptr inbounds nuw i8, ptr %7, i64 8
  call void @_ZN4mlir10DiagnosticD2Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(200) %i.bq) #16
  br label %_ZN4mlir18InFlightDiagnosticD2Ev.exit57

_ZN4mlir18InFlightDiagnosticD2Ev.exit57:          ; preds = %bb.r, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #16
  br label %bb.ad

_ZN4llvm16hasSingleElementIRN4mlir5BlockEEEbOT_.exit.i63: ; preds = %.preheader.preheader
  %i.br = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !122
  %i.bt = icmp eq ptr %i.bs, %23
  br i1 %i.bt, label %bb.t, label %_ZN4mlir5spirvL16hasOneBranchOpToERNS_5BlockES2_.exit.thread

bb.t:                                             ; preds = %_ZN4llvm16hasSingleElementIRN4mlir5BlockEEEbOT_.exit.i63
  %i.bu = load ptr, ptr %23, align 8, !tbaa !121
  %i.bv = tail call noundef nonnull align 8 dereferenceable(64) ptr @_ZN4llvm12ilist_detail18SpecificNodeAccessINS0_12node_optionsIN4mlir9OperationELb0ELb0EvLb0EvEEE11getValuePtrEPNS_15ilist_node_implIS5_EE(ptr noundef %i.bu) #16 ; 3 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 48
  %.sroa.0.0.copyload.i.i.i.i.i.i.i64 = load ptr, ptr %i.bw, align 8, !tbaa !29
  %i.bx = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i64, i64 16
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !102
  %i.bz = icmp eq ptr %i.by, @_ZN4mlir6detail14TypeIDResolverINS_5spirv8BranchOpEvE2idE
  br i1 %i.bz, label %_ZN4mlir5spirvL16hasOneBranchOpToERNS_5BlockES2_.exit, label %_ZN4mlir5spirvL16hasOneBranchOpToERNS_5BlockES2_.exit.thread

_ZN4mlir5spirvL16hasOneBranchOpToERNS_5BlockES2_.exit: ; preds = %bb.t
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bv, i64 44
  %i.cb = load i32, ptr %i.ca, align 4            ; 2 uses
  %i.cc = lshr i32 %i.cb, 23
  %.lobit.i.i.i.i.i.i.i.i.i.i.i = and i32 %i.cc, 1
  %i.cd = zext nneg i32 %.lobit.i.i.i.i.i.i.i.i.i.i.i to i64
  %i.ce = getelementptr inbounds nuw [16 x i8], ptr %i.bv, i64 %i.cd
  %i.cf = lshr i32 %i.cb, 21
  %i.cg = and i32 %i.cf, 2040
  %i.ch = zext nneg i32 %i.cg to i64
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ce, i64 %i.ch
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 88
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !80
  %i.cl = icmp eq ptr %i.ck, %i.bg
  br i1 %i.cl, label %_ZSt9__advanceIN4llvm14ilist_iteratorINS0_12ilist_detail12node_optionsIN4mlir5BlockELb0ELb0EvLb0EvEELb0ELb0EEElEvRT_T0_St26bidirectional_iterator_tag.exit68, label %_ZN4mlir5spirvL16hasOneBranchOpToERNS_5BlockES2_.exit.thread

_ZN4mlir5spirvL16hasOneBranchOpToERNS_5BlockES2_.exit.thread: ; preds = %.preheader.preheader, %bb.t, %_ZN4llvm16hasSingleElementIRN4mlir5BlockEEEbOT_.exit.i63, %_ZN4mlir5spirvL16hasOneBranchOpToERNS_5BlockES2_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #16
  %i.cm = getelementptr inbounds nuw i8, ptr %10, i64 32
  %i.cn = getelementptr inbounds nuw i8, ptr %10, i64 33
  store i8 1, ptr %i.cn, align 1, !tbaa !42
  store ptr @.str.25, ptr %10, align 8, !tbaa !43
  store i8 3, ptr %i.cm, align 8, !tbaa !44
  call void @_ZN4mlir7OpState11emitOpErrorERKN4llvm5TwineE(ptr dead_on_unwind nonnull writable sret(%"class.mlir::InFlightDiagnostic") align 8 %9, ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(34) %10) #16
  %i.co = call i8 @_ZNK4mlir18InFlightDiagnosticcvN4llvm13LogicalResultEEv(ptr noundef nonnull align 8 dereferenceable(208) %9) #16
  call void @_ZN4mlir18InFlightDiagnosticD2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %9) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #16
  br label %bb.ad

_ZSt9__advanceIN4llvm14ilist_iteratorINS0_12ilist_detail12node_optionsIN4mlir5BlockELb0ELb0EvLb0EvEELb0ELb0EEElEvRT_T0_St26bidirectional_iterator_tag.exit68: ; preds = %_ZN4mlir5spirvL16hasOneBranchOpToERNS_5BlockES2_.exit
  %i.cp = load ptr, ptr %19, align 8, !tbaa !122
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 8
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !122
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 8
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !122
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 8
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !122
  %i.cw = icmp eq ptr %i.cv, %i.q
  br i1 %i.cw, label %bb.u, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %_ZSt9__advanceIN4llvm14ilist_iteratorINS0_12ilist_detail12node_optionsIN4mlir5BlockELb0ELb0EvLb0EvEELb0ELb0EEElEvRT_T0_St26bidirectional_iterator_tag.exit68
  %i.cx = load ptr, ptr %i.q, align 8, !tbaa !121
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !121
  %i.cz = getelementptr inbounds i8, ptr %i.cy, i64 -8 ; 2 uses
  %i.da = tail call noundef i32 @_ZN4mlir5Block16getNumSuccessorsEv(ptr noundef nonnull align 8 dereferenceable(80) %i.cz) #16
  %i.db = zext i32 %i.da to i64
  %i.dc = tail call fastcc noundef zeroext i1 @"_ZN4llvm7none_ofINS_10iota_rangeIjEEZN4mlir5spirv6LoopOp13verifyRegionsEvE3$_0EEbOT_T0_"(i64 0, i64 %i.db, ptr %i.cz, ptr %i.bg)
  br i1 %i.dc, label %bb.v, label %.lr.ph.i76.preheader

bb.u:                                             ; preds = %_ZSt9__advanceIN4llvm14ilist_iteratorINS0_12ilist_detail12node_optionsIN4mlir5BlockELb0ELb0EvLb0EvEELb0ELb0EEElEvRT_T0_St26bidirectional_iterator_tag.exit68
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #16
  %i.dd = getelementptr inbounds nuw i8, ptr %12, i64 32
  %i.de = getelementptr inbounds nuw i8, ptr %12, i64 33
  store i8 1, ptr %i.de, align 1, !tbaa !42
  store ptr @.str.26, ptr %12, align 8, !tbaa !43
  store i8 3, ptr %i.dd, align 8, !tbaa !44
  call void @_ZN4mlir7OpState11emitOpErrorERKN4llvm5TwineE(ptr dead_on_unwind nonnull writable sret(%"class.mlir::InFlightDiagnostic") align 8 %11, ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(34) %12) #16
  %i.df = call i8 @_ZNK4mlir18InFlightDiagnosticcvN4llvm13LogicalResultEEv(ptr noundef nonnull align 8 dereferenceable(208) %11) #16
  call void @_ZN4mlir18InFlightDiagnosticD2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %11) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #16
  br label %bb.ad

bb.v:                                             ; preds = %.lr.ph.i.preheader
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #16
  %i.dg = getelementptr inbounds nuw i8, ptr %14, i64 32
  %i.dh = getelementptr inbounds nuw i8, ptr %14, i64 33
  store i8 1, ptr %i.dh, align 1, !tbaa !42
  store ptr @.str.27, ptr %14, align 8, !tbaa !43
  store i8 3, ptr %i.dg, align 8, !tbaa !44
  call void @_ZN4mlir7OpState11emitOpErrorERKN4llvm5TwineE(ptr dead_on_unwind nonnull writable sret(%"class.mlir::InFlightDiagnostic") align 8 %13, ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(34) %14) #16
  %i.di = call i8 @_ZNK4mlir18InFlightDiagnosticcvN4llvm13LogicalResultEEv(ptr noundef nonnull align 8 dereferenceable(208) %13) #16
  call void @_ZN4mlir18InFlightDiagnosticD2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %13) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #16
  br label %bb.ad

.lr.ph.i76.preheader:                             ; preds = %.lr.ph.i.preheader
  %i.dj = load ptr, ptr %19, align 8, !tbaa !122
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 8
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !122
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 8
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !122 ; 2 uses
  %i.do = load ptr, ptr %i.q, align 8, !tbaa !121
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !121 ; 2 uses
  %.not118127 = icmp eq ptr %i.dn, %i.dp
  br i1 %.not118127, label %.thread116, label %.lr.ph129

.lr.ph129:                                        ; preds = %.lr.ph.i76.preheader, %_ZSt9__advanceIN4llvm14ilist_iteratorINS0_12ilist_detail12node_optionsIN4mlir5BlockELb0ELb0EvLb0EvEELb0ELb0EEElEvRT_T0_St26bidirectional_iterator_tag.exit79
  %.sroa.093.0128 = phi ptr [ %i.ef, %_ZSt9__advanceIN4llvm14ilist_iteratorINS0_12ilist_detail12node_optionsIN4mlir5BlockELb0ELb0EvLb0EvEELb0ELb0EEElEvRT_T0_St26bidirectional_iterator_tag.exit79 ], [ %i.dn, %.lr.ph.i76.preheader ] ; 2 uses
  %i.dq = getelementptr inbounds i8, ptr %.sroa.093.0128, i64 -8 ; 2 uses
  %i.dr = tail call noundef i32 @_ZN4mlir5Block16getNumSuccessorsEv(ptr noundef nonnull align 8 dereferenceable(80) %i.dq) #16 ; 2 uses
  %i.ds = zext i32 %i.dr to i64
  %.not119125 = icmp eq i32 %i.dr, 0
  br i1 %.not119125, label %_ZSt9__advanceIN4llvm14ilist_iteratorINS0_12ilist_detail12node_optionsIN4mlir5BlockELb0ELb0EvLb0EvEELb0ELb0EEElEvRT_T0_St26bidirectional_iterator_tag.exit79, label %.lr.ph

bb.w:                                             ; preds = %.lr.ph
  %i.dt = add nuw nsw i64 %.sroa.088.0126, 1      ; 2 uses
  %.not119 = icmp eq i64 %i.dt, %i.ds
  br i1 %.not119, label %_ZSt9__advanceIN4llvm14ilist_iteratorINS0_12ilist_detail12node_optionsIN4mlir5BlockELb0ELb0EvLb0EvEELb0ELb0EEElEvRT_T0_St26bidirectional_iterator_tag.exit79, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph129, %bb.w
  %.sroa.088.0126 = phi i64 [ %i.dt, %bb.w ], [ 0, %.lr.ph129 ] ; 2 uses
  %i.du = trunc i64 %.sroa.088.0126 to i32
  %i.dv = tail call noundef ptr @_ZN4mlir5Block12getSuccessorEj(ptr noundef nonnull align 8 dereferenceable(80) %i.dq, i32 noundef %i.du) #16
  %.not = icmp eq ptr %i.dv, %i.bg
  br i1 %.not, label %bb.x, label %bb.w

bb.x:                                             ; preds = %.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #16
  %i.dw = getelementptr inbounds nuw i8, ptr %16, i64 32
  %i.dx = getelementptr inbounds nuw i8, ptr %16, i64 33
  store i8 1, ptr %i.dx, align 1, !tbaa !42
  store ptr @.str.28, ptr %16, align 8, !tbaa !43
  store i8 3, ptr %i.dw, align 8, !tbaa !44
  call void @_ZN4mlir7OpState11emitOpErrorERKN4llvm5TwineE(ptr dead_on_unwind nonnull writable sret(%"class.mlir::InFlightDiagnostic") align 8 %15, ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(34) %16) #16
  %i.dy = call i8 @_ZNK4mlir18InFlightDiagnosticcvN4llvm13LogicalResultEEv(ptr noundef nonnull align 8 dereferenceable(208) %15) #16
  %i.dz = load ptr, ptr %15, align 8, !tbaa !53
  %.not.i86 = icmp eq ptr %i.dz, null
  br i1 %.not.i86, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  call void @_ZN4mlir18InFlightDiagnostic6reportEv(ptr noundef nonnull align 8 dereferenceable(208) %15) #16
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %i.ea = getelementptr inbounds nuw i8, ptr %15, i64 200 ; 2 uses
  %i.eb = load i8, ptr %i.ea, align 8, !tbaa !54, !range !55, !noundef !56
  %i.ec = trunc nuw i8 %i.eb to i1
  store i8 0, ptr %i.ea, align 8, !tbaa !54
  br i1 %i.ec, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.ed = getelementptr inbounds nuw i8, ptr %15, i64 8
  call void @_ZN4mlir10DiagnosticD2Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(200) %i.ed) #16
  br label %bb.ab

_ZSt9__advanceIN4llvm14ilist_iteratorINS0_12ilist_detail12node_optionsIN4mlir5BlockELb0ELb0EvLb0EvEELb0ELb0EEElEvRT_T0_St26bidirectional_iterator_tag.exit79: ; preds = %bb.w, %.lr.ph129
  %i.ee = getelementptr inbounds nuw i8, ptr %.sroa.093.0128, i64 8
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !122 ; 2 uses
  %.not118 = icmp eq ptr %i.ef, %i.dp
  br i1 %.not118, label %.thread116, label %.lr.ph129

bb.ab:                                            ; preds = %bb.aa, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #16
  br label %bb.ad

.thread116:                                       ; preds = %_ZSt9__advanceIN4llvm14ilist_iteratorINS0_12ilist_detail12node_optionsIN4mlir5BlockELb0ELb0EvLb0EvEELb0ELb0EEElEvRT_T0_St26bidirectional_iterator_tag.exit79, %.lr.ph.i76.preheader
  %i.eg = tail call fastcc noundef zeroext i1 @_ZN4mlir5spirvL16returnTypesMatchERNS_6RegionEPNS_9OperationE(ptr noundef nonnull align 8 dereferenceable(28) %i.q, ptr noundef nonnull %i.a)
  br i1 %i.eg, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %.thread116
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #16
  %i.eh = getelementptr inbounds nuw i8, ptr %18, i64 32
  %i.ei = getelementptr inbounds nuw i8, ptr %18, i64 33
  store i8 1, ptr %i.ei, align 1, !tbaa !42
  store ptr @.str.29, ptr %18, align 8, !tbaa !43
  store i8 3, ptr %i.eh, align 8, !tbaa !44
  call void @_ZN4mlir7OpState11emitOpErrorERKN4llvm5TwineE(ptr dead_on_unwind nonnull writable sret(%"class.mlir::InFlightDiagnostic") align 8 %17, ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(34) %18) #16
  %i.ej = call i8 @_ZNK4mlir18InFlightDiagnosticcvN4llvm13LogicalResultEEv(ptr noundef nonnull align 8 dereferenceable(208) %17) #16
  call void @_ZN4mlir18InFlightDiagnosticD2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %17) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #16
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ab, %.thread116, %bb.a, %_ZN4mlir18InFlightDiagnosticD2Ev.exit, %_ZN4mlir18InFlightDiagnosticD2Ev.exit53, %_ZN4mlir18InFlightDiagnosticD2Ev.exit55, %_ZN4mlir5spirvL16hasOneBranchOpToERNS_5BlockES2_.exit.thread, %bb.u, %bb.ac, %bb.v, %_ZN4mlir18InFlightDiagnosticD2Ev.exit57
  %.sroa.045.9 = phi i8 [ %i.dy, %bb.ab ], [ %i.ap, %_ZN4mlir18InFlightDiagnosticD2Ev.exit53 ], [ %i.ba, %_ZN4mlir18InFlightDiagnosticD2Ev.exit55 ], [ %i.ag, %_ZN4mlir18InFlightDiagnosticD2Ev.exit ], [ %i.bl, %_ZN4mlir18InFlightDiagnosticD2Ev.exit57 ], [ %i.df, %bb.u ], [ %i.co, %_ZN4mlir5spirvL16hasOneBranchOpToERNS_5BlockES2_.exit.thread ], [ %i.di, %bb.v ], [ 1, %bb.a ], [ %i.ej, %bb.ac ], [ 1, %.thread116 ]
  ret i8 %.sroa.045.9
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef zeroext i1 @_ZN4mlir5spirvL13hasOtherMergeERNS_6RegionE(ptr noundef nonnull align 8 dereferenceable(28) %0) unnamed_addr #0 {
bb.a:
  %1 = alloca %"class.mlir::Region::OpIterator", align 8 ; 5 uses
  %2 = alloca %"class.mlir::Region::OpIterator", align 8 ; 4 uses
  %3 = alloca %"class.llvm::iterator_range.572", align 8 ; 6 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !121
  %i.b = icmp eq ptr %0, %i.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #16
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @_ZN4mlir6Region10OpIteratorC1EPS0_b(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(28) %0, i1 noundef zeroext false) #16, !noalias !243
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 24
  call void @_ZN4mlir6Region10OpIteratorC1EPS0_b(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(28) %0, i1 noundef zeroext true) #16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  call void @llvm.lifetime.start.p0(ptr nonnull %1), !noalias !244
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull readonly align 8 dereferenceable(48) %3, i64 24, i1 false)
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %3, i64 40
  %.sroa.2.0.copyload.i = load ptr, ptr %.sroa.2.0..sroa_idx.i, align 8 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !125, !noalias !245 ; 2 uses
  %.not3.i.i.i.i.i.i = icmp eq ptr %i.e, %.sroa.2.0.copyload.i
  br i1 %.not3.i.i.i.i.i.i, label %"_ZN4llvm6any_ofINS_14iterator_rangeIN4mlir6Region10OpIteratorEEEZNS2_5spirvL13hasOtherMergeERS3_E3$_0EEbOT_T0_.exit", label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.b, %"_ZN9__gnu_cxx5__ops10_Iter_predIZN4mlir5spirvL13hasOtherMergeERNS2_6RegionEE3$_0EclINS4_10OpIteratorEEEbT_.exit.thread.i.i.i.i.i.i"
  %i.f = phi ptr [ %i.p, %"_ZN9__gnu_cxx5__ops10_Iter_predIZN4mlir5spirvL13hasOtherMergeERNS2_6RegionEE3$_0EclINS4_10OpIteratorEEEbT_.exit.thread.i.i.i.i.i.i" ], [ %i.e, %bb.b ]
  %i.g = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN4llvm12ilist_detail18SpecificNodeAccessINS0_12node_optionsIN4mlir9OperationELb0ELb0EvLb0EvEEE11getValuePtrEPNS_15ilist_node_implIS5_EE(ptr noundef %i.f) #16, !noalias !245 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  %.val2.i.i.i.i.i.i.i = load ptr, ptr %i.h, align 8, !tbaa !29, !noalias !245
  %i.i = getelementptr i8, ptr %.val2.i.i.i.i.i.i.i, i64 16
  %.val2.val.i.i.i.i.i.i.i = load ptr, ptr %i.i, align 8, !tbaa !102, !noalias !245
  %i.j = icmp eq ptr %.val2.val.i.i.i.i.i.i.i, @_ZN4mlir6detail14TypeIDResolverINS_5spirv7MergeOpEvE2idE
  br i1 %i.j, label %"_ZN9__gnu_cxx5__ops10_Iter_predIZN4mlir5spirvL13hasOtherMergeERNS2_6RegionEE3$_0EclINS4_10OpIteratorEEEbT_.exit.i.i.i.i.i.i", label %"_ZN9__gnu_cxx5__ops10_Iter_predIZN4mlir5spirvL13hasOtherMergeERNS2_6RegionEE3$_0EclINS4_10OpIteratorEEEbT_.exit.thread.i.i.i.i.i.i"

"_ZN9__gnu_cxx5__ops10_Iter_predIZN4mlir5spirvL13hasOtherMergeERNS2_6RegionEE3$_0EclINS4_10OpIteratorEEEbT_.exit.i.i.i.i.i.i": ; preds = %.lr.ph.i.i.i.i.i.i
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %.val1.i.i.i.i.i.i.i = load ptr, ptr %i.k, align 8, !noalias !245
  %i.l = load ptr, ptr %0, align 8, !tbaa !121, !noalias !245
  %i.m = getelementptr inbounds i8, ptr %i.l, i64 -8
  %.not2.i.i.i.i.i.i = icmp eq ptr %.val1.i.i.i.i.i.i.i, %i.m
  br i1 %.not2.i.i.i.i.i.i, label %"_ZN9__gnu_cxx5__ops10_Iter_predIZN4mlir5spirvL13hasOtherMergeERNS2_6RegionEE3$_0EclINS4_10OpIteratorEEEbT_.exit.thread.i.i.i.i.i.i", label %"_ZN9__gnu_cxx5__ops10_Iter_predIZN4mlir5spirvL13hasOtherMergeERNS2_6RegionEE3$_0EclINS4_10OpIteratorEEEbT_.exit.i.i.i._ZSt7find_ifIN4mlir6Region10OpIteratorEZNS0_5spirvL13hasOtherMergeERS1_E3$_0ET_S6_S6_T0_.exit.loopexit_crit_edge.i.i.i"

"_ZN9__gnu_cxx5__ops10_Iter_predIZN4mlir5spirvL13hasOtherMergeERNS2_6RegionEE3$_0EclINS4_10OpIteratorEEEbT_.exit.i.i.i._ZSt7find_ifIN4mlir6Region10OpIteratorEZNS0_5spirvL13hasOtherMergeERS1_E3$_0ET_S6_S6_T0_.exit.loopexit_crit_edge.i.i.i": ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZN4mlir5spirvL13hasOtherMergeERNS2_6RegionEE3$_0EclINS4_10OpIteratorEEEbT_.exit.i.i.i.i.i.i"
  %.sroa.3.0.copyload.pre.pre.i.i.i = load ptr, ptr %i.d, align 8
  %i.n = icmp ne ptr %.sroa.2.0.copyload.i, %.sroa.3.0.copyload.pre.pre.i.i.i
  br label %"_ZN4llvm6any_ofINS_14iterator_rangeIN4mlir6Region10OpIteratorEEEZNS2_5spirvL13hasOtherMergeERS3_E3$_0EEbOT_T0_.exit"

"_ZN9__gnu_cxx5__ops10_Iter_predIZN4mlir5spirvL13hasOtherMergeERNS2_6RegionEE3$_0EclINS4_10OpIteratorEEEbT_.exit.thread.i.i.i.i.i.i": ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZN4mlir5spirvL13hasOtherMergeERNS2_6RegionEE3$_0EclINS4_10OpIteratorEEEbT_.exit.i.i.i.i.i.i", %.lr.ph.i.i.i.i.i.i
  %i.o = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN4mlir6Region10OpIteratorppEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #16, !noalias !245 ; 0 uses
  %i.p = load ptr, ptr %i.d, align 8, !tbaa !125, !noalias !245 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.p, %.sroa.2.0.copyload.i
  br i1 %.not.i.i.i.i.i.i, label %"_ZN4llvm6any_ofINS_14iterator_rangeIN4mlir6Region10OpIteratorEEEZNS2_5spirvL13hasOtherMergeERS3_E3$_0EEbOT_T0_.exit", label %.lr.ph.i.i.i.i.i.i, !llvm.loop !242

"_ZN4llvm6any_ofINS_14iterator_rangeIN4mlir6Region10OpIteratorEEEZNS2_5spirvL13hasOtherMergeERS3_E3$_0EEbOT_T0_.exit": ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZN4mlir5spirvL13hasOtherMergeERNS2_6RegionEE3$_0EclINS4_10OpIteratorEEEbT_.exit.thread.i.i.i.i.i.i", %bb.b, %"_ZN9__gnu_cxx5__ops10_Iter_predIZN4mlir5spirvL13hasOtherMergeERNS2_6RegionEE3$_0EclINS4_10OpIteratorEEEbT_.exit.i.i.i._ZSt7find_ifIN4mlir6Region10OpIteratorEZNS0_5spirvL13hasOtherMergeERS1_E3$_0ET_S6_S6_T0_.exit.loopexit_crit_edge.i.i.i"
  %.sroa.3.0.copyload.i.i.i = phi i1 [ false, %bb.b ], [ %i.n, %"_ZN9__gnu_cxx5__ops10_Iter_predIZN4mlir5spirvL13hasOtherMergeERNS2_6RegionEE3$_0EclINS4_10OpIteratorEEEbT_.exit.i.i.i._ZSt7find_ifIN4mlir6Region10OpIteratorEZNS0_5spirvL13hasOtherMergeERS1_E3$_0ET_S6_S6_T0_.exit.loopexit_crit_edge.i.i.i" ], [ false, %"_ZN9__gnu_cxx5__ops10_Iter_predIZN4mlir5spirvL13hasOtherMergeERNS2_6RegionEE3$_0EclINS4_10OpIteratorEEEbT_.exit.thread.i.i.i.i.i.i" ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1), !noalias !244
  br label %bb.c

bb.c:                                             ; preds = %"_ZN4llvm6any_ofINS_14iterator_rangeIN4mlir6Region10OpIteratorEEEZNS2_5spirvL13hasOtherMergeERS3_E3$_0EEbOT_T0_.exit", %bb.a
  %i.q = phi i1 [ false, %bb.a ], [ %.sroa.3.0.copyload.i.i.i, %"_ZN4llvm6any_ofINS_14iterator_rangeIN4mlir6Region10OpIteratorEEEZNS2_5spirvL13hasOtherMergeERS3_E3$_0EEbOT_T0_.exit" ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  ret i1 %i.q
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef zeroext i1 @"_ZN4llvm7none_ofINS_10iota_rangeIjEEZN4mlir5spirv6LoopOp13verifyRegionsEvE3$_0EEbOT_T0_"(i64 %.0.val, i64 %.8.val, ptr nonnull %0, ptr nofree nonnull readnone captures(address) %1) unnamed_addr #0 {
bb.a:
  %i.a = sub i64 %.8.val, %.0.val
  %i.b = ashr i64 %i.a, 2                         ; 2 uses
  %i.c = icmp sgt i64 %i.b, 0
  br i1 %i.c, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.a, %bb.e
  %.068.i.i.i.i = phi i64 [ %i.t, %bb.e ], [ %i.b, %bb.a ] ; 2 uses
  %.sroa.043.067.i.i.i.i = phi i64 [ %i.s, %bb.e ], [ %.0.val, %bb.a ] ; 6 uses
  %i.d = trunc i64 %.sroa.043.067.i.i.i.i to i32
  %i.e = tail call noundef ptr @_ZN4mlir5Block12getSuccessorEj(ptr noundef nonnull align 8 dereferenceable(80) %0, i32 noundef %i.d) #16
  %i.f = icmp eq ptr %i.e, %1
  br i1 %i.f, label %"_ZSt7none_ofIN4llvm6detail15SafeIntIteratorIjLb0EEEZN4mlir5spirv6LoopOp13verifyRegionsEvE3$_0EbT_S8_T0_.exit", label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i.i.i
  %i.g = add i64 %.sroa.043.067.i.i.i.i, 1        ; 2 uses
  %i.h = trunc i64 %i.g to i32
  %i.i = tail call noundef ptr @_ZN4mlir5Block12getSuccessorEj(ptr noundef nonnull align 8 dereferenceable(80) %0, i32 noundef %i.h) #16
  %i.j = icmp eq ptr %i.i, %1
  br i1 %i.j, label %"_ZSt7none_ofIN4llvm6detail15SafeIntIteratorIjLb0EEEZN4mlir5spirv6LoopOp13verifyRegionsEvE3$_0EbT_S8_T0_.exit", label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = add i64 %.sroa.043.067.i.i.i.i, 2        ; 2 uses
  %i.l = trunc i64 %i.k to i32
  %i.m = tail call noundef ptr @_ZN4mlir5Block12getSuccessorEj(ptr noundef nonnull align 8 dereferenceable(80) %0, i32 noundef %i.l) #16
  %i.n = icmp eq ptr %i.m, %1
  br i1 %i.n, label %"_ZSt7none_ofIN4llvm6detail15SafeIntIteratorIjLb0EEEZN4mlir5spirv6LoopOp13verifyRegionsEvE3$_0EbT_S8_T0_.exit", label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = add i64 %.sroa.043.067.i.i.i.i, 3        ; 2 uses
  %i.p = trunc i64 %i.o to i32
  %i.q = tail call noundef ptr @_ZN4mlir5Block12getSuccessorEj(ptr noundef nonnull align 8 dereferenceable(80) %0, i32 noundef %i.p) #16
  %i.r = icmp eq ptr %i.q, %1
  br i1 %i.r, label %"_ZSt7none_ofIN4llvm6detail15SafeIntIteratorIjLb0EEEZN4mlir5spirv6LoopOp13verifyRegionsEvE3$_0EbT_S8_T0_.exit", label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.s = add i64 %.sroa.043.067.i.i.i.i, 4        ; 2 uses
  %i.t = add nsw i64 %.068.i.i.i.i, -1
  %i.u = icmp sgt i64 %.068.i.i.i.i, 1
  br i1 %i.u, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i, !llvm.loop !246

._crit_edge.i.i.i.i:                              ; preds = %bb.e, %bb.a
  %.sroa.043.0.lcssa.i.i.i.i = phi i64 [ %.0.val, %bb.a ], [ %i.s, %bb.e ] ; 6 uses
  %i.v = sub i64 %.8.val, %.sroa.043.0.lcssa.i.i.i.i
  switch i64 %i.v, label %"_ZSt7none_ofIN4llvm6detail15SafeIntIteratorIjLb0EEEZN4mlir5spirv6LoopOp13verifyRegionsEvE3$_0EbT_S8_T0_.exit" [
    i64 3, label %bb.f
    i64 2, label %bb.h
    i64 1, label %bb.j
  ]

bb.f:                                             ; preds = %._crit_edge.i.i.i.i
  %i.w = trunc i64 %.sroa.043.0.lcssa.i.i.i.i to i32
  %i.x = tail call noundef ptr @_ZN4mlir5Block12getSuccessorEj(ptr noundef nonnull align 8 dereferenceable(80) %0, i32 noundef %i.w) #16
  %i.y = icmp eq ptr %i.x, %1
  br i1 %i.y, label %"_ZSt7none_ofIN4llvm6detail15SafeIntIteratorIjLb0EEEZN4mlir5spirv6LoopOp13verifyRegionsEvE3$_0EbT_S8_T0_.exit", label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.z = add i64 %.sroa.043.0.lcssa.i.i.i.i, 1
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %._crit_edge.i.i.i.i
  %.sroa.043.1.i.i.i.i = phi i64 [ %i.z, %bb.g ], [ %.sroa.043.0.lcssa.i.i.i.i, %._crit_edge.i.i.i.i ] ; 3 uses
  %i.aa = trunc i64 %.sroa.043.1.i.i.i.i to i32
  %i.ab = tail call noundef ptr @_ZN4mlir5Block12getSuccessorEj(ptr noundef nonnull align 8 dereferenceable(80) %0, i32 noundef %i.aa) #16
end_hunk_0
