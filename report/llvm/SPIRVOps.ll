Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/SPIRVOps?download=true
inline.NumInlined: 5389
inline.NumDeleted: 2420
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZN4mlir5spirv17ExecutionModeIdOp6verifyEv:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #17
  br label %bb.x

bb.w:                                             ; preds = %_ZN4mlir9Operation11getParentOpEv.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #17
  %i.ca = getelementptr inbounds nuw i8, ptr %.01236, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.ca, %i.al
  br i1 %.not, label %._crit_edge, label %.lr.ph

bb.x:                                             ; preds = %_ZN4mlir18InFlightDiagnosticD2Ev.exit17, %_ZN4mlir18InFlightDiagnosticD2Ev.exit25
  %.sroa.011.2.ph = phi i8 [ %i.bu, %_ZN4mlir18InFlightDiagnosticD2Ev.exit25 ], [ %i.aw, %_ZN4mlir18InFlightDiagnosticD2Ev.exit17 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #17
  br label %bb.y

._crit_edge:                                      ; preds = %bb.w, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #17
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %._crit_edge, %_ZN4mlir18InFlightDiagnosticD2Ev.exit15, %_ZN4mlir18InFlightDiagnosticD2Ev.exit
  %.sroa.011.4 = phi i8 [ %i.n, %_ZN4mlir18InFlightDiagnosticD2Ev.exit ], [ %i.z, %_ZN4mlir18InFlightDiagnosticD2Ev.exit15 ], [ 1, %._crit_edge ], [ %.sroa.011.2.ph, %bb.x ]
  ret i8 %.sroa.011.4
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local range(i8 0, 2) i8 @_ZN4mlir5spirv6FuncOp5parseERNS_11OpAsmParserERNS_14OperationStateE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(304) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.mlir::NamedAttribute", align 8 ; 5 uses
  %3 = alloca %"class.mlir::NamedAttribute", align 8 ; 5 uses
  %4 = alloca %"class.llvm::SmallVector.503", align 8 ; 11 uses
  %5 = alloca %"class.llvm::SmallVector.508", align 8 ; 9 uses
  %6 = alloca %"class.llvm::SmallVector.513", align 8 ; 9 uses
  %7 = alloca %"class.mlir::StringAttr", align 8  ; 5 uses
  %i.a = alloca i8, align 1                       ; 4 uses
  %8 = alloca %"class.llvm::SmallVector.513", align 8 ; 10 uses
  %9 = alloca %"class.mlir::TypeRange", align 8   ; 3 uses
  %10 = alloca %"class.mlir::TypeRange", align 8  ; 3 uses
  %i.b = alloca i32, align 4                      ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  store ptr %i.c, ptr %4, align 8, !tbaa !80
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 4 uses
  store i32 0, ptr %i.d, align 8, !tbaa !77
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 12
  store i32 1, ptr %i.e, align 4, !tbaa !78
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #17
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  store ptr %i.f, ptr %5, align 8, !tbaa !80
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store i32 0, ptr %i.g, align 8, !tbaa !77
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 12
  store i32 6, ptr %i.h, align 4, !tbaa !78
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #17
  %i.i = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  store ptr %i.i, ptr %6, align 8, !tbaa !80
  %i.j = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  store i32 0, ptr %i.j, align 8, !tbaa !77
  %i.k = getelementptr inbounds nuw i8, ptr %6, i64 12
  store i32 6, ptr %i.k, align 4, !tbaa !78
  %i.l = load ptr, ptr %0, align 8, !tbaa !85
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = call noundef nonnull align 8 dereferenceable(8) ptr %i.n(ptr noundef nonnull align 8 dereferenceable(8) %0) #17 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #17
  store ptr null, ptr %7, align 8, !tbaa !83
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 3 uses
  %i.q = call i8 @_ZN4mlir9AsmParser15parseSymbolNameERNS_10StringAttrE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %7)
  %i.r = trunc nuw i8 %i.q to i1
  br i1 %i.r, label %bb.b, label %bb.k

bb.b:                                             ; preds = %bb.a
  %.sroa.01.0.copyload.i = load ptr, ptr %7, align 8, !tbaa !108
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @_ZN4mlir14NamedAttributeC1EN4llvm9StringRefENS_9AttributeE(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr nonnull @.str.141, i64 8, ptr %.sroa.01.0.copyload.i) #17
  %i.s = load ptr, ptr %3, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.u = load ptr, ptr %i.t, align 8
  call void @_ZN4mlir13NamedAttrList9push_backENS_14NamedAttributeE(ptr noundef nonnull align 8 dereferenceable(88) %i.p, ptr %i.s, ptr %i.u) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  store i8 0, ptr %i.a, align 1, !tbaa !278
  %i.v = call i8 @_ZN4mlir23function_interface_impl35parseFunctionSignatureWithArgumentsERNS_11OpAsmParserEbRN4llvm15SmallVectorImplINS1_8ArgumentEEERbRNS4_INS_4TypeEEERNS4_INS_14DictionaryAttrEEE(ptr noundef nonnull align 8 dereferenceable(8) %0, i1 noundef zeroext false, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 1 dereferenceable(1) %i.a, ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(16) %5) #17
  %i.w = trunc nuw i8 %i.v to i1
  br i1 %i.w, label %bb.c, label %bb.j

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #17
  %i.x = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 3 uses
  store ptr %i.x, ptr %8, align 8, !tbaa !80
  %i.y = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 5 uses
  store i32 0, ptr %i.y, align 8, !tbaa !77
  %i.z = getelementptr inbounds nuw i8, ptr %8, i64 12 ; 2 uses
  store i32 6, ptr %i.z, align 4, !tbaa !78
  %i.aa = load ptr, ptr %4, align 8, !tbaa !80    ; 2 uses
  %i.ab = load i32, ptr %i.d, align 8, !tbaa !77  ; 2 uses
  %i.ac = zext i32 %i.ab to i64
  %.idx = shl nuw nsw i64 %i.ac, 6
  %i.ad = getelementptr inbounds nuw i8, ptr %i.aa, i64 %.idx
  %.not62.a = icmp eq i32 %i.ab, 0
  br i1 %.not62.a, label %._crit_edge, label %.lr.ph

._crit_edge.loopexit:                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseIN4mlir4TypeELb1EE9push_backES2_.exit
  %.pre = load ptr, ptr %8, align 8, !tbaa !80
  %.pre64 = load i32, ptr %i.y, align 8, !tbaa !77
  %i.ae = zext i32 %.pre64 to i64
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.c
  %i.af = phi i64 [ %i.ae, %._crit_edge.loopexit ], [ 0, %bb.c ]
  %i.ag = phi ptr [ %.pre, %._crit_edge.loopexit ], [ %i.x, %bb.c ]
  call void @_ZN4mlir9TypeRangeC2EN4llvm8ArrayRefINS_4TypeEEE(ptr noundef nonnull align 8 dereferenceable(16) %9, ptr %i.ag, i64 %i.af) #17
  %i.ah = load ptr, ptr %6, align 8, !tbaa !80
  %i.ai = load i32, ptr %i.j, align 8, !tbaa !77
  %i.aj = zext i32 %i.ai to i64
  call void @_ZN4mlir9TypeRangeC2EN4llvm8ArrayRefINS_4TypeEEE(ptr noundef nonnull align 8 dereferenceable(16) %10, ptr %i.ah, i64 %i.aj) #17
  %i.ak = load i64, ptr %9, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.am = load i64, ptr %i.al, align 8
  %i.an = load i64, ptr %10, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.ap = load i64, ptr %i.ao, align 8
  %i.aq = call ptr @_ZN4mlir7Builder15getFunctionTypeENS_9TypeRangeES1_(ptr noundef nonnull align 8 dereferenceable(8) %i.o, i64 %i.ak, i64 %i.am, i64 %i.an, i64 %i.ap) #17
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.sroa.013.0.copyload = load ptr, ptr %i.ar, align 8, !tbaa !32
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.013.0.copyload, i64 96
  %.sroa.0.0.copyload.i.i.i.i = load ptr, ptr %i.as, align 8, !tbaa !120
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i, i64 16
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.at, align 8
  %i.au = call ptr @_ZN4mlir8TypeAttr3getENS_4TypeE(ptr %i.aq) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @_ZN4mlir14NamedAttributeC1ENS_10StringAttrENS_9AttributeE(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr %.sroa.0.0.copyload.i.i, ptr %i.au) #17
  %i.av = load ptr, ptr %2, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ax = load ptr, ptr %i.aw, align 8
  call void @_ZN4mlir13NamedAttrList9push_backENS_14NamedAttributeE(ptr noundef nonnull align 8 dereferenceable(88) %i.p, ptr %i.av, ptr %i.ax) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #17
  %i.ay = call i8 @_ZN4mlir5spirv16parseEnumStrAttrINS0_19FunctionControlAttrENS0_15FunctionControlEEEN4llvm11ParseResultERT0_RNS_11OpAsmParserERNS_14OperationStateENS4_9StringRefE(ptr noundef nonnull align 4 dereferenceable(4) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(304) %1, ptr nonnull @_ZZN4mlir5spirv13attributeNameINS0_15FunctionControlEEEN4llvm9StringRefEvE8attrName, i64 16)
  %i.az = trunc nuw i8 %i.ay to i1
  br i1 %i.az, label %bb.f, label %bb.h

.lr.ph:                                           ; preds = %bb.c, %_ZN4llvm23SmallVectorTemplateBaseIN4mlir4TypeELb1EE9push_backES2_.exit
  %.063 = phi ptr [ %i.bi, %_ZN4llvm23SmallVectorTemplateBaseIN4mlir4TypeELb1EE9push_backES2_.exit ], [ %i.aa, %bb.c ] ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.063, i64 32
  %.sroa.016.0.copyload = load ptr, ptr %i.ba, align 8, !tbaa !116 ; 2 uses
  %i.bb = load i32, ptr %i.y, align 8, !tbaa !77  ; 2 uses
  %i.bc = load i32, ptr %i.z, align 4, !tbaa !78
  %.not.i = icmp ult i32 %i.bb, %i.bc
  br i1 %.not.i, label %bb.e, label %bb.d, !prof !79

bb.d:                                             ; preds = %.lr.ph
  call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir4TypeELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %8, ptr %.sroa.016.0.copyload)
  br label %_ZN4llvm23SmallVectorTemplateBaseIN4mlir4TypeELb1EE9push_backES2_.exit

bb.e:                                             ; preds = %.lr.ph
  %i.bd = zext i32 %i.bb to i64
  %i.be = load ptr, ptr %8, align 8, !tbaa !80
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %i.bd
  store ptr %.sroa.016.0.copyload, ptr %i.bf, align 1
  %i.bg = load i32, ptr %i.y, align 8, !tbaa !77
  %i.bh = add i32 %i.bg, 1
  store i32 %i.bh, ptr %i.y, align 8, !tbaa !77
  br label %_ZN4llvm23SmallVectorTemplateBaseIN4mlir4TypeELb1EE9push_backES2_.exit

_ZN4llvm23SmallVectorTemplateBaseIN4mlir4TypeELb1EE9push_backES2_.exit: ; preds = %bb.d, %bb.e
  %i.bi = getelementptr inbounds nuw i8, ptr %.063, i64 64 ; 2 uses
  %.not = icmp eq ptr %i.bi, %i.ad
  br i1 %.not, label %._crit_edge.loopexit, label %.lr.ph

bb.f:                                             ; preds = %._crit_edge
  %i.bj = load ptr, ptr %0, align 8, !tbaa !85
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 528
  %i.bl = load ptr, ptr %i.bk, align 8
  %i.bm = call i8 %i.bl(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(88) %i.p) #17
  %i.bn = trunc nuw i8 %i.bm to i1
  br i1 %i.bn, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.bo = load ptr, ptr %4, align 8, !tbaa !80
  %i.bp = load i32, ptr %i.d, align 8, !tbaa !77
  %i.bq = zext i32 %i.bp to i64
  %i.br = load ptr, ptr %5, align 8, !tbaa !80
  %i.bs = load i32, ptr %i.g, align 8, !tbaa !77
  %i.bt = zext i32 %i.bs to i64
  %.sroa.05.0.copyload = load ptr, ptr %i.ar, align 8, !tbaa !32
  %i.bu = getelementptr inbounds nuw i8, ptr %.sroa.05.0.copyload, i64 96
  %.sroa.0.0.copyload.i.i.i.i45 = load ptr, ptr %i.bu, align 8, !tbaa !120 ; 2 uses
  %.sroa.0.0.copyload.i.i46 = load ptr, ptr %.sroa.0.0.copyload.i.i.i.i45, align 8
  %i.bv = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i45, i64 32
  %.sroa.0.0.copyload.i.i48 = load ptr, ptr %i.bv, align 8
  %i.bw = ptrtoint ptr %.sroa.0.0.copyload.i.i46 to i64
  %i.bx = ptrtoint ptr %.sroa.0.0.copyload.i.i48 to i64
  call void @_ZN4mlir19call_interface_impl20addArgAndResultAttrsERNS_7BuilderERNS_14OperationStateEN4llvm8ArrayRefINS_11OpAsmParser8ArgumentEEENS6_INS_14DictionaryAttrEEENS_10StringAttrESC_(ptr noundef nonnull align 8 dereferenceable(8) %i.o, ptr noundef nonnull align 8 dereferenceable(304) %1, ptr %i.bo, i64 %i.bq, ptr %i.br, i64 %i.bt, i64 %i.bw, i64 %i.bx) #17
  %i.by = call noundef ptr @_ZN4mlir14OperationState9addRegionEv(ptr noundef nonnull align 8 dereferenceable(304) %1) #17
  %i.bz = load ptr, ptr %4, align 8, !tbaa !80
  %i.ca = load i32, ptr %i.d, align 8, !tbaa !77
  %i.cb = zext i32 %i.ca to i64
  %i.cc = load ptr, ptr %0, align 8, !tbaa !85
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 816
  %i.ce = load ptr, ptr %i.cd, align 8
  %i.cf = call i16 %i.ce(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(28) %i.by, ptr %i.bz, i64 %i.cb, i1 noundef zeroext false) #17
  %i.cg = and i16 %i.cf, 257
  %11 = icmp ne i16 %i.cg, 256
  %12 = zext i1 %11 to i8
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %._crit_edge, %bb.g
  %.sroa.060.0 = phi i8 [ %12, %bb.g ], [ 0, %._crit_edge ], [ 0, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  %i.ch = load ptr, ptr %8, align 8, !tbaa !80    ; 2 uses
  %i.ci = icmp eq ptr %i.ch, %i.x
  br i1 %i.ci, label %_ZN4llvm11SmallVectorIN4mlir4TypeELj6EED2Ev.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @free(ptr noundef %i.ch) #17
  br label %_ZN4llvm11SmallVectorIN4mlir4TypeELj6EED2Ev.exit

_ZN4llvm11SmallVectorIN4mlir4TypeELj6EED2Ev.exit: ; preds = %bb.h, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #17
  br label %bb.j

bb.j:                                             ; preds = %bb.b, %_ZN4llvm11SmallVectorIN4mlir4TypeELj6EED2Ev.exit
  %.sroa.060.1 = phi i8 [ %.sroa.060.0, %_ZN4llvm11SmallVectorIN4mlir4TypeELj6EED2Ev.exit ], [ 0, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  br label %bb.k

bb.k:                                             ; preds = %bb.a, %bb.j
  %.sroa.060.2 = phi i8 [ %.sroa.060.1, %bb.j ], [ 0, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #17
  %i.cj = load ptr, ptr %6, align 8, !tbaa !80    ; 2 uses
  %i.ck = icmp eq ptr %i.cj, %i.i
  br i1 %i.ck, label %_ZN4llvm11SmallVectorIN4mlir4TypeELj6EED2Ev.exit50, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @free(ptr noundef %i.cj) #17
  br label %_ZN4llvm11SmallVectorIN4mlir4TypeELj6EED2Ev.exit50

_ZN4llvm11SmallVectorIN4mlir4TypeELj6EED2Ev.exit50: ; preds = %bb.k, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  %i.cl = load ptr, ptr %5, align 8, !tbaa !80    ; 2 uses
  %i.cm = icmp eq ptr %i.cl, %i.f
  br i1 %i.cm, label %_ZN4llvm11SmallVectorIN4mlir14DictionaryAttrELj6EED2Ev.exit, label %bb.m

bb.m:                                             ; preds = %_ZN4llvm11SmallVectorIN4mlir4TypeELj6EED2Ev.exit50
  call void @free(ptr noundef %i.cl) #17
  br label %_ZN4llvm11SmallVectorIN4mlir14DictionaryAttrELj6EED2Ev.exit

_ZN4llvm11SmallVectorIN4mlir14DictionaryAttrELj6EED2Ev.exit: ; preds = %_ZN4llvm11SmallVectorIN4mlir4TypeELj6EED2Ev.exit50, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  %i.cn = load ptr, ptr %4, align 8, !tbaa !80    ; 2 uses
  %i.co = icmp eq ptr %i.cn, %i.c
  br i1 %i.co, label %_ZN4llvm11SmallVectorIN4mlir11OpAsmParser8ArgumentELj1EED2Ev.exit, label %bb.n

bb.n:                                             ; preds = %_ZN4llvm11SmallVectorIN4mlir14DictionaryAttrELj6EED2Ev.exit
  call void @free(ptr noundef %i.cn) #17
  br label %_ZN4llvm11SmallVectorIN4mlir11OpAsmParser8ArgumentELj1EED2Ev.exit

_ZN4llvm11SmallVectorIN4mlir11OpAsmParser8ArgumentELj1EED2Ev.exit: ; preds = %_ZN4llvm11SmallVectorIN4mlir14DictionaryAttrELj6EED2Ev.exit, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  ret i8 %.sroa.060.2
}

declare i8 @_ZN4mlir23function_interface_impl35parseFunctionSignatureWithArgumentsERNS_11OpAsmParserEbRN4llvm15SmallVectorImplINS1_8ArgumentEEERbRNS4_INS_4TypeEEERNS4_INS_14DictionaryAttrEEE(ptr noundef nonnull align 8 dereferenceable(8), i1 noundef zeroext, ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 1 dereferenceable(1), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #2

declare ptr @_ZN4mlir7Builder15getFunctionTypeENS_9TypeRangeES1_(ptr noundef nonnull align 8 dereferenceable(8), i64, i64, i64, i64) local_unnamed_addr #2

declare ptr @_ZN4mlir8TypeAttr3getENS_4TypeE(ptr) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr i8 @_ZN4mlir5spirv16parseEnumStrAttrINS0_19FunctionControlAttrENS0_15FunctionControlEEEN4llvm11ParseResultERT0_RNS_11OpAsmParserERNS_14OperationStateENS4_9StringRefE(ptr noundef nonnull align 4 dereferenceable(4) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(304) %2, ptr %3, i64 %4) local_unnamed_addr #0 comdat {
bb.a:
  %5 = alloca %"class.mlir::NamedAttribute", align 8 ; 5 uses
  %6 = alloca %"class.llvm::Twine", align 8       ; 7 uses
  %i.a = tail call i8 @_ZN4mlir5spirv16parseEnumStrAttrINS0_15FunctionControlEEEN4llvm11ParseResultERT_RNS_11OpAsmParserENS3_9StringRefE(ptr noundef nonnull align 4 dereferenceable(4) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr %3, i64 %4)
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %1, align 8, !tbaa !85
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = tail call noundef nonnull align 8 dereferenceable(8) ptr %i.e(ptr noundef nonnull align 8 dereferenceable(8) %1) #17
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !155
  %i.h = load i32, ptr %0, align 4, !tbaa !167
  %i.i = tail call ptr @_ZN4mlir5spirv19FunctionControlAttr3getEPNS_11MLIRContextENS0_15FunctionControlE(ptr noundef %i.g, i32 noundef %i.h) #17
  %i.j = tail call noundef ptr @_ZNK4mlir9Attribute10getContextEv(ptr noundef nonnull align 8 dereferenceable(304) %2) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #17
  %i.k = getelementptr inbounds nuw i8, ptr %6, i64 32
  store i8 5, ptr %i.k, align 8, !tbaa !45
  %i.l = getelementptr inbounds nuw i8, ptr %6, i64 33
  store i8 1, ptr %i.l, align 1, !tbaa !43
  store ptr %3, ptr %6, align 8, !tbaa !44
  %i.m = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 %4, ptr %i.m, align 8, !tbaa !44
  %i.n = call ptr @_ZN4mlir10StringAttr3getEPNS_11MLIRContextERKN4llvm5TwineE(ptr noundef %i.j, ptr noundef nonnull align 8 dereferenceable(34) %6) #17
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 112
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @_ZN4mlir14NamedAttributeC1ENS_10StringAttrENS_9AttributeE(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr %i.n, ptr %i.i) #17
  %i.p = load ptr, ptr %5, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.r = load ptr, ptr %i.q, align 8
  call void @_ZN4mlir13NamedAttrList9push_backENS_14NamedAttributeE(ptr noundef nonnull align 8 dereferenceable(88) %i.o, ptr %i.p, ptr %i.r) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.013.0 = phi i8 [ 1, %bb.b ], [ 0, %bb.a ]
  ret i8 %.sroa.013.0
}

declare void @_ZN4mlir19call_interface_impl20addArgAndResultAttrsERNS_7BuilderERNS_14OperationStateEN4llvm8ArrayRefINS_11OpAsmParser8ArgumentEEENS6_INS_14DictionaryAttrEEENS_10StringAttrESC_(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(304), ptr, i64, ptr, i64, i64, i64) local_unnamed_addr #2

declare noundef ptr @_ZN4mlir14OperationState9addRegionEv(ptr noundef nonnull align 8 dereferenceable(304)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4mlir5spirv6FuncOp5printERNS_12OpAsmPrinterE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.mlir::FunctionOpInterface", align 8 ; 7 uses
  %3 = alloca %"class.mlir::TypeRange", align 8   ; 5 uses
  %4 = alloca %"class.mlir::TypeRange", align 8   ; 4 uses
  %5 = alloca %"class.mlir::FunctionType", align 8 ; 5 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %7 = alloca [5 x %"class.llvm::StringRef"], align 8 ; 13 uses
  %8 = alloca %"class.mlir::StringAttr", align 8  ; 4 uses
  %9 = alloca %"class.mlir::StringAttr", align 8  ; 4 uses
  %10 = alloca %"class.mlir::StringAttr", align 8 ; 4 uses
  %11 = alloca %"class.mlir::StringAttr", align 8 ; 4 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !85
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef nonnull align 8 dereferenceable(48) ptr %i.c(ptr noundef nonnull align 8 dereferenceable(16) %1) #17, !inline_history !3 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !89
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 32 ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !90   ; 2 uses
  %i.i = icmp eq ptr %i.f, %i.h
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.j = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.d, ptr noundef nonnull @.str.6, i64 noundef 1) #17 ; 0 uses
  br label %_ZN4mlirlsINS_12OpAsmPrinterEA2_cTnPNSt9enable_ifIXaaaaaaaaaantsr3std14is_convertibleIRT0_RNS_5ValueEEE5valuentsr3std14is_convertibleIS5_RNS_4TypeEEE5valuentsr3std14is_convertibleIS5_RNS_9AttributeEEE5valuentsr3std14is_convertibleIS5_NS_10ValueRangeEEE5valuentsr3std14is_convertibleIS5_RN4llvm7APFloatEEE5valuentsr4llvm9is_one_ofIS4_bfdEE5valueES4_E4typeELPS2_0EvEERT_SL_RKS4_.exit

bb.c:                                             ; preds = %bb.a
  store i8 32, ptr %i.h, align 1
  %i.k = load ptr, ptr %i.g, align 8, !tbaa !90
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 1
  store ptr %i.l, ptr %i.g, align 8, !tbaa !90
  br label %_ZN4mlirlsINS_12OpAsmPrinterEA2_cTnPNSt9enable_ifIXaaaaaaaaaantsr3std14is_convertibleIRT0_RNS_5ValueEEE5valuentsr3std14is_convertibleIS5_RNS_4TypeEEE5valuentsr3std14is_convertibleIS5_RNS_9AttributeEEE5valuentsr3std14is_convertibleIS5_NS_10ValueRangeEEE5valuentsr3std14is_convertibleIS5_RN4llvm7APFloatEEE5valuentsr4llvm9is_one_ofIS4_bfdEE5valueES4_E4typeELPS2_0EvEERT_SL_RKS4_.exit

_ZN4mlirlsINS_12OpAsmPrinterEA2_cTnPNSt9enable_ifIXaaaaaaaaaantsr3std14is_convertibleIRT0_RNS_5ValueEEE5valuentsr3std14is_convertibleIS5_RNS_4TypeEEE5valuentsr3std14is_convertibleIS5_RNS_9AttributeEEE5valuentsr3std14is_convertibleIS5_NS_10ValueRangeEEE5valuentsr3std14is_convertibleIS5_RN4llvm7APFloatEEE5valuentsr4llvm9is_one_ofIS4_bfdEE5valueES4_E4typeELPS2_0EvEERT_SL_RKS4_.exit: ; preds = %bb.b, %bb.c
  %i.m = tail call { ptr, i64 } @_ZN4mlir5spirv6FuncOp10getSymNameEv(ptr noundef nonnull align 8 dereferenceable(8) %0) #17 ; 2 uses
  %i.n = extractvalue { ptr, i64 } %i.m, 0
  %i.o = extractvalue { ptr, i64 } %i.m, 1
  %i.p = load ptr, ptr %1, align 8, !tbaa !85
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 120
  %i.r = load ptr, ptr %i.q, align 8
  tail call void %i.r(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr %i.n, i64 %i.o) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #17
  %i.s = tail call ptr @_ZN4mlir5spirv6FuncOp15getFunctionTypeEv(ptr noundef nonnull align 8 dereferenceable(8) %0) #17
  store ptr %i.s, ptr %5, align 8
  %.sroa.04.0.copyload = load ptr, ptr %0, align 8 ; 3 uses
  %.not.i.i.i = icmp eq ptr %.sroa.04.0.copyload, null
  br i1 %.not.i.i.i, label %_ZN4mlir19FunctionOpInterfaceCI2NS_6detail9InterfaceIS0_PNS_9OperationENS1_34FunctionOpInterfaceInterfaceTraitsENS_2OpIS0_JEEENS_7OpTrait9TraitBaseEEEINS_5spirv6FuncOpETnPNSt9enable_ifIXsr3std10is_base_ofINS2_IS0_S4_S5_S7_S9_E5TraitIT_EESF_EE5valueEvE4typeELPv0EEESF_.exit, label %bb.d

bb.d:                                             ; preds = %_ZN4mlirlsINS_12OpAsmPrinterEA2_cTnPNSt9enable_ifIXaaaaaaaaaantsr3std14is_convertibleIRT0_RNS_5ValueEEE5valuentsr3std14is_convertibleIS5_RNS_4TypeEEE5valuentsr3std14is_convertibleIS5_RNS_9AttributeEEE5valuentsr3std14is_convertibleIS5_NS_10ValueRangeEEE5valuentsr3std14is_convertibleIS5_RN4llvm7APFloatEEE5valuentsr4llvm9is_one_ofIS4_bfdEE5valueES4_E4typeELPS2_0EvEERT_SL_RKS4_.exit
  %i.t = tail call noundef ptr @_ZN4mlir11OpInterfaceINS_19FunctionOpInterfaceENS_6detail34FunctionOpInterfaceInterfaceTraitsEE15getInterfaceForEPNS_9OperationE(ptr noundef nonnull %.sroa.04.0.copyload)
  br label %_ZN4mlir19FunctionOpInterfaceCI2NS_6detail9InterfaceIS0_PNS_9OperationENS1_34FunctionOpInterfaceInterfaceTraitsENS_2OpIS0_JEEENS_7OpTrait9TraitBaseEEEINS_5spirv6FuncOpETnPNSt9enable_ifIXsr3std10is_base_ofINS2_IS0_S4_S5_S7_S9_E5TraitIT_EESF_EE5valueEvE4typeELPv0EEESF_.exit

_ZN4mlir19FunctionOpInterfaceCI2NS_6detail9InterfaceIS0_PNS_9OperationENS1_34FunctionOpInterfaceInterfaceTraitsENS_2OpIS0_JEEENS_7OpTrait9TraitBaseEEEINS_5spirv6FuncOpETnPNSt9enable_ifIXsr3std10is_base_ofINS2_IS0_S4_S5_S7_S9_E5TraitIT_EESF_EE5valueEvE4typeELPv0EEESF_.exit: ; preds = %_ZN4mlirlsINS_12OpAsmPrinterEA2_cTnPNSt9enable_ifIXaaaaaaaaaantsr3std14is_convertibleIRT0_RNS_5ValueEEE5valuentsr3std14is_convertibleIS5_RNS_4TypeEEE5valuentsr3std14is_convertibleIS5_RNS_9AttributeEEE5valuentsr3std14is_convertibleIS5_NS_10ValueRangeEEE5valuentsr3std14is_convertibleIS5_RN4llvm7APFloatEEE5valuentsr4llvm9is_one_ofIS4_bfdEE5valueES4_E4typeELPS2_0EvEERT_SL_RKS4_.exit, %bb.d
  %i.u = phi ptr [ %i.t, %bb.d ], [ null, %_ZN4mlirlsINS_12OpAsmPrinterEA2_cTnPNSt9enable_ifIXaaaaaaaaaantsr3std14is_convertibleIRT0_RNS_5ValueEEE5valuentsr3std14is_convertibleIS5_RNS_4TypeEEE5valuentsr3std14is_convertibleIS5_RNS_9AttributeEEE5valuentsr3std14is_convertibleIS5_NS_10ValueRangeEEE5valuentsr3std14is_convertibleIS5_RN4llvm7APFloatEEE5valuentsr4llvm9is_one_ofIS4_bfdEE5valueES4_E4typeELPS2_0EvEERT_SL_RKS4_.exit ]
  %i.v = call { ptr, i64 } @_ZNK4mlir12FunctionType9getInputsEv(ptr noundef nonnull align 8 dereferenceable(8) %5) #17 ; 2 uses
  %i.w = extractvalue { ptr, i64 } %i.v, 0
  %i.x = extractvalue { ptr, i64 } %i.v, 1
  %i.y = call { ptr, i64 } @_ZNK4mlir12FunctionType10getResultsEv(ptr noundef nonnull align 8 dereferenceable(8) %5) #17 ; 2 uses
  %i.z = extractvalue { ptr, i64 } %i.y, 0
  %i.aa = extractvalue { ptr, i64 } %i.y, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  store ptr %.sroa.04.0.copyload, ptr %2, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.u, ptr %i.ab, align 8
  call void @_ZN4mlir9TypeRangeC1EN4llvm8ArrayRefINS_4TypeEEE(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr %i.w, i64 %i.x) #17
  %i.ac = call ptr @_ZN4mlir19FunctionOpInterface15getArgAttrsAttrEv(ptr noundef nonnull align 8 dereferenceable(16) %2) #17
  call void @_ZN4mlir9TypeRangeC1EN4llvm8ArrayRefINS_4TypeEEE(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr %i.z, i64 %i.aa) #17
  %i.ad = call ptr @_ZN4mlir19FunctionOpInterface15getResAttrsAttrEv(ptr noundef nonnull align 8 dereferenceable(16) %2) #17
  %i.ae = load ptr, ptr %2, align 8, !tbaa !93    ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 44
  %i.ag = load i32, ptr %i.af, align 4            ; 3 uses
  %i.ah = and i32 %i.ag, 8388607
  %i.ai = icmp ne i32 %i.ah, 0
  call void @llvm.assume(i1 %i.ai)
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ae, i64 64
  %i.ak = lshr i32 %i.ag, 23
  %.lobit.i.i.i.i.i.i.i.i.i.i.i = and i32 %i.ak, 1
  %i.al = zext nneg i32 %.lobit.i.i.i.i.i.i.i.i.i.i.i to i64
  %i.am = getelementptr inbounds nuw [16 x i8], ptr %i.aj, i64 %i.al
  %i.an = lshr i32 %i.ag, 21
  %i.ao = and i32 %i.an, 2040
  %i.ap = zext nneg i32 %i.ao to i64
  %i.aq = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.ap
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ae, i64 40
  %i.as = load i32, ptr %i.ar, align 8, !tbaa !168
  %i.at = zext i32 %i.as to i64
  %i.au = getelementptr inbounds nuw [32 x i8], ptr %i.aq, i64 %i.at
  %i.av = load i64, ptr %3, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %3, i64 8
end_hunk_0
