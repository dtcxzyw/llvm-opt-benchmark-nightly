Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/MemoryOps?download=true
begin_hunk_0_@_ZN4mlir11OpAsmParser15resolveOperandsIRN4llvm11SmallVectorINS0_17UnresolvedOperandELj2EEENS2_8ArrayRefINS_4TypeEEEvEENS2_11ParseResultEOT_OT0_NS2_5SMLocERNS2_15SmallVectorImplINS_5ValueEEE:bb.a
  %i.o = load ptr, ptr %10, align 8, !tbaa !20
  %.not.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i, label %_ZNO4mlir18InFlightDiagnosticlsIRA7_KcEEOS0_OT_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %10, i64 24 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #9
  store i32 3, ptr %9, align 8, !tbaa !38
  %i.q = getelementptr inbounds nuw i8, ptr %9, i64 8
  store ptr @.str.44, ptr %i.q, align 8, !tbaa !41
  %.sroa.2.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %9, i64 16
  store i64 47, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i, align 8, !tbaa !43
  %i.r = getelementptr inbounds nuw i8, ptr %10, i64 32 ; 15 uses
  %i.s = load i32, ptr %i.r, align 8, !tbaa !29   ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %10, i64 36 ; 5 uses
  %i.u = load i32, ptr %i.t, align 4, !tbaa !31
  %.not.i.i.i.i.i = icmp ult i32 %i.s, %i.u
  br i1 %.not.i.i.i.i.i, label %bb.g, label %bb.f, !prof !32

bb.f:                                             ; preds = %bb.e
  call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir18DiagnosticArgumentELb1EE15growAndPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(16) %i.p, ptr noundef nonnull align 8 dereferenceable(24) %9)
  br label %_ZNO4mlir18InFlightDiagnosticlsIRA48_KcEEOS0_OT_.exit

bb.g:                                             ; preds = %bb.e
  %i.v = zext i32 %i.s to i64
  %i.w = load ptr, ptr %i.p, align 8, !tbaa !33
  %i.x = getelementptr inbounds nuw [24 x i8], ptr %i.w, i64 %i.v
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.x, ptr noundef nonnull align 8 dereferenceable(24) %9, i64 24, i1 false)
  %i.y = load i32, ptr %i.r, align 8, !tbaa !29
  %i.z = add i32 %i.y, 1
  store i32 %i.z, ptr %i.r, align 8, !tbaa !29
  br label %_ZNO4mlir18InFlightDiagnosticlsIRA48_KcEEOS0_OT_.exit

_ZNO4mlir18InFlightDiagnosticlsIRA48_KcEEOS0_OT_.exit: ; preds = %bb.f, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #9
  %.pr = load ptr, ptr %10, align 8, !tbaa !20
  %.not.i.i17 = icmp eq ptr %.pr, null
  br i1 %.not.i.i17, label %_ZNO4mlir18InFlightDiagnosticlsIRA7_KcEEOS0_OT_.exit, label %bb.h

bb.h:                                             ; preds = %_ZNO4mlir18InFlightDiagnosticlsIRA48_KcEEOS0_OT_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #9
  store i32 5, ptr %8, align 8, !tbaa !38
  %i.aa = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 %i.c, ptr %i.aa, align 8, !tbaa !18
  %i.ab = load i32, ptr %i.r, align 8, !tbaa !29  ; 2 uses
  %i.ac = load i32, ptr %i.t, align 4, !tbaa !31
  %.not.i.i.i.i.i18 = icmp ult i32 %i.ab, %i.ac
  br i1 %.not.i.i.i.i.i18, label %bb.j, label %bb.i, !prof !32

bb.i:                                             ; preds = %bb.h
  call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir18DiagnosticArgumentELb1EE15growAndPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(16) %i.p, ptr noundef nonnull align 8 dereferenceable(24) %8)
  br label %_ZNO4mlir18InFlightDiagnosticlsIRmEEOS0_OT_.exit

bb.j:                                             ; preds = %bb.h
  %i.ad = zext i32 %i.ab to i64
  %i.ae = load ptr, ptr %i.p, align 8, !tbaa !33
  %i.af = getelementptr inbounds nuw [24 x i8], ptr %i.ae, i64 %i.ad
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.af, ptr noundef nonnull align 8 dereferenceable(24) %8, i64 24, i1 false)
  %i.ag = load i32, ptr %i.r, align 8, !tbaa !29
  %i.ah = add i32 %i.ag, 1
  store i32 %i.ah, ptr %i.r, align 8, !tbaa !29
  br label %_ZNO4mlir18InFlightDiagnosticlsIRmEEOS0_OT_.exit

_ZNO4mlir18InFlightDiagnosticlsIRmEEOS0_OT_.exit: ; preds = %bb.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #9
  %.pr43 = load ptr, ptr %10, align 8, !tbaa !20
  %.not.i.i19 = icmp eq ptr %.pr43, null
  br i1 %.not.i.i19, label %_ZNO4mlir18InFlightDiagnosticlsIRA7_KcEEOS0_OT_.exit, label %bb.k

bb.k:                                             ; preds = %_ZNO4mlir18InFlightDiagnosticlsIRmEEOS0_OT_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #9
  store i32 3, ptr %7, align 8, !tbaa !38
  %i.ai = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr @.str.45, ptr %i.ai, align 8, !tbaa !41
  %.sroa.2.0..sroa_idx.i.i.i.i.i20 = getelementptr inbounds nuw i8, ptr %7, i64 16
  store i64 14, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i20, align 8, !tbaa !43
  %i.aj = load i32, ptr %i.r, align 8, !tbaa !29  ; 2 uses
  %i.ak = load i32, ptr %i.t, align 4, !tbaa !31
  %.not.i.i.i.i.i21 = icmp ult i32 %i.aj, %i.ak
  br i1 %.not.i.i.i.i.i21, label %bb.m, label %bb.l, !prof !32

bb.l:                                             ; preds = %bb.k
  call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir18DiagnosticArgumentELb1EE15growAndPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(16) %i.p, ptr noundef nonnull align 8 dereferenceable(24) %7)
  br label %_ZNO4mlir18InFlightDiagnosticlsIRA15_KcEEOS0_OT_.exit

bb.m:                                             ; preds = %bb.k
  %i.al = zext i32 %i.aj to i64
  %i.am = load ptr, ptr %i.p, align 8, !tbaa !33
  %i.an = getelementptr inbounds nuw [24 x i8], ptr %i.am, i64 %i.al
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.an, ptr noundef nonnull align 8 dereferenceable(24) %7, i64 24, i1 false)
  %i.ao = load i32, ptr %i.r, align 8, !tbaa !29
  %i.ap = add i32 %i.ao, 1
  store i32 %i.ap, ptr %i.r, align 8, !tbaa !29
  br label %_ZNO4mlir18InFlightDiagnosticlsIRA15_KcEEOS0_OT_.exit

_ZNO4mlir18InFlightDiagnosticlsIRA15_KcEEOS0_OT_.exit: ; preds = %bb.l, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #9
  %.pr45.pr = load ptr, ptr %10, align 8, !tbaa !20
  %.not.i.i22 = icmp eq ptr %.pr45.pr, null
  br i1 %.not.i.i22, label %_ZNO4mlir18InFlightDiagnosticlsIRA7_KcEEOS0_OT_.exit, label %bb.n

bb.n:                                             ; preds = %_ZNO4mlir18InFlightDiagnosticlsIRA15_KcEEOS0_OT_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #9
  store i32 5, ptr %6, align 8, !tbaa !38
  %i.aq = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 %i.e, ptr %i.aq, align 8, !tbaa !18
  %i.ar = load i32, ptr %i.r, align 8, !tbaa !29  ; 2 uses
  %i.as = load i32, ptr %i.t, align 4, !tbaa !31
  %.not.i.i.i.i.i23 = icmp ult i32 %i.ar, %i.as
  br i1 %.not.i.i.i.i.i23, label %bb.p, label %bb.o, !prof !32

bb.o:                                             ; preds = %bb.n
  call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir18DiagnosticArgumentELb1EE15growAndPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(16) %i.p, ptr noundef nonnull align 8 dereferenceable(24) %6)
  br label %_ZNO4mlir18InFlightDiagnosticlsIRmEEOS0_OT_.exit25

bb.p:                                             ; preds = %bb.n
  %i.at = zext i32 %i.ar to i64
  %i.au = load ptr, ptr %i.p, align 8, !tbaa !33
  %i.av = getelementptr inbounds nuw [24 x i8], ptr %i.au, i64 %i.at
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.av, ptr noundef nonnull align 8 dereferenceable(24) %6, i64 24, i1 false)
  %i.aw = load i32, ptr %i.r, align 8, !tbaa !29
  %i.ax = add i32 %i.aw, 1
  store i32 %i.ax, ptr %i.r, align 8, !tbaa !29
  br label %_ZNO4mlir18InFlightDiagnosticlsIRmEEOS0_OT_.exit25

_ZNO4mlir18InFlightDiagnosticlsIRmEEOS0_OT_.exit25: ; preds = %bb.o, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #9
  %.pr47 = load ptr, ptr %10, align 8, !tbaa !20
  %.not.i.i26 = icmp eq ptr %.pr47, null
  br i1 %.not.i.i26, label %_ZNO4mlir18InFlightDiagnosticlsIRA7_KcEEOS0_OT_.exit, label %bb.q

bb.q:                                             ; preds = %_ZNO4mlir18InFlightDiagnosticlsIRmEEOS0_OT_.exit25
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #9
  store i32 3, ptr %5, align 8, !tbaa !38
  %i.ay = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr @.str.46, ptr %i.ay, align 8, !tbaa !41
  %.sroa.2.0..sroa_idx.i.i.i.i.i27 = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i64 6, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i27, align 8, !tbaa !43
  %i.az = load i32, ptr %i.r, align 8, !tbaa !29  ; 2 uses
  %i.ba = load i32, ptr %i.t, align 4, !tbaa !31
  %.not.i.i.i.i.i28 = icmp ult i32 %i.az, %i.ba
  br i1 %.not.i.i.i.i.i28, label %bb.s, label %bb.r, !prof !32

bb.r:                                             ; preds = %bb.q
  call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir18DiagnosticArgumentELb1EE15growAndPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(16) %i.p, ptr noundef nonnull align 8 dereferenceable(24) %5)
  br label %_ZN4mlir10Diagnostic6appendIRA7_KcEERS0_OT_.exit.i.i

bb.s:                                             ; preds = %bb.q
  %i.bb = zext i32 %i.az to i64
  %i.bc = load ptr, ptr %i.p, align 8, !tbaa !33
  %i.bd = getelementptr inbounds nuw [24 x i8], ptr %i.bc, i64 %i.bb
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.bd, ptr noundef nonnull align 8 dereferenceable(24) %5, i64 24, i1 false)
  %i.be = load i32, ptr %i.r, align 8, !tbaa !29
  %i.bf = add i32 %i.be, 1
  store i32 %i.bf, ptr %i.r, align 8, !tbaa !29
  br label %_ZN4mlir10Diagnostic6appendIRA7_KcEERS0_OT_.exit.i.i

_ZN4mlir10Diagnostic6appendIRA7_KcEERS0_OT_.exit.i.i: ; preds = %bb.s, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #9
  br label %_ZNO4mlir18InFlightDiagnosticlsIRA7_KcEEOS0_OT_.exit

_ZNO4mlir18InFlightDiagnosticlsIRA7_KcEEOS0_OT_.exit: ; preds = %_ZNO4mlir18InFlightDiagnosticlsIRA48_KcEEOS0_OT_.exit, %bb.d, %_ZNO4mlir18InFlightDiagnosticlsIRmEEOS0_OT_.exit, %_ZNO4mlir18InFlightDiagnosticlsIRA15_KcEEOS0_OT_.exit, %_ZNO4mlir18InFlightDiagnosticlsIRmEEOS0_OT_.exit25, %_ZN4mlir10Diagnostic6appendIRA7_KcEERS0_OT_.exit.i.i
  %i.bg = call i8 @_ZNK4mlir18InFlightDiagnosticcvN4llvm13LogicalResultEEv(ptr noundef nonnull align 8 dereferenceable(208) %10) #9
  %i.bh = load ptr, ptr %10, align 8, !tbaa !20
  %.not.i = icmp eq ptr %i.bh, null
  br i1 %.not.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %_ZNO4mlir18InFlightDiagnosticlsIRA7_KcEEOS0_OT_.exit
  call void @_ZN4mlir18InFlightDiagnostic6reportEv(ptr noundef nonnull align 8 dereferenceable(208) %10) #9
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %_ZNO4mlir18InFlightDiagnosticlsIRA7_KcEEOS0_OT_.exit
  %i.bi = getelementptr inbounds nuw i8, ptr %10, i64 200 ; 2 uses
  %i.bj = load i8, ptr %i.bi, align 8, !tbaa !34, !range !35, !noundef !36
  %i.bk = trunc nuw i8 %i.bj to i1
  store i8 0, ptr %i.bi, align 8, !tbaa !34
  br i1 %i.bk, label %bb.v, label %_ZN4mlir18InFlightDiagnosticD2Ev.exit

bb.v:                                             ; preds = %bb.u
  %i.bl = getelementptr inbounds nuw i8, ptr %10, i64 8
  call void @_ZN4mlir10DiagnosticD2Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(200) %i.bl) #9
  br label %_ZN4mlir18InFlightDiagnosticD2Ev.exit

_ZN4mlir18InFlightDiagnosticD2Ev.exit:            ; preds = %bb.u, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #9
  br label %.critedge16

bb.w:                                             ; preds = %bb.a
  %i.bm = load ptr, ptr %1, align 8, !tbaa !33, !noalias !108 ; 2 uses
  %.idx = shl nuw nsw i64 %i.c, 5
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 %.idx
  %.not5354 = icmp eq i32 %i.b, 0
  br i1 %.not5354, label %.critedge16, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.w
  %i.bo = load ptr, ptr %2, align 8, !tbaa !104, !noalias !108
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.critedge
  %.sroa.7.056 = phi ptr [ %i.bu, %.critedge ], [ %i.bm, %.lr.ph.preheader ] ; 2 uses
  %.sroa.031.055 = phi ptr [ %i.bv, %.critedge ], [ %i.bo, %.lr.ph.preheader ] ; 2 uses
  %.sroa.03.0.copyload = load ptr, ptr %.sroa.031.055, align 8, !tbaa !70
  %i.bp = load ptr, ptr %0, align 8, !tbaa !68
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 760
  %i.br = load ptr, ptr %i.bq, align 8
  %i.bs = tail call i8 %i.br(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(28) %.sroa.7.056, ptr %.sroa.03.0.copyload, ptr noundef nonnull align 8 dereferenceable(16) %4) #9
  %i.bt = trunc nuw i8 %i.bs to i1
  br i1 %i.bt, label %.critedge, label %.critedge16

.critedge:                                        ; preds = %.lr.ph
  %i.bu = getelementptr inbounds nuw i8, ptr %.sroa.7.056, i64 32 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %.sroa.031.055, i64 8
  %.not53 = icmp eq ptr %i.bu, %i.bn
  br i1 %.not53, label %.critedge16, label %.lr.ph

.critedge16:                                      ; preds = %.lr.ph, %.critedge, %bb.w, %_ZN4mlir18InFlightDiagnosticD2Ev.exit
  %.sroa.041.0 = phi i8 [ %i.bg, %_ZN4mlir18InFlightDiagnosticD2Ev.exit ], [ 1, %bb.w ], [ 0, %.lr.ph ], [ 1, %.critedge ]
  ret i8 %.sroa.041.0
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4mlir5spirv7StoreOp5printERNS_12OpAsmPrinterE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.mlir::DictionaryAttr", align 8 ; 4 uses
  %3 = alloca %"class.mlir::spirv::StoreOp", align 8 ; 7 uses
  %4 = alloca %"class.mlir::StringAttr", align 8  ; 4 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %6 = alloca %"class.mlir::StringAttr", align 8  ; 4 uses
  %7 = alloca %"class.llvm::SmallVector.42", align 8 ; 14 uses
  %8 = alloca %"class.mlir::spirv::PointerType", align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #9
  %i.a = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  store ptr %i.a, ptr %7, align 8, !tbaa !33
  %i.b = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 11 uses
  store i32 0, ptr %i.b, align 8, !tbaa !29
  %i.c = getelementptr inbounds nuw i8, ptr %7, i64 12 ; 4 uses
  store i32 4, ptr %i.c, align 4, !tbaa !31
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #9
  %i.d = load ptr, ptr %0, align 8, !tbaa !56
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 72
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !60
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %.sroa.0.0.copyload.i.i.i.i = load ptr, ptr %i.g, align 8, !tbaa !63
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i, i64 8
  %.0.copyload.i.i.i.i.i = load i64, ptr %i.h, align 8
  %i.i = and i64 %.0.copyload.i.i.i.i.i, -8
  %i.j = inttoptr i64 %i.i to ptr
  store ptr %i.j, ptr %8, align 8
  %i.k = call noundef i32 @_ZNK4mlir5spirv11PointerType15getStorageClassEv(ptr noundef nonnull align 8 dereferenceable(8) %8) #9
  %i.l = call { ptr, i64 } @_ZN4mlir5spirv21stringifyStorageClassENS0_12StorageClassE(i32 noundef %i.k) #9 ; 2 uses
  %i.m = extractvalue { ptr, i64 } %i.l, 0        ; 2 uses
  %i.n = extractvalue { ptr, i64 } %i.l, 1        ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #9
  %i.o = load ptr, ptr %1, align 8, !tbaa !68
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = call noundef nonnull align 8 dereferenceable(48) ptr %i.q(ptr noundef nonnull align 8 dereferenceable(16) %1) #9, !inline_history !84 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !85
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 32 ; 3 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !89   ; 2 uses
  %i.w = ptrtoint ptr %i.t to i64
  %i.x = ptrtoint ptr %i.v to i64
  %i.y = sub i64 %i.w, %i.x
  %i.z = icmp ult i64 %i.y, 2
  br i1 %i.z, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.aa = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.r, ptr noundef nonnull @.str, i64 noundef 2) #9 ; 0 uses
  br label %_ZN4mlirlsINS_12OpAsmPrinterEA3_cTnPNSt9enable_ifIXaaaaaaaaaantsr3std14is_convertibleIRT0_RNS_5ValueEEE5valuentsr3std14is_convertibleIS5_RNS_4TypeEEE5valuentsr3std14is_convertibleIS5_RNS_9AttributeEEE5valuentsr3std14is_convertibleIS5_NS_10ValueRangeEEE5valuentsr3std14is_convertibleIS5_RN4llvm7APFloatEEE5valuentsr4llvm9is_one_ofIS4_bfdEE5valueES4_E4typeELPS2_0EvEERT_SL_RKS4_.exit

bb.c:                                             ; preds = %bb.a
  store i16 8736, ptr %i.v, align 1
  %i.ab = load ptr, ptr %i.u, align 8, !tbaa !89
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 2
  store ptr %i.ac, ptr %i.u, align 8, !tbaa !89
  br label %_ZN4mlirlsINS_12OpAsmPrinterEA3_cTnPNSt9enable_ifIXaaaaaaaaaantsr3std14is_convertibleIRT0_RNS_5ValueEEE5valuentsr3std14is_convertibleIS5_RNS_4TypeEEE5valuentsr3std14is_convertibleIS5_RNS_9AttributeEEE5valuentsr3std14is_convertibleIS5_NS_10ValueRangeEEE5valuentsr3std14is_convertibleIS5_RN4llvm7APFloatEEE5valuentsr4llvm9is_one_ofIS4_bfdEE5valueES4_E4typeELPS2_0EvEERT_SL_RKS4_.exit

_ZN4mlirlsINS_12OpAsmPrinterEA3_cTnPNSt9enable_ifIXaaaaaaaaaantsr3std14is_convertibleIRT0_RNS_5ValueEEE5valuentsr3std14is_convertibleIS5_RNS_4TypeEEE5valuentsr3std14is_convertibleIS5_RNS_9AttributeEEE5valuentsr3std14is_convertibleIS5_NS_10ValueRangeEEE5valuentsr3std14is_convertibleIS5_RN4llvm7APFloatEEE5valuentsr4llvm9is_one_ofIS4_bfdEE5valueES4_E4typeELPS2_0EvEERT_SL_RKS4_.exit: ; preds = %bb.b, %bb.c
  %i.ad = load ptr, ptr %1, align 8, !tbaa !68
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %i.af = load ptr, ptr %i.ae, align 8
  %i.ag = call noundef nonnull align 8 dereferenceable(48) ptr %i.af(ptr noundef nonnull align 8 dereferenceable(16) %1) #9, !inline_history !90 ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 24
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !85
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ag, i64 32 ; 3 uses
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !89 ; 2 uses
  %i.al = ptrtoint ptr %i.ai to i64
  %i.am = ptrtoint ptr %i.ak to i64
  %i.an = sub i64 %i.al, %i.am
  %i.ao = icmp ugt i64 %i.n, %i.an
  br i1 %i.ao, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZN4mlirlsINS_12OpAsmPrinterEA3_cTnPNSt9enable_ifIXaaaaaaaaaantsr3std14is_convertibleIRT0_RNS_5ValueEEE5valuentsr3std14is_convertibleIS5_RNS_4TypeEEE5valuentsr3std14is_convertibleIS5_RNS_9AttributeEEE5valuentsr3std14is_convertibleIS5_NS_10ValueRangeEEE5valuentsr3std14is_convertibleIS5_RN4llvm7APFloatEEE5valuentsr4llvm9is_one_ofIS4_bfdEE5valueES4_E4typeELPS2_0EvEERT_SL_RKS4_.exit
  %i.ap = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.ag, ptr noundef %i.m, i64 noundef %i.n) #9 ; 0 uses
  br label %_ZN4mlirlsINS_12OpAsmPrinterEN4llvm9StringRefETnPNSt9enable_ifIXaaaaaaaaaantsr3std14is_convertibleIRT0_RNS_5ValueEEE5valuentsr3std14is_convertibleIS6_RNS_4TypeEEE5valuentsr3std14is_convertibleIS6_RNS_9AttributeEEE5valuentsr3std14is_convertibleIS6_NS_10ValueRangeEEE5valuentsr3std14is_convertibleIS6_RNS2_7APFloatEEE5valuentsr4llvm9is_one_ofIS5_bfdEE5valueES5_E4typeELPS3_0EvEERT_SL_RKS5_.exit

bb.e:                                             ; preds = %_ZN4mlirlsINS_12OpAsmPrinterEA3_cTnPNSt9enable_ifIXaaaaaaaaaantsr3std14is_convertibleIRT0_RNS_5ValueEEE5valuentsr3std14is_convertibleIS5_RNS_4TypeEEE5valuentsr3std14is_convertibleIS5_RNS_9AttributeEEE5valuentsr3std14is_convertibleIS5_NS_10ValueRangeEEE5valuentsr3std14is_convertibleIS5_RN4llvm7APFloatEEE5valuentsr4llvm9is_one_ofIS4_bfdEE5valueES4_E4typeELPS2_0EvEERT_SL_RKS4_.exit
  %.not.i.i = icmp eq i64 %i.n, 0
  br i1 %.not.i.i, label %_ZN4mlirlsINS_12OpAsmPrinterEN4llvm9StringRefETnPNSt9enable_ifIXaaaaaaaaaantsr3std14is_convertibleIRT0_RNS_5ValueEEE5valuentsr3std14is_convertibleIS6_RNS_4TypeEEE5valuentsr3std14is_convertibleIS6_RNS_9AttributeEEE5valuentsr3std14is_convertibleIS6_NS_10ValueRangeEEE5valuentsr3std14is_convertibleIS6_RNS2_7APFloatEEE5valuentsr4llvm9is_one_ofIS5_bfdEE5valueES5_E4typeELPS3_0EvEERT_SL_RKS5_.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ak, ptr align 1 %i.m, i64 %i.n, i1 false)
  %i.aq = load ptr, ptr %i.aj, align 8, !tbaa !89
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.n
  store ptr %i.ar, ptr %i.aj, align 8, !tbaa !89
  br label %_ZN4mlirlsINS_12OpAsmPrinterEN4llvm9StringRefETnPNSt9enable_ifIXaaaaaaaaaantsr3std14is_convertibleIRT0_RNS_5ValueEEE5valuentsr3std14is_convertibleIS6_RNS_4TypeEEE5valuentsr3std14is_convertibleIS6_RNS_9AttributeEEE5valuentsr3std14is_convertibleIS6_NS_10ValueRangeEEE5valuentsr3std14is_convertibleIS6_RNS2_7APFloatEEE5valuentsr4llvm9is_one_ofIS5_bfdEE5valueES5_E4typeELPS3_0EvEERT_SL_RKS5_.exit

_ZN4mlirlsINS_12OpAsmPrinterEN4llvm9StringRefETnPNSt9enable_ifIXaaaaaaaaaantsr3std14is_convertibleIRT0_RNS_5ValueEEE5valuentsr3std14is_convertibleIS6_RNS_4TypeEEE5valuentsr3std14is_convertibleIS6_RNS_9AttributeEEE5valuentsr3std14is_convertibleIS6_NS_10ValueRangeEEE5valuentsr3std14is_convertibleIS6_RNS2_7APFloatEEE5valuentsr4llvm9is_one_ofIS5_bfdEE5valueES5_E4typeELPS3_0EvEERT_SL_RKS5_.exit: ; preds = %bb.d, %bb.e, %bb.f
  %i.as = load ptr, ptr %1, align 8, !tbaa !68
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  %i.au = load ptr, ptr %i.at, align 8
  %i.av = call noundef nonnull align 8 dereferenceable(48) ptr %i.au(ptr noundef nonnull align 8 dereferenceable(16) %1) #9, !inline_history !84 ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 24
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !85
  %i.ay = getelementptr inbounds nuw i8, ptr %i.av, i64 32 ; 3 uses
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !89 ; 2 uses
  %i.ba = ptrtoint ptr %i.ax to i64
  %i.bb = ptrtoint ptr %i.az to i64
  %i.bc = sub i64 %i.ba, %i.bb
  %i.bd = icmp ult i64 %i.bc, 2
  br i1 %i.bd, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZN4mlirlsINS_12OpAsmPrinterEN4llvm9StringRefETnPNSt9enable_ifIXaaaaaaaaaantsr3std14is_convertibleIRT0_RNS_5ValueEEE5valuentsr3std14is_convertibleIS6_RNS_4TypeEEE5valuentsr3std14is_convertibleIS6_RNS_9AttributeEEE5valuentsr3std14is_convertibleIS6_NS_10ValueRangeEEE5valuentsr3std14is_convertibleIS6_RNS2_7APFloatEEE5valuentsr4llvm9is_one_ofIS5_bfdEE5valueES5_E4typeELPS3_0EvEERT_SL_RKS5_.exit
  %i.be = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.av, ptr noundef nonnull @.str.1, i64 noundef 2) #9 ; 0 uses
  br label %_ZN4mlirlsINS_12OpAsmPrinterEA3_cTnPNSt9enable_ifIXaaaaaaaaaantsr3std14is_convertibleIRT0_RNS_5ValueEEE5valuentsr3std14is_convertibleIS5_RNS_4TypeEEE5valuentsr3std14is_convertibleIS5_RNS_9AttributeEEE5valuentsr3std14is_convertibleIS5_NS_10ValueRangeEEE5valuentsr3std14is_convertibleIS5_RN4llvm7APFloatEEE5valuentsr4llvm9is_one_ofIS4_bfdEE5valueES4_E4typeELPS2_0EvEERT_SL_RKS4_.exit11

bb.h:                                             ; preds = %_ZN4mlirlsINS_12OpAsmPrinterEN4llvm9StringRefETnPNSt9enable_ifIXaaaaaaaaaantsr3std14is_convertibleIRT0_RNS_5ValueEEE5valuentsr3std14is_convertibleIS6_RNS_4TypeEEE5valuentsr3std14is_convertibleIS6_RNS_9AttributeEEE5valuentsr3std14is_convertibleIS6_NS_10ValueRangeEEE5valuentsr3std14is_convertibleIS6_RNS2_7APFloatEEE5valuentsr4llvm9is_one_ofIS5_bfdEE5valueES5_E4typeELPS3_0EvEERT_SL_RKS5_.exit
  store i16 8226, ptr %i.az, align 1
  %i.bf = load ptr, ptr %i.ay, align 8, !tbaa !89
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 2
  store ptr %i.bg, ptr %i.ay, align 8, !tbaa !89
  br label %_ZN4mlirlsINS_12OpAsmPrinterEA3_cTnPNSt9enable_ifIXaaaaaaaaaantsr3std14is_convertibleIRT0_RNS_5ValueEEE5valuentsr3std14is_convertibleIS5_RNS_4TypeEEE5valuentsr3std14is_convertibleIS5_RNS_9AttributeEEE5valuentsr3std14is_convertibleIS5_NS_10ValueRangeEEE5valuentsr3std14is_convertibleIS5_RN4llvm7APFloatEEE5valuentsr4llvm9is_one_ofIS4_bfdEE5valueES4_E4typeELPS2_0EvEERT_SL_RKS4_.exit11

_ZN4mlirlsINS_12OpAsmPrinterEA3_cTnPNSt9enable_ifIXaaaaaaaaaantsr3std14is_convertibleIRT0_RNS_5ValueEEE5valuentsr3std14is_convertibleIS5_RNS_4TypeEEE5valuentsr3std14is_convertibleIS5_RNS_9AttributeEEE5valuentsr3std14is_convertibleIS5_NS_10ValueRangeEEE5valuentsr3std14is_convertibleIS5_RN4llvm7APFloatEEE5valuentsr4llvm9is_one_ofIS4_bfdEE5valueES4_E4typeELPS2_0EvEERT_SL_RKS4_.exit11: ; preds = %bb.g, %bb.h
  %i.bh = load ptr, ptr %0, align 8, !tbaa !56
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 72
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !60
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 24
  %.sroa.0.0.copyload.i.i.i.i13 = load ptr, ptr %i.bk, align 8, !tbaa !63
  %i.bl = load ptr, ptr %1, align 8, !tbaa !68
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 168
  %i.bn = load ptr, ptr %i.bm, align 8
  call void %i.bn(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr %.sroa.0.0.copyload.i.i.i.i13) #9, !inline_history !91
  %i.bo = load ptr, ptr %1, align 8, !tbaa !68
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 16
  %i.bq = load ptr, ptr %i.bp, align 8
  %i.br = call noundef nonnull align 8 dereferenceable(48) ptr %i.bq(ptr noundef nonnull align 8 dereferenceable(16) %1) #9, !inline_history !84 ; 3 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 24
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !85
  %i.bu = getelementptr inbounds nuw i8, ptr %i.br, i64 32 ; 3 uses
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !89 ; 2 uses
  %i.bw = ptrtoint ptr %i.bt to i64
  %i.bx = ptrtoint ptr %i.bv to i64
  %i.by = sub i64 %i.bw, %i.bx
  %i.bz = icmp ult i64 %i.by, 2
  br i1 %i.bz, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_ZN4mlirlsINS_12OpAsmPrinterEA3_cTnPNSt9enable_ifIXaaaaaaaaaantsr3std14is_convertibleIRT0_RNS_5ValueEEE5valuentsr3std14is_convertibleIS5_RNS_4TypeEEE5valuentsr3std14is_convertibleIS5_RNS_9AttributeEEE5valuentsr3std14is_convertibleIS5_NS_10ValueRangeEEE5valuentsr3std14is_convertibleIS5_RN4llvm7APFloatEEE5valuentsr4llvm9is_one_ofIS4_bfdEE5valueES4_E4typeELPS2_0EvEERT_SL_RKS4_.exit11
  %i.ca = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.br, ptr noundef nonnull @.str.3, i64 noundef 2) #9 ; 0 uses
  br label %bb.k

bb.j:                                             ; preds = %_ZN4mlirlsINS_12OpAsmPrinterEA3_cTnPNSt9enable_ifIXaaaaaaaaaantsr3std14is_convertibleIRT0_RNS_5ValueEEE5valuentsr3std14is_convertibleIS5_RNS_4TypeEEE5valuentsr3std14is_convertibleIS5_RNS_9AttributeEEE5valuentsr3std14is_convertibleIS5_NS_10ValueRangeEEE5valuentsr3std14is_convertibleIS5_RN4llvm7APFloatEEE5valuentsr4llvm9is_one_ofIS4_bfdEE5valueES4_E4typeELPS2_0EvEERT_SL_RKS4_.exit11
  store i16 8236, ptr %i.bv, align 1
  %i.cb = load ptr, ptr %i.bu, align 8, !tbaa !89
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 2
  store ptr %i.cc, ptr %i.bu, align 8, !tbaa !89
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.cd = load ptr, ptr %0, align 8, !tbaa !56
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 72
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !60
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 56
  %.sroa.0.0.copyload.i.i.i.i17 = load ptr, ptr %i.cg, align 8, !tbaa !63
  %i.ch = load ptr, ptr %1, align 8, !tbaa !68
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 168
  %i.cj = load ptr, ptr %i.ci, align 8
  call void %i.cj(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr %.sroa.0.0.copyload.i.i.i.i17) #9, !inline_history !91
  %.sroa.02.0.copyload = load ptr, ptr %0, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  store ptr %.sroa.02.0.copyload, ptr %3, align 8
  %i.ck = call i64 @_ZN4mlir5spirv7StoreOp15getMemoryAccessEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #9 ; 2 uses
  %.pre.i = and i64 %i.ck, 4294967296
  %i.cl = icmp eq i64 %.pre.i, 0
  br i1 %i.cl, label %_ZN4mlirlsINS_12OpAsmPrinterEA2_cTnPNSt9enable_ifIXaaaaaaaaaantsr3std14is_convertibleIRT0_RNS_5ValueEEE5valuentsr3std14is_convertibleIS5_RNS_4TypeEEE5valuentsr3std14is_convertibleIS5_RNS_9AttributeEEE5valuentsr3std14is_convertibleIS5_NS_10ValueRangeEEE5valuentsr3std14is_convertibleIS5_RN4llvm7APFloatEEE5valuentsr4llvm9is_one_ofIS4_bfdEE5valueES4_E4typeELPS2_0EvEERT_SL_RKS4_.exit20.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %.sroa.024.0.extract.trunc55.i = trunc i64 %i.ck to i32 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #9
  %i.cm = load ptr, ptr %3, align 8, !tbaa !56
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 48
  %.sroa.0.0.copyload.i.i.i.i18 = load ptr, ptr %i.cn, align 8, !tbaa !45
  %i.co = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i18, i64 96
  %.sroa.0.0.copyload.i.i.i.i.i.i = load ptr, ptr %i.co, align 8, !tbaa !80
  %i.cp = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i, i64 8
  %.sroa.0.0.copyload.i2.i.i.i = load ptr, ptr %i.cp, align 8
  store ptr %.sroa.0.0.copyload.i2.i.i.i, ptr %4, align 8
  %i.cq = call { ptr, i64 } @_ZNK4mlir10StringAttr8getValueEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #9 ; 2 uses
  %i.cr = extractvalue { ptr, i64 } %i.cq, 0      ; 2 uses
  %i.cs = extractvalue { ptr, i64 } %i.cq, 1      ; 2 uses
  %i.ct = load i32, ptr %i.b, align 8, !tbaa !29  ; 2 uses
  %i.cu = load i32, ptr %i.c, align 4, !tbaa !31
  %.not.i.i19 = icmp ult i32 %i.ct, %i.cu
  br i1 %.not.i.i19, label %bb.n, label %bb.m, !prof !32

bb.m:                                             ; preds = %bb.l
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_9StringRefELb1EE15growAndPushBackES1_(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr %i.cr, i64 %i.cs)
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_9StringRefELb1EE9push_backES1_.exit.i

bb.n:                                             ; preds = %bb.l
  %i.cv = zext i32 %i.ct to i64
end_hunk_0
