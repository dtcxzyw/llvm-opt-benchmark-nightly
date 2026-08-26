Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/PtrDialect?download=true
inline.NumInlined: 14421
inline.NumDeleted: 5291
loop-unroll.NumCompletelyUnrolled: 14
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 16
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0_@_ZN4mlir3ptr8GatherOp5parseERNS_11OpAsmParserERNS_14OperationStateE:bb.a
  %i.az = load ptr, ptr %i.ay, align 8
  %i.ba = call ptr %i.az(ptr noundef nonnull align 8 dereferenceable(8) %0) #25
  %i.bb = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4mlir14OperationState18getOrAddPropertiesINS_3ptr6detail26GatherOpGenericAdaptorBase10PropertiesEEERT_v(ptr noundef nonnull align 8 dereferenceable(304) %1)
  %i.bc = call fastcc i8 @"_ZZN4mlir3ptr8GatherOp5parseERNS_11OpAsmParserERNS_14OperationStateEENK3$_0clISt8optionalIlEEEN4llvm11ParseResultERT_"(ptr nonnull %0, ptr noundef nonnull align 8 dereferenceable(16) %i.bb)
  %i.bd = trunc nuw i8 %i.bc to i1
  br i1 %i.bd, label %.critedge, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #25
  %i.be = getelementptr inbounds nuw i8, ptr %11, i64 32
  %i.bf = getelementptr inbounds nuw i8, ptr %11, i64 33
  store i8 1, ptr %i.bf, align 1, !tbaa !49
  store ptr @.str.82, ptr %11, align 8, !tbaa !115
  store i8 3, ptr %i.be, align 8, !tbaa !46
  %i.bg = load ptr, ptr %0, align 8, !tbaa !16
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 24
  %i.bi = load ptr, ptr %i.bh, align 8
  call void %i.bi(ptr dead_on_unwind nonnull writable sret(%"class.mlir::InFlightDiagnostic") align 8 %10, ptr noundef nonnull align 8 dereferenceable(8) %0, ptr %i.ba, ptr noundef nonnull align 8 dereferenceable(34) %11) #25
  %i.bj = call i8 @_ZNK4mlir18InFlightDiagnosticcvN4llvm13LogicalResultEEv(ptr noundef nonnull align 8 dereferenceable(208) %10) #25
  call void @_ZN4mlir18InFlightDiagnosticD2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %10) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25
  br label %.critedge89

.critedge:                                        ; preds = %bb.h, %bb.f
  %i.bk = load ptr, ptr %0, align 8, !tbaa !16
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 40
  %i.bm = load ptr, ptr %i.bl, align 8
  %i.bn = call ptr %i.bm(ptr noundef nonnull align 8 dereferenceable(8) %0) #25 ; 0 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.bp = load ptr, ptr %0, align 8, !tbaa !16
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 520
  %i.br = load ptr, ptr %i.bq, align 8
  %i.bs = call i8 %i.br(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(88) %i.bo) #25
  %i.bt = trunc nuw i8 %i.bs to i1
  br i1 %i.bt, label %bb.j, label %.critedge89

bb.j:                                             ; preds = %.critedge
  %i.bu = load ptr, ptr %0, align 8, !tbaa !16
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 104
  %i.bw = load ptr, ptr %i.bv, align 8
  %i.bx = call i8 %i.bw(ptr noundef nonnull align 8 dereferenceable(8) %0) #25
  %i.by = trunc nuw i8 %i.bx to i1
  br i1 %i.by, label %bb.k, label %.critedge89

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %12, i8 0, i64 16, i1 false)
  %i.bz = call i8 @_ZN4mlir9AsmParser9parseTypeINS_10ShapedTypeEEEN4llvm11ParseResultERT_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(16) %12)
  %i.ca = trunc nuw i8 %i.bz to i1
  br i1 %i.ca, label %bb.l, label %.thread

.thread:                                          ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #25
  br label %.critedge89

bb.l:                                             ; preds = %bb.k
  %i.cb = load i64, ptr %12, align 8, !tbaa !302
  store i64 %i.cb, ptr %7, align 8, !tbaa !302
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #25
  %i.cc = load ptr, ptr %0, align 8, !tbaa !16
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 56
  %i.ce = load ptr, ptr %i.cd, align 8
  %i.cf = call i8 %i.ce(ptr noundef nonnull align 8 dereferenceable(8) %0) #25
  %i.cg = trunc nuw i8 %i.cf to i1
  br i1 %i.cg, label %bb.m, label %.critedge89

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %13, i8 0, i64 16, i1 false)
  %i.ch = call i8 @_ZN4mlir9AsmParser9parseTypeINS_10ShapedTypeEEEN4llvm11ParseResultERT_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(16) %13)
  %i.ci = trunc nuw i8 %i.ch to i1
  br i1 %i.ci, label %bb.n, label %.thread133

.thread133:                                       ; preds = %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #25
  br label %.critedge89

bb.n:                                             ; preds = %bb.m
  %i.cj = load i64, ptr %13, align 8, !tbaa !302  ; 2 uses
  store i64 %i.cj, ptr %9, align 8, !tbaa !302
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #25
  %i.ck = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.cl = getelementptr inbounds nuw i8, ptr %17, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #25
  store i64 %i.cj, ptr %14, align 8, !tbaa !302
  %i.cm = call noundef zeroext i1 @_ZN4mlir4Type8hasTraitINS_14ValueSemanticsEEEbv(ptr noundef nonnull align 8 dereferenceable(8) %14)
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #25
  br i1 %i.cm, label %bb.o, label %.critedge95

bb.o:                                             ; preds = %bb.n
  %i.cn = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.co = call { ptr, ptr } @_ZN4llvm4castIN4mlir10ShapedTypeENS1_4TypeEEEDcRT0_(ptr noundef nonnull align 8 dereferenceable(8) %14) ; 2 uses
  %i.cp = extractvalue { ptr, ptr } %i.co, 0
  store ptr %i.cp, ptr %15, align 8
  %i.cq = extractvalue { ptr, ptr } %i.co, 1
  store ptr %i.cq, ptr %i.cn, align 8
  %i.cr = call noundef zeroext i1 @_ZNK4mlir10ShapedType7hasRankEv(ptr noundef nonnull align 8 dereferenceable(16) %15) #25
  br i1 %i.cr, label %bb.p, label %.critedge95

bb.p:                                             ; preds = %bb.o
  %i.cs = call { ptr, ptr } @_ZN4llvm4castIN4mlir10ShapedTypeENS1_4TypeEEEDcRT0_(ptr noundef nonnull align 8 dereferenceable(8) %14) ; 2 uses
  %i.ct = extractvalue { ptr, ptr } %i.cs, 0
  store ptr %i.ct, ptr %16, align 8
  %i.cu = extractvalue { ptr, ptr } %i.cs, 1
  store ptr %i.cu, ptr %i.ck, align 8
  %i.cv = call { ptr, i64 } @_ZNK4mlir10ShapedType8getShapeEv(ptr noundef nonnull align 8 dereferenceable(16) %16) #25
  %i.cw = extractvalue { ptr, i64 } %i.cv, 1
  %i.cx = icmp eq i64 %i.cw, 1
  br i1 %i.cx, label %bb.q, label %.critedge95

bb.q:                                             ; preds = %bb.p
  %i.cy = call { ptr, ptr } @_ZN4llvm4castIN4mlir10ShapedTypeENS1_4TypeEEEDcRT0_(ptr noundef nonnull align 8 dereferenceable(8) %14) ; 2 uses
  %i.cz = extractvalue { ptr, ptr } %i.cy, 0
  store ptr %i.cz, ptr %17, align 8
  %i.da = extractvalue { ptr, ptr } %i.cy, 1
  store ptr %i.da, ptr %i.cl, align 8
  %i.db = call ptr @_ZNK4mlir10ShapedType14getElementTypeEv(ptr noundef nonnull align 8 dereferenceable(16) %17) #25
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !32
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 144
  %.sroa.0.0.copyload.i.i.i.i.i.i = load ptr, ptr %i.dd, align 8, !tbaa !36
  %.not136 = icmp eq ptr %.sroa.0.0.copyload.i.i.i.i.i.i, @_ZN4mlir6detail14TypeIDResolverINS_9TokenTypeEvE2idE
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #25
  br i1 %.not136, label %.loopexit, label %.critedge91

.critedge95:                                      ; preds = %bb.n, %bb.o, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #25
  br label %.loopexit

.loopexit:                                        ; preds = %bb.q, %.critedge95
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #25
  %i.de = load ptr, ptr %0, align 8, !tbaa !16
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 16
  %i.dg = load ptr, ptr %i.df, align 8
  %i.dh = call ptr %i.dg(ptr noundef nonnull align 8 dereferenceable(8) %0) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #25
  %i.di = getelementptr inbounds nuw i8, ptr %19, i64 32
  store i8 1, ptr %i.di, align 8, !tbaa !46
  %i.dj = getelementptr inbounds nuw i8, ptr %19, i64 33
  store i8 1, ptr %i.dj, align 1, !tbaa !49
  %i.dk = load ptr, ptr %0, align 8, !tbaa !16
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 24
  %i.dm = load ptr, ptr %i.dl, align 8
  call void %i.dm(ptr dead_on_unwind nonnull writable sret(%"class.mlir::InFlightDiagnostic") align 8 %18, ptr noundef nonnull align 8 dereferenceable(8) %0, ptr %i.dh, ptr noundef nonnull align 8 dereferenceable(34) %19) #25
  %i.dn = call noundef nonnull align 8 dereferenceable(208) ptr @_ZNO4mlir18InFlightDiagnosticlsIRA101_KcEEOS0_OT_(ptr noundef nonnull align 8 dereferenceable(208) %18, ptr noundef nonnull align 1 dereferenceable(101) @.str.83)
  %i.do = call noundef nonnull align 8 dereferenceable(208) ptr @_ZNO4mlir18InFlightDiagnosticlsIRNS_4TypeEEEOS0_OT_(ptr noundef nonnull align 8 dereferenceable(208) %i.dn, ptr noundef nonnull align 8 dereferenceable(8) %14)
  %i.dp = call i8 @_ZNK4mlir18InFlightDiagnosticcvN4llvm13LogicalResultEEv(ptr noundef nonnull align 8 dereferenceable(208) %i.do) #25
  call void @_ZN4mlir18InFlightDiagnosticD2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %18) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #25
  br label %.critedge89

.critedge91:                                      ; preds = %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #25
  call void @_ZN4mlir14OperationState8addTypesEN4llvm8ArrayRefINS_4TypeEEE(ptr noundef nonnull align 8 dereferenceable(304) %1, ptr nonnull %9, i64 1)
  %i.dq = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.dr = call i8 @_ZN4mlir11OpAsmParser15resolveOperandsIRN4llvm8ArrayRefINS0_17UnresolvedOperandEEERNS3_INS_4TypeEEEvEENS2_11ParseResultEOT_OT0_NS2_5SMLocERNS2_15SmallVectorImplINS_5ValueEEE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %8, ptr %i.f, ptr noundef nonnull align 8 dereferenceable(16) %i.dq)
  %i.ds = trunc nuw i8 %i.dr to i1
  br i1 %i.ds, label %.critedge.i.i, label %.critedge89

.critedge.i.i:                                    ; preds = %.critedge91
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #25
  %i.dt = call { ptr, ptr } @_ZN4llvm4castIN4mlir10ShapedTypeENS1_4TypeEEEDcRKT0_(ptr noundef nonnull align 8 dereferenceable(8) %9) ; 2 uses
  %i.du = extractvalue { ptr, ptr } %i.dt, 0
  store ptr %i.du, ptr %20, align 8
  %i.dv = getelementptr inbounds nuw i8, ptr %20, i64 8
  %i.dw = extractvalue { ptr, ptr } %i.dt, 1
  store ptr %i.dw, ptr %i.dv, align 8
  %i.dx = call noundef ptr @_ZNK4mlir4Type10getContextEv(ptr noundef nonnull align 8 dereferenceable(8) %9) #25
  %i.dy = call ptr @_ZN4mlir11IntegerType3getEPNS_11MLIRContextEjNS0_19SignednessSemanticsE(ptr noundef %i.dx, i32 noundef 1, i32 noundef 0) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  %i.dz = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i8 0, ptr %i.dz, align 8, !tbaa !177
  %i.ea = call { ptr, ptr } @_ZNK4mlir10ShapedType9cloneWithESt8optionalIN4llvm8ArrayRefIlEEENS_4TypeE(ptr noundef nonnull align 8 dereferenceable(16) %20, ptr noundef nonnull byval(%"class.std::optional.825") align 8 %2, ptr %i.dy) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  %i.eb = extractvalue { ptr, ptr } %i.ea, 0
  %i.ec = load ptr, ptr %0, align 8, !tbaa !16
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 760
  %i.ee = load ptr, ptr %i.ed, align 8
  %i.ef = call i8 %i.ee(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(28) %5, ptr %i.eb, ptr noundef nonnull align 8 dereferenceable(16) %i.dq) #25, !inline_history !392
  %i.eg = trunc nuw i8 %i.ef to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #25
  br i1 %i.eg, label %.critedge.i.i98, label %.critedge89

.critedge.i.i98:                                  ; preds = %.critedge.i.i
  %.sroa.08.0.copyload = load ptr, ptr %9, align 8, !tbaa !302
  %i.eh = load ptr, ptr %0, align 8, !tbaa !16
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 760
  %i.ej = load ptr, ptr %i.ei, align 8
  %i.ek = call i8 %i.ej(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(28) %6, ptr %.sroa.08.0.copyload, ptr noundef nonnull align 8 dereferenceable(16) %i.dq) #25, !inline_history !392
  br label %.critedge89

.critedge89:                                      ; preds = %.critedge.i.i98, %.critedge.i.i, %.critedge, %.critedge91, %.loopexit, %.thread133, %bb.l, %.thread, %bb.j, %bb.g, %bb.e, %bb.d, %bb.c, %bb.b, %bb.a, %bb.i
  %.sroa.0132.3 = phi i8 [ %i.dp, %.loopexit ], [ 0, %bb.a ], [ 0, %bb.b ], [ 0, %bb.c ], [ 0, %bb.d ], [ 0, %bb.e ], [ %i.bj, %bb.i ], [ 0, %.critedge ], [ 0, %bb.g ], [ 0, %.thread ], [ 0, %bb.j ], [ 0, %.thread133 ], [ 0, %bb.l ], [ %i.ek, %.critedge.i.i98 ], [ 0, %.critedge91 ], [ 0, %.critedge.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  ret i8 %.sroa.0132.3
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal fastcc range(i8 0, 2) i8 @"_ZZN4mlir3ptr8GatherOp5parseERNS_11OpAsmParserERNS_14OperationStateEENK3$_0clISt8optionalIlEEEN4llvm11ParseResultERT_"(ptr %.0.val, ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #4 align 2 {
bb.a:
  %1 = alloca %class.anon.1574, align 8           ; 4 uses
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = load ptr, ptr %.0.val, align 8, !tbaa !16
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 424
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = tail call i8 %i.d(ptr noundef nonnull align 8 dereferenceable(8) %.0.val, ptr nonnull @.str.49, i64 4) #25
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 0, ptr %i.g, align 8, !tbaa !116
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #25
  store ptr %.0.val, ptr %1, align 8, !tbaa !393
  %i.h = call i16 @_ZN4mlir9AsmParser28parseOptionalIntegerAndCheckIlZNS0_20parseOptionalIntegerIlEENS_19OptionalParseResultERT_EUlRN4llvm5APIntEE_EES3_S5_OT0_(ptr noundef nonnull align 8 dereferenceable(8) %.0.val, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #25
  %i.i = and i16 %i.h, 257
  %or.cond.not = icmp eq i16 %i.i, 257
  br i1 %or.cond.not, label %.critedge, label %bb.d

.critedge:                                        ; preds = %bb.c
  %i.j = load i64, ptr %i.a, align 8, !tbaa !64
  store i64 %i.j, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 1, ptr %.sroa.4.0..sroa_idx, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %.critedge
  %.sroa.06.0 = phi i8 [ 0, %bb.c ], [ 1, %.critedge ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.b
  %.sroa.06.1 = phi i8 [ 1, %bb.b ], [ %.sroa.06.0, %bb.d ]
  ret i8 %.sroa.06.1
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4mlir4Type8hasTraitINS_14ValueSemanticsEEEbv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !71
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !32   ; 2 uses
  %i.c = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_14ValueSemanticsIZNS_6TypeID3getIS2_EES3_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.d = icmp eq i8 %i.c, 0
  br i1 %i.d, label %bb.b, label %_ZNK4mlir12AbstractType8hasTraitINS_14ValueSemanticsEEEbv.exit, !prof !35

bb.b:                                             ; preds = %bb.a
  %i.e = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_14ValueSemanticsIZNS_6TypeID3getIS2_EES3_vE5EmptyEEvE13resolveTypeIDEvE2id) #25
  %.not.i.i.i.i = icmp eq i32 %i.e, 0
  br i1 %.not.i.i.i.i, label %_ZNK4mlir12AbstractType8hasTraitINS_14ValueSemanticsEEEbv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.243, i64 49), i64 27) #25
  store ptr %i.f, ptr @_ZZN4mlir6detail14TypeIDResolverINS_14ValueSemanticsIZNS_6TypeID3getIS2_EES3_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_14ValueSemanticsIZNS_6TypeID3getIS2_EES3_vE5EmptyEEvE13resolveTypeIDEvE2id) #25
  br label %_ZNK4mlir12AbstractType8hasTraitINS_14ValueSemanticsEEEbv.exit

_ZNK4mlir12AbstractType8hasTraitINS_14ValueSemanticsEEEbv.exit: ; preds = %bb.a, %bb.b, %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %.sroa.01.0.copyload.i.i.i.i = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_14ValueSemanticsIZNS_6TypeID3getIS2_EES3_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !36
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !389
  %i.j = tail call noundef zeroext i1 %i.i(ptr noundef nonnull align 8 dereferenceable(40) %i.g, ptr %.sroa.01.0.copyload.i.i.i.i) #25, !inline_history !395
  ret i1 %i.j
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden { ptr, ptr } @_ZN4llvm4castIN4mlir10ShapedTypeENS1_4TypeEEEDcRT0_(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #4 comdat {
bb.a:
  %.sroa.0.0.copyload = load ptr, ptr %0, align 8, !tbaa !302 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %.sroa.0.0.copyload, null
  br i1 %.not.i.i.i.i, label %_ZN4llvm8CastInfoIN4mlir10ShapedTypeENS1_4TypeEvE6doCastES3_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %.sroa.0.0.copyload, align 8, !tbaa !32 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_10ShapedTypeEvE13resolveTypeIDEvE2id acquire, align 8
  %i.d = icmp eq i8 %i.c, 0
  br i1 %i.d, label %bb.c, label %_ZN4mlir6detail9InterfaceINS_10ShapedTypeENS_4TypeENS0_25ShapedTypeInterfaceTraitsES3_NS_9TypeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i.i, !prof !35

bb.c:                                             ; preds = %bb.b
  %i.e = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_10ShapedTypeEvE13resolveTypeIDEvE2id) #25
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.e, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZN4mlir6detail9InterfaceINS_10ShapedTypeENS_4TypeENS0_25ShapedTypeInterfaceTraitsES3_NS_9TypeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.123, i64 49), i64 16) #25
  store ptr %i.f, ptr @_ZZN4mlir6detail14TypeIDResolverINS_10ShapedTypeEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_10ShapedTypeEvE13resolveTypeIDEvE2id) #25
  br label %_ZN4mlir6detail9InterfaceINS_10ShapedTypeENS_4TypeENS0_25ShapedTypeInterfaceTraitsES3_NS_9TypeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i.i

_ZN4mlir6detail9InterfaceINS_10ShapedTypeENS_4TypeENS0_25ShapedTypeInterfaceTraitsES3_NS_9TypeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i.i: ; preds = %bb.d, %bb.c, %bb.b
  %.sroa.01.0.copyload.i.i.i.i.i.i.i.i.i.i = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_10ShapedTypeEvE13resolveTypeIDEvE2id, align 8, !tbaa !36 ; 2 uses
  %i.g = load ptr, ptr %i.b, align 8, !tbaa !37   ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.i = load i32, ptr %i.h, align 8, !tbaa !39   ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.i, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i.i.i.i.i.i, label %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i.i.i.i.i.i.i

_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZN4mlir6detail9InterfaceINS_10ShapedTypeENS_4TypeENS0_25ShapedTypeInterfaceTraitsES3_NS_9TypeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i.i
  %i.j = zext i32 %i.i to i64                     ; 2 uses
  br label %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i.i

_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i.i, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i.i.i.i.i.i.i
  %.017.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.j, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i.i.i.i.i.i.i ], [ %.1.i.i.i.i.i.i.i.i.i.i.i, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.01116.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.g, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i.i.i.i.i.i.i ], [ %.112.i.i.i.i.i.i.i.i.i.i.i, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.k = lshr i64 %.017.i.i.i.i.i.i.i.i.i.i.i, 1  ; 3 uses
  %i.l = getelementptr inbounds nuw [16 x i8], ptr %.01116.i.i.i.i.i.i.i.i.i.i.i, i64 %i.k ; 2 uses
  %.sroa.01.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.l, align 8, !tbaa !36
  %i.m = icmp ult ptr %.sroa.01.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i, %.sroa.01.0.copyload.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.o = xor i64 %i.k, -1
  %i.p = add nsw i64 %.017.i.i.i.i.i.i.i.i.i.i.i, %i.o
  %.112.i.i.i.i.i.i.i.i.i.i.i = select i1 %i.m, ptr %i.n, ptr %.01116.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %.1.i.i.i.i.i.i.i.i.i.i.i = select i1 %i.m, i64 %i.p, i64 %i.k ; 2 uses
  %i.q = icmp sgt i64 %.1.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.q, label %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i.i, label %_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i.i.i.i.i.i, !llvm.loop !40

_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i.i.i.i.i.i: ; preds = %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i.i, %_ZN4mlir6detail9InterfaceINS_10ShapedTypeENS_4TypeENS0_25ShapedTypeInterfaceTraitsES3_NS_9TypeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i.i
  %.pre-phi.i.i.i.i.i.i.i.i = phi i64 [ 0, %_ZN4mlir6detail9InterfaceINS_10ShapedTypeENS_4TypeENS0_25ShapedTypeInterfaceTraitsES3_NS_9TypeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i.i ], [ %i.j, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i.i ]
  %.011.lcssa.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.g, %_ZN4mlir6detail9InterfaceINS_10ShapedTypeENS_4TypeENS0_25ShapedTypeInterfaceTraitsES3_NS_9TypeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i.i ], [ %.112.i.i.i.i.i.i.i.i.i.i.i, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.r = getelementptr inbounds nuw [16 x i8], ptr %i.g, i64 %.pre-phi.i.i.i.i.i.i.i.i
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %.011.lcssa.i.i.i.i.i.i.i.i.i.i.i, %i.r
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZN4llvm8CastInfoIN4mlir10ShapedTypeENS1_4TypeEvE6doCastES3_.exit, label %bb.e

bb.e:                                             ; preds = %_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i.i.i.i.i.i
  %i.s = load ptr, ptr %.011.lcssa.i.i.i.i.i.i.i.i.i.i.i, align 8, !tbaa !26
  %i.t = icmp eq ptr %i.s, %.sroa.01.0.copyload.i.i.i.i.i.i.i.i.i.i
  br i1 %i.t, label %bb.f, label %_ZN4llvm8CastInfoIN4mlir10ShapedTypeENS1_4TypeEvE6doCastES3_.exit

bb.f:                                             ; preds = %bb.e
  %i.u = getelementptr inbounds nuw i8, ptr %.011.lcssa.i.i.i.i.i.i.i.i.i.i.i, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !41
  br label %_ZN4llvm8CastInfoIN4mlir10ShapedTypeENS1_4TypeEvE6doCastES3_.exit

_ZN4llvm8CastInfoIN4mlir10ShapedTypeENS1_4TypeEvE6doCastES3_.exit: ; preds = %bb.a, %_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i.i.i.i.i.i, %bb.e, %bb.f
  %i.w = phi ptr [ null, %bb.a ], [ %i.v, %bb.f ], [ null, %bb.e ], [ null, %_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i.i.i.i.i.i ]
  %.fca.0.insert.i = insertvalue { ptr, ptr } poison, ptr %.sroa.0.0.copyload, 0
  %.fca.1.insert.i = insertvalue { ptr, ptr } %.fca.0.insert.i, ptr %i.w, 1
  ret { ptr, ptr } %.fca.1.insert.i
}

declare noundef zeroext i1 @_ZNK4mlir10ShapedType7hasRankEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(208) ptr @_ZNO4mlir18InFlightDiagnosticlsIRA101_KcEEOS0_OT_(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef nonnull align 1 dereferenceable(101) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %2 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 7 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !50
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %_ZNR4mlir18InFlightDiagnostic6appendIJRA101_KcEEERS0_DpOT_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  %i.c = tail call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(101) %1) #25
  store i32 3, ptr %2, align 8, !tbaa !59
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %1, ptr %i.d, align 8, !tbaa !62
  %.sroa.2.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i64 %i.c, ptr %.sroa.2.0..sroa_idx.i.i.i.i, align 8, !tbaa !64
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !39   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.h = load i32, ptr %i.g, align 4, !tbaa !66
  %.not.i.i.i.i = icmp ult i32 %i.f, %i.h
  br i1 %.not.i.i.i.i, label %bb.d, label %bb.c, !prof !67

bb.c:                                             ; preds = %bb.b
  call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir18DiagnosticArgumentELb1EE15growAndPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %2)
  br label %_ZN4mlir10Diagnostic6appendIRA101_KcEERS0_OT_.exit.i

bb.d:                                             ; preds = %bb.b
  %i.i = zext i32 %i.f to i64
  %i.j = load ptr, ptr %i.b, align 8, !tbaa !37
  %i.k = getelementptr inbounds nuw [24 x i8], ptr %i.j, i64 %i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.k, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  %i.l = load i32, ptr %i.e, align 8, !tbaa !39
  %i.m = add i32 %i.l, 1
  store i32 %i.m, ptr %i.e, align 8, !tbaa !39
  br label %_ZN4mlir10Diagnostic6appendIRA101_KcEERS0_OT_.exit.i

end_hunk_0
begin_hunk_1_@_ZN4mlir3ptr12MaskedLoadOp5parseERNS_11OpAsmParserERNS_14OperationStateE:bb.a
  %i.aw = trunc nuw i8 %i.av to i1
  br i1 %i.aw, label %bb.h, label %.critedge87

bb.h:                                             ; preds = %bb.g
  %i.ax = load ptr, ptr %0, align 8, !tbaa !16
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 40
  %i.az = load ptr, ptr %i.ay, align 8
  %i.ba = call ptr %i.az(ptr noundef nonnull align 8 dereferenceable(8) %0) #25
  %i.bb = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4mlir14OperationState18getOrAddPropertiesINS_3ptr6detail30MaskedLoadOpGenericAdaptorBase10PropertiesEEERT_v(ptr noundef nonnull align 8 dereferenceable(304) %1)
  %i.bc = call fastcc i8 @"_ZZN4mlir3ptr12MaskedLoadOp5parseERNS_11OpAsmParserERNS_14OperationStateEENK3$_0clISt8optionalIlEEEN4llvm11ParseResultERT_"(ptr nonnull %0, ptr noundef nonnull align 8 dereferenceable(16) %i.bb)
  %i.bd = trunc nuw i8 %i.bc to i1
  br i1 %i.bd, label %.critedge, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #25
  %i.be = getelementptr inbounds nuw i8, ptr %11, i64 32
  %i.bf = getelementptr inbounds nuw i8, ptr %11, i64 33
  store i8 1, ptr %i.bf, align 1, !tbaa !49
  store ptr @.str.82, ptr %11, align 8, !tbaa !115
  store i8 3, ptr %i.be, align 8, !tbaa !46
  %i.bg = load ptr, ptr %0, align 8, !tbaa !16
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 24
  %i.bi = load ptr, ptr %i.bh, align 8
  call void %i.bi(ptr dead_on_unwind nonnull writable sret(%"class.mlir::InFlightDiagnostic") align 8 %10, ptr noundef nonnull align 8 dereferenceable(8) %0, ptr %i.ba, ptr noundef nonnull align 8 dereferenceable(34) %11) #25
  %i.bj = call i8 @_ZNK4mlir18InFlightDiagnosticcvN4llvm13LogicalResultEEv(ptr noundef nonnull align 8 dereferenceable(208) %10) #25
  call void @_ZN4mlir18InFlightDiagnosticD2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %10) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25
  br label %.critedge87

.critedge:                                        ; preds = %bb.h, %bb.f
  %i.bk = load ptr, ptr %0, align 8, !tbaa !16
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 40
  %i.bm = load ptr, ptr %i.bl, align 8
  %i.bn = call ptr %i.bm(ptr noundef nonnull align 8 dereferenceable(8) %0) #25 ; 0 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.bp = load ptr, ptr %0, align 8, !tbaa !16
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 520
  %i.br = load ptr, ptr %i.bq, align 8
  %i.bs = call i8 %i.br(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(88) %i.bo) #25
  %i.bt = trunc nuw i8 %i.bs to i1
  br i1 %i.bt, label %bb.j, label %.critedge87

bb.j:                                             ; preds = %.critedge
  %i.bu = load ptr, ptr %0, align 8, !tbaa !16
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 104
  %i.bw = load ptr, ptr %i.bv, align 8
  %i.bx = call i8 %i.bw(ptr noundef nonnull align 8 dereferenceable(8) %0) #25
  %i.by = trunc nuw i8 %i.bx to i1
  br i1 %i.by, label %bb.k, label %.critedge87

bb.k:                                             ; preds = %bb.j
  %i.bz = load ptr, ptr %0, align 8, !tbaa !16
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 568
  %i.cb = load ptr, ptr %i.ca, align 8
  %i.cc = call i8 %i.cb(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %7) #25
  %i.cd = trunc nuw i8 %i.cc to i1
  br i1 %i.cd, label %bb.l, label %.critedge87

bb.l:                                             ; preds = %bb.k
  %i.ce = load ptr, ptr %0, align 8, !tbaa !16
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 56
  %i.cg = load ptr, ptr %i.cf, align 8
  %i.ch = call i8 %i.cg(ptr noundef nonnull align 8 dereferenceable(8) %0) #25
  %i.ci = trunc nuw i8 %i.ch to i1
  br i1 %i.ci, label %bb.m, label %.critedge87

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %12, i8 0, i64 16, i1 false)
  %i.cj = call i8 @_ZN4mlir9AsmParser9parseTypeINS_10ShapedTypeEEEN4llvm11ParseResultERT_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(16) %12)
  %i.ck = trunc nuw i8 %i.cj to i1
  br i1 %i.ck, label %bb.n, label %.thread

.thread:                                          ; preds = %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #25
  br label %.critedge87

bb.n:                                             ; preds = %bb.m
  %i.cl = load i64, ptr %12, align 8, !tbaa !302  ; 2 uses
  store i64 %i.cl, ptr %9, align 8, !tbaa !302
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #25
  %i.cm = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.cn = getelementptr inbounds nuw i8, ptr %16, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #25
  store i64 %i.cl, ptr %13, align 8, !tbaa !302
  %i.co = call noundef zeroext i1 @_ZN4mlir4Type8hasTraitINS_14ValueSemanticsEEEbv(ptr noundef nonnull align 8 dereferenceable(8) %13)
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #25
  br i1 %i.co, label %bb.o, label %.critedge93

bb.o:                                             ; preds = %bb.n
  %i.cp = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.cq = call { ptr, ptr } @_ZN4llvm4castIN4mlir10ShapedTypeENS1_4TypeEEEDcRT0_(ptr noundef nonnull align 8 dereferenceable(8) %13) ; 2 uses
  %i.cr = extractvalue { ptr, ptr } %i.cq, 0
  store ptr %i.cr, ptr %14, align 8
  %i.cs = extractvalue { ptr, ptr } %i.cq, 1
  store ptr %i.cs, ptr %i.cp, align 8
  %i.ct = call noundef zeroext i1 @_ZNK4mlir10ShapedType7hasRankEv(ptr noundef nonnull align 8 dereferenceable(16) %14) #25
  br i1 %i.ct, label %bb.p, label %.critedge93

bb.p:                                             ; preds = %bb.o
  %i.cu = call { ptr, ptr } @_ZN4llvm4castIN4mlir10ShapedTypeENS1_4TypeEEEDcRT0_(ptr noundef nonnull align 8 dereferenceable(8) %13) ; 2 uses
  %i.cv = extractvalue { ptr, ptr } %i.cu, 0
  store ptr %i.cv, ptr %15, align 8
  %i.cw = extractvalue { ptr, ptr } %i.cu, 1
  store ptr %i.cw, ptr %i.cm, align 8
  %i.cx = call { ptr, i64 } @_ZNK4mlir10ShapedType8getShapeEv(ptr noundef nonnull align 8 dereferenceable(16) %15) #25
  %i.cy = extractvalue { ptr, i64 } %i.cx, 1
  %i.cz = icmp eq i64 %i.cy, 1
  br i1 %i.cz, label %bb.q, label %.critedge93

bb.q:                                             ; preds = %bb.p
  %i.da = call { ptr, ptr } @_ZN4llvm4castIN4mlir10ShapedTypeENS1_4TypeEEEDcRT0_(ptr noundef nonnull align 8 dereferenceable(8) %13) ; 2 uses
  %i.db = extractvalue { ptr, ptr } %i.da, 0
  store ptr %i.db, ptr %16, align 8
  %i.dc = extractvalue { ptr, ptr } %i.da, 1
  store ptr %i.dc, ptr %i.cn, align 8
  %i.dd = call ptr @_ZNK4mlir10ShapedType14getElementTypeEv(ptr noundef nonnull align 8 dereferenceable(16) %16) #25
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !32
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 144
  %.sroa.0.0.copyload.i.i.i.i.i.i = load ptr, ptr %i.df, align 8, !tbaa !36
  %.not133 = icmp eq ptr %.sroa.0.0.copyload.i.i.i.i.i.i, @_ZN4mlir6detail14TypeIDResolverINS_9TokenTypeEvE2idE
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #25
  br i1 %.not133, label %.loopexit, label %.critedge89

.critedge93:                                      ; preds = %bb.n, %bb.o, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #25
  br label %.loopexit

.loopexit:                                        ; preds = %bb.q, %.critedge93
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #25
  %i.dg = load ptr, ptr %0, align 8, !tbaa !16
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 16
  %i.di = load ptr, ptr %i.dh, align 8
  %i.dj = call ptr %i.di(ptr noundef nonnull align 8 dereferenceable(8) %0) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #25
  %i.dk = getelementptr inbounds nuw i8, ptr %18, i64 32
  store i8 1, ptr %i.dk, align 8, !tbaa !46
  %i.dl = getelementptr inbounds nuw i8, ptr %18, i64 33
  store i8 1, ptr %i.dl, align 1, !tbaa !49
  %i.dm = load ptr, ptr %0, align 8, !tbaa !16
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 24
  %i.do = load ptr, ptr %i.dn, align 8
  call void %i.do(ptr dead_on_unwind nonnull writable sret(%"class.mlir::InFlightDiagnostic") align 8 %17, ptr noundef nonnull align 8 dereferenceable(8) %0, ptr %i.dj, ptr noundef nonnull align 8 dereferenceable(34) %18) #25
  %i.dp = call noundef nonnull align 8 dereferenceable(208) ptr @_ZNO4mlir18InFlightDiagnosticlsIRA101_KcEEOS0_OT_(ptr noundef nonnull align 8 dereferenceable(208) %17, ptr noundef nonnull align 1 dereferenceable(101) @.str.83)
  %i.dq = call noundef nonnull align 8 dereferenceable(208) ptr @_ZNO4mlir18InFlightDiagnosticlsIRNS_4TypeEEEOS0_OT_(ptr noundef nonnull align 8 dereferenceable(208) %i.dp, ptr noundef nonnull align 8 dereferenceable(8) %13)
  %i.dr = call i8 @_ZNK4mlir18InFlightDiagnosticcvN4llvm13LogicalResultEEv(ptr noundef nonnull align 8 dereferenceable(208) %i.dq) #25
  call void @_ZN4mlir18InFlightDiagnosticD2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %17) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #25
  br label %.critedge87

.critedge89:                                      ; preds = %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #25
  call void @_ZN4mlir14OperationState8addTypesEN4llvm8ArrayRefINS_4TypeEEE(ptr noundef nonnull align 8 dereferenceable(304) %1, ptr nonnull %9, i64 1)
  %i.ds = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.dt = call i8 @_ZN4mlir11OpAsmParser15resolveOperandsIRN4llvm8ArrayRefINS0_17UnresolvedOperandEEERNS3_INS_4TypeEEEvEENS2_11ParseResultEOT_OT0_NS2_5SMLocERNS2_15SmallVectorImplINS_5ValueEEE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %8, ptr %i.f, ptr noundef nonnull align 8 dereferenceable(16) %i.ds)
  %i.du = trunc nuw i8 %i.dt to i1
  br i1 %i.du, label %.critedge.i.i, label %.critedge87

.critedge.i.i:                                    ; preds = %.critedge89
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #25
  %i.dv = call { ptr, ptr } @_ZN4llvm4castIN4mlir10ShapedTypeENS1_4TypeEEEDcRKT0_(ptr noundef nonnull align 8 dereferenceable(8) %9) ; 2 uses
  %i.dw = extractvalue { ptr, ptr } %i.dv, 0
  store ptr %i.dw, ptr %19, align 8
  %i.dx = getelementptr inbounds nuw i8, ptr %19, i64 8
  %i.dy = extractvalue { ptr, ptr } %i.dv, 1
  store ptr %i.dy, ptr %i.dx, align 8
  %i.dz = call noundef ptr @_ZNK4mlir4Type10getContextEv(ptr noundef nonnull align 8 dereferenceable(8) %9) #25
  %i.ea = call ptr @_ZN4mlir11IntegerType3getEPNS_11MLIRContextEjNS0_19SignednessSemanticsE(ptr noundef %i.dz, i32 noundef 1, i32 noundef 0) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  %i.eb = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i8 0, ptr %i.eb, align 8, !tbaa !177
  %i.ec = call { ptr, ptr } @_ZNK4mlir10ShapedType9cloneWithESt8optionalIN4llvm8ArrayRefIlEEENS_4TypeE(ptr noundef nonnull align 8 dereferenceable(16) %19, ptr noundef nonnull byval(%"class.std::optional.825") align 8 %2, ptr %i.ea) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  %i.ed = extractvalue { ptr, ptr } %i.ec, 0
  %i.ee = load ptr, ptr %0, align 8, !tbaa !16
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 760
  %i.eg = load ptr, ptr %i.ef, align 8
  %i.eh = call i8 %i.eg(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(28) %5, ptr %i.ed, ptr noundef nonnull align 8 dereferenceable(16) %i.ds) #25, !inline_history !392
  %i.ei = trunc nuw i8 %i.eh to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #25
  br i1 %i.ei, label %.critedge.i.i96, label %.critedge87

.critedge.i.i96:                                  ; preds = %.critedge.i.i
  %.sroa.07.0.copyload = load ptr, ptr %9, align 8, !tbaa !302
  %i.ej = load ptr, ptr %0, align 8, !tbaa !16
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 760
  %i.el = load ptr, ptr %i.ek, align 8
  %i.em = call i8 %i.el(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(28) %6, ptr %.sroa.07.0.copyload, ptr noundef nonnull align 8 dereferenceable(16) %i.ds) #25, !inline_history !392
  br label %.critedge87

.critedge87:                                      ; preds = %.critedge.i.i96, %.critedge.i.i, %.critedge, %.critedge89, %.loopexit, %.thread, %bb.l, %bb.k, %bb.j, %bb.g, %bb.e, %bb.d, %bb.c, %bb.b, %bb.a, %bb.i
  %.sroa.0130.2 = phi i8 [ %i.dr, %.loopexit ], [ 0, %bb.a ], [ 0, %bb.b ], [ 0, %bb.c ], [ 0, %bb.d ], [ 0, %bb.e ], [ %i.bj, %bb.i ], [ 0, %.critedge ], [ 0, %bb.g ], [ 0, %bb.j ], [ 0, %bb.k ], [ 0, %.thread ], [ 0, %bb.l ], [ %i.em, %.critedge.i.i96 ], [ 0, %.critedge89 ], [ 0, %.critedge.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  ret i8 %.sroa.0130.2
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal fastcc range(i8 0, 2) i8 @"_ZZN4mlir3ptr12MaskedLoadOp5parseERNS_11OpAsmParserERNS_14OperationStateEENK3$_0clISt8optionalIlEEEN4llvm11ParseResultERT_"(ptr %.0.val, ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #4 align 2 {
bb.a:
  %1 = alloca %class.anon.1574, align 8           ; 4 uses
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = load ptr, ptr %.0.val, align 8, !tbaa !16
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 424
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = tail call i8 %i.d(ptr noundef nonnull align 8 dereferenceable(8) %.0.val, ptr nonnull @.str.49, i64 4) #25
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 0, ptr %i.g, align 8, !tbaa !116
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #25
  store ptr %.0.val, ptr %1, align 8, !tbaa !393
  %i.h = call i16 @_ZN4mlir9AsmParser28parseOptionalIntegerAndCheckIlZNS0_20parseOptionalIntegerIlEENS_19OptionalParseResultERT_EUlRN4llvm5APIntEE_EES3_S5_OT0_(ptr noundef nonnull align 8 dereferenceable(8) %.0.val, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #25
  %i.i = and i16 %i.h, 257
  %or.cond.not = icmp eq i16 %i.i, 257
  br i1 %or.cond.not, label %.critedge, label %bb.d

.critedge:                                        ; preds = %bb.c
  %i.j = load i64, ptr %i.a, align 8, !tbaa !64
  store i64 %i.j, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 1, ptr %.sroa.4.0..sroa_idx, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %.critedge
  %.sroa.06.0 = phi i8 [ 0, %bb.c ], [ 1, %.critedge ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.b
  %.sroa.06.1 = phi i8 [ 1, %bb.b ], [ %.sroa.06.0, %bb.d ]
  ret i8 %.sroa.06.1
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4mlir3ptr12MaskedLoadOp5printERNS_12OpAsmPrinterE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.mlir::DictionaryAttr", align 8 ; 4 uses
  %3 = alloca %"class.llvm::SmallVector.544", align 8 ; 8 uses
  %4 = alloca %"struct.mlir::detail::TypedValue.150", align 8 ; 4 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !16
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef nonnull align 8 dereferenceable(48) ptr %i.c(ptr noundef nonnull align 8 dereferenceable(16) %1) #25, !inline_history !350 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 32 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !195  ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !191
  %.not.i.i = icmp ult ptr %i.f, %i.h
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEh(ptr noundef nonnull align 8 dereferenceable(48) %i.d, i8 noundef zeroext 32) #25 ; 0 uses
  br label %_ZN4mlirlsINS_12OpAsmPrinterEcTnPNSt9enable_ifIXaaaaaaaaaantsr3std14is_convertibleIRT0_RNS_5ValueEEE5valuentsr3std14is_convertibleIS4_RNS_4TypeEEE5valuentsr3std14is_convertibleIS4_RNS_9AttributeEEE5valuentsr3std14is_convertibleIS4_NS_10ValueRangeEEE5valuentsr3std14is_convertibleIS4_RN4llvm7APFloatEEE5valuentsr4llvm9is_one_ofIS3_bfdEE5valueES3_E4typeELPc0EvEERT_SK_RKS3_.exit

bb.c:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 1
  store ptr %i.j, ptr %i.e, align 8, !tbaa !195
  store i8 32, ptr %i.f, align 1, !tbaa !115
  br label %_ZN4mlirlsINS_12OpAsmPrinterEcTnPNSt9enable_ifIXaaaaaaaaaantsr3std14is_convertibleIRT0_RNS_5ValueEEE5valuentsr3std14is_convertibleIS4_RNS_4TypeEEE5valuentsr3std14is_convertibleIS4_RNS_9AttributeEEE5valuentsr3std14is_convertibleIS4_NS_10ValueRangeEEE5valuentsr3std14is_convertibleIS4_RN4llvm7APFloatEEE5valuentsr4llvm9is_one_ofIS3_bfdEE5valueES3_E4typeELPc0EvEERT_SK_RKS3_.exit

_ZN4mlirlsINS_12OpAsmPrinterEcTnPNSt9enable_ifIXaaaaaaaaaantsr3std14is_convertibleIRT0_RNS_5ValueEEE5valuentsr3std14is_convertibleIS4_RNS_4TypeEEE5valuentsr3std14is_convertibleIS4_RNS_9AttributeEEE5valuentsr3std14is_convertibleIS4_NS_10ValueRangeEEE5valuentsr3std14is_convertibleIS4_RN4llvm7APFloatEEE5valuentsr4llvm9is_one_ofIS3_bfdEE5valueES3_E4typeELPc0EvEERT_SK_RKS3_.exit: ; preds = %bb.b, %bb.c
  %i.k = load ptr, ptr %0, align 8, !tbaa !43
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 72
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !22
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %.sroa.0.0.copyload.i.i.i.i = load ptr, ptr %i.n, align 8, !tbaa !25
  %i.o = load ptr, ptr %1, align 8, !tbaa !16
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 168
  %i.q = load ptr, ptr %i.p, align 8
  tail call void %i.q(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr %.sroa.0.0.copyload.i.i.i.i) #25, !inline_history !374
  %i.r = load ptr, ptr %1, align 8, !tbaa !16
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = tail call noundef nonnull align 8 dereferenceable(48) ptr %i.t(ptr noundef nonnull align 8 dereferenceable(16) %1) #25, !inline_history !376 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !191
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 32 ; 3 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !195  ; 2 uses
  %i.z = icmp eq ptr %i.w, %i.y
  br i1 %i.z, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZN4mlirlsINS_12OpAsmPrinterEcTnPNSt9enable_ifIXaaaaaaaaaantsr3std14is_convertibleIRT0_RNS_5ValueEEE5valuentsr3std14is_convertibleIS4_RNS_4TypeEEE5valuentsr3std14is_convertibleIS4_RNS_9AttributeEEE5valuentsr3std14is_convertibleIS4_NS_10ValueRangeEEE5valuentsr3std14is_convertibleIS4_RN4llvm7APFloatEEE5valuentsr4llvm9is_one_ofIS3_bfdEE5valueES3_E4typeELPc0EvEERT_SK_RKS3_.exit
  %i.aa = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.u, ptr noundef nonnull @.str.84, i64 noundef 1) #25 ; 0 uses
  br label %_ZN4mlirlsINS_12OpAsmPrinterEA2_cTnPNSt9enable_ifIXaaaaaaaaaantsr3std14is_convertibleIRT0_RNS_5ValueEEE5valuentsr3std14is_convertibleIS5_RNS_4TypeEEE5valuentsr3std14is_convertibleIS5_RNS_9AttributeEEE5valuentsr3std14is_convertibleIS5_NS_10ValueRangeEEE5valuentsr3std14is_convertibleIS5_RN4llvm7APFloatEEE5valuentsr4llvm9is_one_ofIS4_bfdEE5valueES4_E4typeELPS2_0EvEERT_SL_RKS4_.exit

bb.e:                                             ; preds = %_ZN4mlirlsINS_12OpAsmPrinterEcTnPNSt9enable_ifIXaaaaaaaaaantsr3std14is_convertibleIRT0_RNS_5ValueEEE5valuentsr3std14is_convertibleIS4_RNS_4TypeEEE5valuentsr3std14is_convertibleIS4_RNS_9AttributeEEE5valuentsr3std14is_convertibleIS4_NS_10ValueRangeEEE5valuentsr3std14is_convertibleIS4_RN4llvm7APFloatEEE5valuentsr4llvm9is_one_ofIS3_bfdEE5valueES3_E4typeELPc0EvEERT_SK_RKS3_.exit
  store i8 44, ptr %i.y, align 1
  %i.ab = load ptr, ptr %i.x, align 8, !tbaa !195
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 1
  store ptr %i.ac, ptr %i.x, align 8, !tbaa !195
  br label %_ZN4mlirlsINS_12OpAsmPrinterEA2_cTnPNSt9enable_ifIXaaaaaaaaaantsr3std14is_convertibleIRT0_RNS_5ValueEEE5valuentsr3std14is_convertibleIS5_RNS_4TypeEEE5valuentsr3std14is_convertibleIS5_RNS_9AttributeEEE5valuentsr3std14is_convertibleIS5_NS_10ValueRangeEEE5valuentsr3std14is_convertibleIS5_RN4llvm7APFloatEEE5valuentsr4llvm9is_one_ofIS4_bfdEE5valueES4_E4typeELPS2_0EvEERT_SL_RKS4_.exit

_ZN4mlirlsINS_12OpAsmPrinterEA2_cTnPNSt9enable_ifIXaaaaaaaaaantsr3std14is_convertibleIRT0_RNS_5ValueEEE5valuentsr3std14is_convertibleIS5_RNS_4TypeEEE5valuentsr3std14is_convertibleIS5_RNS_9AttributeEEE5valuentsr3std14is_convertibleIS5_NS_10ValueRangeEEE5valuentsr3std14is_convertibleIS5_RN4llvm7APFloatEEE5valuentsr4llvm9is_one_ofIS4_bfdEE5valueES4_E4typeELPS2_0EvEERT_SL_RKS4_.exit: ; preds = %bb.d, %bb.e
  %i.ad = load ptr, ptr %1, align 8, !tbaa !16
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %i.af = load ptr, ptr %i.ae, align 8
  %i.ag = tail call noundef nonnull align 8 dereferenceable(48) ptr %i.af(ptr noundef nonnull align 8 dereferenceable(16) %1) #25, !inline_history !350 ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 32 ; 2 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !195 ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ag, i64 24
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !191
  %.not.i.i33 = icmp ult ptr %i.ai, %i.ak
  br i1 %.not.i.i33, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZN4mlirlsINS_12OpAsmPrinterEA2_cTnPNSt9enable_ifIXaaaaaaaaaantsr3std14is_convertibleIRT0_RNS_5ValueEEE5valuentsr3std14is_convertibleIS5_RNS_4TypeEEE5valuentsr3std14is_convertibleIS5_RNS_9AttributeEEE5valuentsr3std14is_convertibleIS5_NS_10ValueRangeEEE5valuentsr3std14is_convertibleIS5_RN4llvm7APFloatEEE5valuentsr4llvm9is_one_ofIS4_bfdEE5valueES4_E4typeELPS2_0EvEERT_SL_RKS4_.exit
  %i.al = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEh(ptr noundef nonnull align 8 dereferenceable(48) %i.ag, i8 noundef zeroext 32) #25 ; 0 uses
  br label %_ZN4mlirlsINS_12OpAsmPrinterEcTnPNSt9enable_ifIXaaaaaaaaaantsr3std14is_convertibleIRT0_RNS_5ValueEEE5valuentsr3std14is_convertibleIS4_RNS_4TypeEEE5valuentsr3std14is_convertibleIS4_RNS_9AttributeEEE5valuentsr3std14is_convertibleIS4_NS_10ValueRangeEEE5valuentsr3std14is_convertibleIS4_RN4llvm7APFloatEEE5valuentsr4llvm9is_one_ofIS3_bfdEE5valueES3_E4typeELPc0EvEERT_SK_RKS3_.exit34

bb.g:                                             ; preds = %_ZN4mlirlsINS_12OpAsmPrinterEA2_cTnPNSt9enable_ifIXaaaaaaaaaantsr3std14is_convertibleIRT0_RNS_5ValueEEE5valuentsr3std14is_convertibleIS5_RNS_4TypeEEE5valuentsr3std14is_convertibleIS5_RNS_9AttributeEEE5valuentsr3std14is_convertibleIS5_NS_10ValueRangeEEE5valuentsr3std14is_convertibleIS5_RN4llvm7APFloatEEE5valuentsr4llvm9is_one_ofIS4_bfdEE5valueES4_E4typeELPS2_0EvEERT_SL_RKS4_.exit
  %i.am = getelementptr inbounds nuw i8, ptr %i.ai, i64 1
  store ptr %i.am, ptr %i.ah, align 8, !tbaa !195
  store i8 32, ptr %i.ai, align 1, !tbaa !115
  br label %_ZN4mlirlsINS_12OpAsmPrinterEcTnPNSt9enable_ifIXaaaaaaaaaantsr3std14is_convertibleIRT0_RNS_5ValueEEE5valuentsr3std14is_convertibleIS4_RNS_4TypeEEE5valuentsr3std14is_convertibleIS4_RNS_9AttributeEEE5valuentsr3std14is_convertibleIS4_NS_10ValueRangeEEE5valuentsr3std14is_convertibleIS4_RN4llvm7APFloatEEE5valuentsr4llvm9is_one_ofIS3_bfdEE5valueES3_E4typeELPc0EvEERT_SK_RKS3_.exit34

_ZN4mlirlsINS_12OpAsmPrinterEcTnPNSt9enable_ifIXaaaaaaaaaantsr3std14is_convertibleIRT0_RNS_5ValueEEE5valuentsr3std14is_convertibleIS4_RNS_4TypeEEE5valuentsr3std14is_convertibleIS4_RNS_9AttributeEEE5valuentsr3std14is_convertibleIS4_NS_10ValueRangeEEE5valuentsr3std14is_convertibleIS4_RN4llvm7APFloatEEE5valuentsr4llvm9is_one_ofIS3_bfdEE5valueES3_E4typeELPc0EvEERT_SK_RKS3_.exit34: ; preds = %bb.f, %bb.g
  %i.an = load ptr, ptr %0, align 8, !tbaa !43
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 72
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !22
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 56
  %.sroa.0.0.copyload.i.i.i.i36 = load ptr, ptr %i.aq, align 8, !tbaa !25
  %i.ar = load ptr, ptr %1, align 8, !tbaa !16
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 168
  %i.at = load ptr, ptr %i.as, align 8
  tail call void %i.at(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr %.sroa.0.0.copyload.i.i.i.i36) #25, !inline_history !374
  %i.au = load ptr, ptr %1, align 8, !tbaa !16
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  %i.aw = load ptr, ptr %i.av, align 8
  %i.ax = tail call noundef nonnull align 8 dereferenceable(48) ptr %i.aw(ptr noundef nonnull align 8 dereferenceable(16) %1) #25, !inline_history !376 ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 24
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !191
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ax, i64 32 ; 3 uses
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !195 ; 2 uses
  %i.bc = icmp eq ptr %i.az, %i.bb
  br i1 %i.bc, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_ZN4mlirlsINS_12OpAsmPrinterEcTnPNSt9enable_ifIXaaaaaaaaaantsr3std14is_convertibleIRT0_RNS_5ValueEEE5valuentsr3std14is_convertibleIS4_RNS_4TypeEEE5valuentsr3std14is_convertibleIS4_RNS_9AttributeEEE5valuentsr3std14is_convertibleIS4_NS_10ValueRangeEEE5valuentsr3std14is_convertibleIS4_RN4llvm7APFloatEEE5valuentsr4llvm9is_one_ofIS3_bfdEE5valueES3_E4typeELPc0EvEERT_SK_RKS3_.exit34
  %i.bd = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.ax, ptr noundef nonnull @.str.84, i64 noundef 1) #25 ; 0 uses
  br label %_ZN4mlirlsINS_12OpAsmPrinterEA2_cTnPNSt9enable_ifIXaaaaaaaaaantsr3std14is_convertibleIRT0_RNS_5ValueEEE5valuentsr3std14is_convertibleIS5_RNS_4TypeEEE5valuentsr3std14is_convertibleIS5_RNS_9AttributeEEE5valuentsr3std14is_convertibleIS5_NS_10ValueRangeEEE5valuentsr3std14is_convertibleIS5_RN4llvm7APFloatEEE5valuentsr4llvm9is_one_ofIS4_bfdEE5valueES4_E4typeELPS2_0EvEERT_SL_RKS4_.exit38

bb.i:                                             ; preds = %_ZN4mlirlsINS_12OpAsmPrinterEcTnPNSt9enable_ifIXaaaaaaaaaantsr3std14is_convertibleIRT0_RNS_5ValueEEE5valuentsr3std14is_convertibleIS4_RNS_4TypeEEE5valuentsr3std14is_convertibleIS4_RNS_9AttributeEEE5valuentsr3std14is_convertibleIS4_NS_10ValueRangeEEE5valuentsr3std14is_convertibleIS4_RN4llvm7APFloatEEE5valuentsr4llvm9is_one_ofIS3_bfdEE5valueES3_E4typeELPc0EvEERT_SK_RKS3_.exit34
  store i8 44, ptr %i.bb, align 1
  %i.be = load ptr, ptr %i.ba, align 8, !tbaa !195
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 1
  store ptr %i.bf, ptr %i.ba, align 8, !tbaa !195
  br label %_ZN4mlirlsINS_12OpAsmPrinterEA2_cTnPNSt9enable_ifIXaaaaaaaaaantsr3std14is_convertibleIRT0_RNS_5ValueEEE5valuentsr3std14is_convertibleIS5_RNS_4TypeEEE5valuentsr3std14is_convertibleIS5_RNS_9AttributeEEE5valuentsr3std14is_convertibleIS5_NS_10ValueRangeEEE5valuentsr3std14is_convertibleIS5_RN4llvm7APFloatEEE5valuentsr4llvm9is_one_ofIS4_bfdEE5valueES4_E4typeELPS2_0EvEERT_SL_RKS4_.exit38

_ZN4mlirlsINS_12OpAsmPrinterEA2_cTnPNSt9enable_ifIXaaaaaaaaaantsr3std14is_convertibleIRT0_RNS_5ValueEEE5valuentsr3std14is_convertibleIS5_RNS_4TypeEEE5valuentsr3std14is_convertibleIS5_RNS_9AttributeEEE5valuentsr3std14is_convertibleIS5_NS_10ValueRangeEEE5valuentsr3std14is_convertibleIS5_RN4llvm7APFloatEEE5valuentsr4llvm9is_one_ofIS4_bfdEE5valueES4_E4typeELPS2_0EvEERT_SL_RKS4_.exit38: ; preds = %bb.h, %bb.i
  %i.bg = load ptr, ptr %1, align 8, !tbaa !16
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  %i.bi = load ptr, ptr %i.bh, align 8
  %i.bj = tail call noundef nonnull align 8 dereferenceable(48) ptr %i.bi(ptr noundef nonnull align 8 dereferenceable(16) %1) #25, !inline_history !350 ; 3 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 32 ; 2 uses
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !195 ; 3 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bj, i64 24
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !191
  %.not.i.i39 = icmp ult ptr %i.bl, %i.bn
  br i1 %.not.i.i39, label %bb.k, label %bb.j

bb.j:                                             ; preds = %_ZN4mlirlsINS_12OpAsmPrinterEA2_cTnPNSt9enable_ifIXaaaaaaaaaantsr3std14is_convertibleIRT0_RNS_5ValueEEE5valuentsr3std14is_convertibleIS5_RNS_4TypeEEE5valuentsr3std14is_convertibleIS5_RNS_9AttributeEEE5valuentsr3std14is_convertibleIS5_NS_10ValueRangeEEE5valuentsr3std14is_convertibleIS5_RN4llvm7APFloatEEE5valuentsr4llvm9is_one_ofIS4_bfdEE5valueES4_E4typeELPS2_0EvEERT_SL_RKS4_.exit38
  %i.bo = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEh(ptr noundef nonnull align 8 dereferenceable(48) %i.bj, i8 noundef zeroext 32) #25 ; 0 uses
  br label %_ZN4mlirlsINS_12OpAsmPrinterEcTnPNSt9enable_ifIXaaaaaaaaaantsr3std14is_convertibleIRT0_RNS_5ValueEEE5valuentsr3std14is_convertibleIS4_RNS_4TypeEEE5valuentsr3std14is_convertibleIS4_RNS_9AttributeEEE5valuentsr3std14is_convertibleIS4_NS_10ValueRangeEEE5valuentsr3std14is_convertibleIS4_RN4llvm7APFloatEEE5valuentsr4llvm9is_one_ofIS3_bfdEE5valueES3_E4typeELPc0EvEERT_SK_RKS3_.exit40

bb.k:                                             ; preds = %_ZN4mlirlsINS_12OpAsmPrinterEA2_cTnPNSt9enable_ifIXaaaaaaaaaantsr3std14is_convertibleIRT0_RNS_5ValueEEE5valuentsr3std14is_convertibleIS5_RNS_4TypeEEE5valuentsr3std14is_convertibleIS5_RNS_9AttributeEEE5valuentsr3std14is_convertibleIS5_NS_10ValueRangeEEE5valuentsr3std14is_convertibleIS5_RN4llvm7APFloatEEE5valuentsr4llvm9is_one_ofIS4_bfdEE5valueES4_E4typeELPS2_0EvEERT_SL_RKS4_.exit38
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bl, i64 1
  store ptr %i.bp, ptr %i.bk, align 8, !tbaa !195
  store i8 32, ptr %i.bl, align 1, !tbaa !115
  br label %_ZN4mlirlsINS_12OpAsmPrinterEcTnPNSt9enable_ifIXaaaaaaaaaantsr3std14is_convertibleIRT0_RNS_5ValueEEE5valuentsr3std14is_convertibleIS4_RNS_4TypeEEE5valuentsr3std14is_convertibleIS4_RNS_9AttributeEEE5valuentsr3std14is_convertibleIS4_NS_10ValueRangeEEE5valuentsr3std14is_convertibleIS4_RN4llvm7APFloatEEE5valuentsr4llvm9is_one_ofIS3_bfdEE5valueES3_E4typeELPc0EvEERT_SK_RKS3_.exit40

_ZN4mlirlsINS_12OpAsmPrinterEcTnPNSt9enable_ifIXaaaaaaaaaantsr3std14is_convertibleIRT0_RNS_5ValueEEE5valuentsr3std14is_convertibleIS4_RNS_4TypeEEE5valuentsr3std14is_convertibleIS4_RNS_9AttributeEEE5valuentsr3std14is_convertibleIS4_NS_10ValueRangeEEE5valuentsr3std14is_convertibleIS4_RN4llvm7APFloatEEE5valuentsr4llvm9is_one_ofIS3_bfdEE5valueES3_E4typeELPc0EvEERT_SK_RKS3_.exit40: ; preds = %bb.j, %bb.k
  %i.bq = load ptr, ptr %0, align 8, !tbaa !43
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 72
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !22
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 88
  %.sroa.0.0.copyload.i.i.i.i42 = load ptr, ptr %i.bt, align 8, !tbaa !25
  %i.bu = load ptr, ptr %1, align 8, !tbaa !16
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 168
  %i.bw = load ptr, ptr %i.bv, align 8
  tail call void %i.bw(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr %.sroa.0.0.copyload.i.i.i.i42) #25, !inline_history !374
end_hunk_1
