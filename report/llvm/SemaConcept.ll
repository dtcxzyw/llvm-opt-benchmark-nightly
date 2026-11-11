Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/SemaConcept?download=true
inline.NumInlined: 43754
inline.NumDeleted: 19584
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 21
begin_hunk_0_@_ZN5clang13TreeTransformIN12_GLOBAL__N_117AdjustConstraintsEE23TransformCStyleCastExprEPNS_14CStyleCastExprE
define internal fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_117AdjustConstraintsEE23TransformCStyleCastExprEPNS_14CStyleCastExprE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1) unnamed_addr #9 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1329
  %i.c = tail call fastcc noundef ptr @_ZN5clang13TreeTransformIN12_GLOBAL__N_117AdjustConstraintsEE13TransformTypeEPNS_14TypeSourceInfoE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.b) ; 3 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noundef ptr @_ZN5clang8CastExpr19getSubExprAsWrittenEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #25
  %i.e = tail call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_117AdjustConstraintsEE13TransformExprEPNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.d) ; 3 uses
  %i.f = icmp eq i64 %i.e, 1
  br i1 %i.f, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.val = load ptr, ptr %0, align 8, !tbaa !1113  ; 2 uses
  %i.g = getelementptr i8, ptr %.val, i64 13800
  %.val.val = load i32, ptr %i.g, align 4, !tbaa !1205
  %.not17 = icmp eq i32 %.val.val, 0
  br i1 %.not17, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.h = load ptr, ptr %i.a, align 8, !tbaa !1329
  %i.i = icmp eq ptr %i.c, %i.h
  br i1 %i.i, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.j = and i64 %i.e, -2
  %i.k = inttoptr i64 %i.j to ptr
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !2289
  %i.n = icmp eq ptr %i.m, %i.k
  br i1 %i.n, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.o = ptrtoint ptr %1 to i64
  br label %bb.h

bb.g:                                             ; preds = %bb.e, %bb.d, %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.sroa.0.0.copyload.i = load i32, ptr %i.p, align 8, !tbaa !810
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 36
  %.sroa.0.0.copyload.i13 = load i32, ptr %i.q, align 4, !tbaa !810
  %i.r = and i64 %i.e, -2
  %i.s = inttoptr i64 %i.r to ptr
  %i.t = tail call i64 @_ZN5clang4Sema19BuildCStyleCastExprENS_14SourceLocationEPNS_14TypeSourceInfoES1_PNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(18640) %.val, i32 %.sroa.0.0.copyload.i, ptr noundef nonnull %i.c, i32 %.sroa.0.0.copyload.i13, ptr noundef %i.s) #25
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g, %bb.b, %bb.a
  %.sroa.016.1 = phi i64 [ 1, %bb.a ], [ %i.o, %bb.f ], [ %i.t, %bb.g ], [ 1, %bb.b ]
  ret i64 %.sroa.016.1
}

; Function Attrs: mustprogress noinline nounwind uwtable
define internal fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_117AdjustConstraintsEE27TransformBuiltinBitCastExprEPNS_18BuiltinBitCastExprE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #9 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1329
  %i.c = tail call fastcc noundef ptr @_ZN5clang13TreeTransformIN12_GLOBAL__N_117AdjustConstraintsEE13TransformTypeEPNS_14TypeSourceInfoE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.b) ; 2 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !2289
  %i.f = tail call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_117AdjustConstraintsEE13TransformExprEPNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.e) ; 2 uses
  %i.g = icmp eq i64 %i.f, 1
  br i1 %i.g, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.sroa.0.0.copyload.i = load i32, ptr %i.h, align 8, !tbaa !810
  %i.i = and i64 %i.f, -2
  %i.j = inttoptr i64 %i.i to ptr
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 36
  %.sroa.0.0.copyload.i9 = load i32, ptr %i.k, align 4, !tbaa !810
  %.val = load ptr, ptr %0, align 8, !tbaa !1113
  %i.l = tail call i64 @_ZN5clang4Sema23BuildBuiltinBitCastExprENS_14SourceLocationEPNS_14TypeSourceInfoEPNS_4ExprES1_(ptr noundef nonnull align 8 dereferenceable(18640) %.val, i32 %.sroa.0.0.copyload.i, ptr noundef nonnull %i.c, ptr noundef %i.j, i32 %.sroa.0.0.copyload.i9) #25
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %.sroa.08.1 = phi i64 [ 1, %bb.a ], [ %i.l, %bb.c ], [ 1, %bb.b ]
  ret i64 %.sroa.08.1
}

; Function Attrs: mustprogress noinline nounwind uwtable
define internal fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_117AdjustConstraintsEE17TransformCallExprEPNS_8CallExprE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1) unnamed_addr #9 align 2 {
bb.a:
  %i.a = alloca i8, align 1                       ; 5 uses
  %2 = alloca %"class.llvm::SmallVector.3077", align 8 ; 9 uses
  %3 = alloca %"class.clang::Sema::FPFeaturesStateRAII", align 8 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1067
  %i.d = tail call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_117AdjustConstraintsEE13TransformExprEPNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.c) ; 2 uses
  %i.e = icmp eq i64 %i.d, 1
  br i1 %i.e, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  store i8 0, ptr %i.a, align 1, !tbaa !772
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  store ptr %i.f, ptr %2, align 8, !tbaa !85
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store i32 0, ptr %i.g, align 8, !tbaa !84
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 12
  store i32 8, ptr %i.h, align 4, !tbaa !814
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.j = load i32, ptr %1, align 8
  %i.k = lshr i32 %i.j, 19
  %i.l = and i32 %i.k, 1
  %i.m = zext nneg i32 %i.l to i64
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.m
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.p = load i32, ptr %i.o, align 8, !tbaa !71
  %i.q = call fastcc noundef zeroext i1 @_ZN5clang13TreeTransformIN12_GLOBAL__N_117AdjustConstraintsEE14TransformExprsEPKPNS_4ExprEjbRN4llvm15SmallVectorImplIS5_EEPb(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %i.n, i32 noundef %i.p, i1 noundef zeroext true, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull %i.a)
  br i1 %i.q, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.val17 = load ptr, ptr %0, align 8, !tbaa !1113 ; 3 uses
  %i.r = getelementptr i8, ptr %.val17, i64 13800
  %.val17.val = load i32, ptr %i.r, align 4, !tbaa !1205
  %.not = icmp eq i32 %.val17.val, 0
  %i.s = and i64 %i.d, -2
  %i.t = inttoptr i64 %i.s to ptr                 ; 3 uses
  br i1 %.not, label %bb.d, label %._crit_edge

bb.d:                                             ; preds = %bb.c
  %i.u = load ptr, ptr %i.b, align 8, !tbaa !1067
  %i.v = icmp ne ptr %i.u, %i.t
  %i.w = load i8, ptr %i.a, align 1, !range !775
  %i.x = trunc nuw i8 %i.w to i1
  %or.cond = select i1 %i.v, i1 true, i1 %i.x
  br i1 %or.cond, label %._crit_edge, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.y = call i64 @_ZN5clang4Sema20MaybeBindToTemporaryEPNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(18640) %.val17, ptr noundef nonnull %1) #25
  br label %bb.g

._crit_edge:                                      ; preds = %bb.c, %bb.d
  %i.z = call i64 @_ZNK5clang4Stmt14getSourceRangeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.t) #24
  %.sroa.022.0.extract.trunc = trunc i64 %i.z to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  call void @_ZN5clang4Sema19FPFeaturesStateRAIIC1ERS0_(ptr noundef nonnull align 8 dereferenceable(28) %3, ptr noundef nonnull align 8 dereferenceable(18640) %.val17) #25
  %i.aa = load i32, ptr %1, align 8               ; 2 uses
  %i.ab = and i32 %i.aa, 2097152
  %.not27 = icmp eq i32 %i.ab, 0
  %.val18.pre = load ptr, ptr %0, align 8, !tbaa !1113 ; 4 uses
  br i1 %.not27, label %bb.f, label %_ZNK5clang8CallExpr13getFPFeaturesEv.exit

_ZNK5clang8CallExpr13getFPFeaturesEv.exit:        ; preds = %._crit_edge
  %i.ac = lshr i32 %i.aa, 19
  %i.ad = and i32 %i.ac, 1
  %i.ae = load i32, ptr %i.o, align 8, !tbaa !71
  %i.af = add nuw nsw i32 %i.ad, 1
  %i.ag = add i32 %i.af, %i.ae
  %i.ah = shl i32 %i.ag, 3
  %i.ai = zext i32 %i.ah to i64
  %i.aj = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.ai
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.aj, align 4, !tbaa !810 ; 3 uses
  %.sroa.5.0.extract.shift = lshr i64 %.sroa.0.0.copyload.i.i, 32 ; 2 uses
  %.sroa.5.0.extract.trunc = trunc nuw i64 %.sroa.5.0.extract.shift to i32
  %i.ak = getelementptr inbounds nuw i8, ptr %.val18.pre, i64 216
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !768, !nonnull !769, !align !770 ; 4 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 216
  %i.an = load i64, ptr %i.am, align 8
  %i.ao = trunc i64 %i.an to i32                  ; 3 uses
  %i.ap = lshr i32 %i.ao, 23
  %i.aq = and i32 %i.ap, 3                        ; 2 uses
  %i.ar = icmp eq i32 %i.aq, 3
  %spec.store.select.i.i = select i1 %i.ar, i32 2, i32 %i.aq ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.al, i64 96
  %i.at = load i64, ptr %i.as, align 8
  %i.au = lshr i64 %i.at, 57
  %i.av = trunc nuw nsw i64 %i.au to i32
  %i.aw = and i32 %i.av, 4                        ; 2 uses
  %i.ax = lshr i32 %i.ao, 19
  %i.ay = and i32 %i.ax, 192
  %i.az = getelementptr inbounds nuw i8, ptr %i.al, i64 40
  %i.ba = load i64, ptr %i.az, align 8
  %i.bb = lshr i64 %i.ba, 36
  %i.bc = trunc nuw nsw i64 %i.bb to i32
  %i.bd = and i32 %i.bc, 32256
  %i.be = icmp eq i32 %spec.store.select.i.i, 1
  %.not3.i.i.i = icmp ne i32 %i.aw, 0
  %or.cond.not16.i.i = select i1 %i.be, i1 %.not3.i.i.i, i1 false
  %i.bf = and i32 %i.ao, 100663296
  %i.bg = icmp eq i32 %i.bf, 67108864
  %or.cond15.i.i = select i1 %or.cond.not16.i.i, i1 %i.bg, i1 false
  %masksel.i.i = select i1 %or.cond15.i.i, i32 256, i32 0
  %i.bh = getelementptr inbounds nuw i8, ptr %i.al, i64 208
  %i.bi = load i64, ptr %i.bh, align 8
  %sh.diff.i.i = lshr i64 %i.bi, 23
  %tr.sh.diff.i.i = trunc i64 %sh.diff.i.i to i32
  %i.bj = and i32 %tr.sh.diff.i.i, 29360128
  %i.bk = or disjoint i32 %i.ay, %i.bd
  %i.bl = or disjoint i32 %i.bk, %i.bj
  %i.bm = or disjoint i32 %i.bl, %masksel.i.i
  %i.bn = or disjoint i32 %i.bm, %i.aw
  %i.bo = or disjoint i32 %i.bn, %spec.store.select.i.i
  %i.bp = or i32 %i.bo, 56
  %i.bq = xor i32 %.sroa.5.0.extract.trunc, -1
  %i.br = and i32 %i.bp, %i.bq
  %i.bs = and i64 %.sroa.5.0.extract.shift, %.sroa.0.0.copyload.i.i
  %i.bt = trunc nuw i64 %i.bs to i32
  %i.bu = or i32 %i.br, %i.bt
  %i.bv = getelementptr inbounds nuw i8, ptr %.val18.pre, i64 208
  store i32 %i.bu, ptr %i.bv, align 8, !tbaa !810
  %i.bw = getelementptr inbounds nuw i8, ptr %.val18.pre, i64 2024
  store i64 %.sroa.0.0.copyload.i.i, ptr %i.bw, align 8, !tbaa !810
  br label %bb.f

bb.f:                                             ; preds = %_ZNK5clang8CallExpr13getFPFeaturesEv.exit, %._crit_edge
  %i.bx = load ptr, ptr %2, align 8, !tbaa !85
  %i.by = load i32, ptr %i.g, align 8, !tbaa !84
  %i.bz = zext i32 %i.by to i64
  %i.ca = getelementptr inbounds nuw i8, ptr %1, i64 20
  %.sroa.0.0.copyload.i19 = load i32, ptr %i.ca, align 4, !tbaa !810
  %i.cb = call i64 @_ZN5clang4Sema13ActOnCallExprEPNS_5ScopeEPNS_4ExprENS_14SourceLocationEN4llvm15MutableArrayRefIS4_EES5_S4_(ptr noundef nonnull align 8 dereferenceable(18640) %.val18.pre, ptr noundef null, ptr noundef nonnull %i.t, i32 %.sroa.022.0.extract.trunc, ptr %i.bx, i64 %i.bz, i32 %.sroa.0.0.copyload.i19, ptr noundef null) #25
  call void @_ZN5clang4Sema19FPFeaturesStateRAIID1Ev(ptr noundef nonnull align 8 dead_on_return(28) dereferenceable(28) %3) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  br label %bb.g

bb.g:                                             ; preds = %bb.b, %bb.f, %bb.e
  %.sroa.013.0 = phi i64 [ %i.y, %bb.e ], [ %i.cb, %bb.f ], [ 1, %bb.b ]
  %i.cc = load ptr, ptr %2, align 8, !tbaa !85    ; 2 uses
  %i.cd = icmp eq ptr %i.cc, %i.f
  br i1 %i.cd, label %_ZN4llvm11SmallVectorIPN5clang4ExprELj8EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @free(ptr noundef %i.cc) #25
  br label %_ZN4llvm11SmallVectorIPN5clang4ExprELj8EED2Ev.exit

_ZN4llvm11SmallVectorIPN5clang4ExprELj8EED2Ev.exit: ; preds = %bb.g, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  br label %bb.i

bb.i:                                             ; preds = %bb.a, %_ZN4llvm11SmallVectorIPN5clang4ExprELj8EED2Ev.exit
  %.sroa.013.1 = phi i64 [ %.sroa.013.0, %_ZN4llvm11SmallVectorIPN5clang4ExprELj8EED2Ev.exit ], [ 1, %bb.a ]
  ret i64 %.sroa.013.1
}

; Function Attrs: mustprogress noinline nounwind uwtable
define internal fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_117AdjustConstraintsEE27TransformUserDefinedLiteralEPNS_18UserDefinedLiteralE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1) unnamed_addr #9 align 2 {
bb.a:
  %i.a = tail call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_117AdjustConstraintsEE17TransformCallExprEPNS_8CallExprE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1)
  ret i64 %i.a
}

; Function Attrs: mustprogress noinline nounwind uwtable
define internal fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_117AdjustConstraintsEE28TransformCXXOperatorCallExprEPNS_19CXXOperatorCallExprE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1) unnamed_addr #9 align 2 {
bb.a:
  %2 = alloca %"class.llvm::SmallVector.3077", align 8 ; 9 uses
  %3 = alloca %"class.clang::Sema::FPFeaturesStateRAII", align 8 ; 4 uses
  %4 = alloca %"class.clang::LookupResult", align 8 ; 26 uses
  %5 = alloca %"class.clang::UnresolvedSet.3549", align 8 ; 10 uses
  %i.a = load i32, ptr %1, align 8                ; 4 uses
  %i.b = and i32 %i.a, 2080374784
  %switch = icmp eq i32 %i.b, 1409286144
  br i1 %switch, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.d = lshr i32 %i.a, 19
  %i.e = and i32 %i.d, 1
  %i.f = zext nneg i32 %i.e to i64
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.f
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !847
  %i.i = tail call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_117AdjustConstraintsEE13TransformExprEPNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.h) ; 2 uses
  %i.j = icmp eq i64 %i.i, 1
  br i1 %i.j, label %bb.aq, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = and i64 %i.i, -2
  %i.l = inttoptr i64 %i.k to ptr                 ; 3 uses
  %i.m = tail call i32 @_ZNK5clang4Stmt9getEndLocEv(ptr noundef nonnull align 8 dereferenceable(8) %i.l) #24 ; 2 uses
  %i.n = load ptr, ptr %0, align 8, !tbaa !1113, !nonnull !769, !align !770
  %i.o = tail call i32 @_ZN5clang4Sema19getLocForEndOfTokenENS_14SourceLocationEj(ptr noundef nonnull align 8 dereferenceable(18640) %i.n, i32 %i.m, i32 noundef 0) #25 ; 2 uses
  %i.p = icmp eq i32 %i.o, 0
  %.sroa.080.0 = select i1 %i.p, i32 %i.m, i32 %i.o ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  store ptr %i.q, ptr %2, align 8, !tbaa !85
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store i32 0, ptr %i.r, align 8, !tbaa !84
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 12
  store i32 8, ptr %i.s, align 4, !tbaa !814
  %i.t = load i32, ptr %1, align 8
  %i.u = lshr i32 %i.t, 19
  %i.v = and i32 %i.u, 1
  %i.w = zext nneg i32 %i.v to i64
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.w
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !71
  %i.ab = add i32 %i.aa, -1
  %i.ac = call fastcc noundef zeroext i1 @_ZN5clang13TreeTransformIN12_GLOBAL__N_117AdjustConstraintsEE14TransformExprsEPKPNS_4ExprEjbRN4llvm15SmallVectorImplIS5_EEPb(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %i.y, i32 noundef %i.ab, i1 noundef zeroext true, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef null)
  br i1 %i.ac, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ad = load i32, ptr %1, align 8
  %i.ae = and i32 %i.ad, 2113929216
  %i.af = icmp eq i32 %i.ae, 1442840576
  %i.ag = load ptr, ptr %2, align 8, !tbaa !85    ; 2 uses
  %i.ah = load i32, ptr %i.r, align 8, !tbaa !84
  %i.ai = zext i32 %i.ah to i64                   ; 2 uses
  %i.aj = call i64 @_ZNK5clang19CXXOperatorCallExpr18getSourceRangeImplEv(ptr noundef nonnull align 8 dereferenceable(32) %1) #24
  %.sroa.3.0.extract.shift.i = lshr i64 %i.aj, 32
  %.sroa.3.0.extract.trunc.i = trunc nuw i64 %.sroa.3.0.extract.shift.i to i32 ; 2 uses
  %.val59 = load ptr, ptr %0, align 8, !tbaa !1113 ; 2 uses
  br i1 %i.af, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ak = call i64 @_ZN5clang4Sema23ActOnArraySubscriptExprEPNS_5ScopeEPNS_4ExprENS_14SourceLocationEN4llvm15MutableArrayRefIS4_EES5_(ptr noundef nonnull align 8 dereferenceable(18640) %.val59, ptr noundef null, ptr noundef nonnull %i.l, i32 %.sroa.080.0, ptr %i.ag, i64 %i.ai, i32 %.sroa.3.0.extract.trunc.i) #25
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.al = call i64 @_ZN5clang4Sema13ActOnCallExprEPNS_5ScopeEPNS_4ExprENS_14SourceLocationEN4llvm15MutableArrayRefIS4_EES5_S4_(ptr noundef nonnull align 8 dereferenceable(18640) %.val59, ptr noundef null, ptr noundef nonnull %i.l, i32 %.sroa.080.0, ptr %i.ag, i64 %i.ai, i32 %.sroa.3.0.extract.trunc.i, ptr noundef null) #25
  br label %bb.g

bb.g:                                             ; preds = %bb.c, %bb.f, %bb.e
  %.sroa.050.0 = phi i64 [ %i.al, %bb.f ], [ %i.ak, %bb.e ], [ 1, %bb.c ]
  %i.am = load ptr, ptr %2, align 8, !tbaa !85    ; 2 uses
  %i.an = icmp eq ptr %i.am, %i.q
  br i1 %i.an, label %_ZN4llvm11SmallVectorIPN5clang4ExprELj8EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @free(ptr noundef %i.am) #25
  br label %_ZN4llvm11SmallVectorIPN5clang4ExprELj8EED2Ev.exit

_ZN4llvm11SmallVectorIPN5clang4ExprELj8EED2Ev.exit: ; preds = %bb.g, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  br label %bb.aq

bb.i:                                             ; preds = %bb.a
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.ap = load i32, ptr %i.ao, align 8, !tbaa !71
  %i.aq = icmp eq i32 %i.ap, 1
  %i.ar = and i32 %i.a, 2113929216
  %i.as = icmp eq i32 %i.ar, 369098752
  %or.cond = and i1 %i.as, %i.aq
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.au = lshr i32 %i.a, 19
  %i.av = and i32 %i.au, 1
  %i.aw = zext nneg i32 %i.av to i64
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %i.aw
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !847 ; 5 uses
  br i1 %or.cond, label %bb.j, label %bb.n

bb.j:                                             ; preds = %bb.i
  %i.az = load i16, ptr %i.ay, align 8
  %i.ba = and i16 %i.az, 511
  switch i16 %i.ba, label %bb.m [
    i16 71, label %bb.k
    i16 24, label %bb.l
  ]

bb.k:                                             ; preds = %bb.j
  %i.bb = tail call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_117AdjustConstraintsEE34TransformDependentScopeDeclRefExprEPNS_25DependentScopeDeclRefExprEbPPNS_14TypeSourceInfoE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %i.ay, i1 noundef zeroext true, ptr noundef null), !inline_history !42
  br label %_ZN5clang13TreeTransformIN12_GLOBAL__N_117AdjustConstraintsEE25TransformAddressOfOperandEPNS_4ExprE.exit

bb.l:                                             ; preds = %bb.j
  %i.bc = tail call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_117AdjustConstraintsEE29TransformUnresolvedLookupExprEPNS_20UnresolvedLookupExprEb(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %i.ay, i1 noundef zeroext true), !inline_history !42
  br label %_ZN5clang13TreeTransformIN12_GLOBAL__N_117AdjustConstraintsEE25TransformAddressOfOperandEPNS_4ExprE.exit

bb.m:                                             ; preds = %bb.j
  %i.bd = tail call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_117AdjustConstraintsEE13TransformExprEPNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %i.ay), !inline_history !42
  br label %_ZN5clang13TreeTransformIN12_GLOBAL__N_117AdjustConstraintsEE25TransformAddressOfOperandEPNS_4ExprE.exit

bb.n:                                             ; preds = %bb.i
  %i.be = tail call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_117AdjustConstraintsEE13TransformExprEPNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.ay)
  br label %_ZN5clang13TreeTransformIN12_GLOBAL__N_117AdjustConstraintsEE25TransformAddressOfOperandEPNS_4ExprE.exit

_ZN5clang13TreeTransformIN12_GLOBAL__N_117AdjustConstraintsEE25TransformAddressOfOperandEPNS_4ExprE.exit: ; preds = %bb.m, %bb.l, %bb.k, %bb.n
  %storemerge = phi i64 [ %i.be, %bb.n ], [ %i.bb, %bb.k ], [ %i.bc, %bb.l ], [ %i.bd, %bb.m ] ; 3 uses
  %i.bf = icmp eq i64 %storemerge, 1
  br i1 %i.bf, label %bb.aq, label %bb.o

bb.o:                                             ; preds = %_ZN5clang13TreeTransformIN12_GLOBAL__N_117AdjustConstraintsEE25TransformAddressOfOperandEPNS_4ExprE.exit
  %i.bg = load i32, ptr %i.ao, align 8, !tbaa !71
  %i.bh = icmp eq i32 %i.bg, 2
  br i1 %i.bh, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.bi = load i32, ptr %1, align 8
  %i.bj = lshr i32 %i.bi, 19
  %i.bk = and i32 %i.bj, 1
  %i.bl = zext nneg i32 %i.bk to i64
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.bl
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 48
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !847
  %i.bp = tail call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_117AdjustConstraintsEE20TransformInitializerEPNS_4ExprEb(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.bo, i1 noundef zeroext false) ; 2 uses
  %i.bq = icmp eq i64 %i.bp, 1
  br i1 %i.bq, label %bb.aq, label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %.sroa.071.0 = phi i64 [ %i.bp, %bb.p ], [ 0, %bb.o ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  %.val57 = load ptr, ptr %0, align 8, !tbaa !1113
  call void @_ZN5clang4Sema19FPFeaturesStateRAIIC1ERS0_(ptr noundef nonnull align 8 dereferenceable(28) %3, ptr noundef nonnull align 8 dereferenceable(18640) %.val57) #25
  %i.br = load i32, ptr %1, align 8               ; 2 uses
  %i.bs = and i32 %i.br, 2097152
  %.not.i = icmp eq i32 %i.bs, 0
  br i1 %.not.i, label %_ZNK5clang8CallExpr13getFPFeaturesEv.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bt = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.bu = lshr i32 %i.br, 19
  %i.bv = and i32 %i.bu, 1
  %i.bw = load i32, ptr %i.ao, align 8, !tbaa !71
  %i.bx = add nuw nsw i32 %i.bv, 1
  %i.by = add i32 %i.bx, %i.bw
  %i.bz = shl i32 %i.by, 3
  %i.ca = zext i32 %i.bz to i64
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bt, i64 %i.ca
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.cb, align 4, !tbaa !810
  br label %_ZNK5clang8CallExpr13getFPFeaturesEv.exit

_ZNK5clang8CallExpr13getFPFeaturesEv.exit:        ; preds = %bb.q, %bb.r
  %.sroa.0.0.insert.insert.i = phi i64 [ %.sroa.0.0.copyload.i.i, %bb.r ], [ 0, %bb.q ] ; 3 uses
  %.sroa.5.0.extract.shift = lshr i64 %.sroa.0.0.insert.insert.i, 32 ; 2 uses
  %.sroa.5.0.extract.trunc = trunc nuw i64 %.sroa.5.0.extract.shift to i32
  %.val56 = load ptr, ptr %0, align 8, !tbaa !1113 ; 4 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %.val56, i64 216
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !768, !nonnull !769, !align !770 ; 4 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 216
  %i.cf = load i64, ptr %i.ce, align 8
  %i.cg = trunc i64 %i.cf to i32                  ; 3 uses
  %i.ch = lshr i32 %i.cg, 23
  %i.ci = and i32 %i.ch, 3                        ; 2 uses
  %i.cj = icmp eq i32 %i.ci, 3
  %spec.store.select.i.i = select i1 %i.cj, i32 2, i32 %i.ci ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cd, i64 96
  %i.cl = load i64, ptr %i.ck, align 8
  %i.cm = lshr i64 %i.cl, 57
  %i.cn = trunc nuw nsw i64 %i.cm to i32
  %i.co = and i32 %i.cn, 4                        ; 2 uses
  %i.cp = lshr i32 %i.cg, 19
  %i.cq = and i32 %i.cp, 192
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cd, i64 40
  %i.cs = load i64, ptr %i.cr, align 8
  %i.ct = lshr i64 %i.cs, 36
  %i.cu = trunc nuw nsw i64 %i.ct to i32
  %i.cv = and i32 %i.cu, 32256
  %i.cw = icmp eq i32 %spec.store.select.i.i, 1
  %.not3.i.i.i = icmp ne i32 %i.co, 0
  %or.cond.not16.i.i = select i1 %i.cw, i1 %.not3.i.i.i, i1 false
  %i.cx = and i32 %i.cg, 100663296
  %i.cy = icmp eq i32 %i.cx, 67108864
  %or.cond15.i.i = select i1 %or.cond.not16.i.i, i1 %i.cy, i1 false
  %masksel.i.i = select i1 %or.cond15.i.i, i32 256, i32 0
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cd, i64 208
  %i.da = load i64, ptr %i.cz, align 8
  %sh.diff.i.i = lshr i64 %i.da, 23
  %tr.sh.diff.i.i = trunc i64 %sh.diff.i.i to i32
  %i.db = and i32 %tr.sh.diff.i.i, 29360128
  %i.dc = or disjoint i32 %i.cq, %i.cv
  %i.dd = or disjoint i32 %i.dc, %i.db
  %i.de = or disjoint i32 %i.dd, %masksel.i.i
  %i.df = or disjoint i32 %i.de, %i.co
  %i.dg = or disjoint i32 %i.df, %spec.store.select.i.i
  %i.dh = or i32 %i.dg, 56
  %i.di = xor i32 %.sroa.5.0.extract.trunc, -1
  %i.dj = and i32 %i.dh, %i.di
  %i.dk = and i64 %.sroa.5.0.extract.shift, %.sroa.0.0.insert.insert.i
  %i.dl = trunc nuw i64 %i.dk to i32
  %i.dm = or i32 %i.dj, %i.dl
  %i.dn = getelementptr inbounds nuw i8, ptr %.val56, i64 208
  store i32 %i.dm, ptr %i.dn, align 8, !tbaa !810
  %i.do = getelementptr inbounds nuw i8, ptr %.val56, i64 2024
  store i64 %.sroa.0.0.insert.insert.i, ptr %i.do, align 8, !tbaa !810
  %i.dp = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !1067 ; 9 uses
  %i.dr = load i16, ptr %i.dq, align 8
  %i.ds = and i16 %i.dr, 511                      ; 2 uses
  %.not = icmp eq i16 %i.ds, 24
  br i1 %.not, label %bb.s, label %bb.ad

bb.s:                                             ; preds = %_ZNK5clang8CallExpr13getFPFeaturesEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dq, i64 16
  %.sroa.0.0.copyload.i.i62 = load i64, ptr %i.dt, align 8, !tbaa !793 ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.dq, i64 24
  %.sroa.0.0.copyload.i.i63 = load i32, ptr %i.du, align 8, !tbaa !810
  store i32 0, ptr %4, align 8, !tbaa !1803
  %i.dv = getelementptr inbounds nuw i8, ptr %4, i64 4
  store i32 0, ptr %i.dv, align 4, !tbaa !1804
  %i.dw = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  store ptr %i.dx, ptr %i.dw, align 8, !tbaa !85
  %i.dy = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i32 0, ptr %i.dy, align 8, !tbaa !84
  %i.dz = getelementptr inbounds nuw i8, ptr %4, i64 20
  store i32 8, ptr %i.dz, align 4, !tbaa !814
  %i.ea = getelementptr inbounds nuw i8, ptr %4, i64 88 ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %4, i64 112 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ea, i8 0, i64 24, i1 false)
  store ptr %.val56, ptr %i.eb, align 8, !tbaa !1805
  %i.ec = getelementptr inbounds nuw i8, ptr %4, i64 120
  store i64 %.sroa.0.0.copyload.i.i62, ptr %i.ec, align 8, !tbaa !793
  %i.ed = getelementptr inbounds nuw i8, ptr %4, i64 128
  store i32 %.sroa.0.0.copyload.i.i63, ptr %i.ed, align 8, !tbaa !810
  %i.ee = getelementptr inbounds nuw i8, ptr %4, i64 136
  call void @_ZN5clang18DeclarationNameLocC1ENS_15DeclarationNameE(ptr noundef nonnull align 8 dereferenceable(8) %i.ee, i64 %.sroa.0.0.copyload.i.i62) #25
  %i.ef = getelementptr inbounds nuw i8, ptr %4, i64 144
  %i.eg = getelementptr inbounds nuw i8, ptr %4, i64 162
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(18) %i.ef, i8 0, i64 18, i1 false)
  %i.eh = getelementptr inbounds nuw i8, ptr %4, i64 163
  %i.ei = getelementptr inbounds nuw i8, ptr %4, i64 164
  store <4 x i8> <i8 1, i8 1, i8 1, i8 0>, ptr %i.eg, align 2, !tbaa !772
  %i.ej = getelementptr inbounds nuw i8, ptr %4, i64 166
  store i8 0, ptr %i.ej, align 2, !tbaa !2206
  %i.ek = getelementptr inbounds nuw i8, ptr %4, i64 167
  store i8 0, ptr %i.ek, align 1, !tbaa !2207
  call void @_ZN5clang12LookupResult9configureEv(ptr noundef nonnull align 8 dereferenceable(168) %4) #25
  %i.el = load i24, ptr %i.dq, align 8
  %i.em = and i24 %i.el, 1048576
  %i.en = icmp ne i24 %i.em, 0
  %i.eo = call fastcc noundef zeroext i1 @_ZN5clang13TreeTransformIN12_GLOBAL__N_117AdjustConstraintsEE26TransformOverloadExprDeclsEPNS_12OverloadExprEbRNS_12LookupResultE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %i.dq, i1 noundef zeroext %i.en, ptr noundef nonnull align 8 dereferenceable(168) %4)
  br i1 %i.eo, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ep = load i32, ptr %1, align 8
  %i.eq = lshr i32 %i.ep, 25
  %i.er = and i32 %i.eq, 63
  %i.es = getelementptr inbounds nuw i8, ptr %1, i64 20
  %.sroa.0.0.copyload.i.i64 = load i32, ptr %i.es, align 4, !tbaa !810
  %i.et = call i32 @_ZNK5clang4Stmt11getBeginLocEv(ptr noundef nonnull align 8 dereferenceable(8) %i.dq) #24
  %i.eu = load i24, ptr %i.dq, align 8
  %i.ev = and i24 %i.eu, 1048576
  %i.ew = icmp ne i24 %i.ev, 0
  %i.ex = and i64 %storemerge, -2
  %i.ey = inttoptr i64 %i.ex to ptr
  %i.ez = and i64 %.sroa.071.0, -2
  %i.fa = inttoptr i64 %i.ez to ptr
  %i.fb = call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_117AdjustConstraintsEE26RebuildCXXOperatorCallExprENS_22OverloadedOperatorKindENS_14SourceLocationES5_bRKNS_17UnresolvedSetImplEPNS_4ExprESA_(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %i.er, i32 %.sroa.0.0.copyload.i.i64, i32 %i.et, i1 noundef zeroext %i.ew, ptr noundef nonnull align 1 dereferenceable(1) %i.dw, ptr noundef %i.ey, ptr noundef %i.fa)
  br label %bb.u

bb.u:                                             ; preds = %bb.s, %bb.t
  %.sroa.050.2 = phi i64 [ %i.fb, %bb.t ], [ 1, %bb.s ]
  %i.fc = load i8, ptr %i.eh, align 1, !tbaa !1809, !range !775, !noundef !769
  %i.fd = trunc nuw i8 %i.fc to i1
  %.pre98 = load i32, ptr %4, align 8             ; 3 uses
  br i1 %i.fd, label %bb.v, label %_ZN5clang12LookupResult14diagnoseAccessEv.exit.i

bb.v:                                             ; preds = %bb.u
  %i.fe = icmp ne i32 %.pre98, 5
  %i.ff = getelementptr inbounds nuw i8, ptr %4, i64 96
  %i.fg = load ptr, ptr %i.ff, align 8
  %i.fh = icmp ne ptr %i.fg, null
  %or.cond.i.i = select i1 %i.fe, i1 %i.fh, i1 false
  br i1 %or.cond.i.i, label %bb.w, label %_ZN5clang12LookupResult14diagnoseAccessEv.exit.i

bb.w:                                             ; preds = %bb.v
  %i.fi = load ptr, ptr %i.eb, align 8, !tbaa !1805 ; 2 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 216
  %i.fk = load ptr, ptr %i.fj, align 8, !tbaa !768, !nonnull !769, !align !770
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 40
  %i.fm = load i64, ptr %i.fl, align 8
  %i.fn = and i64 %i.fm, 18014398509481984
  %.not.i.i = icmp eq i64 %i.fn, 0
  br i1 %.not.i.i, label %_ZN5clang12LookupResult17diagnoseAmbiguousEv.exit.i, label %bb.x

bb.x:                                             ; preds = %bb.w
  call void @_ZN5clang4Sema17CheckLookupAccessERKNS_12LookupResultE(ptr noundef nonnull align 8 dereferenceable(18640) %i.fi, ptr noundef nonnull align 8 dereferenceable(168) %4) #25
  %.pre = load i32, ptr %4, align 8
  br label %_ZN5clang12LookupResult14diagnoseAccessEv.exit.i

_ZN5clang12LookupResult14diagnoseAccessEv.exit.i: ; preds = %bb.x, %bb.v, %bb.u
  %i.fo = phi i32 [ %.pre, %bb.x ], [ %.pre98, %bb.u ], [ %.pre98, %bb.v ]
  %i.fp = load i8, ptr %i.ei, align 4, !tbaa !1810, !range !775, !noundef !769
  %i.fq = trunc nuw i8 %i.fp to i1
  %i.fr = icmp eq i32 %i.fo, 5
  %or.cond91 = select i1 %i.fq, i1 %i.fr, i1 false
  br i1 %or.cond91, label %bb.y, label %_ZN5clang12LookupResult17diagnoseAmbiguousEv.exit.i

bb.y:                                             ; preds = %_ZN5clang12LookupResult14diagnoseAccessEv.exit.i
  %i.fs = load ptr, ptr %i.eb, align 8, !tbaa !1805
  call void @_ZN5clang4Sema23DiagnoseAmbiguousLookupERNS_12LookupResultE(ptr noundef nonnull align 8 dereferenceable(18640) %i.fs, ptr noundef nonnull align 8 dereferenceable(168) %4) #25
  br label %_ZN5clang12LookupResult17diagnoseAmbiguousEv.exit.i

_ZN5clang12LookupResult17diagnoseAmbiguousEv.exit.i: ; preds = %bb.w, %bb.y, %_ZN5clang12LookupResult14diagnoseAccessEv.exit.i
  %i.ft = load ptr, ptr %i.ea, align 8, !tbaa !1811 ; 2 uses
  %.not.i65 = icmp eq ptr %i.ft, null
  br i1 %.not.i65, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %_ZN5clang12LookupResult17diagnoseAmbiguousEv.exit.i
  call void @_ZN5clang12LookupResult11deletePathsEPNS_12CXXBasePathsE(ptr noundef nonnull %i.ft) #25
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %_ZN5clang12LookupResult17diagnoseAmbiguousEv.exit.i
  %i.fu = load ptr, ptr %i.dw, align 8, !tbaa !85 ; 2 uses
  %i.fv = icmp eq ptr %i.fu, %i.dx
  br i1 %i.fv, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  call void @free(ptr noundef %i.fu) #25
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  br label %bb.ap

bb.ad:                                            ; preds = %_ZNK5clang8CallExpr13getFPFeaturesEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  %i.fw = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  store ptr %i.fw, ptr %5, align 8, !tbaa !85
  %i.fx = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 4 uses
  store i32 0, ptr %i.fx, align 8, !tbaa !84
  %i.fy = getelementptr inbounds nuw i8, ptr %5, i64 12 ; 2 uses
  store i32 1, ptr %i.fy, align 4, !tbaa !814
  %.not94 = icmp eq i16 %i.ds, 81
  br i1 %.not94, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.fz = call noundef ptr @_ZN5clang8CastExpr19getSubExprAsWrittenEv(ptr noundef nonnull align 8 dereferenceable(24) %i.dq) #25
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %.051 = phi ptr [ %i.fz, %bb.ae ], [ %i.dq, %bb.ad ] ; 2 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %.051, i64 16
  %i.gb = load ptr, ptr %i.ga, align 8, !tbaa !1326 ; 3 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.gd = load ptr, ptr %i.gc, align 8, !tbaa !1686, !noalias !3873 ; 3 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.gf = load ptr, ptr %i.ge, align 8, !tbaa !1687, !noalias !3873 ; 2 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.gh = load i32, ptr %i.gg, align 4, !tbaa !1092, !noalias !3873 ; 4 uses
  %i.gi = icmp eq i32 %i.gh, 0
  br i1 %i.gi, label %.loopexit.i.i.i, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.gj = add i32 %i.gh, -1                       ; 2 uses
  %i.gk = ptrtoint ptr %i.gb to i64
  %i.gl = mul i64 %i.gk, -4658895280553007687     ; 2 uses
  %i.gm = lshr i64 %i.gl, 31
  %i.gn = xor i64 %i.gm, %i.gl
  %i.go = trunc i64 %i.gn to i32
  %i.gp = and i32 %i.gj, %i.go                    ; 3 uses
  %i.gq = zext i32 %i.gp to i64                   ; 2 uses
  %i.gr = lshr i64 %i.gq, 5
  %i.gs = getelementptr inbounds nuw [4 x i8], ptr %i.gf, i64 %i.gr
  %i.gt = load i32, ptr %i.gs, align 4, !tbaa !810, !noalias !3874
  %i.gu = and i32 %i.gp, 31
  %i.gv = lshr i32 %i.gt, %i.gu
  %i.gw = trunc i32 %i.gv to i1
  br i1 %i.gw, label %.lr.ph.i.i.i.i.i, label %.loopexit.i.i.i, !prof !1071

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.ag, %bb.ah
  %i.gx = phi i64 [ %i.hd, %bb.ah ], [ %i.gq, %bb.ag ]
  %.017.i.i.i.i.i = phi i32 [ %i.hc, %bb.ah ], [ %i.gp, %bb.ag ]
  %i.gy = getelementptr inbounds nuw [16 x i8], ptr %i.gd, i64 %i.gx ; 2 uses
  %i.gz = load ptr, ptr %i.gy, align 8, !tbaa !1378, !noalias !3874
  %i.ha = icmp eq ptr %i.gb, %i.gz
  br i1 %i.ha, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.loopexit.i, label %bb.ah, !prof !815

bb.ah:                                            ; preds = %.lr.ph.i.i.i.i.i
  %i.hb = add nuw i32 %.017.i.i.i.i.i, 1
  %i.hc = and i32 %i.hb, %i.gj                    ; 3 uses
  %i.hd = zext i32 %i.hc to i64                   ; 2 uses
  %i.he = lshr i64 %i.hd, 5
  %i.hf = getelementptr inbounds nuw [4 x i8], ptr %i.gf, i64 %i.he
end_hunk_0
begin_hunk_1_@_ZN5clang13TreeTransformIN12_GLOBAL__N_117AdjustConstraintsEE18TransformBlockExprEPNS_9BlockExprE:bb.a
  %.not.i35 = icmp eq i32 %i.dd, 0
  br i1 %.not.i35, label %bb.n, label %bb.m

bb.m:                                             ; preds = %_ZN5clang4Sema23ExtParameterInfoBuilder16getPointerOrNullEj.exit
  %i.de = load ptr, ptr %i.g, align 8, !tbaa !4014
  %i.df = load ptr, ptr %2, align 8, !tbaa !85
  %i.dg = zext i32 %i.dd to i64
  call void @_ZN5clang9BlockDecl9setParamsEN4llvm8ArrayRefIPNS_11ParmVarDeclEEE(ptr noundef nonnull align 8 dereferenceable(128) %i.de, ptr %i.df, i64 %i.dg) #25
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %_ZN5clang4Sema23ExtParameterInfoBuilder16getPointerOrNullEj.exit
  %i.dh = load i16, ptr %i.i, align 8
  %i.di = icmp slt i16 %i.dh, 0
  br i1 %i.di, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.dj = getelementptr inbounds nuw i8, ptr %i.f, i64 1496
  store i8 0, ptr %i.dj, align 8, !tbaa !4017
  %i.dk = getelementptr inbounds nuw i8, ptr %i.f, i64 1504
  store i64 %.sroa.043.0, ptr %i.dk, align 8, !tbaa !78
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.dl = call noundef ptr @_ZN5clang9BlockExpr7getBodyEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #25
  %i.dm = call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_117AdjustConstraintsEE13TransformStmtEPNS_4StmtENS3_15StmtDiscardKindE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.dl, i32 noundef 0) ; 2 uses
  %i.dn = icmp eq i64 %i.dm, 1
  %.val = load ptr, ptr %0, align 8, !tbaa !1113  ; 2 uses
  %i.do = call i32 @_ZNK5clang9BlockExpr16getCaretLocationEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #25 ; 2 uses
  br i1 %i.dn, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  call void @_ZN5clang4Sema15ActOnBlockErrorENS_14SourceLocationEPNS_5ScopeE(ptr noundef nonnull align 8 dereferenceable(18640) %.val, i32 %i.do, ptr noundef null) #25
  br label %bb.s

bb.r:                                             ; preds = %bb.p
  %i.dp = and i64 %i.dm, -2
  %i.dq = inttoptr i64 %i.dp to ptr
  %i.dr = call i64 @_ZN5clang4Sema18ActOnBlockStmtExprENS_14SourceLocationEPNS_4StmtEPNS_5ScopeE(ptr noundef nonnull align 8 dereferenceable(18640) %.val, i32 %i.do, ptr noundef %i.dq, ptr noundef null) #25
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %.sroa.030.0 = phi i64 [ 1, %bb.q ], [ %i.dr, %bb.r ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.e
  %.sroa.030.1 = phi i64 [ 1, %bb.e ], [ %.sroa.030.0, %bb.s ]
  %i.ds = load ptr, ptr %4, align 8, !tbaa !1030  ; 2 uses
  %i.dt = icmp eq ptr %i.ds, %i.ad
  br i1 %i.dt, label %_ZN5clang4Sema23ExtParameterInfoBuilderD2Ev.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  call void @free(ptr noundef %i.ds) #25
  br label %_ZN5clang4Sema23ExtParameterInfoBuilderD2Ev.exit

_ZN5clang4Sema23ExtParameterInfoBuilderD2Ev.exit: ; preds = %bb.t, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  %i.du = load ptr, ptr %3, align 8, !tbaa !85    ; 2 uses
  %i.dv = icmp eq ptr %i.du, %i.z
  br i1 %i.dv, label %_ZN4llvm11SmallVectorIN5clang8QualTypeELj4EED2Ev.exit, label %bb.v

bb.v:                                             ; preds = %_ZN5clang4Sema23ExtParameterInfoBuilderD2Ev.exit
  call void @free(ptr noundef %i.du) #25
  br label %_ZN4llvm11SmallVectorIN5clang8QualTypeELj4EED2Ev.exit

_ZN4llvm11SmallVectorIN5clang8QualTypeELj4EED2Ev.exit: ; preds = %_ZN5clang4Sema23ExtParameterInfoBuilderD2Ev.exit, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  %i.dw = load ptr, ptr %2, align 8, !tbaa !85    ; 2 uses
  %i.dx = icmp eq ptr %i.dw, %i.w
  br i1 %i.dx, label %_ZN4llvm11SmallVectorIPN5clang11ParmVarDeclELj4EED2Ev.exit, label %bb.w

bb.w:                                             ; preds = %_ZN4llvm11SmallVectorIN5clang8QualTypeELj4EED2Ev.exit
  call void @free(ptr noundef %i.dw) #25
  br label %_ZN4llvm11SmallVectorIPN5clang11ParmVarDeclELj4EED2Ev.exit

_ZN4llvm11SmallVectorIPN5clang11ParmVarDeclELj4EED2Ev.exit: ; preds = %_ZN4llvm11SmallVectorIN5clang8QualTypeELj4EED2Ev.exit, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  ret i64 %.sroa.030.1
}

; Function Attrs: mustprogress noinline nounwind uwtable
define internal fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_117AdjustConstraintsEE23TransformBinaryOperatorEPNS_14BinaryOperatorE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1) unnamed_addr #9 align 2 {
bb.a:
  %2 = alloca %"class.clang::Sema::FPFeaturesStateRAII", align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1067
  %i.c = tail call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_117AdjustConstraintsEE13TransformExprEPNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.b) ; 4 uses
  %i.d = icmp eq i64 %i.c, 1
  br i1 %i.d, label %bb.k, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !1067
  %i.g = tail call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_117AdjustConstraintsEE20TransformInitializerEPNS_4ExprEb(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.f, i1 noundef zeroext false) ; 4 uses
  %i.h = icmp eq i64 %i.g, 1
  br i1 %i.h, label %bb.k, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.val17 = load ptr, ptr %0, align 8, !tbaa !1113 ; 3 uses
  %i.i = getelementptr i8, ptr %.val17, i64 13800
  %.val17.val = load i32, ptr %i.i, align 4, !tbaa !1205
  %.not = icmp eq i32 %.val17.val, 0
  br i1 %.not, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.j = and i64 %i.c, -2
  %i.k = inttoptr i64 %i.j to ptr
  %i.l = load ptr, ptr %i.a, align 8, !tbaa !1067
  %i.m = icmp eq ptr %i.l, %i.k
  br i1 %i.m, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.n = and i64 %i.g, -2
  %i.o = inttoptr i64 %i.n to ptr
  %i.p = load ptr, ptr %i.e, align 8, !tbaa !1067
  %i.q = icmp eq ptr %i.p, %i.o
  br i1 %i.q, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.r = ptrtoint ptr %1 to i64
  br label %bb.k

bb.g:                                             ; preds = %bb.e, %bb.d, %bb.c
  %i.s = load i32, ptr %1, align 8
  %i.t = lshr i32 %i.s, 19                        ; 2 uses
  %i.u = and i32 %i.t, 62
  %i.v = add nsw i32 %i.u, -22
  %i.w = icmp ult i32 %i.v, 10
  br i1 %i.w, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.sroa.0.0.copyload.i = load i32, ptr %i.x, align 4, !tbaa !810
  %i.y = and i32 %i.t, 63
  %i.z = and i64 %i.c, -2
  %i.aa = inttoptr i64 %i.z to ptr
  %i.ab = and i64 %i.g, -2
  %i.ac = inttoptr i64 %i.ab to ptr
  %i.ad = tail call i64 @_ZN5clang4Sema10BuildBinOpEPNS_5ScopeENS_14SourceLocationENS_18BinaryOperatorKindEPNS_4ExprES6_b(ptr noundef nonnull align 8 dereferenceable(18640) %.val17, ptr noundef null, i32 %.sroa.0.0.copyload.i, i32 noundef %i.y, ptr noundef %i.aa, ptr noundef %i.ac, i1 noundef zeroext false) #25
  br label %bb.k

bb.i:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  call void @_ZN5clang4Sema19FPFeaturesStateRAIIC1ERS0_(ptr noundef nonnull align 8 dereferenceable(28) %2, ptr noundef nonnull align 8 dereferenceable(18640) %.val17) #25
  %i.ae = load i32, ptr %1, align 8               ; 2 uses
  %i.af = and i32 %i.ae, 33554432
  %.not.i = icmp eq i32 %i.af, 0
  br i1 %.not.i, label %_ZNK5clang14BinaryOperator13getFPFeaturesEv.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ag = and i32 %i.ae, 511
  %i.ah = icmp eq i32 %i.ag, 123
  %i.ai = select i1 %i.ah, i64 48, i64 32
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 %i.ai
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.aj, align 4, !tbaa !810
  br label %_ZNK5clang14BinaryOperator13getFPFeaturesEv.exit

_ZNK5clang14BinaryOperator13getFPFeaturesEv.exit: ; preds = %bb.i, %bb.j
  %.sroa.0.0.insert.insert.i = phi i64 [ %.sroa.0.0.copyload.i.i, %bb.j ], [ 0, %bb.i ] ; 3 uses
  %.sroa.5.0.extract.shift = lshr i64 %.sroa.0.0.insert.insert.i, 32 ; 2 uses
  %.sroa.5.0.extract.trunc = trunc nuw i64 %.sroa.5.0.extract.shift to i32
  %.val15 = load ptr, ptr %0, align 8, !tbaa !1113 ; 4 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.val15, i64 216
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !768, !nonnull !769, !align !770 ; 4 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 216
  %i.an = load i64, ptr %i.am, align 8
  %i.ao = trunc i64 %i.an to i32                  ; 3 uses
  %i.ap = lshr i32 %i.ao, 23
  %i.aq = and i32 %i.ap, 3                        ; 2 uses
  %i.ar = icmp eq i32 %i.aq, 3
  %spec.store.select.i.i = select i1 %i.ar, i32 2, i32 %i.aq ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.al, i64 96
  %i.at = load i64, ptr %i.as, align 8
  %i.au = lshr i64 %i.at, 57
  %i.av = trunc nuw nsw i64 %i.au to i32
  %i.aw = and i32 %i.av, 4                        ; 2 uses
  %i.ax = lshr i32 %i.ao, 19
  %i.ay = and i32 %i.ax, 192
  %i.az = getelementptr inbounds nuw i8, ptr %i.al, i64 40
  %i.ba = load i64, ptr %i.az, align 8
  %i.bb = lshr i64 %i.ba, 36
  %i.bc = trunc nuw nsw i64 %i.bb to i32
  %i.bd = and i32 %i.bc, 32256
  %i.be = icmp eq i32 %spec.store.select.i.i, 1
  %.not3.i.i.i = icmp ne i32 %i.aw, 0
  %or.cond.not16.i.i = select i1 %i.be, i1 %.not3.i.i.i, i1 false
  %i.bf = and i32 %i.ao, 100663296
  %i.bg = icmp eq i32 %i.bf, 67108864
  %or.cond15.i.i = select i1 %or.cond.not16.i.i, i1 %i.bg, i1 false
  %masksel.i.i = select i1 %or.cond15.i.i, i32 256, i32 0
  %i.bh = getelementptr inbounds nuw i8, ptr %i.al, i64 208
  %i.bi = load i64, ptr %i.bh, align 8
  %sh.diff.i.i = lshr i64 %i.bi, 23
  %tr.sh.diff.i.i = trunc i64 %sh.diff.i.i to i32
  %i.bj = and i32 %tr.sh.diff.i.i, 29360128
  %i.bk = or disjoint i32 %i.ay, %i.bd
  %i.bl = or disjoint i32 %i.bk, %i.bj
  %i.bm = or disjoint i32 %i.bl, %masksel.i.i
  %i.bn = or disjoint i32 %i.bm, %i.aw
  %i.bo = or disjoint i32 %i.bn, %spec.store.select.i.i
  %i.bp = or i32 %i.bo, 56
  %i.bq = xor i32 %.sroa.5.0.extract.trunc, -1
  %i.br = and i32 %i.bp, %i.bq
  %i.bs = and i64 %.sroa.5.0.extract.shift, %.sroa.0.0.insert.insert.i
  %i.bt = trunc nuw i64 %i.bs to i32
  %i.bu = or i32 %i.br, %i.bt
  %i.bv = getelementptr inbounds nuw i8, ptr %.val15, i64 208
  store i32 %i.bu, ptr %i.bv, align 8, !tbaa !810
  %i.bw = getelementptr inbounds nuw i8, ptr %.val15, i64 2024
  store i64 %.sroa.0.0.insert.insert.i, ptr %i.bw, align 8, !tbaa !810
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.sroa.0.0.copyload.i20 = load i32, ptr %i.bx, align 4, !tbaa !810
  %i.by = load i32, ptr %1, align 8
  %i.bz = lshr i32 %i.by, 19
  %i.ca = and i32 %i.bz, 63
  %i.cb = and i64 %i.c, -2
  %i.cc = inttoptr i64 %i.cb to ptr
  %i.cd = and i64 %i.g, -2
  %i.ce = inttoptr i64 %i.cd to ptr
  %i.cf = call i64 @_ZN5clang4Sema10BuildBinOpEPNS_5ScopeENS_14SourceLocationENS_18BinaryOperatorKindEPNS_4ExprES6_b(ptr noundef nonnull align 8 dereferenceable(18640) %.val15, ptr noundef null, i32 %.sroa.0.0.copyload.i20, i32 noundef %i.ca, ptr noundef %i.cc, ptr noundef %i.ce, i1 noundef zeroext false) #25
  call void @_ZN5clang4Sema19FPFeaturesStateRAIID1Ev(ptr noundef nonnull align 8 dead_on_return(28) dereferenceable(28) %2) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  br label %bb.k

bb.k:                                             ; preds = %bb.f, %bb.h, %_ZNK5clang14BinaryOperator13getFPFeaturesEv.exit, %bb.b, %bb.a
  %.sroa.030.1 = phi i64 [ 1, %bb.a ], [ %i.r, %bb.f ], [ %i.ad, %bb.h ], [ %i.cf, %_ZNK5clang14BinaryOperator13getFPFeaturesEv.exit ], [ 1, %bb.b ]
  ret i64 %.sroa.030.1
}

; Function Attrs: mustprogress noinline nounwind uwtable
define internal fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_117AdjustConstraintsEE31TransformCompoundAssignOperatorEPNS_22CompoundAssignOperatorE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1) unnamed_addr #9 align 2 {
bb.a:
  %2 = alloca %"class.clang::Sema::FPFeaturesStateRAII", align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  %.val6 = load ptr, ptr %0, align 8, !tbaa !1113
  call void @_ZN5clang4Sema19FPFeaturesStateRAIIC1ERS0_(ptr noundef nonnull align 8 dereferenceable(28) %2, ptr noundef nonnull align 8 dereferenceable(18640) %.val6) #25
  %i.a = load i32, ptr %1, align 8                ; 2 uses
  %i.b = and i32 %i.a, 33554432
  %.not.i = icmp eq i32 %i.b, 0
  br i1 %.not.i, label %_ZNK5clang14BinaryOperator13getFPFeaturesEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = and i32 %i.a, 511
  %i.d = icmp eq i32 %i.c, 123
  %i.e = select i1 %i.d, i64 48, i64 32
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 %i.e
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.f, align 4, !tbaa !810
  br label %_ZNK5clang14BinaryOperator13getFPFeaturesEv.exit

_ZNK5clang14BinaryOperator13getFPFeaturesEv.exit: ; preds = %bb.a, %bb.b
  %.sroa.0.0.insert.insert.i = phi i64 [ %.sroa.0.0.copyload.i.i, %bb.b ], [ 0, %bb.a ] ; 3 uses
  %.sroa.5.0.extract.shift = lshr i64 %.sroa.0.0.insert.insert.i, 32 ; 2 uses
  %.sroa.5.0.extract.trunc = trunc nuw i64 %.sroa.5.0.extract.shift to i32
  %.val5 = load ptr, ptr %0, align 8, !tbaa !1113 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.val5, i64 216
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !768, !nonnull !769, !align !770 ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 216
  %i.j = load i64, ptr %i.i, align 8
  %i.k = trunc i64 %i.j to i32                    ; 3 uses
  %i.l = lshr i32 %i.k, 23
  %i.m = and i32 %i.l, 3                          ; 2 uses
  %i.n = icmp eq i32 %i.m, 3
  %spec.store.select.i.i = select i1 %i.n, i32 2, i32 %i.m ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.h, i64 96
  %i.p = load i64, ptr %i.o, align 8
  %i.q = lshr i64 %i.p, 57
  %i.r = trunc nuw nsw i64 %i.q to i32
  %i.s = and i32 %i.r, 4                          ; 2 uses
  %i.t = lshr i32 %i.k, 19
  %i.u = and i32 %i.t, 192
  %i.v = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  %i.w = load i64, ptr %i.v, align 8
  %i.x = lshr i64 %i.w, 36
  %i.y = trunc nuw nsw i64 %i.x to i32
  %i.z = and i32 %i.y, 32256
  %i.aa = icmp eq i32 %spec.store.select.i.i, 1
  %.not3.i.i.i = icmp ne i32 %i.s, 0
  %or.cond.not16.i.i = select i1 %i.aa, i1 %.not3.i.i.i, i1 false
  %i.ab = and i32 %i.k, 100663296
  %i.ac = icmp eq i32 %i.ab, 67108864
  %or.cond15.i.i = select i1 %or.cond.not16.i.i, i1 %i.ac, i1 false
  %masksel.i.i = select i1 %or.cond15.i.i, i32 256, i32 0
  %i.ad = getelementptr inbounds nuw i8, ptr %i.h, i64 208
  %i.ae = load i64, ptr %i.ad, align 8
  %sh.diff.i.i = lshr i64 %i.ae, 23
  %tr.sh.diff.i.i = trunc i64 %sh.diff.i.i to i32
  %i.af = and i32 %tr.sh.diff.i.i, 29360128
  %i.ag = or disjoint i32 %i.u, %i.z
  %i.ah = or disjoint i32 %i.ag, %i.af
  %i.ai = or disjoint i32 %i.ah, %masksel.i.i
  %i.aj = or disjoint i32 %i.ai, %i.s
  %i.ak = or disjoint i32 %i.aj, %spec.store.select.i.i
  %i.al = or i32 %i.ak, 56
  %i.am = xor i32 %.sroa.5.0.extract.trunc, -1
  %i.an = and i32 %i.al, %i.am
  %i.ao = and i64 %.sroa.5.0.extract.shift, %.sroa.0.0.insert.insert.i
  %i.ap = trunc nuw i64 %i.ao to i32
  %i.aq = or i32 %i.an, %i.ap
  %i.ar = getelementptr inbounds nuw i8, ptr %.val5, i64 208
  store i32 %i.aq, ptr %i.ar, align 8, !tbaa !810
  %i.as = getelementptr inbounds nuw i8, ptr %.val5, i64 2024
  store i64 %.sroa.0.0.insert.insert.i, ptr %i.as, align 8, !tbaa !810
  %i.at = call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_117AdjustConstraintsEE23TransformBinaryOperatorEPNS_14BinaryOperatorE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %1)
  call void @_ZN5clang4Sema19FPFeaturesStateRAIID1Ev(ptr noundef nonnull align 8 dead_on_return(28) dereferenceable(28) %2) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  ret i64 %i.at
}

; Function Attrs: mustprogress noinline nounwind uwtable
define internal fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_117AdjustConstraintsEE19TransformAtomicExprEPNS_10AtomicExprE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1) unnamed_addr #9 align 2 {
bb.a:
  %i.a = alloca i8, align 1                       ; 5 uses
  %2 = alloca %"class.llvm::SmallVector.3077", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  store i8 0, ptr %i.a, align 1, !tbaa !772
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  store ptr %i.b, ptr %2, align 8, !tbaa !85
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store i32 0, ptr %i.c, align 8, !tbaa !84
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 12
  store i32 8, ptr %i.d, align 4, !tbaa !814
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !4020 ; 3 uses
  %i.g = icmp ugt i32 %i.f, 8
  br i1 %i.g, label %bb.b, label %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit

bb.b:                                             ; preds = %bb.a
  %i.h = zext i32 %i.f to i64
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull %i.b, i64 noundef %i.h, i64 noundef 8) #25
  %.pre = load i32, ptr %i.e, align 8, !tbaa !4020
  br label %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit

_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit: ; preds = %bb.a, %bb.b
  %i.i = phi i32 [ %i.f, %bb.a ], [ %.pre, %bb.b ]
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.k = call fastcc noundef zeroext i1 @_ZN5clang13TreeTransformIN12_GLOBAL__N_117AdjustConstraintsEE14TransformExprsEPKPNS_4ExprEjbRN4llvm15SmallVectorImplIS5_EEPb(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %i.j, i32 noundef %i.i, i1 noundef zeroext false, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull %i.a)
  br i1 %i.k, label %bb.f, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit
  %.val = load ptr, ptr %0, align 8, !tbaa !1113  ; 2 uses
  %i.l = getelementptr i8, ptr %.val, i64 13800
  %.val.val = load i32, ptr %i.l, align 4, !tbaa !1205
  %i.m = icmp ne i32 %.val.val, 0
  %i.n = load i8, ptr %i.a, align 1, !range !775
  %i.o = trunc nuw i8 %i.n to i1
  %or.cond = select i1 %i.m, i1 true, i1 %i.o
  br i1 %or.cond, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = ptrtoint ptr %1 to i64
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 76
  %.sroa.0.0.copyload.i = load i64, ptr %i.q, align 4 ; 3 uses
  %i.r = load ptr, ptr %2, align 8, !tbaa !85
  %i.s = load i32, ptr %i.c, align 8, !tbaa !84
  %i.t = zext i32 %i.s to i64
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 84
  %i.v = load i32, ptr %i.u, align 4, !tbaa !4021
  %i.w = lshr i64 %.sroa.0.0.copyload.i, 32
  %i.x = trunc nuw i64 %i.w to i32
  %i.y = call i64 @_ZN5clang4Sema15BuildAtomicExprENS_11SourceRangeES1_NS_14SourceLocationEN4llvm15MutableArrayRefIPNS_4ExprEEENS_10AtomicExpr8AtomicOpENS0_19AtomicArgumentOrderE(ptr noundef nonnull align 8 dereferenceable(18640) %.val, i64 %.sroa.0.0.copyload.i, i64 %.sroa.0.0.copyload.i, i32 %i.x, ptr %i.r, i64 %i.t, i32 noundef %i.v, i32 noundef 1) #25
  br label %bb.f

bb.f:                                             ; preds = %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit, %bb.e, %bb.d
  %.sroa.012.0 = phi i64 [ %i.p, %bb.d ], [ %i.y, %bb.e ], [ 1, %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit ]
  %i.z = load ptr, ptr %2, align 8, !tbaa !85     ; 2 uses
  %i.aa = icmp eq ptr %i.z, %i.b
  br i1 %i.aa, label %_ZN4llvm11SmallVectorIPN5clang4ExprELj8EED2Ev.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @free(ptr noundef %i.z) #25
  br label %_ZN4llvm11SmallVectorIPN5clang4ExprELj8EED2Ev.exit

_ZN4llvm11SmallVectorIPN5clang4ExprELj8EED2Ev.exit: ; preds = %bb.f, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  ret i64 %.sroa.012.0
}

; Function Attrs: mustprogress noinline nounwind uwtable
define internal fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_117AdjustConstraintsEE19TransformAsTypeExprEPNS_10AsTypeExprE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #9 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !4023
  %i.c = tail call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_117AdjustConstraintsEE13TransformExprEPNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.b) ; 2 uses
  %i.d = icmp eq i64 %i.c, 1
  br i1 %i.d, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.0.0.copyload.i = load i64, ptr %i.e, align 8, !tbaa !78 ; 5 uses
  %i.f = icmp ult i64 %.sroa.0.0.copyload.i, 16
  br i1 %i.f, label %_ZN5clang13TreeTransformIN12_GLOBAL__N_117AdjustConstraintsEE13TransformTypeENS_8QualTypeE.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = and i64 %.sroa.0.0.copyload.i, -16
  %i.h = inttoptr i64 %i.g to ptr
  %i.i = load ptr, ptr %i.h, align 16, !tbaa !82
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 17
  %i.k = load i16, ptr %i.j, align 1
  %i.l = and i16 %i.k, 11
  %or.cond = icmp eq i16 %i.l, 0
  br i1 %or.cond, label %_ZN5clang13TreeTransformIN12_GLOBAL__N_117AdjustConstraintsEE13TransformTypeENS_8QualTypeE.exit, label %_ZN12_GLOBAL__N_117AdjustConstraints18AlreadyTransformedEN5clang8QualTypeE.exit.i.thread15

_ZN12_GLOBAL__N_117AdjustConstraints18AlreadyTransformedEN5clang8QualTypeE.exit.i.thread15: ; preds = %bb.c
  %.val.i = load ptr, ptr %0, align 8, !tbaa !1113
  %i.m = getelementptr inbounds nuw i8, ptr %.val.i, i64 232
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !771, !nonnull !769, !align !770
  %i.o = tail call noundef ptr @_ZNK5clang10ASTContext24getTrivialTypeSourceInfoENS_8QualTypeENS_14SourceLocationE(ptr noundef nonnull align 8 dereferenceable(23904) %i.n, i64 %.sroa.0.0.copyload.i, i32 0) #25, !inline_history !36
  %i.p = tail call fastcc noundef ptr @_ZN5clang13TreeTransformIN12_GLOBAL__N_117AdjustConstraintsEE13TransformTypeEPNS_14TypeSourceInfoE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.o), !inline_history !36 ; 2 uses
  %.not.i = icmp eq ptr %i.p, null
  br i1 %.not.i, label %_ZN5clang13TreeTransformIN12_GLOBAL__N_117AdjustConstraintsEE13TransformTypeENS_8QualTypeE.exit, label %bb.d

bb.d:                                             ; preds = %_ZN12_GLOBAL__N_117AdjustConstraints18AlreadyTransformedEN5clang8QualTypeE.exit.i.thread15
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.p, align 8, !tbaa !78
  br label %_ZN5clang13TreeTransformIN12_GLOBAL__N_117AdjustConstraintsEE13TransformTypeENS_8QualTypeE.exit

_ZN5clang13TreeTransformIN12_GLOBAL__N_117AdjustConstraintsEE13TransformTypeENS_8QualTypeE.exit: ; preds = %bb.c, %bb.b, %_ZN12_GLOBAL__N_117AdjustConstraints18AlreadyTransformedEN5clang8QualTypeE.exit.i.thread15, %bb.d
  %.sroa.013.0 = phi i64 [ %.sroa.0.0.copyload.i.i, %bb.d ], [ %.sroa.0.0.copyload.i, %bb.c ], [ 0, %_ZN12_GLOBAL__N_117AdjustConstraints18AlreadyTransformedEN5clang8QualTypeE.exit.i.thread15 ], [ %.sroa.0.0.copyload.i, %bb.b ]
  %i.q = load ptr, ptr %0, align 8, !tbaa !1113, !nonnull !769, !align !770
  %i.r = and i64 %i.c, -2
  %i.s = inttoptr i64 %i.r to ptr
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.0.0.copyload.i10 = load i32, ptr %i.t, align 8, !tbaa !810
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 28
  %.sroa.0.0.copyload.i11 = load i32, ptr %i.u, align 4, !tbaa !810
  %i.v = tail call i64 @_ZN5clang4Sema15BuildAsTypeExprEPNS_4ExprENS_8QualTypeENS_14SourceLocationES4_(ptr noundef nonnull align 8 dereferenceable(18640) %i.q, ptr noundef %i.s, i64 %.sroa.013.0, i32 %.sroa.0.0.copyload.i10, i32 %.sroa.0.0.copyload.i11) #25
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %_ZN5clang13TreeTransformIN12_GLOBAL__N_117AdjustConstraintsEE13TransformTypeENS_8QualTypeE.exit
  %.sroa.09.0 = phi i64 [ %i.v, %_ZN5clang13TreeTransformIN12_GLOBAL__N_117AdjustConstraintsEE13TransformTypeENS_8QualTypeE.exit ], [ 1, %bb.a ]
  ret i64 %.sroa.09.0
}

; Function Attrs: mustprogress noinline nounwind uwtable
define internal fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_117AdjustConstraintsEE27TransformArrayTypeTraitExprEPNS_18ArrayTypeTraitExprE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1) unnamed_addr #9 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1350
  %i.c = tail call fastcc noundef ptr @_ZN5clang13TreeTransformIN12_GLOBAL__N_117AdjustConstraintsEE13TransformTypeEPNS_14TypeSourceInfoE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.b) ; 3 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %_ZN5clang32EnterExpressionEvaluationContextD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.val = load ptr, ptr %0, align 8, !tbaa !1113  ; 3 uses
  %i.d = getelementptr i8, ptr %.val, i64 13800
  %.val.val = load i32, ptr %i.d, align 4, !tbaa !1205
  %.not22 = icmp eq i32 %.val.val, 0
  br i1 %.not22, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !1350
  %i.f = icmp eq ptr %i.c, %i.e
  br i1 %i.f, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.g = ptrtoint ptr %1 to i64
  br label %_ZN5clang32EnterExpressionEvaluationContextD2Ev.exit

bb.e:                                             ; preds = %bb.c, %bb.b
  tail call void @_ZN5clang4Sema31PushExpressionEvaluationContextENS0_27ExpressionEvaluationContextEPNS_4DeclENS0_33ExpressionEvaluationContextRecord14ExpressionKindE(ptr noundef nonnull align 8 dereferenceable(18640) %.val, i32 noundef 0, ptr noundef null, i32 noundef 4) #25
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !4024
  %i.j = tail call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_117AdjustConstraintsEE13TransformExprEPNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.i) ; 2 uses
  %i.k = icmp eq i64 %i.j, 1
  tail call void @_ZN5clang4Sema30PopExpressionEvaluationContextEv(ptr noundef nonnull align 8 dereferenceable(18640) %.val) #25
  br i1 %i.k, label %_ZN5clang32EnterExpressionEvaluationContextD2Ev.exit, label %_ZN5clang32EnterExpressionEvaluationContextD2Ev.exit15

_ZN5clang32EnterExpressionEvaluationContextD2Ev.exit15: ; preds = %bb.e
  %i.l = load i24, ptr %1, align 8
  %i.m = lshr i24 %i.l, 19
  %i.n = and i24 %i.m, 3
  %i.o = zext nneg i24 %i.n to i32
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.sroa.0.0.copyload.i = load i32, ptr %i.p, align 8, !tbaa !810
  %i.q = and i64 %i.j, -2
  %i.r = inttoptr i64 %i.q to ptr
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 36
  %.sroa.0.0.copyload.i16 = load i32, ptr %i.s, align 4, !tbaa !810
  %.val14 = load ptr, ptr %0, align 8, !tbaa !1113
  %i.t = tail call i64 @_ZN5clang4Sema19BuildArrayTypeTraitENS_14ArrayTypeTraitENS_14SourceLocationEPNS_14TypeSourceInfoEPNS_4ExprES2_(ptr noundef nonnull align 8 dereferenceable(18640) %.val14, i32 noundef %i.o, i32 %.sroa.0.0.copyload.i, ptr noundef nonnull %i.c, ptr noundef %i.r, i32 %.sroa.0.0.copyload.i16) #25
  br label %_ZN5clang32EnterExpressionEvaluationContextD2Ev.exit

_ZN5clang32EnterExpressionEvaluationContextD2Ev.exit: ; preds = %bb.e, %_ZN5clang32EnterExpressionEvaluationContextD2Ev.exit15, %bb.a, %bb.d
  %.sroa.021.1 = phi i64 [ %i.g, %bb.d ], [ 1, %bb.a ], [ %i.t, %_ZN5clang32EnterExpressionEvaluationContextD2Ev.exit15 ], [ 1, %bb.e ]
  ret i64 %.sroa.021.1
}

; Function Attrs: mustprogress noinline nounwind uwtable
define internal fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_117AdjustConstraintsEE27TransformArraySubscriptExprEPNS_18ArraySubscriptExprE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1) unnamed_addr #9 align 2 {
end_hunk_1
begin_hunk_2_@_ZNK5clang8SemaBase21SemaDiagnosticBuilderlsINS_14SourceLocationEvEERKS1_OT_:bb.a
  %i.r = load i32, ptr %i.k, align 8, !tbaa !84
  %i.s = add i32 %i.r, 1
  store i32 %i.s, ptr %i.k, align 8, !tbaa !84
  br label %_ZNK5clang8SemaBase20ImmediateDiagBuilderlsINS_14SourceLocationEvEERKS1_OT_.exit

bb.f:                                             ; preds = %bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 132
  %i.v = load i8, ptr %i.u, align 4, !tbaa !795, !range !775, !noundef !769
  %i.w = trunc nuw i8 %i.v to i1
  br i1 %i.w, label %bb.g, label %_ZNK5clang8SemaBase20ImmediateDiagBuilderlsINS_14SourceLocationEvEERKS1_OT_.exit

bb.g:                                             ; preds = %bb.f
  %i.x = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNK5clang8SemaBase21SemaDiagnosticBuilder22getDeviceDeferredDiagsEv(ptr noundef nonnull align 8 dereferenceable(136) %0) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !805  ; 3 uses
  %.not.i = icmp eq ptr %i.z, null
  br i1 %.not.i, label %_ZN5clang16CanonicalDeclPtrIKNS_12FunctionDeclEEC2EPS2_.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !807
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 32
  %i.ac = load ptr, ptr %i.ab, align 8
  %i.ad = tail call noundef ptr %i.ac(ptr noundef nonnull align 8 dereferenceable(168) %i.z) #25, !inline_history !0
  br label %_ZN5clang16CanonicalDeclPtrIKNS_12FunctionDeclEEC2EPS2_.exit

_ZN5clang16CanonicalDeclPtrIKNS_12FunctionDeclEEC2EPS2_.exit: ; preds = %bb.g, %bb.h
  %i.ae = phi ptr [ %i.ad, %bb.h ], [ null, %bb.g ]
  store ptr %i.ae, ptr %2, align 8, !tbaa !809
  %i.af = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIN5clang16CanonicalDeclPtrIKNS2_12FunctionDeclEEESt6vectorISt4pairINS2_14SourceLocationENS2_17PartialDiagnosticEESaISB_EENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_SD_EEEES6_SD_SF_SI_E24lookupOrInsertIntoBucketIS6_JEEES8_IPSI_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.x, ptr noundef nonnull align 8 dereferenceable(8) %2)
  %.fca.0.extract.i = extractvalue { ptr, i8 } %i.af, 0
  %i.ag = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i, i64 8
  %i.ah = load i32, ptr %i.t, align 8, !tbaa !810
  %i.ai = zext i32 %i.ah to i64
  %i.aj = load ptr, ptr %i.ag, align 8, !tbaa !813
  %i.ak = getelementptr inbounds nuw [32 x i8], ptr %i.aj, i64 %i.ai ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 8 ; 2 uses
  %.sroa.0.0.copyload.i = load i32, ptr %1, align 4, !tbaa !810
  %.sroa.2.0.insert.ext.i.i = zext i32 %.sroa.0.0.copyload.i to i64
  %.sroa.0.0.insert.insert.i.i = mul nuw i64 %.sroa.2.0.insert.ext.i.i, 4294967297 ; 2 uses
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !779 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.am, null
  br i1 %.not.i.i.i, label %_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i, label %bb.i

_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i: ; preds = %_ZN5clang16CanonicalDeclPtrIKNS_12FunctionDeclEEC2EPS2_.exit
  %i.an = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !780
  %i.ap = call noundef ptr @_ZN5clang20DiagStorageAllocator8AllocateEv(ptr noundef nonnull align 8 dereferenceable(14980) %i.ao) ; 2 uses
  store ptr %i.ap, ptr %i.al, align 8, !tbaa !779
  br label %bb.i

bb.i:                                             ; preds = %_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i, %_ZN5clang16CanonicalDeclPtrIKNS_12FunctionDeclEEC2EPS2_.exit
  %i.aq = phi ptr [ %i.ap, %_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i ], [ %i.am, %_ZN5clang16CanonicalDeclPtrIKNS_12FunctionDeclEEC2EPS2_.exit ] ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 416 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.aq, i64 424 ; 3 uses
  %i.at = load i32, ptr %i.as, align 8, !tbaa !84 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.aq, i64 428
  %i.av = load i32, ptr %i.au, align 4, !tbaa !814
  %.not.i5.i.i.i = icmp ult i32 %i.at, %i.av
  br i1 %.not.i5.i.i.i, label %bb.k, label %bb.j, !prof !815

bb.j:                                             ; preds = %bb.i
  call void @_ZN4llvm23SmallVectorTemplateBaseIN5clang15CharSourceRangeELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %i.ar, i64 %.sroa.0.0.insert.insert.i.i, i8 1)
  br label %_ZNK5clang17PartialDiagnosticlsINS_14SourceLocationEvEERKS0_OT_.exit

bb.k:                                             ; preds = %bb.i
  %i.aw = zext i32 %i.at to i64
  %i.ax = load ptr, ptr %i.ar, align 8, !tbaa !85
  %i.ay = getelementptr inbounds nuw [12 x i8], ptr %i.ax, i64 %i.aw ; 2 uses
  store i64 %.sroa.0.0.insert.insert.i.i, ptr %i.ay, align 1
  %.sroa.38.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  store i8 1, ptr %.sroa.38.0..sroa_idx.i.i.i.i, align 1
  %i.az = load i32, ptr %i.as, align 8, !tbaa !84
  %i.ba = add i32 %i.az, 1
  store i32 %i.ba, ptr %i.as, align 8, !tbaa !84
  br label %_ZNK5clang17PartialDiagnosticlsINS_14SourceLocationEvEERKS0_OT_.exit

_ZNK5clang17PartialDiagnosticlsINS_14SourceLocationEvEERKS0_OT_.exit: ; preds = %bb.j, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  br label %_ZNK5clang8SemaBase20ImmediateDiagBuilderlsINS_14SourceLocationEvEERKS1_OT_.exit

_ZNK5clang8SemaBase20ImmediateDiagBuilderlsINS_14SourceLocationEvEERKS1_OT_.exit: ; preds = %bb.e, %bb.d, %bb.f, %_ZNK5clang17PartialDiagnosticlsINS_14SourceLocationEvEERKS0_OT_.exit
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm23SmallVectorTemplateBaseIN5clang14DeclAccessPairELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 %1) local_unnamed_addr #9 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !84
  %i.c = zext i32 %i.b to i64
  %i.d = add nuw nsw i64 %i.c, 1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.e, i64 noundef %i.d, i64 noundef 8) #25
  %i.f = load ptr, ptr %0, align 8, !tbaa !85
  %i.g = load i32, ptr %i.a, align 8, !tbaa !84
  %i.h = zext i32 %i.g to i64
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.h
  store i64 %1, ptr %i.i, align 1
  %i.j = load i32, ptr %i.a, align 8, !tbaa !84
  %i.k = add i32 %i.j, 1
  store i32 %i.k, ptr %i.a, align 8, !tbaa !84
  ret void
}

declare i64 @_ZN5clang4Sema24BuildDeclarationNameExprERKNS_12CXXScopeSpecERNS_12LookupResultEbb(ptr noundef nonnull align 8 dereferenceable(18640), ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(168), i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

declare i64 @_ZN5clang4Sema19BuildTemplateIdExprERKNS_12CXXScopeSpecENS_14SourceLocationERNS_12LookupResultEbPKNS_24TemplateArgumentListInfoE(ptr noundef nonnull align 8 dereferenceable(18640), ptr noundef nonnull align 8 dereferenceable(48), i32, ptr noundef nonnull align 8 dereferenceable(168), i1 noundef zeroext, ptr noundef) local_unnamed_addr #2

declare i64 @_ZN5clang4Sema12BuildUnaryOpEPNS_5ScopeENS_14SourceLocationENS_17UnaryOperatorKindEPNS_4ExprEb(ptr noundef nonnull align 8 dereferenceable(18640), ptr noundef, i32, i32 noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

declare i64 @_ZN5clang4Sema30CreateUnaryExprOrTypeTraitExprEPNS_14TypeSourceInfoENS_14SourceLocationENS_20UnaryExprOrTypeTraitENS_11SourceRangeE(ptr noundef nonnull align 8 dereferenceable(18640), ptr noundef, i32, i32 noundef, i64) local_unnamed_addr #2

declare i64 @_ZN5clang4Sema14ActOnParenExprENS_14SourceLocationES1_PNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(18640), i32, i32, ptr noundef) local_unnamed_addr #2

declare i64 @_ZN5clang4Sema30CreateUnaryExprOrTypeTraitExprEPNS_4ExprENS_14SourceLocationENS_20UnaryExprOrTypeTraitE(ptr noundef nonnull align 8 dereferenceable(18640), ptr noundef, i32, i32 noundef) local_unnamed_addr #2

declare i64 @_ZN5clang4Sema14BuildTypeTraitENS_9TypeTraitENS_14SourceLocationEN4llvm8ArrayRefIPNS_14TypeSourceInfoEEES2_(ptr noundef nonnull align 8 dereferenceable(18640), i32 noundef, i32, ptr, i64, i32) local_unnamed_addr #2

declare void @_ZNK5clang32SubstNonTypeTemplateParmPackExpr15getArgumentPackEv(ptr dead_on_unwind writable sret(%"class.clang::TemplateArgument") align 8, ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #2

declare noundef ptr @_ZNK5clang32SubstNonTypeTemplateParmPackExpr16getParameterPackEv(ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #2

declare i64 @_ZN5clang4Sema33BuildSubstNonTypeTemplateParmExprEPNS_4DeclEjNS_8QualTypeENS_14SourceLocationENS_16TemplateArgumentENS_16OptionalUnsignedIjEEb(ptr noundef nonnull align 8 dereferenceable(18640), ptr noundef, i32 noundef, i64, i32, ptr noundef byval(%"class.clang::TemplateArgument") align 8, i32, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare noundef ptr @_ZN5clang4Expr23IgnoreImplicitAsWrittenEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #3

declare void @_ZN5clang28getReplacedTemplateParameterEPNS_4DeclEj(ptr dead_on_unwind writable sret(%"class.std::tuple.3027") align 8, ptr noundef, i32 noundef) local_unnamed_addr #2

declare i64 @_ZN5clang4Sema21CheckTemplateArgumentEPNS_9NamedDeclENS_8QualTypeEPNS_4ExprERNS_16TemplateArgumentES7_bNS0_25CheckTemplateArgumentKindE(ptr noundef nonnull align 8 dereferenceable(18640), ptr noundef, i64, ptr noundef, ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), i1 noundef zeroext, i32 noundef) local_unnamed_addr #2

declare void @_ZN5clang4Sema18ActOnStartStmtExprEv(ptr noundef nonnull align 8 dereferenceable(18640)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_117AdjustConstraintsEE21TransformCompoundStmtEPNS_12CompoundStmtEb(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, i1 noundef zeroext %2) unnamed_addr #0 align 2 {
bb.a:
  %3 = alloca %"class.clang::FPOptions", align 4  ; 4 uses
  %4 = alloca %"class.clang::FPOptions", align 4  ; 4 uses
  %5 = alloca %"class.clang::Sema::FPFeaturesStateRAII", align 8 ; 4 uses
  %6 = alloca %"class.llvm::SmallVector.3033", align 8 ; 12 uses
  %.val33 = load ptr, ptr %0, align 8, !tbaa !1113 ; 2 uses
  tail call void @_ZN5clang4Sema24ActOnStartOfCompoundStmtEb(ptr noundef nonnull align 8 dereferenceable(18640) %.val33, i1 noundef zeroext false) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  %.val32 = load ptr, ptr %0, align 8, !tbaa !1113
  call void @_ZN5clang4Sema19FPFeaturesStateRAIIC1ERS0_(ptr noundef nonnull align 8 dereferenceable(28) %5, ptr noundef nonnull align 8 dereferenceable(18640) %.val32) #25
  %i.a = load i16, ptr %1, align 8
  %i.b = and i16 %i.a, 512
  %.not68 = icmp eq i16 %i.b, 0
  br i1 %.not68, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.val31 = load ptr, ptr %0, align 8, !tbaa !1113 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.e = load i32, ptr %i.d, align 4, !tbaa !78
  %i.f = zext i32 %i.e to i64
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.f
  %.sroa.0.0.copyload.i = load i64, ptr %i.g, align 4, !tbaa !810 ; 2 uses
  %.sroa.452.0.extract.shift = lshr i64 %.sroa.0.0.copyload.i, 32 ; 2 uses
  %.sroa.452.0.extract.trunc = trunc nuw i64 %.sroa.452.0.extract.shift to i32
  %i.h = getelementptr inbounds nuw i8, ptr %.val31, i64 216
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !768, !nonnull !769, !align !770 ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 216 ; 2 uses
  %i.k = load i64, ptr %i.j, align 8
  %i.l = trunc i64 %i.k to i32                    ; 3 uses
  %i.m = lshr i32 %i.l, 23
  %i.n = and i32 %i.m, 3                          ; 2 uses
  %i.o = icmp eq i32 %i.n, 3
  %spec.store.select.i.i = select i1 %i.o, i32 2, i32 %i.n ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.i, i64 96 ; 2 uses
  %i.q = load i64, ptr %i.p, align 8
  %i.r = lshr i64 %i.q, 57
  %i.s = trunc nuw nsw i64 %i.r to i32
  %i.t = and i32 %i.s, 4                          ; 2 uses
  %i.u = lshr i32 %i.l, 19
  %i.v = and i32 %i.u, 192
  %i.w = getelementptr inbounds nuw i8, ptr %i.i, i64 40 ; 2 uses
  %i.x = load i64, ptr %i.w, align 8
  %i.y = lshr i64 %i.x, 36
  %i.z = trunc nuw nsw i64 %i.y to i32
  %i.aa = and i32 %i.z, 32256
  %i.ab = icmp eq i32 %spec.store.select.i.i, 1
  %.not3.i.i.i = icmp ne i32 %i.t, 0
  %or.cond.not16.i.i = select i1 %i.ab, i1 %.not3.i.i.i, i1 false
  %i.ac = and i32 %i.l, 100663296
  %i.ad = icmp eq i32 %i.ac, 67108864
  %or.cond15.i.i = select i1 %or.cond.not16.i.i, i1 %i.ad, i1 false
  %masksel.i.i = select i1 %or.cond15.i.i, i32 256, i32 0
  %i.ae = getelementptr inbounds nuw i8, ptr %i.i, i64 208 ; 2 uses
  %i.af = load i64, ptr %i.ae, align 8
  %sh.diff.i.i = lshr i64 %i.af, 23
  %tr.sh.diff.i.i = trunc i64 %sh.diff.i.i to i32
  %i.ag = and i32 %tr.sh.diff.i.i, 29360128
  %i.ah = or disjoint i32 %i.v, %i.aa
  %i.ai = or disjoint i32 %i.ah, %i.ag
  %i.aj = or disjoint i32 %i.ai, %masksel.i.i
  %i.ak = or disjoint i32 %i.aj, %i.t
  %i.al = or disjoint i32 %i.ak, %spec.store.select.i.i
  %i.am = or i32 %i.al, 56
  %i.an = xor i32 %.sroa.452.0.extract.trunc, -1
  %i.ao = and i32 %i.am, %i.an
  %i.ap = and i64 %.sroa.452.0.extract.shift, %.sroa.0.0.copyload.i
  %i.aq = trunc nuw i64 %i.ap to i32
  %i.ar = or i32 %i.ao, %i.aq                     ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  store i32 %i.ar, ptr %3, align 4
  %i.as = getelementptr inbounds nuw i8, ptr %.val31, i64 208
  store i32 %i.ar, ptr %i.as, align 8, !tbaa !810
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  %i.at = load i64, ptr %i.j, align 8
  %i.au = trunc i64 %i.at to i32                  ; 3 uses
  %i.av = lshr i32 %i.au, 23
  %i.aw = and i32 %i.av, 3                        ; 2 uses
  %i.ax = icmp eq i32 %i.aw, 3
  %spec.store.select.i.i36 = select i1 %i.ax, i32 2, i32 %i.aw ; 2 uses
  %i.ay = load i64, ptr %i.p, align 8
  %i.az = lshr i64 %i.ay, 57
  %i.ba = trunc nuw nsw i64 %i.az to i32
  %i.bb = and i32 %i.ba, 4                        ; 2 uses
  %i.bc = lshr i32 %i.au, 19
  %i.bd = and i32 %i.bc, 192
  %i.be = load i64, ptr %i.w, align 8
  %i.bf = lshr i64 %i.be, 36
  %i.bg = trunc nuw nsw i64 %i.bf to i32
  %i.bh = and i32 %i.bg, 32256
  %i.bi = icmp eq i32 %spec.store.select.i.i36, 1
  %.not3.i.i.i37 = icmp ne i32 %i.bb, 0
  %or.cond.not16.i.i38 = and i1 %.not3.i.i.i37, %i.bi
  %i.bj = and i32 %i.au, 100663296
  %i.bk = icmp eq i32 %i.bj, 67108864
  %or.cond15.i.i39 = select i1 %or.cond.not16.i.i38, i1 %i.bk, i1 false
  %masksel.i.i40 = select i1 %or.cond15.i.i39, i32 256, i32 0
  %i.bl = load i64, ptr %i.ae, align 8
  %sh.diff.i.i41 = lshr i64 %i.bl, 23
  %tr.sh.diff.i.i42 = trunc i64 %sh.diff.i.i41 to i32
  %i.bm = and i32 %tr.sh.diff.i.i42, 29360128
  %i.bn = or disjoint i32 %i.bd, %i.bh
  %i.bo = or disjoint i32 %i.bn, %i.bm
  %i.bp = or disjoint i32 %i.bo, %masksel.i.i40
  %i.bq = or disjoint i32 %i.bp, %i.bb
  %i.br = or disjoint i32 %i.bq, %spec.store.select.i.i36
  %i.bs = or disjoint i32 %i.br, 56               ; 2 uses
  store i32 %i.bs, ptr %4, align 4, !tbaa !4073
  %i.bt = icmp eq i32 %i.ar, %i.bs
  br i1 %i.bt, label %_ZN5clang4Sema14resetFPOptionsENS_9FPOptionsE.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.bu = call i64 @_ZNK5clang9FPOptions14getChangesSlowERKS0_(ptr noundef nonnull align 4 dereferenceable(4) %3, ptr noundef nonnull align 4 dereferenceable(4) %4) #25
  br label %_ZN5clang4Sema14resetFPOptionsENS_9FPOptionsE.exit

_ZN5clang4Sema14resetFPOptionsENS_9FPOptionsE.exit: ; preds = %bb.b, %bb.c
  %.sroa.0.0.insert.insert.i.i = phi i64 [ %i.bu, %bb.c ], [ 0, %bb.b ]
  %i.bv = getelementptr inbounds nuw i8, ptr %.val31, i64 2024
  store i64 %.sroa.0.0.insert.insert.i.i, ptr %i.bv, align 8, !tbaa !810
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  br label %bb.d

bb.d:                                             ; preds = %_ZN5clang4Sema14resetFPOptionsENS_9FPOptionsE.exit, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  %i.bw = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  store ptr %i.bw, ptr %6, align 8, !tbaa !85
  %i.bx = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 8 uses
  store i32 0, ptr %i.bx, align 8, !tbaa !84
  %i.by = getelementptr inbounds nuw i8, ptr %6, i64 12 ; 3 uses
  store i32 8, ptr %i.by, align 4, !tbaa !814
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !78 ; 2 uses
  %i.cc = zext i32 %i.cb to i64
  %.idx = shl nuw nsw i64 %i.cc, 3
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bz, i64 %.idx ; 2 uses
  %.not71 = icmp eq i32 %i.cb, 0
  br i1 %.not71, label %._crit_edge.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.d
  br i1 %2, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %bb.j
  %.074.us = phi i1 [ %.1.ph.us, %bb.j ], [ false, %.lr.ph ] ; 2 uses
  %.02573.us = phi i8 [ %.126.ph.us, %bb.j ], [ 0, %.lr.ph ] ; 2 uses
  %.03072.us = phi ptr [ %i.df, %bb.j ], [ %i.bz, %.lr.ph ] ; 2 uses
  %i.ce = load ptr, ptr %.03072.us, align 8, !tbaa !1067 ; 4 uses
  %i.cf = load i32, ptr %i.ca, align 4, !tbaa !78 ; 2 uses
  %i.cg = icmp eq i32 %i.cf, 0
  br i1 %i.cg, label %_ZN5clang12CompoundStmt9body_backEv.exit.us, label %bb.e

bb.e:                                             ; preds = %.lr.ph.split.us
  %i.ch = add i32 %i.cf, -1
  %i.ci = zext i32 %i.ch to i64
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %i.bz, i64 %i.ci
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !1067
  br label %_ZN5clang12CompoundStmt9body_backEv.exit.us

_ZN5clang12CompoundStmt9body_backEv.exit.us:      ; preds = %bb.e, %.lr.ph.split.us
  %i.cl = phi ptr [ %i.ck, %bb.e ], [ null, %.lr.ph.split.us ]
  %i.cm = icmp eq ptr %i.ce, %i.cl
  %i.cn = select i1 %i.cm, i32 2, i32 0
  %i.co = call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_117AdjustConstraintsEE13TransformStmtEPNS_4StmtENS3_15StmtDiscardKindE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.ce, i32 noundef %i.cn) ; 2 uses
  %i.cp = icmp eq i64 %i.co, 1
  br i1 %i.cp, label %bb.i, label %bb.f

bb.f:                                             ; preds = %_ZN5clang12CompoundStmt9body_backEv.exit.us
  %i.cq = trunc nuw i8 %.02573.us to i1
  %i.cr = and i64 %i.co, -2
  %i.cs = inttoptr i64 %i.cr to ptr               ; 3 uses
  %i.ct = icmp ne ptr %i.ce, %i.cs
  %narrow.us = select i1 %i.cq, i1 true, i1 %i.ct
  %i.cu = zext i1 %narrow.us to i8                ; 2 uses
  %i.cv = load i32, ptr %i.bx, align 8, !tbaa !84 ; 2 uses
  %i.cw = load i32, ptr %i.by, align 4, !tbaa !814
  %.not.i.us = icmp ult i32 %i.cv, %i.cw
  br i1 %.not.i.us, label %bb.h, label %bb.g, !prof !815

bb.g:                                             ; preds = %bb.f
  call void @_ZN4llvm23SmallVectorTemplateBaseIPN5clang4StmtELb1EE15growAndPushBackES3_(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef %i.cs)
  br label %bb.j

bb.h:                                             ; preds = %bb.f
  %i.cx = zext i32 %i.cv to i64
  %i.cy = load ptr, ptr %6, align 8, !tbaa !85
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %i.cy, i64 %i.cx
  store ptr %i.cs, ptr %i.cz, align 1
  %i.da = load i32, ptr %i.bx, align 8, !tbaa !84
  %i.db = add i32 %i.da, 1
  store i32 %i.db, ptr %i.bx, align 8, !tbaa !84
  br label %bb.j

bb.i:                                             ; preds = %_ZN5clang12CompoundStmt9body_backEv.exit.us
  %i.dc = load i16, ptr %i.ce, align 8
  %i.dd = and i16 %i.dc, 511
  %i.de = icmp eq i16 %i.dd, 255
  br i1 %i.de, label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4StmtELb1EE9push_backES3_.exit, label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.g
  %.126.ph.us = phi i8 [ %i.cu, %bb.h ], [ %i.cu, %bb.g ], [ %.02573.us, %bb.i ] ; 2 uses
  %.1.ph.us = phi i1 [ %.074.us, %bb.h ], [ %.074.us, %bb.g ], [ true, %bb.i ] ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %.03072.us, i64 8 ; 2 uses
  %.not.us = icmp eq ptr %i.df, %i.cd
  br i1 %.not.us, label %._crit_edge, label %.lr.ph.split.us

.lr.ph.split:                                     ; preds = %.lr.ph, %bb.o
  %.074 = phi i1 [ %.1.ph, %bb.o ], [ false, %.lr.ph ] ; 2 uses
  %.02573 = phi i8 [ %.126.ph, %bb.o ], [ 0, %.lr.ph ] ; 2 uses
  %.03072 = phi ptr [ %i.dy, %bb.o ], [ %i.bz, %.lr.ph ] ; 2 uses
  %i.dg = load ptr, ptr %.03072, align 8, !tbaa !1067 ; 3 uses
  %i.dh = call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_117AdjustConstraintsEE13TransformStmtEPNS_4StmtENS3_15StmtDiscardKindE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.dg, i32 noundef 0) ; 2 uses
  %i.di = icmp eq i64 %i.dh, 1
  br i1 %i.di, label %bb.k, label %bb.l

bb.k:                                             ; preds = %.lr.ph.split
  %i.dj = load i16, ptr %i.dg, align 8
  %i.dk = and i16 %i.dj, 511
  %i.dl = icmp eq i16 %i.dk, 255
  br i1 %i.dl, label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4StmtELb1EE9push_backES3_.exit, label %bb.o

bb.l:                                             ; preds = %.lr.ph.split
  %i.dm = and i64 %i.dh, -2
  %i.dn = inttoptr i64 %i.dm to ptr               ; 3 uses
  %i.do = icmp ne ptr %i.dg, %i.dn
  %i.dp = zext i1 %i.do to i8
  %i.dq = or i8 %.02573, %i.dp                    ; 2 uses
  %i.dr = load i32, ptr %i.bx, align 8, !tbaa !84 ; 2 uses
  %i.ds = load i32, ptr %i.by, align 4, !tbaa !814
  %.not.i = icmp ult i32 %i.dr, %i.ds
  br i1 %.not.i, label %bb.n, label %bb.m, !prof !815

bb.m:                                             ; preds = %bb.l
  call void @_ZN4llvm23SmallVectorTemplateBaseIPN5clang4StmtELb1EE15growAndPushBackES3_(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef %i.dn)
  br label %bb.o

bb.n:                                             ; preds = %bb.l
  %i.dt = zext i32 %i.dr to i64
  %i.du = load ptr, ptr %6, align 8, !tbaa !85
  %i.dv = getelementptr inbounds nuw [8 x i8], ptr %i.du, i64 %i.dt
  store ptr %i.dn, ptr %i.dv, align 1
  %i.dw = load i32, ptr %i.bx, align 8, !tbaa !84
  %i.dx = add i32 %i.dw, 1
  store i32 %i.dx, ptr %i.bx, align 8, !tbaa !84
  br label %bb.o

bb.o:                                             ; preds = %bb.k, %bb.m, %bb.n
  %.126.ph = phi i8 [ %i.dq, %bb.n ], [ %i.dq, %bb.m ], [ %.02573, %bb.k ] ; 2 uses
  %.1.ph = phi i1 [ %.074, %bb.n ], [ %.074, %bb.m ], [ true, %bb.k ] ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %.03072, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.dy, %i.cd
  br i1 %.not, label %._crit_edge, label %.lr.ph.split

._crit_edge:                                      ; preds = %bb.o, %bb.j
  %.025.lcssa = phi i8 [ %.126.ph.us, %bb.j ], [ %.126.ph, %bb.o ]
  %.0.lcssa = phi i1 [ %.1.ph.us, %bb.j ], [ %.1.ph, %bb.o ]
  br i1 %.0.lcssa, label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4StmtELb1EE9push_backES3_.exit, label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %bb.d, %._crit_edge
  %.025.lcssa88 = phi i8 [ %.025.lcssa, %._crit_edge ], [ 0, %bb.d ]
  %.val34 = load ptr, ptr %0, align 8, !tbaa !1113 ; 2 uses
  %i.dz = getelementptr i8, ptr %.val34, i64 13800
  %.val34.val = load i32, ptr %i.dz, align 4, !tbaa !1205
  %i.ea = icmp ne i32 %.val34.val, 0
end_hunk_2
