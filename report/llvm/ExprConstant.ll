Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/ExprConstant?download=true
inline.NumInlined: 27743
inline.NumDeleted: 6656
loop-unroll.NumCompletelyUnrolled: 24
loop-unroll.NumRuntimeUnrolled: 13
loop-unroll.NumUnrolled: 37
begin_hunk_0_@_ZN12_GLOBAL__N_116IntExprEvaluator17VisitOffsetOfExprEPKN5clang12OffsetOfExprE:bb.a
bb.bn:                                            ; preds = %bb.bl
  %i.kw = zext i32 %i.kt to i64
  %i.kx = load ptr, ptr %i.kr, align 8, !tbaa !743
  %i.ky = getelementptr inbounds nuw [12 x i8], ptr %i.kx, i64 %i.kw ; 2 uses
  store i64 %i.kl, ptr %i.ky, align 1
  %.sroa.38.0..sroa_idx.i.i.i.i.i.i.i138 = getelementptr inbounds nuw i8, ptr %i.ky, i64 8
  store i8 1, ptr %.sroa.38.0..sroa_idx.i.i.i.i.i.i.i138, align 1
  %i.kz = load i32, ptr %i.ks, align 8, !tbaa !745
  %i.la = add i32 %i.kz, 1
  store i32 %i.la, ptr %i.ks, align 8, !tbaa !745
  br label %_ZN12_GLOBAL__N_117ExprEvaluatorBaseINS_16IntExprEvaluatorEE5ErrorEPKN5clang4ExprE.exit

bb.bo:                                            ; preds = %_ZNK5clang4Type18getAsCXXRecordDeclEv.exit
  %i.lb = load ptr, ptr %0, align 8, !tbaa !1581, !nonnull !412, !align !413
  %i.lc = getelementptr inbounds nuw i8, ptr %i.lb, i64 16
  %i.ld = load ptr, ptr %i.lc, align 8, !tbaa !794, !nonnull !412, !align !413
  %i.le = call noundef nonnull align 8 dereferenceable(80) ptr @_ZNK5clang10ASTContext18getASTRecordLayoutEPKNS_10RecordDeclE(ptr noundef nonnull align 8 dereferenceable(23904) %i.ld, ptr noundef nonnull %spec.select211.a) #24
  %i.lf = getelementptr inbounds nuw i8, ptr %i.is, i64 16
  %i.lg = load ptr, ptr %i.lf, align 8, !tbaa !921
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.lg, align 8, !tbaa !440 ; 2 uses
  %i.lh = and i64 %.sroa.0.0.copyload.i.i, -16
  %i.li = inttoptr i64 %i.lh to ptr
  %i.lj = load ptr, ptr %i.li, align 16, !tbaa !441 ; 2 uses
  %i.lk = getelementptr inbounds nuw i8, ptr %i.lj, i64 8
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %i.lk, align 8, !tbaa !440
  %i.ll = and i64 %.sroa.0.0.copyload.i.i.i, 15
  %.not.i.i141 = icmp eq i64 %i.ll, 0
  br i1 %.not.i.i141, label %_ZNK5clang16CXXBaseSpecifier7getTypeEv.exit, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.lm = call { ptr, i64 } @_ZN5clang8QualType27getSplitUnqualifiedTypeImplES0_(i64 %.sroa.0.0.copyload.i.i) #24
  %i.ln = extractvalue { ptr, i64 } %i.lm, 0
  br label %_ZNK5clang16CXXBaseSpecifier7getTypeEv.exit

_ZNK5clang16CXXBaseSpecifier7getTypeEv.exit:      ; preds = %bb.bo, %bb.bp
  %.sroa.03.0.in.in.i.i = phi ptr [ %i.ln, %bb.bp ], [ %i.lj, %bb.bo ]
  %.sroa.03.0.in.i.i = ptrtoint ptr %.sroa.03.0.in.in.i.i to i64 ; 2 uses
  %.sroa.03.0.i.i = and i64 %.sroa.03.0.in.i.i, -8
  %i.lo = and i64 %.sroa.03.0.in.i.i, -16
  %i.lp = inttoptr i64 %i.lo to ptr
  %i.lq = load ptr, ptr %i.lp, align 16, !tbaa !441
  %i.lr = getelementptr inbounds nuw i8, ptr %i.lq, i64 8
  %.sroa.0.0.copyload.i.i.i.i143 = load i64, ptr %i.lr, align 8, !tbaa !440
  %i.ls = and i64 %.sroa.0.0.copyload.i.i.i.i143, -16
  %i.lt = inttoptr i64 %i.ls to ptr
  %i.lu = load ptr, ptr %i.lt, align 16, !tbaa !441 ; 3 uses
  %i.lv = getelementptr inbounds nuw i8, ptr %i.lu, i64 16
  %i.lw = load i8, ptr %i.lv, align 16            ; 3 uses
  %i.lx = add i8 %i.lw, -47
  %switch.i.i.i.i.i.i.i.i.i.i144 = icmp ult i8 %i.lx, 3
  %.not.i7.i145 = icmp ne ptr %i.lu, null
  %.not.i.not8.i146 = and i1 %.not.i7.i145, %switch.i.i.i.i.i.i.i.i.i.i144
  %i.ly = and i8 %i.lw, 62
  %spec.select.i.i.i147 = icmp eq i8 %i.ly, 48
  %or.cond.i148 = and i1 %spec.select.i.i.i147, %.not.i.not8.i146
  br i1 %or.cond.i148, label %bb.bq, label %bb.bs

bb.bq:                                            ; preds = %_ZNK5clang16CXXBaseSpecifier7getTypeEv.exit
  %i.lz = getelementptr inbounds nuw i8, ptr %i.lu, i64 24
  %i.ma = load ptr, ptr %i.lz, align 8, !tbaa !775 ; 3 uses
  %i.mb = icmp eq i8 %i.lw, 49
  br i1 %i.mb, label %bb.br, label %_ZN12_GLOBAL__N_117ExprEvaluatorBaseINS_16IntExprEvaluatorEE5ErrorEPKN5clang4ExprE.exit128

bb.br:                                            ; preds = %bb.bq
  %i.mc = getelementptr inbounds nuw i8, ptr %i.ma, i64 28
  %i.md = load i32, ptr %i.mc, align 4
  %i.me = and i32 %i.md, 127
  %i.mf = add nsw i32 %i.me, -60
  %i.mg = icmp ult i32 %i.mf, 3
  br i1 %i.mg, label %_ZN12_GLOBAL__N_117ExprEvaluatorBaseINS_16IntExprEvaluatorEE5ErrorEPKN5clang4ExprE.exit128, label %bb.bs

_ZN12_GLOBAL__N_117ExprEvaluatorBaseINS_16IntExprEvaluatorEE5ErrorEPKN5clang4ExprE.exit128: ; preds = %bb.br, %bb.bq
  %i.mh = call noundef ptr @_ZNK5clang13CXXRecordDecl13getDefinitionEv(ptr noundef nonnull align 8 dereferenceable(144) %i.ma) ; 2 uses
  %.not.not.i.i150 = icmp eq ptr %i.mh, null
  %spec.select212 = select i1 %.not.not.i.i150, ptr %i.ma, ptr %i.mh
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.mi = call noundef ptr @_ZNK5clang13CXXRecordDecl13getDefinitionEv(ptr noundef nonnull align 8 dereferenceable(144) %spec.select212)
  store ptr %i.mi, ptr %i.a, align 8, !tbaa !1478
  %i.mj = getelementptr inbounds nuw i8, ptr %i.le, i64 72
  %i.mk = load ptr, ptr %i.mj, align 8, !tbaa !1492
  %i.ml = getelementptr inbounds nuw i8, ptr %i.mk, i64 64
  %i.mm = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13CXXRecordDeclENS2_9CharUnitsENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E24lookupOrInsertIntoBucketIRKS5_JEEESt4pairIPSB_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.ml, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  %.fca.0.extract.i.i = extractvalue { ptr, i8 } %i.mm, 0
  %i.mn = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i.i, i64 8
  %.sroa.0.0.copyload.i159 = load i64, ptr %i.mn, align 8, !tbaa !446
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.mo = add nsw i64 %.sroa.0.0.copyload.i159, %.sroa.0174.0223
  br label %_ZN12_GLOBAL__N_117ExprEvaluatorBaseINS_16IntExprEvaluatorEE5ErrorEPKN5clang4ExprE.exit118

bb.bs:                                            ; preds = %bb.br, %_ZNK5clang16CXXBaseSpecifier7getTypeEv.exit
  %.val84 = load ptr, ptr %0, align 8, !tbaa !1581
  %i.mp = call ptr @_ZN5clang6interp5State6FFDiagEPKNS_4ExprEjj(ptr noundef nonnull align 8 dereferenceable(34) %.val84, ptr noundef nonnull %1, i32 noundef 113, i32 noundef 0) #24 ; 4 uses
  %i.mq = call i64 @_ZNK5clang4Stmt14getSourceRangeEv(ptr noundef nonnull align 8 dereferenceable(8) %1) #25 ; 2 uses
  %.not.i.i.i153 = icmp eq ptr %i.mp, null
  br i1 %.not.i.i.i153, label %_ZN12_GLOBAL__N_117ExprEvaluatorBaseINS_16IntExprEvaluatorEE5ErrorEPKN5clang4ExprE.exit, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.mr = load ptr, ptr %i.mp, align 8, !tbaa !801 ; 2 uses
  %.not.i.i.i.i.i.i154 = icmp eq ptr %i.mr, null
  br i1 %.not.i.i.i.i.i.i154, label %_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i.i.i.i157, label %bb.bu

_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i.i.i.i157: ; preds = %bb.bt
  %i.ms = getelementptr inbounds nuw i8, ptr %i.mp, i64 8
  %i.mt = load ptr, ptr %i.ms, align 8, !tbaa !805
  %i.mu = call noundef ptr @_ZN5clang20DiagStorageAllocator8AllocateEv(ptr noundef nonnull align 8 dereferenceable(14980) %i.mt) ; 2 uses
  store ptr %i.mu, ptr %i.mp, align 8, !tbaa !801
  br label %bb.bu

bb.bu:                                            ; preds = %_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i.i.i.i157, %bb.bt
  %i.mv = phi ptr [ %i.mu, %_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i.i.i.i157 ], [ %i.mr, %bb.bt ] ; 3 uses
  %i.mw = getelementptr inbounds nuw i8, ptr %i.mv, i64 416 ; 2 uses
  %i.mx = getelementptr inbounds nuw i8, ptr %i.mv, i64 424 ; 3 uses
  %i.my = load i32, ptr %i.mx, align 8, !tbaa !745 ; 2 uses
  %i.mz = getelementptr inbounds nuw i8, ptr %i.mv, i64 428
  %i.na = load i32, ptr %i.mz, align 4, !tbaa !744
  %.not.i5.i.i.i.i.i.i155 = icmp ult i32 %i.my, %i.na
  br i1 %.not.i5.i.i.i.i.i.i155, label %bb.bw, label %bb.bv, !prof !826

bb.bv:                                            ; preds = %bb.bu
  call void @_ZN4llvm23SmallVectorTemplateBaseIN5clang15CharSourceRangeELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %i.mw, i64 %i.mq, i8 1)
  br label %_ZN12_GLOBAL__N_117ExprEvaluatorBaseINS_16IntExprEvaluatorEE5ErrorEPKN5clang4ExprE.exit

bb.bw:                                            ; preds = %bb.bu
  %i.nb = zext i32 %i.my to i64
  %i.nc = load ptr, ptr %i.mw, align 8, !tbaa !743
  %i.nd = getelementptr inbounds nuw [12 x i8], ptr %i.nc, i64 %i.nb ; 2 uses
  store i64 %i.mq, ptr %i.nd, align 1
  %.sroa.38.0..sroa_idx.i.i.i.i.i.i.i156 = getelementptr inbounds nuw i8, ptr %i.nd, i64 8
  store i8 1, ptr %.sroa.38.0..sroa_idx.i.i.i.i.i.i.i156, align 1
  %i.ne = load i32, ptr %i.mx, align 8, !tbaa !745
  %i.nf = add i32 %i.ne, 1
  store i32 %i.nf, ptr %i.mx, align 8, !tbaa !745
  br label %_ZN12_GLOBAL__N_117ExprEvaluatorBaseINS_16IntExprEvaluatorEE5ErrorEPKN5clang4ExprE.exit

default.unreachable:                              ; preds = %bb.h
  unreachable

_ZN12_GLOBAL__N_117ExprEvaluatorBaseINS_16IntExprEvaluatorEE5ErrorEPKN5clang4ExprE.exit118: ; preds = %bb.h, %_ZN4llvm5APIntD2Ev.exit, %_ZN12_GLOBAL__N_117ExprEvaluatorBaseINS_16IntExprEvaluatorEE5ErrorEPKN5clang4ExprE.exit128, %bb.ay, %_ZNK5clang4Type5getAsINS_13ReferenceTypeEEEPKT_v.exit.i, %_ZNK5clang13ReferenceType14getPointeeTypeEv.exit.i
  %.sroa.0170.5.ph = phi i64 [ %.sroa.0170.0222, %bb.h ], [ %.sroa.0.0.copyload.i121, %bb.ay ], [ %.sroa.0.0.in.i.sroa.speculate.load._ZNK5clang13ReferenceType14getPointeeTypeEv.exit.i, %_ZNK5clang13ReferenceType14getPointeeTypeEv.exit.i ], [ %.sroa.0.0.copyload.i121, %_ZNK5clang4Type5getAsINS_13ReferenceTypeEEEPKT_v.exit.i ], [ %.sroa.03.0.i.i, %_ZN12_GLOBAL__N_117ExprEvaluatorBaseINS_16IntExprEvaluatorEE5ErrorEPKN5clang4ExprE.exit128 ], [ %.sroa.0170.1, %_ZN4llvm5APIntD2Ev.exit ]
  %.sroa.0174.6.ph = phi i64 [ %.sroa.0174.0223, %bb.h ], [ %i.hm, %bb.ay ], [ %i.hm, %_ZNK5clang13ReferenceType14getPointeeTypeEv.exit.i ], [ %i.hm, %_ZNK5clang4Type5getAsINS_13ReferenceTypeEEEPKT_v.exit.i ], [ %i.mo, %_ZN12_GLOBAL__N_117ExprEvaluatorBaseINS_16IntExprEvaluatorEE5ErrorEPKN5clang4ExprE.exit128 ], [ %.sroa.0174.2, %_ZN4llvm5APIntD2Ev.exit ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not = icmp eq i64 %indvars.iv.next, %i.ad
  br i1 %.not, label %bb.bx, label %bb.h, !llvm.loop !1620

bb.bx:                                            ; preds = %_ZN12_GLOBAL__N_117ExprEvaluatorBaseINS_16IntExprEvaluatorEE5ErrorEPKN5clang4ExprE.exit118
  %.val91 = load ptr, ptr %0, align 8, !tbaa !1581
  %i.ng = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val92 = load ptr, ptr %i.ng, align 8, !tbaa !1583
  %i.nh = getelementptr i8, ptr %1, i64 8
  %.val93 = load i64, ptr %i.nh, align 8, !tbaa !440
  %i.ni = getelementptr i8, ptr %.val91, i64 16
  %.val91.val = load ptr, ptr %i.ni, align 8, !tbaa !794
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  call void @_ZNK5clang10ASTContext12MakeIntValueEmNS_8QualTypeE(ptr dead_on_unwind nonnull writable sret(%"class.llvm::APSInt") align 8 %3, ptr noundef nonnull align 8 dereferenceable(23904) %.val91.val, i64 noundef %.sroa.0174.6.ph, i64 %.val93)
  %i.nj = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 2 uses
  %i.nk = load i8, ptr %i.nj, align 4
  %i.nl = and i8 %i.nk, -2
  store i8 %i.nl, ptr %i.nj, align 4
  %i.nm = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.nn = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.no = getelementptr inbounds nuw i8, ptr %2, i64 20
  store i32 2, ptr %2, align 8, !tbaa !769
  %i.np = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.nq = load i32, ptr %i.np, align 8, !tbaa !454
  %i.nr = load i64, ptr %3, align 8
  store i32 0, ptr %i.np, align 8, !tbaa !454
  %i.ns = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.nt = load i8, ptr %i.ns, align 4, !tbaa !456, !range !453, !noundef !412
  store i64 %i.nr, ptr %i.nm, align 8
  store i32 %i.nq, ptr %i.nn, align 8, !tbaa !454
  store i8 %i.nt, ptr %i.no, align 4, !tbaa !456
  %i.nu = call noundef nonnull align 8 dereferenceable(56) ptr @_ZN5clang7APValueaSEOS0_(ptr noundef nonnull align 8 dereferenceable(56) %.val92, ptr noundef nonnull align 8 dereferenceable(56) %2) #24 ; 0 uses
  %i.nv = load i32, ptr %2, align 8, !tbaa !769
  %switch.i.i.i.i = icmp ult i32 %i.nv, 2
  br i1 %switch.i.i.i.i, label %_ZN5clang7APValueD2Ev.exit.i.i.i, label %bb.by

bb.by:                                            ; preds = %bb.bx
  call void @_ZN5clang7APValue24DestroyDataAndMakeUninitEv(ptr noundef nonnull align 8 dereferenceable(56) %2) #24
  br label %_ZN5clang7APValueD2Ev.exit.i.i.i

_ZN5clang7APValueD2Ev.exit.i.i.i:                 ; preds = %bb.by, %bb.bx
  %i.nw = load i32, ptr %i.np, align 8, !tbaa !454
  %i.nx = icmp ugt i32 %i.nw, 64
  br i1 %i.nx, label %bb.bz, label %_ZN12_GLOBAL__N_116IntExprEvaluator7SuccessEN5clang9CharUnitsEPKNS1_4ExprE.exit

bb.bz:                                            ; preds = %_ZN5clang7APValueD2Ev.exit.i.i.i
  %i.ny = load ptr, ptr %3, align 8, !tbaa !440   ; 2 uses
  %i.nz = icmp eq ptr %i.ny, null
  br i1 %i.nz, label %_ZN12_GLOBAL__N_116IntExprEvaluator7SuccessEN5clang9CharUnitsEPKNS1_4ExprE.exit, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  call void @_ZdaPv(ptr noundef nonnull %i.ny) #26
  br label %_ZN12_GLOBAL__N_116IntExprEvaluator7SuccessEN5clang9CharUnitsEPKNS1_4ExprE.exit

_ZN12_GLOBAL__N_116IntExprEvaluator7SuccessEN5clang9CharUnitsEPKNS1_4ExprE.exit: ; preds = %_ZN5clang7APValueD2Ev.exit.i.i.i, %bb.bz, %bb.ca
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  br label %_ZN12_GLOBAL__N_117ExprEvaluatorBaseINS_16IntExprEvaluatorEE5ErrorEPKN5clang4ExprE.exit

_ZN12_GLOBAL__N_117ExprEvaluatorBaseINS_16IntExprEvaluatorEE5ErrorEPKN5clang4ExprE.exit: ; preds = %_ZNK5clang4Type18getAsCXXRecordDeclEv.exit, %select.unfold180, %_ZN4llvm5APIntD2Ev.exit, %bb.bw, %bb.bv, %bb.bs, %bb.bm, %bb.bj, %bb.be, %bb.bb, %bb.bf, %bb.bn, %bb.at, %_ZNK5clang4Type15getAsRecordDeclEv.exit, %bb.au, %_ZN12_GLOBAL__N_116IntExprEvaluator7SuccessEN5clang9CharUnitsEPKNS1_4ExprE.exit, %bb.f, %bb.e, %bb.b
  %.14 = phi i1 [ false, %bb.f ], [ false, %bb.b ], [ false, %bb.e ], [ true, %_ZN12_GLOBAL__N_116IntExprEvaluator7SuccessEN5clang9CharUnitsEPKNS1_4ExprE.exit ], [ false, %bb.bs ], [ false, %bb.bv ], [ false, %bb.au ], [ false, %_ZNK5clang4Type15getAsRecordDeclEv.exit ], [ false, %bb.at ], [ false, %bb.bn ], [ false, %bb.bf ], [ false, %bb.bw ], [ false, %bb.bb ], [ false, %bb.be ], [ false, %bb.bj ], [ false, %bb.bm ], [ false, %_ZN4llvm5APIntD2Ev.exit ], [ false, %select.unfold180 ], [ false, %_ZNK5clang4Type18getAsCXXRecordDeclEv.exit ]
  ret i1 %.14
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN12_GLOBAL__N_116IntExprEvaluator24VisitObjCBoolLiteralExprEPKN5clang19ObjCBoolLiteralExprE(ptr nonnull %.0.val.16.val, ptr %.8.val, i64 %.8.val1, i8 %.16.val) unnamed_addr #2 align 2 {
bb.a:
  %0 = alloca %"class.clang::APValue", align 8    ; 10 uses
  %1 = alloca %"class.llvm::APSInt", align 8      ; 7 uses
  %i.a = and i8 %.16.val, 1
  %i.b = zext nneg i8 %i.a to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #24
  call void @_ZNK5clang10ASTContext12MakeIntValueEmNS_8QualTypeE(ptr dead_on_unwind nonnull writable sret(%"class.llvm::APSInt") align 8 %1, ptr noundef nonnull align 8 dereferenceable(23904) %.0.val.16.val, i64 noundef %i.b, i64 %.8.val1)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.d = load i8, ptr %i.c, align 4
  %i.e = and i8 %i.d, -2
  store i8 %i.e, ptr %i.c, align 4
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 2, ptr %0, align 8, !tbaa !769
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.j = load i32, ptr %i.i, align 8, !tbaa !454
  %i.k = load i64, ptr %1, align 8
  store i32 0, ptr %i.i, align 8, !tbaa !454
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.m = load i8, ptr %i.l, align 4, !tbaa !456, !range !453, !noundef !412
  store i64 %i.k, ptr %i.f, align 8
  store i32 %i.j, ptr %i.g, align 8, !tbaa !454
  store i8 %i.m, ptr %i.h, align 4, !tbaa !456
  %i.n = call noundef nonnull align 8 dereferenceable(56) ptr @_ZN5clang7APValueaSEOS0_(ptr noundef nonnull align 8 dereferenceable(56) %.8.val, ptr noundef nonnull align 8 dereferenceable(56) %0) #24 ; 0 uses
  %i.o = load i32, ptr %0, align 8, !tbaa !769
  %switch.i.i.i = icmp ult i32 %i.o, 2
  br i1 %switch.i.i.i, label %_ZN5clang7APValueD2Ev.exit.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @_ZN5clang7APValue24DestroyDataAndMakeUninitEv(ptr noundef nonnull align 8 dereferenceable(56) %0) #24
  br label %_ZN5clang7APValueD2Ev.exit.i.i

_ZN5clang7APValueD2Ev.exit.i.i:                   ; preds = %bb.b, %bb.a
  %i.p = load i32, ptr %i.i, align 8, !tbaa !454
  %i.q = icmp ugt i32 %i.p, 64
  br i1 %i.q, label %bb.c, label %_ZN12_GLOBAL__N_116IntExprEvaluator7SuccessEmPKN5clang4ExprE.exit

bb.c:                                             ; preds = %_ZN5clang7APValueD2Ev.exit.i.i
  %i.r = load ptr, ptr %1, align 8, !tbaa !440    ; 2 uses
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %_ZN12_GLOBAL__N_116IntExprEvaluator7SuccessEmPKN5clang4ExprE.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @_ZdaPv(ptr noundef nonnull %i.r) #26
  br label %_ZN12_GLOBAL__N_116IntExprEvaluator7SuccessEmPKN5clang4ExprE.exit

_ZN12_GLOBAL__N_116IntExprEvaluator7SuccessEmPKN5clang4ExprE.exit: ; preds = %_ZN5clang7APValueD2Ev.exit.i.i, %bb.c, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %1)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef zeroext i1 @_ZN12_GLOBAL__N_116IntExprEvaluator15VisitMemberExprEPKN5clang10MemberExprE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr noundef %1) unnamed_addr #2 align 2 {
bb.a:
  %2 = alloca %"class.clang::APValue::LValuePathEntry", align 8 ; 4 uses
  %3 = alloca %"class.clang::APValue", align 8    ; 7 uses
  %4 = alloca %"class.clang::APValue", align 8    ; 8 uses
  %5 = alloca %"struct.(anonymous namespace)::CompleteObject", align 8 ; 6 uses
  %6 = alloca %"struct.(anonymous namespace)::SubobjectDesignator", align 8 ; 12 uses
  %7 = alloca %"class.clang::APValue", align 8    ; 10 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !436
  %i.c = tail call fastcc noundef zeroext i1 @_ZN12_GLOBAL__N_116IntExprEvaluator19CheckReferencedDeclEPKN5clang4ExprEPKNS1_4DeclE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %1, ptr noundef %i.b)
  br i1 %i.c, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !944  ; 2 uses
  %i.f = load ptr, ptr %0, align 8, !tbaa !1581, !nonnull !412, !align !413 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !794, !nonnull !412, !align !413 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 2600
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !447, !nonnull !412, !align !413
  %i.k = load i64, ptr %i.j, align 8
  %i.l = and i64 %i.k, 32
  %.not.i = icmp eq i64 %i.l, 0
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = tail call noundef zeroext i1 @_ZNK5clang4Expr14HasSideEffectsERKNS_10ASTContextEb(ptr noundef nonnull align 8 dereferenceable(16) %i.e, ptr noundef nonnull align 8 dereferenceable(23904) %i.h, i1 noundef zeroext true) #24, !inline_history !1621
  br i1 %i.m, label %._crit_edge, label %_ZN12_GLOBAL__N_117ExprEvaluatorBaseINS_16IntExprEvaluatorEE26VisitIgnoredBaseExpressionEPKN5clang4ExprE.exit

._crit_edge:                                      ; preds = %bb.c
  %.pre = load ptr, ptr %0, align 8, !tbaa !1581
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge, %bb.b
  %i.n = phi ptr [ %.pre, %._crit_edge ], [ %i.f, %bb.b ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  store i32 0, ptr %3, align 8, !tbaa !769
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 2 uses
  %i.p = load i8, ptr %i.o, align 4
  %i.q = and i8 %i.p, -2
  store i8 %i.q, ptr %i.o, align 4
  %i.r = call fastcc noundef zeroext i1 @_ZL8EvaluateRN5clang7APValueERN12_GLOBAL__N_18EvalInfoEPKNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(984) %i.n, ptr noundef %i.e), !inline_history !1622
  br i1 %i.r, label %_ZN12_GLOBAL__N_117ExprEvaluatorBaseINS_16IntExprEvaluatorEE17VisitIgnoredValueEPKN5clang4ExprE.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !755, !nonnull !412, !align !413
  store i8 1, ptr %i.t, align 8, !tbaa !756
  %i.u = call noundef zeroext i1 @_ZNK5clang6interp5State29keepEvaluatingAfterSideEffectEv(ptr noundef nonnull align 8 dereferenceable(984) %i.n) #24 ; 0 uses
  br label %_ZN12_GLOBAL__N_117ExprEvaluatorBaseINS_16IntExprEvaluatorEE17VisitIgnoredValueEPKN5clang4ExprE.exit

_ZN12_GLOBAL__N_117ExprEvaluatorBaseINS_16IntExprEvaluatorEE17VisitIgnoredValueEPKN5clang4ExprE.exit: ; preds = %bb.d, %bb.e
  %i.v = load i32, ptr %3, align 8, !tbaa !769
  %switch.i12 = icmp ult i32 %i.v, 2
  br i1 %switch.i12, label %_ZN5clang7APValueD2Ev.exit13, label %bb.f

bb.f:                                             ; preds = %_ZN12_GLOBAL__N_117ExprEvaluatorBaseINS_16IntExprEvaluatorEE17VisitIgnoredValueEPKN5clang4ExprE.exit
  call void @_ZN5clang7APValue24DestroyDataAndMakeUninitEv(ptr noundef nonnull align 8 dereferenceable(56) %3) #24
  br label %_ZN5clang7APValueD2Ev.exit13

_ZN5clang7APValueD2Ev.exit13:                     ; preds = %_ZN12_GLOBAL__N_117ExprEvaluatorBaseINS_16IntExprEvaluatorEE17VisitIgnoredValueEPKN5clang4ExprE.exit, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  br label %_ZN12_GLOBAL__N_117ExprEvaluatorBaseINS_16IntExprEvaluatorEE26VisitIgnoredBaseExpressionEPKN5clang4ExprE.exit

bb.g:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  store i32 0, ptr %4, align 8, !tbaa !769
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 2 uses
  %i.x = load i8, ptr %i.w, align 4
  %i.y = and i8 %i.x, -2
  store i8 %i.y, ptr %i.w, align 4
  %i.z = load ptr, ptr %0, align 8, !tbaa !1581, !nonnull !412, !align !413
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !944
  %i.ac = call fastcc noundef zeroext i1 @_ZL8EvaluateRN5clang7APValueERN12_GLOBAL__N_18EvalInfoEPKNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 8 dereferenceable(984) %i.z, ptr noundef %i.ab), !inline_history !1623
  br i1 %i.ac, label %bb.h, label %_ZN12_GLOBAL__N_117ExprEvaluatorBaseINS_16IntExprEvaluatorEE15VisitMemberExprEPKN5clang10MemberExprE.exit

bb.h:                                             ; preds = %bb.g
  %i.ad = load ptr, ptr %i.aa, align 8, !tbaa !944
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %.sroa.0.0.copyload.i = load i64, ptr %i.ae, align 8, !tbaa !440 ; 5 uses
  %i.af = load ptr, ptr %i.a, align 8, !tbaa !436 ; 4 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 28 ; 2 uses
  %i.ah = load i32, ptr %i.ag, align 4
  %i.ai = and i32 %i.ah, 127
  %i.aj = add nsw i32 %i.ai, -53
  %i.ak = icmp ult i32 %i.aj, -3
  %.not.i614 = icmp eq ptr %i.af, null
  %.not.i6 = or i1 %.not.i614, %i.ak
  br i1 %.not.i6, label %bb.i, label %bb.n

bb.i:                                             ; preds = %bb.h
  %.val.i = load ptr, ptr %0, align 8, !tbaa !1581
  %i.al = call ptr @_ZN5clang6interp5State6FFDiagEPKNS_4ExprEjj(ptr noundef nonnull align 8 dereferenceable(34) %.val.i, ptr noundef nonnull %1, i32 noundef 113, i32 noundef 0) #24 ; 4 uses
  %i.am = call i64 @_ZNK5clang4Stmt14getSourceRangeEv(ptr noundef nonnull align 8 dereferenceable(8) %1) #25 ; 2 uses
  %.not.i.i.i11 = icmp eq ptr %i.al, null
  br i1 %.not.i.i.i11, label %_ZN12_GLOBAL__N_117ExprEvaluatorBaseINS_16IntExprEvaluatorEE15VisitMemberExprEPKN5clang10MemberExprE.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.an = load ptr, ptr %i.al, align 8, !tbaa !801 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.an, null
  br i1 %.not.i.i.i.i.i.i, label %_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i.i.i.i, label %bb.k

_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i.i.i.i: ; preds = %bb.j
  %i.ao = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !805
  %i.aq = call noundef ptr @_ZN5clang20DiagStorageAllocator8AllocateEv(ptr noundef nonnull align 8 dereferenceable(14980) %i.ap) ; 2 uses
  store ptr %i.aq, ptr %i.al, align 8, !tbaa !801
  br label %bb.k

bb.k:                                             ; preds = %_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i.i.i.i, %bb.j
  %i.ar = phi ptr [ %i.aq, %_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i.i.i.i ], [ %i.an, %bb.j ] ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 416 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.ar, i64 424 ; 3 uses
  %i.au = load i32, ptr %i.at, align 8, !tbaa !745 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.ar, i64 428
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !744
  %.not.i5.i.i.i.i.i.i = icmp ult i32 %i.au, %i.aw
  br i1 %.not.i5.i.i.i.i.i.i, label %bb.m, label %bb.l, !prof !826

bb.l:                                             ; preds = %bb.k
  call void @_ZN4llvm23SmallVectorTemplateBaseIN5clang15CharSourceRangeELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %i.as, i64 %i.am, i8 1)
  br label %_ZN12_GLOBAL__N_117ExprEvaluatorBaseINS_16IntExprEvaluatorEE15VisitMemberExprEPKN5clang10MemberExprE.exit

bb.m:                                             ; preds = %bb.k
  %i.ax = zext i32 %i.au to i64
  %i.ay = load ptr, ptr %i.as, align 8, !tbaa !743
  %i.az = getelementptr inbounds nuw [12 x i8], ptr %i.ay, i64 %i.ax ; 2 uses
  store i64 %i.am, ptr %i.az, align 1
  %.sroa.38.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  store i8 1, ptr %.sroa.38.0..sroa_idx.i.i.i.i.i.i.i, align 1
  %i.ba = load i32, ptr %i.at, align 8, !tbaa !745
  %i.bb = add i32 %i.ba, 1
  store i32 %i.bb, ptr %i.at, align 8, !tbaa !745
  br label %_ZN12_GLOBAL__N_117ExprEvaluatorBaseINS_16IntExprEvaluatorEE15VisitMemberExprEPKN5clang10MemberExprE.exit

bb.n:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  %i.bc = getelementptr inbounds nuw i8, ptr %5, i64 16
end_hunk_0
