Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/SemaChecking?download=true
inline.NumInlined: 16706
inline.NumDeleted: 6578
loop-unroll.NumCompletelyUnrolled: 27
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 35
begin_hunk_0_@_ZL15TryGetExprRangeRN5clang10ASTContextEPKNS_4ExprEjbb:bb.a
  %i.kf = add i32 %.sroa.0435.0.extract.trunc, 1
  %.sroa.speculated429 = call i32 @llvm.umin.i32(i32 %2, i32 %i.kf)
  br label %bb.bu

bb.bn:                                            ; preds = %bb.bg
  %i.kg = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.0.0.copyload.i399 = load i64, ptr %i.kg, align 8, !tbaa !1129
  %i.kh = and i64 %.sroa.0.0.copyload.i399, -16
  %i.ki = inttoptr i64 %i.kh to ptr
  %i.kj = load ptr, ptr %i.ki, align 16, !tbaa !1324
  %i.kk = call noundef zeroext i1 @_ZNK5clang4Type21isUnsignedIntegerTypeEv(ptr noundef nonnull align 16 dereferenceable(24) %i.kj) #31
  %i.kl = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.km = load ptr, ptr %i.kl, align 8, !tbaa !1399
  %i.kn = call fastcc { i64, i8 } @_ZL15TryGetExprRangeRN5clang10ASTContextEPKNS_4ExprEjbb(ptr noundef nonnull align 8 dereferenceable(23904) %0, ptr noundef %i.km, i32 noundef %2, i1 noundef zeroext %3, i1 noundef zeroext %4) ; 4 uses
  br i1 %i.kk, label %bb.bo, label %bb.bp

bb.bo:                                            ; preds = %bb.bn
  %.fca.0.extract26 = extractvalue { i64, i8 } %i.kn, 0 ; 2 uses
  %.fca.1.extract27 = extractvalue { i64, i8 } %i.kn, 1
  %.sroa.0581.0.extract.trunc587 = trunc i64 %.fca.0.extract26 to i32
  %.sroa.30.0.extract.shift617 = lshr i64 %.fca.0.extract26, 32
  br label %bb.bu

bb.bp:                                            ; preds = %bb.bn
  %.fca.1.extract22 = extractvalue { i64, i8 } %i.kn, 1
  %i.ko = trunc nuw i8 %.fca.1.extract22 to i1
  br i1 %i.ko, label %bb.bq, label %bb.bu

bb.bq:                                            ; preds = %bb.bp
  %.fca.0.extract21 = extractvalue { i64, i8 } %i.kn, 0 ; 2 uses
  %.sroa.0426.0.extract.trunc = trunc i64 %.fca.0.extract21 to i32
  %.sroa.0426.4.extract.shift = lshr i64 %.fca.0.extract21, 32
  %.sroa.0426.4.extract.trunc = trunc nuw nsw i64 %.sroa.0426.4.extract.shift to i32
  %i.kp = add i32 %.sroa.0426.4.extract.trunc, %.sroa.0426.0.extract.trunc
  %.sroa.speculated = call i32 @llvm.umin.i32(i32 %2, i32 %i.kp)
  br label %bb.bu

bb.br:                                            ; preds = %bb.bg
  %i.kq = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.kr = load ptr, ptr %i.kq, align 8, !tbaa !1399
  %i.ks = call fastcc { i64, i8 } @_ZL15TryGetExprRangeRN5clang10ASTContextEPKNS_4ExprEjbb(ptr noundef nonnull align 8 dereferenceable(23904) %0, ptr noundef %i.kr, i32 noundef %2, i1 noundef zeroext %3, i1 noundef zeroext %4) ; 2 uses
  %.fca.0.extract16 = extractvalue { i64, i8 } %i.ks, 0 ; 2 uses
  %.fca.1.extract17 = extractvalue { i64, i8 } %i.ks, 1
  %.sroa.0581.0.extract.trunc585 = trunc i64 %.fca.0.extract16 to i32
  %.sroa.30.0.extract.shift613 = lshr i64 %.fca.0.extract16, 32
  br label %bb.bu

bb.bs:                                            ; preds = %.critedge292
  %i.kt = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.ku = load ptr, ptr %i.kt, align 8, !tbaa !1639
  %i.kv = call fastcc { i64, i8 } @_ZL15TryGetExprRangeRN5clang10ASTContextEPKNS_4ExprEjbb(ptr noundef nonnull align 8 dereferenceable(23904) %0, ptr noundef %i.ku, i32 noundef %2, i1 noundef zeroext %3, i1 noundef zeroext %4) ; 2 uses
  %.fca.0.extract = extractvalue { i64, i8 } %i.kv, 0 ; 2 uses
  %.fca.1.extract = extractvalue { i64, i8 } %i.kv, 1
  %.sroa.0581.0.extract.trunc588 = trunc i64 %.fca.0.extract to i32
  %.sroa.30.0.extract.shift619 = lshr i64 %.fca.0.extract, 32
  br label %bb.bu

.critedge296:                                     ; preds = %.critedge292
  %i.kw = call noundef ptr @_ZN5clang4Expr17getSourceBitFieldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #31 ; 3 uses
  %.not280 = icmp eq ptr %i.kw, null
  br i1 %.not280, label %.critedge298, label %bb.bt

bb.bt:                                            ; preds = %.critedge296
  %i.kx = call noundef i32 @_ZNK5clang9FieldDecl16getBitWidthValueEv(ptr noundef nonnull align 8 dereferenceable(80) %i.kw) #31
  %i.ky = getelementptr inbounds nuw i8, ptr %i.kw, i64 48
  %.sroa.0.0.copyload.i403 = load i64, ptr %i.ky, align 8, !tbaa !1129
  %i.kz = and i64 %.sroa.0.0.copyload.i403, -16
  %i.la = inttoptr i64 %i.kz to ptr
  %i.lb = load ptr, ptr %i.la, align 16, !tbaa !1324
  %i.lc = call noundef zeroext i1 @_ZNK5clang4Type34isUnsignedIntegerOrEnumerationTypeEv(ptr noundef nonnull align 16 dereferenceable(24) %i.lb) #31
  %.sroa.30.0.extract.trunc650 = zext i1 %i.lc to i64
  br label %bb.bu

.critedge298:                                     ; preds = %.critedge296
  %i.ld = getelementptr i8, ptr %i.b, i64 8       ; 2 uses
  %.val299 = load i64, ptr %i.ld, align 8, !tbaa !1129
  %i.le = call fastcc i64 @_ZL11GetExprTypePKN5clang4ExprE(i64 %.val299)
  %i.lf = and i64 %i.le, -16
  %i.lg = inttoptr i64 %i.lf to ptr
  %i.lh = load ptr, ptr %i.lg, align 16, !tbaa !1324
  %i.li = getelementptr inbounds nuw i8, ptr %i.lh, i64 8
  %.sroa.0.0.copyload.i.i.i.i.i.i406 = load i64, ptr %i.li, align 8, !tbaa !1129
  %i.lj = and i64 %.sroa.0.0.copyload.i.i.i.i.i.i406, -16
  %i.lk = inttoptr i64 %i.lj to ptr
  %i.ll = load ptr, ptr %i.lk, align 16, !tbaa !1324 ; 2 uses
  %i.lm = getelementptr inbounds nuw i8, ptr %i.ll, i64 16 ; 2 uses
  %i.ln = load i8, ptr %i.lm, align 16
  %i.lo = icmp eq i8 %i.ln, 13
  %.not7.i.i407 = icmp ne ptr %i.ll, null
  %.not.not.not.i.i408 = and i1 %.not7.i.i407, %i.lo
  br i1 %.not.not.not.i.i408, label %_ZNK5clang4Type10isVoidTypeEv.exit410, label %_ZNK5clang4Type10isVoidTypeEv.exit410.thread

_ZNK5clang4Type10isVoidTypeEv.exit410:            ; preds = %.critedge298
  %i.lp = load i32, ptr %i.lm, align 16
  %i.lq = and i32 %i.lp, 536346624
  %i.lr = icmp eq i32 %i.lq, 236978176
  br i1 %i.lr, label %bb.bu, label %_ZNK5clang4Type10isVoidTypeEv.exit410.thread

_ZNK5clang4Type10isVoidTypeEv.exit410.thread:     ; preds = %.critedge298, %_ZNK5clang4Type10isVoidTypeEv.exit410
  %.val = load i64, ptr %i.ld, align 8, !tbaa !1129
  %i.ls = call fastcc i64 @_ZL11GetExprTypePKN5clang4ExprE(i64 %.val)
  %i.lt = call fastcc i64 @_ZN12_GLOBAL__N_18IntRange14forValueOfTypeERN5clang10ASTContextENS1_8QualTypeE(ptr noundef nonnull align 8 dereferenceable(23904) %0, i64 %i.ls) ; 2 uses
  %.sroa.0581.0.extract.trunc604 = trunc i64 %i.lt to i32
  %.sroa.30.0.extract.shift651 = lshr i64 %i.lt, 32
  br label %bb.bu

bb.bu:                                            ; preds = %bb.i, %.critedge, %bb.l, %bb.k, %bb.ar, %_ZNSt14_Optional_baseIN4llvm6APSIntELb0ELb0EED2Ev.exit372, %bb.az, %bb.ba, %_ZNSt14_Optional_baseIN4llvm6APSIntELb0ELb0EED2Ev.exit, %bb.ad, %_ZNK5clang4Type10isVoidTypeEv.exit410, %_ZL11GetExprTypePKN5clang4ExprE.exit395, %bb.bk, %bb.bo, %bb.br, %bb.bg, %bb.bl, %bb.bm, %bb.bp, %bb.bq, %.critedge286, %bb.ao, %bb.al, %bb.ac, %bb.w, %bb.v, %_ZL11GetExprTypePKN5clang4ExprE.exit366, %bb.s, %bb.s, %bb.s, %bb.s, %bb.s, %bb.s, %bb.s, %bb.s, %bb.bf, %bb.be, %_ZL11GetExprTypePKN5clang4ExprE.exit383, %bb.r, %bb.f, %bb.bt, %bb.bs, %_ZNK5clang4Type10isVoidTypeEv.exit410.thread, %_ZL11GetExprTypePKN5clang4ExprE.exit
  %.sroa.0581.20 = phi i32 [ %.sroa.0581.0.extract.trunc589, %_ZL11GetExprTypePKN5clang4ExprE.exit ], [ undef, %bb.bp ], [ %.sroa.0581.0.extract.trunc604, %_ZNK5clang4Type10isVoidTypeEv.exit410.thread ], [ %i.kx, %bb.bt ], [ %.sroa.0581.0.extract.trunc588, %bb.bs ], [ undef, %bb.be ], [ undef, %bb.az ], [ %.sroa.0581.6, %bb.r ], [ %.sroa.0581.0.extract.trunc, %bb.f ], [ 1, %bb.s ], [ undef, %bb.ad ], [ %.sroa.0581.0.extract.trunc593, %_ZL11GetExprTypePKN5clang4ExprE.exit366 ], [ %.sroa.0581.0.extract.trunc583, %bb.v ], [ %.sroa.0581.0.extract.trunc594, %bb.w ], [ %.sroa.0581.0.extract.trunc596, %bb.ac ], [ %.sroa.0581.0.extract.trunc595, %.critedge286 ], [ undef, %_ZNK5clang4Type10isVoidTypeEv.exit410 ], [ %.sroa.0581.0.extract.trunc584, %bb.al ], [ %.sroa.0581.0.extract.trunc597, %bb.ao ], [ 1, %bb.s ], [ 1, %bb.s ], [ 1, %bb.s ], [ 1, %bb.s ], [ 1, %bb.s ], [ 1, %bb.s ], [ 1, %bb.s ], [ undef, %_ZL11GetExprTypePKN5clang4ExprE.exit383 ], [ %.sroa.speculated553, %bb.bf ], [ %.sroa.0581.0.extract.trunc585, %bb.br ], [ undef, %bb.bl ], [ %.sroa.0581.0.extract.trunc600, %_ZL11GetExprTypePKN5clang4ExprE.exit395 ], [ %.sroa.0581.0.extract.trunc586, %bb.bk ], [ 1, %bb.bg ], [ %.sroa.0581.0.extract.trunc587, %bb.bo ], [ %.sroa.speculated429, %bb.bm ], [ %.sroa.speculated, %bb.bq ], [ %.sroa.0581.0.extract.trunc606, %_ZNSt14_Optional_baseIN4llvm6APSIntELb0ELb0EED2Ev.exit ], [ %.sroa.0471.sroa.0.0, %_ZNSt14_Optional_baseIN4llvm6APSIntELb0ELb0EED2Ev.exit372 ], [ undef, %bb.ar ], [ %.sroa.0471.sroa.0.0.extract.trunc, %bb.ba ], [ %.sroa.0523.0.extract.trunc, %bb.i ], [ %.sroa.0506.0.extract.trunc, %bb.l ], [ %.sroa.0523.0.extract.trunc724, %bb.k ], [ undef, %.critedge ]
  %.sroa.30.20 = phi i64 [ %.sroa.30.0.extract.shift621, %_ZL11GetExprTypePKN5clang4ExprE.exit ], [ 0, %bb.bp ], [ %.sroa.30.0.extract.shift651, %_ZNK5clang4Type10isVoidTypeEv.exit410.thread ], [ %.sroa.30.0.extract.trunc650, %bb.bt ], [ %.sroa.30.0.extract.shift619, %bb.bs ], [ 0, %bb.be ], [ 0, %bb.az ], [ %.sroa.30.6, %bb.r ], [ %.sroa.30.0.extract.shift, %bb.f ], [ 1, %bb.s ], [ 0, %bb.ad ], [ %.sroa.30.0.extract.shift629, %_ZL11GetExprTypePKN5clang4ExprE.exit366 ], [ %.sroa.30.0.extract.shift609, %bb.v ], [ %.sroa.30.0.extract.shift631, %bb.w ], [ %.sroa.30.0.extract.shift635, %bb.ac ], [ 1, %.critedge286 ], [ 0, %_ZNK5clang4Type10isVoidTypeEv.exit410 ], [ %.sroa.30.0.extract.shift611, %bb.al ], [ %.sroa.30.0.extract.shift637, %bb.ao ], [ 1, %bb.s ], [ 1, %bb.s ], [ 1, %bb.s ], [ 1, %bb.s ], [ 1, %bb.s ], [ 1, %bb.s ], [ 1, %bb.s ], [ 0, %_ZL11GetExprTypePKN5clang4ExprE.exit383 ], [ %i.jc, %bb.bf ], [ %.sroa.30.0.extract.shift613, %bb.br ], [ 0, %bb.bl ], [ %.sroa.30.0.extract.shift643, %_ZL11GetExprTypePKN5clang4ExprE.exit395 ], [ %.sroa.30.0.extract.shift615, %bb.bk ], [ 1, %bb.bg ], [ %.sroa.30.0.extract.shift617, %bb.bo ], [ 0, %bb.bm ], [ 0, %bb.bq ], [ %.sroa.0479.sroa.8.0.extract.shift, %_ZNSt14_Optional_baseIN4llvm6APSIntELb0ELb0EED2Ev.exit ], [ %.sroa.0471.sroa.9.0.extract.shift, %_ZNSt14_Optional_baseIN4llvm6APSIntELb0ELb0EED2Ev.exit372 ], [ 0, %bb.ar ], [ %.sroa.30.0.extract.trunc640, %bb.ba ], [ %.sroa.0523.4.extract.shift726745, %bb.i ], [ %.sroa.30.0.extract.trunc624, %bb.l ], [ %.sroa.0523.4.extract.shift743, %bb.k ], [ 0, %.critedge ]
  %.sroa.36.15 = phi i8 [ 1, %_ZL11GetExprTypePKN5clang4ExprE.exit ], [ 0, %bb.bp ], [ 1, %_ZNK5clang4Type10isVoidTypeEv.exit410.thread ], [ 1, %bb.bt ], [ %.fca.1.extract, %bb.bs ], [ 0, %bb.be ], [ 0, %bb.az ], [ %.sroa.36.5, %bb.r ], [ %.fca.1.extract150, %bb.f ], [ 1, %bb.s ], [ 0, %bb.ad ], [ 1, %_ZL11GetExprTypePKN5clang4ExprE.exit366 ], [ %.fca.1.extract96, %bb.v ], [ 1, %bb.w ], [ 1, %bb.ac ], [ 1, %.critedge286 ], [ 0, %_ZNK5clang4Type10isVoidTypeEv.exit410 ], [ %.fca.1.extract80, %bb.al ], [ 1, %bb.ao ], [ 1, %bb.s ], [ 1, %bb.s ], [ 1, %bb.s ], [ 1, %bb.s ], [ 1, %bb.s ], [ 1, %bb.s ], [ 1, %bb.s ], [ 0, %_ZL11GetExprTypePKN5clang4ExprE.exit383 ], [ 1, %bb.bf ], [ %.fca.1.extract17, %bb.br ], [ 0, %bb.bl ], [ 1, %_ZL11GetExprTypePKN5clang4ExprE.exit395 ], [ %.fca.1.extract37, %bb.bk ], [ 1, %bb.bg ], [ %.fca.1.extract27, %bb.bo ], [ 1, %bb.bm ], [ 1, %bb.bq ], [ 1, %_ZNSt14_Optional_baseIN4llvm6APSIntELb0ELb0EED2Ev.exit ], [ 1, %_ZNSt14_Optional_baseIN4llvm6APSIntELb0ELb0EED2Ev.exit372 ], [ 0, %bb.ar ], [ 1, %bb.ba ], [ 1, %bb.i ], [ 1, %bb.l ], [ 1, %bb.k ], [ 0, %.critedge ]
  %i.lu = load i32, ptr %i.f, align 8, !tbaa !1310
  %switch.i.i = icmp ult i32 %i.lu, 2
  br i1 %switch.i.i, label %_ZN5clang4Expr10EvalResultD2Ev.exit, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  call void @_ZN5clang7APValue24DestroyDataAndMakeUninitEv(ptr noundef nonnull align 8 dereferenceable(56) %i.f) #31
  br label %_ZN5clang4Expr10EvalResultD2Ev.exit

_ZN5clang4Expr10EvalResultD2Ev.exit:              ; preds = %bb.bu, %bb.bv
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #31
  %.sroa.30.0.insert.ext = shl nuw i64 %.sroa.30.20, 32
  %.sroa.30.0.insert.shift = and i64 %.sroa.30.0.insert.ext, 1095216660480
  %.sroa.0581.0.insert.ext = zext i32 %.sroa.0581.20 to i64
  %.sroa.0581.0.insert.insert = or disjoint i64 %.sroa.30.0.insert.shift, %.sroa.0581.0.insert.ext
  %.fca.0.insert = insertvalue { i64, i8 } poison, i64 %.sroa.0581.0.insert.insert, 0
  %.fca.1.insert = insertvalue { i64, i8 } %.fca.0.insert, i8 %.sroa.36.15, 1
  ret { i64, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc i64 @_ZL11GetExprTypePKN5clang4ExprE(i64 %.8.val) unnamed_addr #0 {
bb.a:
  %i.a = and i64 %.8.val, -16
  %i.b = inttoptr i64 %i.a to ptr
  %i.c = load ptr, ptr %i.b, align 16, !tbaa !1324 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.e = load i8, ptr %i.d, align 16
  %.not.i = icmp eq i8 %i.e, 7
  br i1 %.not.i, label %_ZNK5clang4Type5getAsINS_10AtomicTypeEEEPKT_v.exit.thread4, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.0.0.copyload.i.i.i.i = load i64, ptr %i.f, align 8, !tbaa !1129
  %i.g = and i64 %.sroa.0.0.copyload.i.i.i.i, -16
  %i.h = inttoptr i64 %i.g to ptr
  %i.i = load ptr, ptr %i.h, align 16, !tbaa !1324
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.k = load i8, ptr %i.j, align 16
  %i.l = icmp eq i8 %i.k, 7
  br i1 %i.l, label %_ZNK5clang4Type5getAsINS_10AtomicTypeEEEPKT_v.exit, label %_ZNK5clang4Type5getAsINS_10AtomicTypeEEEPKT_v.exit.thread

_ZNK5clang4Type5getAsINS_10AtomicTypeEEEPKT_v.exit: ; preds = %bb.b
  %i.m = tail call noundef ptr @_ZNK5clang4Type27getUnqualifiedDesugaredTypeEv(ptr noundef nonnull align 16 dereferenceable(24) %i.c) #31 ; 2 uses
  %.not = icmp eq ptr %i.m, null
  br i1 %.not, label %_ZNK5clang4Type5getAsINS_10AtomicTypeEEEPKT_v.exit.thread, label %_ZNK5clang4Type5getAsINS_10AtomicTypeEEEPKT_v.exit.thread4

_ZNK5clang4Type5getAsINS_10AtomicTypeEEEPKT_v.exit.thread4: ; preds = %bb.a, %_ZNK5clang4Type5getAsINS_10AtomicTypeEEEPKT_v.exit
  %.1.i7 = phi ptr [ %i.m, %_ZNK5clang4Type5getAsINS_10AtomicTypeEEEPKT_v.exit ], [ %i.c, %bb.a ]
  %i.n = getelementptr inbounds nuw i8, ptr %.1.i7, i64 32
  %.sroa.0.0.copyload.i3 = load i64, ptr %i.n, align 16, !tbaa !1129
  br label %_ZNK5clang4Type5getAsINS_10AtomicTypeEEEPKT_v.exit.thread

_ZNK5clang4Type5getAsINS_10AtomicTypeEEEPKT_v.exit.thread: ; preds = %bb.b, %_ZNK5clang4Type5getAsINS_10AtomicTypeEEEPKT_v.exit.thread4, %_ZNK5clang4Type5getAsINS_10AtomicTypeEEEPKT_v.exit
  %.sroa.0.0 = phi i64 [ %.8.val, %_ZNK5clang4Type5getAsINS_10AtomicTypeEEEPKT_v.exit ], [ %.sroa.0.0.copyload.i3, %_ZNK5clang4Type5getAsINS_10AtomicTypeEEEPKT_v.exit.thread4 ], [ %.8.val, %bb.b ]
  ret i64 %.sroa.0.0
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc range(i64 0, 8589934592) i64 @_ZL13GetValueRangeRN5clang7APValueENS_8QualTypeEj(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 %1, i32 noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !1310
  switch i32 %i.a, label %bb.e [
    i32 2, label %bb.b
    i32 8, label %bb.c
    i32 5, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = tail call fastcc i64 @_ZL13GetValueRangeRN4llvm6APSIntEj(ptr noundef nonnull align 8 dereferenceable(13) %i.b, i32 noundef %2) ; 2 uses
  %.sroa.045.sroa.0.0.extract.trunc = trunc i64 %i.c to i32
  %.sroa.045.sroa.7.0.extract.shift72 = lshr i64 %i.c, 32
  %.sroa.045.sroa.7.0.extract.trunc = trunc nuw nsw i64 %.sroa.045.sroa.7.0.extract.shift72 to i8
  br label %.loopexit

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !1739
  %i.f = tail call fastcc i64 @_ZL13GetValueRangeRN5clang7APValueENS_8QualTypeEj(ptr noundef nonnull align 8 dereferenceable(56) %i.e, i64 %1, i32 noundef %2) ; 2 uses
  %.sroa.045.sroa.0.0.extract.trunc54 = trunc i64 %i.f to i32 ; 2 uses
  %.sroa.045.sroa.7.0.extract.shift6071 = lshr i64 %i.f, 32
  %.sroa.045.sroa.7.0.extract.trunc61 = trunc nuw nsw i64 %.sroa.045.sroa.7.0.extract.shift6071 to i8 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load i32, ptr %i.g, align 8, !tbaa !1738 ; 2 uses
  %.not73 = icmp eq i32 %i.h, 1
  br i1 %.not73, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 1, %bb.c ] ; 2 uses
  %.076 = phi i32 [ %i.v, %.lr.ph ], [ 1, %bb.c ]
  %.sroa.045.sroa.7.075 = phi i8 [ %.sroa.046.sroa.7.0.extract.trunc66, %.lr.ph ], [ %.sroa.045.sroa.7.0.extract.trunc61, %bb.c ] ; 3 uses
  %.sroa.045.sroa.0.074 = phi i32 [ %i.u, %.lr.ph ], [ %.sroa.045.sroa.0.0.extract.trunc54, %bb.c ]
  %i.i = load ptr, ptr %i.d, align 8, !tbaa !1739
  %i.j = getelementptr inbounds nuw [56 x i8], ptr %i.i, i64 %indvars.iv
  %i.k = tail call fastcc i64 @_ZL13GetValueRangeRN5clang7APValueENS_8QualTypeEj(ptr noundef nonnull align 8 dereferenceable(56) %i.j, i64 %1, i32 noundef %2) ; 2 uses
  %.sroa.0.0.extract.trunc.i = trunc i64 %i.k to i32
  %.sroa.2.0.extract.shift.i = lshr i64 %i.k, 32
  %.sroa.2.0.extract.trunc.i = trunc nuw nsw i64 %.sroa.2.0.extract.shift.i to i8 ; 3 uses
  %i.l = trunc nuw i8 %.sroa.045.sroa.7.075 to i1
  %i.m = xor i8 %.sroa.045.sroa.7.075, 1
  %i.n = zext nneg i8 %i.m to i32
  %i.o = sub i32 %.sroa.045.sroa.0.074, %i.n
  %i.p = xor i8 %.sroa.2.0.extract.trunc.i, 1
  %i.q = zext nneg i8 %i.p to i32
  %i.r = sub i32 %.sroa.0.0.extract.trunc.i, %i.q
  %.sroa.speculated.i = tail call i32 @llvm.umax.i32(i32 %i.o, i32 %i.r)
  %i.s = xor i8 %.sroa.2.0.extract.trunc.i, 1
  %narrow = select i1 %i.l, i8 %i.s, i8 1
  %i.t = zext nneg i8 %narrow to i32
  %i.u = add i32 %.sroa.speculated.i, %i.t        ; 2 uses
  %.sroa.046.sroa.7.0.extract.trunc66 = and i8 %.sroa.045.sroa.7.075, %.sroa.2.0.extract.trunc.i ; 2 uses
  %i.v = add i32 %.076, 1                         ; 2 uses
  %.not = icmp eq i32 %i.v, %i.h
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br i1 %.not, label %.loopexit, label %.lr.ph, !llvm.loop !2732

bb.d:                                             ; preds = %bb.a
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.x = tail call fastcc i64 @_ZL13GetValueRangeRN4llvm6APSIntEj(ptr noundef nonnull align 8 dereferenceable(13) %i.w, i32 noundef %2) ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.z = tail call fastcc i64 @_ZL13GetValueRangeRN4llvm6APSIntEj(ptr noundef nonnull align 8 dereferenceable(13) %i.y, i32 noundef %2) ; 2 uses
  %.sroa.08.0.extract.trunc.i33 = trunc i64 %i.x to i32
  %.sroa.29.0.extract.shift.i34 = lshr i64 %i.x, 32 ; 3 uses
  %.sroa.29.0.extract.trunc.i35 = trunc nuw nsw i64 %.sroa.29.0.extract.shift.i34 to i32
  %.sroa.0.0.extract.trunc.i36 = trunc i64 %i.z to i32
  %.sroa.2.0.extract.shift.i37 = lshr i64 %i.z, 32 ; 2 uses
  %.sroa.2.0.extract.trunc.i38 = trunc nuw nsw i64 %.sroa.2.0.extract.shift.i37 to i32
  %i.aa = trunc nuw i64 %.sroa.29.0.extract.shift.i34 to i1
  %i.ab = xor i32 %.sroa.29.0.extract.trunc.i35, 1
  %i.ac = sub i32 %.sroa.08.0.extract.trunc.i33, %i.ab
  %3 = xor i32 %.sroa.2.0.extract.trunc.i38, 1    ; 2 uses
  %i.ad = sub i32 %.sroa.0.0.extract.trunc.i36, %3
  %.sroa.speculated.i39 = tail call i32 @llvm.umax.i32(i32 %i.ac, i32 %i.ad)
  %i.ae = select i1 %i.aa, i32 %3, i32 1
  %i.af = add i32 %.sroa.speculated.i39, %i.ae
  %.sroa.215.0.insert.ext.i40 = and i64 %.sroa.2.0.extract.shift.i37, %.sroa.29.0.extract.shift.i34
  %.sroa.046.sroa.7.0.extract.trunc64 = trunc nuw nsw i64 %.sroa.215.0.insert.ext.i40 to i8
  br label %.loopexit

bb.e:                                             ; preds = %bb.a
  %i.ag = and i64 %1, -16
  %i.ah = inttoptr i64 %i.ag to ptr
  %i.ai = load ptr, ptr %i.ah, align 16, !tbaa !1324
  %i.aj = tail call noundef zeroext i1 @_ZNK5clang4Type34isUnsignedIntegerOrEnumerationTypeEv(ptr noundef nonnull align 16 dereferenceable(24) %i.ai) #31
  %i.ak = zext i1 %i.aj to i8
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph, %bb.c, %bb.e, %bb.d, %bb.b
  %.sroa.045.sroa.0.1 = phi i32 [ %.sroa.045.sroa.0.0.extract.trunc, %bb.b ], [ %2, %bb.e ], [ %i.af, %bb.d ], [ %.sroa.045.sroa.0.0.extract.trunc54, %bb.c ], [ %i.u, %.lr.ph ]
  %.sroa.045.sroa.7.1 = phi i8 [ %.sroa.045.sroa.7.0.extract.trunc, %bb.b ], [ %i.ak, %bb.e ], [ %.sroa.046.sroa.7.0.extract.trunc64, %bb.d ], [ %.sroa.045.sroa.7.0.extract.trunc61, %bb.c ], [ %.sroa.046.sroa.7.0.extract.trunc66, %.lr.ph ]
  %.sroa.045.sroa.7.0.insert.ext = zext nneg i8 %.sroa.045.sroa.7.1 to i64
  %.sroa.045.sroa.7.0.insert.shift = shl nuw nsw i64 %.sroa.045.sroa.7.0.insert.ext, 32
  %.sroa.045.sroa.0.0.insert.ext = zext i32 %.sroa.045.sroa.0.1 to i64
  %.sroa.045.sroa.0.0.insert.insert = or disjoint i64 %.sroa.045.sroa.7.0.insert.shift, %.sroa.045.sroa.0.0.insert.ext
  ret i64 %.sroa.045.sroa.0.0.insert.insert
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc range(i64 0, 8589934592) i64 @_ZN12_GLOBAL__N_18IntRange14forValueOfTypeERN5clang10ASTContextENS1_8QualTypeE(ptr noundef nonnull align 8 dereferenceable(23904) %0, i64 %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = and i64 %1, -16
  %i.b = inttoptr i64 %i.a to ptr
  %i.c = load ptr, ptr %i.b, align 16, !tbaa !1324
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.0.0.copyload.i = load i64, ptr %i.d, align 8, !tbaa !1129
  %i.e = and i64 %.sroa.0.0.copyload.i, -16
  %i.f = inttoptr i64 %i.e to ptr
  %i.g = load ptr, ptr %i.f, align 16, !tbaa !1324 ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.i = load i8, ptr %i.h, align 16              ; 2 uses
  %i.j = and i8 %i.i, -2
  %spec.select.i.i.i.i.i.i.i.i.i = icmp ne i8 %i.j, 58
  %.not122.i = icmp eq ptr %i.g, null
  %.not.i = or i1 %.not122.i, %spec.select.i.i.i.i.i.i.i.i.i
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.k, align 16, !tbaa !1129
  %i.l = and i64 %.sroa.0.0.copyload.i.i, -16
  %i.m = inttoptr i64 %i.l to ptr
  %i.n = load ptr, ptr %i.m, align 16, !tbaa !1324 ; 2 uses
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %.pre.i = load i8, ptr %.phi.trans.insert.i, align 16
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.o = phi i8 [ %.pre.i, %bb.b ], [ %i.i, %bb.a ] ; 2 uses
  %.0.i = phi ptr [ %i.n, %bb.b ], [ %i.g, %bb.a ] ; 2 uses
  %.not139.i = icmp eq i8 %i.o, 28
  br i1 %.not139.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %.0.i, i64 32
  %.sroa.0.0.copyload.i59.i = load i64, ptr %i.p, align 16, !tbaa !1129
  %i.q = and i64 %.sroa.0.0.copyload.i59.i, -16
  %i.r = inttoptr i64 %i.q to ptr
  %i.s = load ptr, ptr %i.r, align 16, !tbaa !1324 ; 2 uses
  %.phi.trans.insert129.i = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %.pre130.i = load i8, ptr %.phi.trans.insert129.i, align 16
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.t = phi i8 [ %.pre130.i, %bb.d ], [ %i.o, %bb.c ] ; 2 uses
  %.1.i = phi ptr [ %i.s, %bb.d ], [ %.0.i, %bb.c ] ; 2 uses
  %.not140.i = icmp eq i8 %i.t, 14
  br i1 %.not140.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.u = getelementptr inbounds nuw i8, ptr %.1.i, i64 32
  %.sroa.0.0.copyload.i62.i = load i64, ptr %i.u, align 16, !tbaa !1129
  %i.v = and i64 %.sroa.0.0.copyload.i62.i, -16
  %i.w = inttoptr i64 %i.v to ptr
  %i.x = load ptr, ptr %i.w, align 16, !tbaa !1324 ; 2 uses
  %.phi.trans.insert131.i = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %.pre132.i = load i8, ptr %.phi.trans.insert131.i, align 16
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.y = phi i8 [ %.pre132.i, %bb.f ], [ %i.t, %bb.e ] ; 2 uses
  %.2.i = phi ptr [ %i.x, %bb.f ], [ %.1.i, %bb.e ] ; 2 uses
  %.not141.i = icmp eq i8 %i.y, 7
  br i1 %.not141.i, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.z = getelementptr inbounds nuw i8, ptr %.2.i, i64 32
  %.sroa.0.0.copyload.i65.i = load i64, ptr %i.z, align 16, !tbaa !1129
  %i.aa = and i64 %.sroa.0.0.copyload.i65.i, -16
  %i.ab = inttoptr i64 %i.aa to ptr
  %i.ac = load ptr, ptr %i.ab, align 16, !tbaa !1324 ; 2 uses
  %.phi.trans.insert133.i = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %.pre134.i = load i8, ptr %.phi.trans.insert133.i, align 16
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.ad = phi i8 [ %.pre134.i, %bb.h ], [ %i.y, %bb.g ]
  %.3.i = phi ptr [ %i.ac, %bb.h ], [ %.2.i, %bb.g ] ; 2 uses
  %.not142.i = icmp eq i8 %i.ad, 35
  br i1 %.not142.i, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ae = getelementptr inbounds nuw i8, ptr %.3.i, i64 32
  %.sroa.0.0.copyload.i68.i = load i64, ptr %i.ae, align 16, !tbaa !1129
  %i.af = and i64 %.sroa.0.0.copyload.i68.i, -16
  %i.ag = inttoptr i64 %i.af to ptr
  %i.ah = load ptr, ptr %i.ag, align 16, !tbaa !1324
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.4.i = phi ptr [ %i.ah, %bb.j ], [ %.3.i, %bb.i ] ; 4 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 2600
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !1625, !nonnull !734, !align !735
  %i.ak = load i64, ptr %i.aj, align 8
  %i.al = and i64 %i.ak, 4096
  %.not54.i = icmp eq i64 %i.al, 0
  %i.am = getelementptr inbounds nuw i8, ptr %.4.i, i64 8
  %.sroa.0.0.copyload.i.i.i.i.i = load i64, ptr %i.am, align 8, !tbaa !1129
  %i.an = and i64 %.sroa.0.0.copyload.i.i.i.i.i, -16
  %i.ao = inttoptr i64 %i.an to ptr
  %i.ap = load ptr, ptr %i.ao, align 16, !tbaa !1324 ; 4 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  %i.ar = load i8, ptr %i.aq, align 16
  %i.as = icmp ne i8 %i.ar, 47
  %.not6.i.i = icmp eq ptr %i.ap, null
  %.not.not.i.i = or i1 %.not6.i.i, %i.as         ; 2 uses
  br i1 %.not54.i, label %bb.l, label %bb.q

bb.l:                                             ; preds = %bb.k
  br i1 %.not.not.i.i, label %_ZNK5clang4Type13getAsEnumDeclEv.exit.i, label %select.unfold.i

select.unfold.i:                                  ; preds = %bb.l
  %i.at = getelementptr inbounds nuw i8, ptr %i.ap, i64 24
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !1334 ; 2 uses
  %i.av = tail call noundef ptr @_ZNK5clang7TagDecl13getDefinitionEv(ptr noundef nonnull align 8 dereferenceable(164) %i.au) #31 ; 2 uses
  %.not.not.i.i.i.i = icmp eq ptr %i.av, null
  %spec.select.i = select i1 %.not.not.i.i.i.i, ptr %i.au, ptr %i.av
  %i.aw = getelementptr inbounds nuw i8, ptr %spec.select.i, i64 128
  %.0.copyload.i.i.i.i70.i = load i64, ptr %i.aw, align 8 ; 4 uses
  %i.ax = icmp ugt i64 %.0.copyload.i.i.i.i70.i, 7
  br i1 %i.ax, label %bb.m, label %_ZNK5clang8EnumDecl14getIntegerTypeEv.exit.i

bb.m:                                             ; preds = %select.unfold.i
  %i.ay = and i64 %.0.copyload.i.i.i.i70.i, 4
  %.not.i.i = icmp eq i64 %i.ay, 0
  br i1 %.not.i.i, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.az = and i64 %.0.copyload.i.i.i.i70.i, -8
  br label %_ZNK5clang8EnumDecl14getIntegerTypeEv.exit.i

bb.o:                                             ; preds = %bb.m
  %i.ba = and i64 %.0.copyload.i.i.i.i70.i, -5
  %i.bb = inttoptr i64 %i.ba to ptr
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %i.bb, align 8, !tbaa !1129 ; 2 uses
  %i.bc = and i64 %.sroa.0.0.copyload.i.i.i, -16
  %i.bd = inttoptr i64 %i.bc to ptr
  %i.be = load ptr, ptr %i.bd, align 16, !tbaa !1324 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %.sroa.0.0.copyload.i.i5.i.i = load i64, ptr %i.bf, align 8, !tbaa !1129
  %i.bg = and i64 %.sroa.0.0.copyload.i.i5.i.i, 15
  %.not.i.i.i = icmp eq i64 %i.bg, 0
  br i1 %.not.i.i.i, label %_ZNK5clang8QualType18getUnqualifiedTypeEv.exit.i.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bh = tail call { ptr, i64 } @_ZN5clang8QualType27getSplitUnqualifiedTypeImplES0_(i64 %.sroa.0.0.copyload.i.i.i) #31
  %i.bi = extractvalue { ptr, i64 } %i.bh, 0
  br label %_ZNK5clang8QualType18getUnqualifiedTypeEv.exit.i.i

_ZNK5clang8QualType18getUnqualifiedTypeEv.exit.i.i: ; preds = %bb.p, %bb.o
  %.sroa.03.0.in.in.i.i.i = phi ptr [ %i.bi, %bb.p ], [ %i.be, %bb.o ]
  %.sroa.03.0.in.i.i.i = ptrtoint ptr %.sroa.03.0.in.in.i.i.i to i64
  %.sroa.03.0.i.i.i = and i64 %.sroa.03.0.in.i.i.i, -8
  br label %_ZNK5clang8EnumDecl14getIntegerTypeEv.exit.i

_ZNK5clang8EnumDecl14getIntegerTypeEv.exit.i:     ; preds = %_ZNK5clang8QualType18getUnqualifiedTypeEv.exit.i.i, %bb.n, %select.unfold.i
  %.sroa.06.1.i.i = phi i64 [ %.sroa.03.0.i.i.i, %_ZNK5clang8QualType18getUnqualifiedTypeEv.exit.i.i ], [ %i.az, %bb.n ], [ 0, %select.unfold.i ]
  %i.bj = tail call i64 @_ZN5clang8QualType16getDesugaredTypeES0_RKNS_10ASTContextE(i64 %.sroa.06.1.i.i, ptr noundef nonnull align 8 dereferenceable(23904) %0) #31
  %i.bk = and i64 %i.bj, -16
  %i.bl = inttoptr i64 %i.bk to ptr
  %i.bm = load ptr, ptr %i.bl, align 16, !tbaa !1324
  br label %_ZNK5clang4Type13getAsEnumDeclEv.exit.i

bb.q:                                             ; preds = %bb.k
  br i1 %.not.not.i.i, label %_ZNK5clang4Type13getAsEnumDeclEv.exit.i, label %select.unfold109.i

select.unfold109.i:                               ; preds = %bb.q
  %i.bn = getelementptr inbounds nuw i8, ptr %i.ap, i64 24
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !1334 ; 2 uses
  %i.bp = tail call noundef ptr @_ZNK5clang7TagDecl13getDefinitionEv(ptr noundef nonnull align 8 dereferenceable(164) %i.bo) #31 ; 2 uses
  %.not.not.i.i.i76.i = icmp eq ptr %i.bp, null
  %spec.select121.i = select i1 %.not.not.i.i.i76.i, ptr %i.bo, ptr %i.bp ; 3 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %spec.select121.i, i64 77
  %i.br = load i8, ptr %i.bq, align 1
  %i.bs = and i8 %i.br, 2
  %.not127.i = icmp eq i8 %i.bs, 0
  br i1 %.not127.i, label %bb.v, label %bb.r

bb.r:                                             ; preds = %select.unfold109.i
  %i.bt = ptrtoint ptr %.4.i to i64
  %i.bu = tail call noundef i32 @_ZNK5clang10ASTContext11getIntWidthENS_8QualTypeE(ptr noundef nonnull align 8 dereferenceable(23904) %0, i64 %i.bt) #31
  %i.bv = getelementptr inbounds nuw i8, ptr %spec.select121.i, i64 128
  %.0.copyload.i.i.i.i80.i = load i64, ptr %i.bv, align 8 ; 4 uses
  %i.bw = icmp ugt i64 %.0.copyload.i.i.i.i80.i, 7
  br i1 %i.bw, label %bb.s, label %_ZNK5clang8EnumDecl14getIntegerTypeEv.exit90.i

bb.s:                                             ; preds = %bb.r
  %i.bx = and i64 %.0.copyload.i.i.i.i80.i, 4
  %.not.i82.i = icmp eq i64 %i.bx, 0
  br i1 %.not.i82.i, label %_ZNK5clang8EnumDecl14getIntegerTypeEv.exit90.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.by = and i64 %.0.copyload.i.i.i.i80.i, -5
  %i.bz = inttoptr i64 %i.by to ptr
  %.sroa.0.0.copyload.i.i83.i = load i64, ptr %i.bz, align 8, !tbaa !1129 ; 2 uses
  %i.ca = and i64 %.sroa.0.0.copyload.i.i83.i, -16
  %i.cb = inttoptr i64 %i.ca to ptr
  %i.cc = load ptr, ptr %i.cb, align 16, !tbaa !1324 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  %.sroa.0.0.copyload.i.i5.i84.i = load i64, ptr %i.cd, align 8, !tbaa !1129
  %i.ce = and i64 %.sroa.0.0.copyload.i.i5.i84.i, 15
  %.not.i.i85.i = icmp eq i64 %i.ce, 0
  br i1 %.not.i.i85.i, label %_ZNK5clang8QualType18getUnqualifiedTypeEv.exit.i86.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cf = tail call { ptr, i64 } @_ZN5clang8QualType27getSplitUnqualifiedTypeImplES0_(i64 %.sroa.0.0.copyload.i.i83.i) #31
  %i.cg = extractvalue { ptr, i64 } %i.cf, 0
  br label %_ZNK5clang8QualType18getUnqualifiedTypeEv.exit.i86.i

_ZNK5clang8QualType18getUnqualifiedTypeEv.exit.i86.i: ; preds = %bb.u, %bb.t
  %.sroa.03.0.in.in.i.i87.i = phi ptr [ %i.cg, %bb.u ], [ %i.cc, %bb.t ]
  %.sroa.03.0.in.i.i88.i = ptrtoint ptr %.sroa.03.0.in.in.i.i87.i to i64
  br label %_ZNK5clang8EnumDecl14getIntegerTypeEv.exit90.i

_ZNK5clang8EnumDecl14getIntegerTypeEv.exit90.i:   ; preds = %_ZNK5clang8QualType18getUnqualifiedTypeEv.exit.i86.i, %bb.s, %bb.r
  %.sroa.06.1.i81.i = phi i64 [ %.sroa.03.0.in.i.i88.i, %_ZNK5clang8QualType18getUnqualifiedTypeEv.exit.i86.i ], [ 0, %bb.r ], [ %.0.copyload.i.i.i.i80.i, %bb.s ]
  %i.ch = and i64 %.sroa.06.1.i81.i, -16
  %i.ci = inttoptr i64 %i.ch to ptr
  %i.cj = load ptr, ptr %i.ci, align 16, !tbaa !1324
  %i.ck = tail call noundef zeroext i1 @_ZNK5clang4Type19isSignedIntegerTypeEv(ptr noundef nonnull align 16 dereferenceable(24) %i.cj) #31
  %i.cl = xor i1 %i.ck, true
  %i.cm = zext i1 %i.cl to i64
  br label %_ZN12_GLOBAL__N_18IntRange23forValueOfCanonicalTypeERN5clang10ASTContextEPKNS1_4TypeE.exit

bb.v:                                             ; preds = %select.unfold109.i
  %i.cn = getelementptr inbounds nuw i8, ptr %spec.select121.i, i64 72
  %i.co = load i40, ptr %i.cn, align 8            ; 2 uses
  %i.cp = trunc i40 %i.co to i32
  %i.cq = lshr i32 %i.cp, 23
  %i.cr = and i32 %i.cq, 255                      ; 2 uses
  %i.cs = lshr i40 %i.co, 31
  %i.ct = trunc nuw nsw i40 %i.cs to i32
  %i.cu = and i32 %i.ct, 255                      ; 2 uses
  %i.cv = icmp eq i32 %i.cu, 0
  br i1 %i.cv, label %_ZN12_GLOBAL__N_18IntRange23forValueOfCanonicalTypeERN5clang10ASTContextEPKNS1_4TypeE.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.cw = add nuw nsw i32 %i.cr, 1
  %.sroa.speculated.i = tail call i32 @llvm.umax.i32(i32 %i.cw, i32 %i.cu)
  br label %_ZN12_GLOBAL__N_18IntRange23forValueOfCanonicalTypeERN5clang10ASTContextEPKNS1_4TypeE.exit

_ZNK5clang4Type13getAsEnumDeclEv.exit.i:          ; preds = %bb.q, %_ZNK5clang8EnumDecl14getIntegerTypeEv.exit.i, %bb.l
  %.6.i = phi ptr [ %.4.i, %bb.q ], [ %i.bm, %_ZNK5clang8EnumDecl14getIntegerTypeEv.exit.i ], [ %.4.i, %bb.l ] ; 4 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %.6.i, i64 16 ; 2 uses
  %i.cy = load i8, ptr %i.cx, align 16
  %i.cz = icmp ne i8 %i.cy, 10
  %.not57.not128.i = icmp eq ptr %.6.i, null
  %.not57.not.i = or i1 %.not57.not128.i, %i.cz
  br i1 %.not57.not.i, label %bb.y, label %bb.x

bb.x:                                             ; preds = %_ZNK5clang4Type13getAsEnumDeclEv.exit.i
  %i.da = getelementptr inbounds nuw i8, ptr %.6.i, i64 32
  %i.db = load i32, ptr %i.da, align 16           ; 2 uses
  %i.dc = lshr i32 %i.db, 1
  %i.dd = and i32 %i.dc, 16777215
  %i.de = and i32 %i.db, 1
  %i.df = zext nneg i32 %i.de to i64
  br label %_ZN12_GLOBAL__N_18IntRange23forValueOfCanonicalTypeERN5clang10ASTContextEPKNS1_4TypeE.exit

bb.y:                                             ; preds = %_ZNK5clang4Type13getAsEnumDeclEv.exit.i
  %i.dg = ptrtoint ptr %.6.i to i64
  %i.dh = tail call noundef i32 @_ZNK5clang10ASTContext11getIntWidthENS_8QualTypeE(ptr noundef nonnull align 8 dereferenceable(23904) %0, i64 %i.dg) #31
  %i.di = load i32, ptr %i.cx, align 16
  %i.dj = lshr i32 %i.di, 19
  %i.dk = and i32 %i.dj, 1023
  %i.dl = add nsw i32 %i.dk, -453
  %spec.select.i92.i = icmp ult i32 %i.dl, 12
  %i.dm = zext i1 %spec.select.i92.i to i64
  br label %_ZN12_GLOBAL__N_18IntRange23forValueOfCanonicalTypeERN5clang10ASTContextEPKNS1_4TypeE.exit

_ZN12_GLOBAL__N_18IntRange23forValueOfCanonicalTypeERN5clang10ASTContextEPKNS1_4TypeE.exit: ; preds = %_ZNK5clang8EnumDecl14getIntegerTypeEv.exit90.i, %bb.v, %bb.w, %bb.x, %bb.y
  %.sroa.0105.4.i = phi i32 [ %i.dh, %bb.y ], [ %i.dd, %bb.x ], [ %i.bu, %_ZNK5clang8EnumDecl14getIntegerTypeEv.exit90.i ], [ %i.cr, %bb.v ], [ %.sroa.speculated.i, %bb.w ]
  %.sroa.6.4.i = phi i64 [ %i.dm, %bb.y ], [ %i.df, %bb.x ], [ %i.cm, %_ZNK5clang8EnumDecl14getIntegerTypeEv.exit90.i ], [ 1, %bb.v ], [ 0, %bb.w ]
  %.sroa.6.0.insert.shift.i = shl nuw nsw i64 %.sroa.6.4.i, 32
  %.sroa.0105.0.insert.ext.i = zext i32 %.sroa.0105.4.i to i64
  %.sroa.0105.0.insert.insert.i = or disjoint i64 %.sroa.6.0.insert.shift.i, %.sroa.0105.0.insert.ext.i
  ret i64 %.sroa.0105.0.insert.insert.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal range(i64 0, 8589934592) i64 @_ZN12_GLOBAL__N_18IntRange4joinES0_S0_(i64 %0, i64 %1) unnamed_addr #9 align 2 {
bb.a:
  %.sroa.08.0.extract.trunc = trunc i64 %0 to i32
  %.sroa.29.0.extract.shift = lshr i64 %0, 32     ; 3 uses
  %.sroa.29.0.extract.trunc = trunc nuw i64 %.sroa.29.0.extract.shift to i32
  %.sroa.0.0.extract.trunc = trunc i64 %1 to i32
  %.sroa.2.0.extract.shift = lshr i64 %1, 32      ; 2 uses
  %.sroa.2.0.extract.trunc = trunc i64 %.sroa.2.0.extract.shift to i8 ; 2 uses
  %i.a = trunc i64 %.sroa.29.0.extract.shift to i1
  %i.b = and i32 %.sroa.29.0.extract.trunc, 1
  %i.c = xor i32 %i.b, 1
  %i.d = sub i32 %.sroa.08.0.extract.trunc, %i.c
  %i.e = and i8 %.sroa.2.0.extract.trunc, 1
  %i.f = xor i8 %i.e, 1
  %i.g = zext nneg i8 %i.f to i32
  %i.h = sub i32 %.sroa.0.0.extract.trunc, %i.g
  %.sroa.speculated = tail call i32 @llvm.umax.i32(i32 %i.d, i32 %i.h)
  %i.i = xor i8 %.sroa.2.0.extract.trunc, 1
  %i.j = zext nneg i8 %i.i to i32
  %i.k = select i1 %i.a, i32 %i.j, i32 1
  %i.l = add i32 %.sroa.speculated, %i.k
  %2 = and i64 %.sroa.29.0.extract.shift, 1
  %i.m = and i64 %2, %.sroa.2.0.extract.shift
  %.sroa.215.0.insert.shift = shl nuw nsw i64 %i.m, 32
  %.sroa.014.0.insert.ext = zext i32 %i.l to i64
  %.sroa.014.0.insert.insert = or disjoint i64 %.sroa.215.0.insert.shift, %.sroa.014.0.insert.ext
  ret i64 %.sroa.014.0.insert.insert
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal range(i64 0, 8589934592) i64 @_ZN12_GLOBAL__N_18IntRange7bit_andES0_S0_(i64 %0, i64 %1) unnamed_addr #9 align 2 {
bb.a:
  %.sroa.018.0.extract.trunc = trunc i64 %0 to i32 ; 2 uses
  %.sroa.0.0.extract.trunc = trunc i64 %1 to i32  ; 2 uses
  %.sroa.speculated14 = tail call i32 @llvm.umax.i32(i32 %.sroa.018.0.extract.trunc, i32 %.sroa.0.0.extract.trunc)
  %i.a = and i64 %0, 4294967296
  %i.b = icmp ne i64 %i.a, 0                      ; 2 uses
  %spec.select = select i1 %i.b, i32 %.sroa.018.0.extract.trunc, i32 %.sroa.speculated14 ; 2 uses
  %i.c = and i64 %1, 4294967296
  %i.d = icmp ne i64 %i.c, 0                      ; 2 uses
  %.sroa.speculated = tail call i32 @llvm.umin.i32(i32 %spec.select, i32 %.sroa.0.0.extract.trunc)
  %.125 = select i1 %i.d, i32 %.sroa.speculated, i32 %spec.select
  %.1 = select i1 %i.d, i1 true, i1 %i.b
  %.sroa.2.0.insert.shift = select i1 %.1, i64 4294967296, i64 0
  %.sroa.024.0.insert.ext = zext i32 %.125 to i64
  %.sroa.024.0.insert.insert = or disjoint i64 %.sroa.2.0.insert.shift, %.sroa.024.0.insert.ext
  ret i64 %.sroa.024.0.insert.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK4llvm5APInt3ugeEm(ptr noundef nonnull align 8 dereferenceable(12) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !1247 ; 2 uses
  %i.c = icmp ult i32 %i.b, 65                    ; 2 uses
  br i1 %i.c, label %bb.b, label %_ZNK4llvm5APInt13getActiveBitsEv.exit.i

_ZNK4llvm5APInt13getActiveBitsEv.exit.i:          ; preds = %bb.a
  %i.d = tail call noundef i32 @_ZNK4llvm5APInt25countLeadingZerosSlowCaseEv(ptr noundef nonnull align 8 dereferenceable(12) %0) #32
  %i.e = sub i32 %i.b, %i.d
  %i.f = icmp ult i32 %i.e, 65
  br i1 %i.f, label %bb.b, label %_ZNK4llvm5APInt3ultEm.exit

bb.b:                                             ; preds = %_ZNK4llvm5APInt13getActiveBitsEv.exit.i, %bb.a
  %i.g = load ptr, ptr %0, align 8
  %spec.select.i.i = select i1 %i.c, ptr %0, ptr %i.g
  %.0.i.i = load i64, ptr %spec.select.i.i, align 8, !tbaa !1129
  %i.h = icmp uge i64 %.0.i.i, %1
  br label %_ZNK4llvm5APInt3ultEm.exit

_ZNK4llvm5APInt3ultEm.exit:                       ; preds = %_ZNK4llvm5APInt13getActiveBitsEv.exit.i, %bb.b
  %i.i = phi i1 [ true, %_ZNK4llvm5APInt13getActiveBitsEv.exit.i ], [ %i.h, %bb.b ]
  ret i1 %i.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal range(i64 0, 8589934592) i64 @_ZN12_GLOBAL__N_18IntRange3sumES0_S0_(i64 %0, i64 %1) unnamed_addr #9 align 2 {
bb.a:
  %.sroa.08.0.extract.trunc = trunc i64 %0 to i32
  %.sroa.29.0.extract.shift = lshr i64 %0, 32     ; 2 uses
  %.sroa.29.0.extract.trunc = trunc nuw i64 %.sroa.29.0.extract.shift to i32
  %.sroa.0.0.extract.trunc = trunc i64 %1 to i32
  %.sroa.2.0.extract.shift = lshr i64 %1, 32      ; 2 uses
  %.sroa.2.0.extract.trunc = trunc nuw i64 %.sroa.2.0.extract.shift to i32
  %i.a = trunc i64 %.sroa.29.0.extract.shift to i1
  %i.b = trunc i64 %.sroa.2.0.extract.shift to i1
  %i.c = select i1 %i.a, i1 %i.b, i1 false        ; 2 uses
  %i.d = and i32 %.sroa.29.0.extract.trunc, 1
  %i.e = xor i32 %i.d, 1
  %i.f = sub i32 %.sroa.08.0.extract.trunc, %i.e
  %i.g = and i32 %.sroa.2.0.extract.trunc, 1
  %i.h = xor i32 %i.g, 1
  %i.i = sub i32 %.sroa.0.0.extract.trunc, %i.h
  %.sroa.speculated = tail call i32 @llvm.umax.i32(i32 %i.f, i32 %i.i)
  %i.j = select i1 %i.c, i32 1, i32 2
  %i.k = add i32 %i.j, %.sroa.speculated
  %.sroa.214.0.insert.shift = select i1 %i.c, i64 4294967296, i64 0
  %.sroa.013.0.insert.ext = zext i32 %i.k to i64
  %.sroa.013.0.insert.insert = or disjoint i64 %.sroa.214.0.insert.shift, %.sroa.013.0.insert.ext
  ret i64 %.sroa.013.0.insert.insert
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal range(i64 0, 8589934592) i64 @_ZN12_GLOBAL__N_18IntRange10differenceES0_S0_(i64 %0, i64 %1) unnamed_addr #9 align 2 {
bb.a:
  %.sroa.09.0.extract.trunc = trunc i64 %0 to i32
  %.sroa.2.0.extract.shift = lshr i64 %0, 32      ; 2 uses
  %.sroa.2.0.extract.trunc = trunc nuw i64 %.sroa.2.0.extract.shift to i32
  %.sroa.0.0.extract.trunc = trunc i64 %1 to i32  ; 2 uses
  %.sroa.3.0.extract.shift = lshr i64 %1, 32
  %.sroa.3.0.extract.trunc = trunc i64 %.sroa.3.0.extract.shift to i8 ; 2 uses
  %i.a = trunc i64 %.sroa.2.0.extract.shift to i1 ; 2 uses
  %i.b = xor i8 %.sroa.3.0.extract.trunc, 1
  %i.c = zext nneg i8 %i.b to i32
  %i.d = select i1 %i.a, i32 %i.c, i32 1
  %i.e = icmp eq i32 %.sroa.0.0.extract.trunc, 0
  %i.f = select i1 %i.a, i1 %i.e, i1 false        ; 2 uses
  %i.g = and i32 %.sroa.2.0.extract.trunc, 1
  %i.h = xor i32 %i.g, 1
  %i.i = sub i32 %.sroa.09.0.extract.trunc, %i.h
  %i.j = and i8 %.sroa.3.0.extract.trunc, 1
  %i.k = xor i8 %i.j, 1
  %i.l = zext nneg i8 %i.k to i32
  %i.m = sub i32 %.sroa.0.0.extract.trunc, %i.l
  %.sroa.speculated = tail call i32 @llvm.umax.i32(i32 %i.i, i32 %i.m)
  %i.n = xor i1 %i.f, true
  %i.o = zext i1 %i.n to i32
  %i.p = add nuw nsw i32 %i.d, %i.o
  %i.q = add i32 %i.p, %.sroa.speculated
  %.sroa.211.0.insert.shift = select i1 %i.f, i64 4294967296, i64 0
  %.sroa.010.0.insert.ext = zext i32 %i.q to i64
  %.sroa.010.0.insert.insert = or disjoint i64 %.sroa.211.0.insert.shift, %.sroa.010.0.insert.ext
  ret i64 %.sroa.010.0.insert.insert
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal range(i64 0, 8589934592) i64 @_ZN12_GLOBAL__N_18IntRange7productES0_S0_(i64 %0, i64 %1) unnamed_addr #9 align 2 {
bb.a:
  %.sroa.27.0.extract.shift = lshr i64 %0, 32     ; 2 uses
  %.sroa.2.0.extract.shift = lshr i64 %1, 32      ; 3 uses
  %i.a = trunc i64 %.sroa.27.0.extract.shift to i1 ; 2 uses
  %i.b = trunc i64 %.sroa.2.0.extract.shift to i1
  %i.c = select i1 %i.a, i1 %i.b, i1 false        ; 2 uses
  %i.d = or i64 %.sroa.2.0.extract.shift, 4294967294
  %i.e = and i64 %.sroa.2.0.extract.shift, 1
  %i.f = xor i64 %i.e, 1
  %i.g = select i1 %i.a, i64 0, i64 %i.f
  %i.h = xor i1 %i.c, true
  %i.i = zext i1 %i.h to i64
  %op.rdx = and i64 %.sroa.27.0.extract.shift, 1
  %op.rdx15 = add nuw nsw i64 %op.rdx, %i.d
  %op.rdx16 = add nuw nsw i64 %op.rdx15, %i.i
  %op.rdx17 = add i64 %i.g, %1
  %op.rdx18 = add i64 %op.rdx16, %op.rdx17
  %op.rdx19 = add i64 %op.rdx18, %0
  %.sroa.212.0.insert.shift = select i1 %i.c, i64 4294967296, i64 0
  %.sroa.011.0.insert.ext = and i64 %op.rdx19, 4294967295
  %.sroa.011.0.insert.insert = or disjoint i64 %.sroa.011.0.insert.ext, %.sroa.212.0.insert.shift
  ret i64 %.sroa.011.0.insert.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i32 @_ZNK4llvm5APInt8logBase2Ev(ptr noundef nonnull align 8 dereferenceable(12) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !1247 ; 3 uses
  %i.c = icmp ult i32 %i.b, 65
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %.neg.i.i = add nsw i32 %i.b, -64
  %i.d = load i64, ptr %0, align 8, !tbaa !1129
  %i.e = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.d, i1 false)
  %i.f = trunc nuw nsw i64 %i.e to i32
  %i.g = add nsw i32 %.neg.i.i, %i.f
  br label %_ZNK4llvm5APInt13getActiveBitsEv.exit

bb.c:                                             ; preds = %bb.a
  %i.h = tail call noundef i32 @_ZNK4llvm5APInt25countLeadingZerosSlowCaseEv(ptr noundef nonnull align 8 dereferenceable(12) %0) #32
  br label %_ZNK4llvm5APInt13getActiveBitsEv.exit

_ZNK4llvm5APInt13getActiveBitsEv.exit:            ; preds = %bb.b, %bb.c
  %.0.i.i = phi i32 [ %i.g, %bb.b ], [ %i.h, %bb.c ]
  %i.i = xor i32 %.0.i.i, -1
  %i.j = add i32 %i.b, %i.i
  ret i32 %i.j
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal range(i64 0, 1099511627776) i64 @_ZN12_GLOBAL__N_18IntRange3remES0_S0_(i64 %0, i64 %1) unnamed_addr #9 align 2 {
bb.a:
  %.sroa.08.0.extract.trunc = trunc i64 %0 to i32
  %.sroa.29.0.extract.shift = lshr i64 %0, 32
  %.sroa.29.0.extract.trunc = trunc nuw i64 %.sroa.29.0.extract.shift to i32
  %.sroa.0.0.extract.trunc = trunc i64 %1 to i32
  %.sroa.2.0.extract.shift = lshr i64 %1, 32
  %.sroa.2.0.extract.trunc = trunc nuw i64 %.sroa.2.0.extract.shift to i32
  %i.a = and i32 %.sroa.29.0.extract.trunc, 1
  %i.b = xor i32 %i.a, 1                          ; 2 uses
  %i.c = sub i32 %.sroa.08.0.extract.trunc, %i.b
  %i.d = and i32 %.sroa.2.0.extract.trunc, 1
  %i.e = xor i32 %i.d, 1
  %i.f = sub i32 %.sroa.0.0.extract.trunc, %i.e
  %.sroa.speculated = tail call i32 @llvm.umin.i32(i32 %i.f, i32 %i.c)
  %i.g = add i32 %.sroa.speculated, %i.b
  %.sroa.211.0.insert.shift = and i64 %0, 1095216660480
  %.sroa.010.0.insert.ext = zext i32 %i.g to i64
  %.sroa.010.0.insert.insert = or disjoint i64 %.sroa.211.0.insert.shift, %.sroa.010.0.insert.ext
  ret i64 %.sroa.010.0.insert.insert
}

declare noundef zeroext i1 @_ZNK5clang4Type34isUnsignedIntegerOrEnumerationTypeEv(ptr noundef nonnull align 16 dereferenceable(24)) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc range(i64 0, 8589934592) i64 @_ZL13GetValueRangeRN4llvm6APSIntEj(ptr noundef nonnull align 8 dereferenceable(13) %0, i32 noundef %1) unnamed_addr #0 {
bb.a:
  %2 = alloca %"class.llvm::APInt", align 8       ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.b = load i8, ptr %i.a, align 4, !tbaa !1249, !range !1111, !noundef !734
  %i.c = trunc nuw i8 %i.b to i1
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.pre = load i32, ptr %.phi.trans.insert, align 8, !tbaa !1247 ; 7 uses
  br i1 %i.c, label %._crit_edge, label %_ZNK4llvm6APSInt10isNegativeEv.exit

end_hunk_0
