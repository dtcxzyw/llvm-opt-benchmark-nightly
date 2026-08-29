Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/SemaCodeComplete?download=true
inline.NumInlined: 13082
inline.NumDeleted: 5708
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_ZL16compareOverloadsRKN5clang13CXXMethodDeclES2_RKNS_10QualifiersENS_13ExprValueKindERKNS_10ASTContextE:bb.a
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 48
  %.sroa.0.0.copyload.i = load i64, ptr %i.ad, align 8, !tbaa !24 ; 2 uses
  %i.ae = and i64 %.sroa.0.0.copyload.i, -16
  %i.af = inttoptr i64 %i.ae to ptr
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !24
  %i.ai = and i64 %.sroa.0.0.copyload.i, 7
  %i.aj = or i64 %i.ai, %i.ah
  %i.ak = load ptr, ptr %i.x, align 8, !tbaa !941
  %i.al = tail call noundef i32 @_ZNK5clang12FunctionDecl12getNumParamsEv(ptr noundef nonnull align 8 dereferenceable(168) %1) #28 ; 0 uses
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %indvars.iv
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !896
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 48
  %.sroa.0.0.copyload.i45 = load i64, ptr %i.ao, align 8, !tbaa !24 ; 2 uses
  %i.ap = and i64 %.sroa.0.0.copyload.i45, -16
  %i.aq = inttoptr i64 %i.ap to ptr
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !24
  %i.at = and i64 %.sroa.0.0.copyload.i45, 7
  %i.au = or i64 %i.at, %i.as
  %.not14 = icmp eq i64 %i.aj, %i.au
  br i1 %.not14, label %bb.j, label %.loopexit

._crit_edge:                                      ; preds = %bb.j, %bb.i
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  %i.aw = load i32, ptr %i.av, align 4
  %i.ax = and i32 %i.aw, 256
  %.not.i.i.i = icmp eq i32 %i.ax, 0
  br i1 %.not.i.i.i, label %_ZNK4llvm14iterator_rangeIN5clang22specific_attr_iteratorINS1_12EnableIfAttrENS_11SmallVectorIPNS1_4AttrELj4EEEEEE5emptyEv.exit.thread, label %_ZNK5clang4Decl19specific_attr_beginINS_12EnableIfAttrEEENS_22specific_attr_iteratorIT_N4llvm11SmallVectorIPNS_4AttrELj4EEEEEv.exit.i

_ZNK5clang4Decl19specific_attr_beginINS_12EnableIfAttrEEENS_22specific_attr_iteratorIT_N4llvm11SmallVectorIPNS_4AttrELj4EEEEEv.exit.i: ; preds = %._crit_edge
  %i.ay = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZNK5clang4Decl8getAttrsEv(ptr noundef nonnull align 8 dereferenceable(33) %0) #28
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !33 ; 5 uses
  %.pre.i = load i32, ptr %i.av, align 4
  %.pre4.i = and i32 %.pre.i, 256
  %i.ba = icmp eq i32 %.pre4.i, 0
  br i1 %i.ba, label %_ZNK5clang4Decl14specific_attrsINS_12EnableIfAttrEEEN4llvm14iterator_rangeINS_22specific_attr_iteratorIT_NS3_11SmallVectorIPNS_4AttrELj4EEEEEEEv.exit.thread, label %_ZNK5clang4Decl14specific_attrsINS_12EnableIfAttrEEEN4llvm14iterator_rangeINS_22specific_attr_iteratorIT_NS3_11SmallVectorIPNS_4AttrELj4EEEEEEEv.exit

_ZNK5clang4Decl14specific_attrsINS_12EnableIfAttrEEEN4llvm14iterator_rangeINS_22specific_attr_iteratorIT_NS3_11SmallVectorIPNS_4AttrELj4EEEEEEEv.exit: ; preds = %_ZNK5clang4Decl19specific_attr_beginINS_12EnableIfAttrEEENS_22specific_attr_iteratorIT_N4llvm11SmallVectorIPNS_4AttrELj4EEEEEv.exit.i
  %i.bb = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZNK5clang4Decl8getAttrsEv(ptr noundef nonnull align 8 dereferenceable(33) %0) #28 ; 2 uses
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !33
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  %i.be = load i32, ptr %i.bd, align 8, !tbaa !31
  %i.bf = zext i32 %i.be to i64
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.bc, i64 %i.bf ; 4 uses
  %i.bh = icmp ult ptr %i.az, %i.bg
  br i1 %i.bh, label %.lr.ph.i.i.i, label %_ZNK5clang4Decl14specific_attrsINS_12EnableIfAttrEEEN4llvm14iterator_rangeINS_22specific_attr_iteratorIT_NS3_11SmallVectorIPNS_4AttrELj4EEEEEEEv.exit.thread

.lr.ph.i.i.i:                                     ; preds = %_ZNK5clang4Decl14specific_attrsINS_12EnableIfAttrEEEN4llvm14iterator_rangeINS_22specific_attr_iteratorIT_NS3_11SmallVectorIPNS_4AttrELj4EEEEEEEv.exit, %bb.l
  %.sroa.07.1.i.i = phi ptr [ %i.bm, %bb.l ], [ %i.az, %_ZNK5clang4Decl14specific_attrsINS_12EnableIfAttrEEEN4llvm14iterator_rangeINS_22specific_attr_iteratorIT_NS3_11SmallVectorIPNS_4AttrELj4EEEEEEEv.exit ] ; 3 uses
  %i.bi = load ptr, ptr %.sroa.07.1.i.i, align 8, !tbaa !826
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 36
  %i.bk = load i16, ptr %i.bj, align 4
  %i.bl = icmp eq i16 %i.bk, 218
  br i1 %i.bl, label %_ZNK4llvm14iterator_rangeIN5clang22specific_attr_iteratorINS1_12EnableIfAttrENS_11SmallVectorIPNS1_4AttrELj4EEEEEE5emptyEv.exit, label %bb.l

bb.l:                                             ; preds = %.lr.ph.i.i.i
  %i.bm = getelementptr inbounds nuw i8, ptr %.sroa.07.1.i.i, i64 8 ; 2 uses
  %.not.i.i.i49 = icmp eq ptr %i.bm, %i.bg
  br i1 %.not.i.i.i49, label %_ZNK4llvm14iterator_rangeIN5clang22specific_attr_iteratorINS1_12EnableIfAttrENS_11SmallVectorIPNS1_4AttrELj4EEEEEE5emptyEv.exit.thread, label %.lr.ph.i.i.i, !llvm.loop !3189

_ZNK5clang4Decl14specific_attrsINS_12EnableIfAttrEEEN4llvm14iterator_rangeINS_22specific_attr_iteratorIT_NS3_11SmallVectorIPNS_4AttrELj4EEEEEEEv.exit.thread: ; preds = %_ZNK5clang4Decl19specific_attr_beginINS_12EnableIfAttrEEENS_22specific_attr_iteratorIT_N4llvm11SmallVectorIPNS_4AttrELj4EEEEEv.exit.i, %_ZNK5clang4Decl14specific_attrsINS_12EnableIfAttrEEEN4llvm14iterator_rangeINS_22specific_attr_iteratorIT_NS3_11SmallVectorIPNS_4AttrELj4EEEEEEEv.exit
  %i.bn = phi ptr [ %i.bg, %_ZNK5clang4Decl14specific_attrsINS_12EnableIfAttrEEEN4llvm14iterator_rangeINS_22specific_attr_iteratorIT_NS3_11SmallVectorIPNS_4AttrELj4EEEEEEEv.exit ], [ null, %_ZNK5clang4Decl19specific_attr_beginINS_12EnableIfAttrEEENS_22specific_attr_iteratorIT_N4llvm11SmallVectorIPNS_4AttrELj4EEEEEv.exit.i ] ; 2 uses
  %.not2.i3.i.i = icmp eq ptr %i.bn, %i.az
  br i1 %.not2.i3.i.i, label %_ZNK4llvm14iterator_rangeIN5clang22specific_attr_iteratorINS1_12EnableIfAttrENS_11SmallVectorIPNS1_4AttrELj4EEEEEE5emptyEv.exit.thread, label %.lr.ph.i4.i.i

.lr.ph.i4.i.i:                                    ; preds = %_ZNK5clang4Decl14specific_attrsINS_12EnableIfAttrEEEN4llvm14iterator_rangeINS_22specific_attr_iteratorIT_NS3_11SmallVectorIPNS_4AttrELj4EEEEEEEv.exit.thread, %bb.m
  %.sroa.0.1.i.i = phi ptr [ %i.bs, %bb.m ], [ %i.bn, %_ZNK5clang4Decl14specific_attrsINS_12EnableIfAttrEEEN4llvm14iterator_rangeINS_22specific_attr_iteratorIT_NS3_11SmallVectorIPNS_4AttrELj4EEEEEEEv.exit.thread ] ; 3 uses
  %i.bo = load ptr, ptr %.sroa.0.1.i.i, align 8, !tbaa !826
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 36
  %i.bq = load i16, ptr %i.bp, align 4
  %i.br = icmp eq i16 %i.bq, 218
  br i1 %i.br, label %_ZNK4llvm14iterator_rangeIN5clang22specific_attr_iteratorINS1_12EnableIfAttrENS_11SmallVectorIPNS1_4AttrELj4EEEEEE5emptyEv.exit, label %bb.m

bb.m:                                             ; preds = %.lr.ph.i4.i.i
  %i.bs = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i.i, i64 8 ; 2 uses
  %.not.i5.i.i = icmp eq ptr %i.bs, %i.az
  br i1 %.not.i5.i.i, label %_ZNK4llvm14iterator_rangeIN5clang22specific_attr_iteratorINS1_12EnableIfAttrENS_11SmallVectorIPNS1_4AttrELj4EEEEEE5emptyEv.exit.thread, label %.lr.ph.i4.i.i, !llvm.loop !3189

_ZNK4llvm14iterator_rangeIN5clang22specific_attr_iteratorINS1_12EnableIfAttrENS_11SmallVectorIPNS1_4AttrELj4EEEEEE5emptyEv.exit.thread: ; preds = %bb.l, %bb.m, %._crit_edge, %_ZNK5clang4Decl14specific_attrsINS_12EnableIfAttrEEEN4llvm14iterator_rangeINS_22specific_attr_iteratorIT_NS3_11SmallVectorIPNS_4AttrELj4EEEEEEEv.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  br label %bb.n

_ZNK4llvm14iterator_rangeIN5clang22specific_attr_iteratorINS1_12EnableIfAttrENS_11SmallVectorIPNS1_4AttrELj4EEEEEE5emptyEv.exit: ; preds = %.lr.ph.i.i.i, %.lr.ph.i4.i.i
  %.sroa.07.0.i.i = phi ptr [ %i.az, %.lr.ph.i4.i.i ], [ %.sroa.07.1.i.i, %.lr.ph.i.i.i ]
  %.sroa.0.0.i.i = phi ptr [ %.sroa.0.1.i.i, %.lr.ph.i4.i.i ], [ %i.bg, %.lr.ph.i.i.i ]
  %i.bt = icmp eq ptr %.sroa.07.0.i.i, %.sroa.0.0.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  br i1 %i.bt, label %bb.n, label %.critedge

bb.n:                                             ; preds = %_ZNK4llvm14iterator_rangeIN5clang22specific_attr_iteratorINS1_12EnableIfAttrENS_11SmallVectorIPNS1_4AttrELj4EEEEEE5emptyEv.exit.thread, %_ZNK4llvm14iterator_rangeIN5clang22specific_attr_iteratorINS1_12EnableIfAttrENS_11SmallVectorIPNS1_4AttrELj4EEEEEE5emptyEv.exit
  %i.bu = tail call { ptr, ptr } @_ZNK5clang4Decl14specific_attrsINS_12EnableIfAttrEEEN4llvm14iterator_rangeINS_22specific_attr_iteratorIT_NS3_11SmallVectorIPNS_4AttrELj4EEEEEEEv(ptr noundef nonnull align 8 dereferenceable(33) %1) ; 2 uses
  %i.bv = extractvalue { ptr, ptr } %i.bu, 0
  store ptr %i.bv, ptr %4, align 8
  %i.bw = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.bx = extractvalue { ptr, ptr } %i.bu, 1
  store ptr %i.bx, ptr %i.bw, align 8
  %i.by = call noundef zeroext i1 @_ZNK4llvm14iterator_rangeIN5clang22specific_attr_iteratorINS1_12EnableIfAttrENS_11SmallVectorIPNS1_4AttrELj4EEEEEE5emptyEv(ptr noundef nonnull align 8 dereferenceable(16) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  br i1 %i.by, label %bb.o, label %.loopexit

.critedge:                                        ; preds = %_ZNK4llvm14iterator_rangeIN5clang22specific_attr_iteratorINS1_12EnableIfAttrENS_11SmallVectorIPNS1_4AttrELj4EEEEEE5emptyEv.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  br label %.loopexit

bb.o:                                             ; preds = %bb.n
  %i.bz = call noundef i32 @_ZNK5clang13CXXMethodDecl15getRefQualifierEv(ptr noundef nonnull align 8 dereferenceable(168) %0) ; 2 uses
  %i.ca = call noundef i32 @_ZNK5clang13CXXMethodDecl15getRefQualifierEv(ptr noundef nonnull align 8 dereferenceable(168) %1)
  %i.cb = icmp ne i32 %i.bz, %i.ca
  %i.cc = icmp eq i32 %2, 2
  %or.cond = and i1 %i.cc, %i.cb
  br i1 %or.cond, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.cd = icmp eq i32 %i.bz, 2
  %i.ce = select i1 %i.cd, i32 1, i32 2
  br label %.loopexit

bb.q:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28
  %i.cf = call i64 @_ZNK5clang13CXXMethodDecl19getMethodQualifiersEv(ptr noundef nonnull align 8 dereferenceable(168) %0)
  store i64 %i.cf, ptr %5, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #28
  %i.cg = call i64 @_ZNK5clang13CXXMethodDecl19getMethodQualifiersEv(ptr noundef nonnull align 8 dereferenceable(168) %1) ; 2 uses
  store i64 %i.cg, ptr %6, align 8
  %i.ch = call noundef zeroext i1 @_ZNK5clang10Qualifiers18compatiblyIncludesES0_RKNS_10ASTContextE(ptr noundef nonnull align 8 dereferenceable(8) %5, i64 %i.cg, ptr noundef nonnull align 8 dereferenceable(23904) %3)
  %.sroa.0.0.copyload = load i64, ptr %5, align 8, !tbaa !65
  %i.ci = call noundef zeroext i1 @_ZNK5clang10Qualifiers18compatiblyIncludesES0_RKNS_10ASTContextE(ptr noundef nonnull align 8 dereferenceable(8) %6, i64 %.sroa.0.0.copyload, ptr noundef nonnull align 8 dereferenceable(23904) %3) ; 2 uses
  %i.cj = xor i1 %i.ch, %i.ci
  %i.ck = select i1 %i.ci, i32 1, i32 2
  %.1 = select i1 %i.cj, i32 %i.ck, i32 0
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  br label %.loopexit

.loopexit:                                        ; preds = %bb.k, %bb.p, %bb.q, %bb.n, %.critedge, %bb.f, %bb.g, %bb.h, %_ZNK5clang4Decl14getDeclContextEv.exit42
  %.3 = phi i32 [ %.1, %bb.q ], [ 0, %_ZNK5clang4Decl14getDeclContextEv.exit42 ], [ 0, %bb.f ], [ 0, %bb.n ], [ 0, %bb.h ], [ 0, %bb.g ], [ 0, %.critedge ], [ %i.ce, %bb.p ], [ 0, %bb.k ]
  ret i32 %.3
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(96) ptr @_ZN5clang20CodeCompletionResultaSEOS0_(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(96) %1) local_unnamed_addr #8 comdat align 2 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef nonnull align 8 dereferenceable(36) %1, i64 36, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.c = load ptr, ptr %i.a, align 8, !tbaa !1626 ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !1627 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !1629
  %i.h = load <2 x ptr>, ptr %i.b, align 8, !tbaa !1715
  store <2 x ptr> %i.h, ptr %i.a, align 8, !tbaa !1715
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !1629
  store ptr %i.j, ptr %i.f, align 8, !tbaa !1629
  %.not4.i.i.i.i.i = icmp eq ptr %i.c, %i.e
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, i8 0, i64 24, i1 false)
  br i1 %.not4.i.i.i.i.i, label %_ZSt8_DestroyIPN5clang9FixItHintEEvT_S3_.exit.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.a, %_ZSt8_DestroyIN5clang9FixItHintEEvPT_.exit.i.i.i.i.i
  %.05.i.i.i.i.i = phi ptr [ %i.q, %_ZSt8_DestroyIN5clang9FixItHintEEvPT_.exit.i.i.i.i.i ], [ %i.c, %bb.a ] ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 24
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !825  ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 40 ; 2 uses
  %i.n = icmp eq ptr %i.l, %i.m
  br i1 %i.n, label %_ZSt8_DestroyIN5clang9FixItHintEEvPT_.exit.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  %i.o = load i64, ptr %i.m, align 8, !tbaa !24
  %i.p = add i64 %i.o, 1
  tail call void @_ZdlPvm(ptr noundef %i.l, i64 noundef %i.p) #30
  br label %_ZSt8_DestroyIN5clang9FixItHintEEvPT_.exit.i.i.i.i.i

_ZSt8_DestroyIN5clang9FixItHintEEvPT_.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i
  %i.q = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 64 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.q, %i.e
  br i1 %.not.i.i.i.i.i, label %_ZSt8_DestroyIPN5clang9FixItHintEEvT_S3_.exit.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !1628

_ZSt8_DestroyIPN5clang9FixItHintEEvT_S3_.exit.i.i.i: ; preds = %_ZSt8_DestroyIN5clang9FixItHintEEvPT_.exit.i.i.i.i.i, %bb.a
  %.not.i.i1.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i1.i.i.i, label %_ZNSt6vectorIN5clang9FixItHintESaIS1_EEaSEOS3_.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPN5clang9FixItHintEEvT_S3_.exit.i.i.i
  %i.r = ptrtoint ptr %i.g to i64
  %i.s = ptrtoint ptr %i.c to i64
  %i.t = sub i64 %i.r, %i.s
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.t) #30
  br label %_ZNSt6vectorIN5clang9FixItHintESaIS1_EEaSEOS3_.exit

_ZNSt6vectorIN5clang9FixItHintESaIS1_EEaSEOS3_.exit: ; preds = %_ZSt8_DestroyIPN5clang9FixItHintEEvT_S3_.exit.i.i.i, %bb.b
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 64
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.u, ptr noundef nonnull align 8 dereferenceable(32) %i.v, i64 32, i1 false)
  ret ptr %0
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN12_GLOBAL__N_113ResultBuilder14ShadowMapEntry3AddEPKN5clang9NamedDeclEj(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(12) %0, ptr noundef %1, i32 noundef %2) unnamed_addr #0 align 2 {
bb.a:
  %.0.copyload.i.i = load i64, ptr %0, align 8    ; 3 uses
  %i.a = icmp ult i64 %.0.copyload.i.i, 8
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64
  store i64 %i.b, ptr %0, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %2, ptr %i.c, align 8, !tbaa !3190
  br label %_ZN4llvm23SmallVectorTemplateBaseISt4pairIPKN5clang9NamedDeclEjELb1EE9push_backES6_.exit5

bb.c:                                             ; preds = %bb.a
  %i.d = and i64 %.0.copyload.i.i, 4
  %.not = icmp eq i64 %i.d, 0
  %3 = and i64 %.0.copyload.i.i, -5               ; 2 uses
  br i1 %.not, label %_ZN4llvm23SmallVectorTemplateBaseISt4pairIPKN5clang9NamedDeclEjELb1EE9push_backES6_.exit, label %bb.d

_ZN4llvm23SmallVectorTemplateBaseISt4pairIPKN5clang9NamedDeclEjELb1EE9push_backES6_.exit: ; preds = %bb.c
  %i.e = inttoptr i64 %3 to ptr
  %i.f = tail call noalias noundef nonnull dereferenceable(80) ptr @_Znwm(i64 noundef 80) #31 ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 2 uses
  store ptr %i.g, ptr %i.f, align 8, !tbaa !33
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 12
  store i32 4, ptr %i.i, align 4, !tbaa !788
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load i32, ptr %i.j, align 8, !tbaa !28
  store ptr %i.e, ptr %i.g, align 8
  %.sroa.32.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  store i32 %i.k, ptr %.sroa.32.0..sroa_idx.i, align 8
  store i32 1, ptr %i.h, align 8, !tbaa !31
  %i.l = ptrtoint ptr %i.f to i64                 ; 2 uses
  %i.m = or i64 %i.l, 4
  store i64 %i.m, ptr %0, align 8
  br label %bb.d

bb.d:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseISt4pairIPKN5clang9NamedDeclEjELb1EE9push_backES6_.exit, %bb.c
  %.pre-phi = phi i64 [ %i.l, %_ZN4llvm23SmallVectorTemplateBaseISt4pairIPKN5clang9NamedDeclEjELb1EE9push_backES6_.exit ], [ %3, %bb.c ]
  %i.n = inttoptr i64 %.pre-phi to ptr            ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 3 uses
  %i.p = load i32, ptr %i.o, align 8, !tbaa !31   ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 12
  %i.r = load i32, ptr %i.q, align 4, !tbaa !788
  %.not.i3 = icmp ult i32 %i.p, %i.r
  br i1 %.not.i3, label %bb.f, label %bb.e, !prof !851

bb.e:                                             ; preds = %bb.d
  tail call void @_ZN4llvm23SmallVectorTemplateBaseISt4pairIPKN5clang9NamedDeclEjELb1EE15growAndPushBackES6_(ptr noundef nonnull align 8 dereferenceable(16) %i.n, ptr %1, i32 %2)
  br label %_ZN4llvm23SmallVectorTemplateBaseISt4pairIPKN5clang9NamedDeclEjELb1EE9push_backES6_.exit5

bb.f:                                             ; preds = %bb.d
  %i.s = zext i32 %i.p to i64
  %i.t = load ptr, ptr %i.n, align 8, !tbaa !33
  %i.u = getelementptr inbounds nuw [16 x i8], ptr %i.t, i64 %i.s ; 2 uses
  store ptr %1, ptr %i.u, align 1
  %.sroa.32.0..sroa_idx.i4 = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store i32 %2, ptr %.sroa.32.0..sroa_idx.i4, align 1
  %i.v = load i32, ptr %i.o, align 8, !tbaa !31
  %i.w = add i32 %i.v, 1
  store i32 %i.w, ptr %i.o, align 8, !tbaa !31
  br label %_ZN4llvm23SmallVectorTemplateBaseISt4pairIPKN5clang9NamedDeclEjELb1EE9push_backES6_.exit5

_ZN4llvm23SmallVectorTemplateBaseISt4pairIPKN5clang9NamedDeclEjELb1EE9push_backES6_.exit5: ; preds = %bb.f, %bb.e, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef zeroext i1 @_ZNK12_GLOBAL__N_113ResultBuilder19canFunctionBeCalledEPKN5clang9NamedDeclENS1_8QualTypeE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(496) %0, ptr noundef %1, i64 %2) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.b = load i32, ptr %i.a, align 8, !tbaa !1596
  %i.c = icmp eq i32 %i.b, 21
  br i1 %i.c, label %bb.b, label %_ZNK12_GLOBAL__N_113ResultBuilder20canCxxMethodBeCalledEPKN5clang13CXXMethodDeclENS1_8QualTypeE.exit

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.e = load i32, ptr %i.d, align 4              ; 2 uses
  %i.f = and i32 %i.e, 127
  %i.g = icmp ne i32 %i.f, 72
  %.not18 = icmp eq ptr %1, null
  %.not = or i1 %.not18, %i.g
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !874  ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.i, i64 28
  %.pre = load i32, ptr %.phi.trans.insert, align 4
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.j = phi i32 [ %.pre, %bb.c ], [ %i.e, %bb.b ]
  %.011 = phi ptr [ %i.i, %bb.c ], [ %1, %bb.b ]  ; 3 uses
  %i.k = and i32 %i.j, 124
  %.not27 = icmp eq i32 %i.k, 36
  br i1 %.not27, label %bb.e, label %_ZNK12_GLOBAL__N_113ResultBuilder20canCxxMethodBeCalledEPKN5clang13CXXMethodDeclENS1_8QualTypeE.exit

bb.e:                                             ; preds = %bb.d
  %i.l = tail call noundef zeroext i1 @_ZNK5clang13CXXMethodDecl8isStaticEv(ptr noundef nonnull align 8 dereferenceable(168) %.011) #28
  br i1 %i.l, label %_ZNK12_GLOBAL__N_113ResultBuilder20canCxxMethodBeCalledEPKN5clang13CXXMethodDeclENS1_8QualTypeE.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 176
  %.val = load ptr, ptr %i.m, align 8, !tbaa !1679
  %i.n = getelementptr i8, ptr %.val, i64 616
  %.val.val = load ptr, ptr %i.n, align 8, !tbaa !1669 ; 2 uses
  %.not10.i.i = icmp eq ptr %.val.val, null
  br i1 %.not10.i.i, label %.thread.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.f, %_ZN5clang11DeclContext9getParentEv.exit.i.i
  %.0911.i.i = phi ptr [ %.0.i.i.i.i, %_ZN5clang11DeclContext9getParentEv.exit.i.i ], [ %.val.val, %bb.f ] ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.0911.i.i, i64 8
  %i.p = load i16, ptr %i.o, align 8
  %i.q = and i16 %i.p, 124
  %.not7.i.i = icmp eq i16 %i.q, 36
  br i1 %.not7.i.i, label %bb.g, label %bb.l

bb.g:                                             ; preds = %.lr.ph.i.i
  %i.r = tail call noundef ptr @_ZN5clang4Decl19castFromDeclContextEPKNS_11DeclContextE(ptr noundef nonnull align 8 dereferenceable(32) %.0911.i.i) #28
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.s, align 8 ; 3 uses
  %i.t = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i, 4
  %i.u = icmp eq i64 %i.t, 0
  br i1 %i.u, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.v = inttoptr i64 %.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i to ptr
  br label %_ZNK5clang13CXXMethodDecl9getParentEv.exit.i.i

bb.i:                                             ; preds = %bb.g
  %i.w = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i, -5
  %i.x = inttoptr i64 %i.w to ptr
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !751
  br label %_ZNK5clang13CXXMethodDecl9getParentEv.exit.i.i

_ZNK5clang13CXXMethodDecl9getParentEv.exit.i.i:   ; preds = %bb.i, %bb.h
  %.0.i.i.i.i.i.i = phi ptr [ %i.v, %bb.h ], [ %i.y, %bb.i ]
  %i.z = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i.i, i64 64
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !852 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.aa, null
  br i1 %.not.i.i.i, label %_ZNK5clang13CXXRecordDecl8isLambdaEv.exit.thread.i.i, label %_ZNK5clang13CXXRecordDecl8isLambdaEv.exit.i.i

_ZNK5clang13CXXRecordDecl8isLambdaEv.exit.i.i:    ; preds = %_ZNK5clang13CXXMethodDecl9getParentEv.exit.i.i
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ac = load i32, ptr %i.ab, align 8
  %i.ad = and i32 %i.ac, 8388608
  %.not8.i.i = icmp eq i32 %i.ad, 0
  br i1 %.not8.i.i, label %_ZNK5clang13CXXRecordDecl8isLambdaEv.exit.thread.i.i, label %bb.l

_ZNK5clang13CXXRecordDecl8isLambdaEv.exit.thread.i.i: ; preds = %_ZNK5clang13CXXRecordDecl8isLambdaEv.exit.i.i, %_ZNK5clang13CXXMethodDecl9getParentEv.exit.i.i
  %i.ae = tail call noundef ptr @_ZN5clang4Decl19castFromDeclContextEPKNS_11DeclContextE(ptr noundef nonnull align 8 dereferenceable(32) %.0911.i.i) #28
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %.0.copyload.i.i.i.i.i.i.i.i.i.i14.i.i = load i64, ptr %i.af, align 8 ; 3 uses
  %i.ag = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i.i14.i.i, 4
  %i.ah = icmp eq i64 %i.ag, 0
  br i1 %i.ah, label %bb.j, label %bb.k

bb.j:                                             ; preds = %_ZNK5clang13CXXRecordDecl8isLambdaEv.exit.thread.i.i
  %i.ai = inttoptr i64 %.0.copyload.i.i.i.i.i.i.i.i.i.i14.i.i to ptr
  br label %bb.o

bb.k:                                             ; preds = %_ZNK5clang13CXXRecordDecl8isLambdaEv.exit.thread.i.i
  %i.aj = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i.i14.i.i, -5
  %i.ak = inttoptr i64 %i.aj to ptr
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !751
  br label %bb.o

bb.l:                                             ; preds = %_ZNK5clang13CXXRecordDecl8isLambdaEv.exit.i.i, %.lr.ph.i.i
  %i.am = tail call noundef ptr @_ZN5clang4Decl19castFromDeclContextEPKNS_11DeclContextE(ptr noundef nonnull align 8 dereferenceable(32) %.0911.i.i) #28
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  %.0.copyload.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.an, align 8 ; 3 uses
  %i.ao = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i.i, 4
  %i.ap = icmp eq i64 %i.ao, 0
  br i1 %i.ap, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.aq = inttoptr i64 %.0.copyload.i.i.i.i.i.i.i.i.i.i to ptr
  br label %_ZN5clang11DeclContext9getParentEv.exit.i.i

bb.n:                                             ; preds = %bb.l
  %i.ar = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i.i, -5
  %i.as = inttoptr i64 %i.ar to ptr
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !751
  br label %_ZN5clang11DeclContext9getParentEv.exit.i.i

_ZN5clang11DeclContext9getParentEv.exit.i.i:      ; preds = %bb.n, %bb.m
  %.0.i.i.i.i = phi ptr [ %i.aq, %bb.m ], [ %i.at, %bb.n ] ; 2 uses
  %.not.i.i = icmp eq ptr %.0.i.i.i.i, null
  br i1 %.not.i.i, label %.thread.i, label %.lr.ph.i.i, !llvm.loop !3196

bb.o:                                             ; preds = %bb.k, %bb.j
  %.0.i.i.i.i15.i.i = phi ptr [ %i.ai, %bb.j ], [ %i.al, %bb.k ] ; 3 uses
  %i.au = icmp eq ptr %.0.i.i.i.i15.i.i, null
  %i.av = getelementptr inbounds i8, ptr %.0.i.i.i.i15.i.i, i64 -64
  br i1 %i.au, label %.thread.i, label %"_ZZNK12_GLOBAL__N_113ResultBuilder20canCxxMethodBeCalledEPKN5clang13CXXMethodDeclENS1_8QualTypeEENK3$_0clEv.exit.i"

"_ZZNK12_GLOBAL__N_113ResultBuilder20canCxxMethodBeCalledEPKN5clang13CXXMethodDeclENS1_8QualTypeEENK3$_0clEv.exit.i": ; preds = %bb.o
  %i.aw = getelementptr inbounds nuw i8, ptr %.011, i64 72 ; 2 uses
  %i.ax = tail call noundef ptr @_ZN5clang4Decl19castFromDeclContextEPKNS_11DeclContextE(ptr noundef nonnull align 8 dereferenceable(32) %i.aw) #28
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  %.0.copyload.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.ay, align 8 ; 3 uses
  %i.az = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i.i.i, 4
  %i.ba = icmp eq i64 %i.az, 0
  br i1 %i.ba, label %bb.p, label %bb.q

bb.p:                                             ; preds = %"_ZZNK12_GLOBAL__N_113ResultBuilder20canCxxMethodBeCalledEPKN5clang13CXXMethodDeclENS1_8QualTypeEENK3$_0clEv.exit.i"
  %i.bb = inttoptr i64 %.0.copyload.i.i.i.i.i.i.i.i.i.i.i to ptr
  br label %_ZNK5clang13CXXMethodDecl9getParentEv.exit.i

bb.q:                                             ; preds = %"_ZZNK12_GLOBAL__N_113ResultBuilder20canCxxMethodBeCalledEPKN5clang13CXXMethodDeclENS1_8QualTypeEENK3$_0clEv.exit.i"
  %i.bc = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i.i.i, -5
  %i.bd = inttoptr i64 %i.bc to ptr
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !751
  br label %_ZNK5clang13CXXMethodDecl9getParentEv.exit.i

_ZNK5clang13CXXMethodDecl9getParentEv.exit.i:     ; preds = %bb.q, %bb.p
  %.0.i.i.i.i.i = phi ptr [ %i.bb, %bb.p ], [ %i.be, %bb.q ]
  %i.bf = icmp eq ptr %.0.i.i.i.i.i, %.0.i.i.i.i15.i.i
  br i1 %i.bf, label %_ZNK12_GLOBAL__N_113ResultBuilder20canCxxMethodBeCalledEPKN5clang13CXXMethodDeclENS1_8QualTypeE.exit, label %bb.r

bb.r:                                             ; preds = %_ZNK5clang13CXXMethodDecl9getParentEv.exit.i
  %i.bg = tail call noundef ptr @_ZN5clang4Decl19castFromDeclContextEPKNS_11DeclContextE(ptr noundef nonnull align 8 dereferenceable(32) %i.aw) #28
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  %.0.copyload.i.i.i.i.i.i.i.i.i.i19.i = load i64, ptr %i.bh, align 8 ; 3 uses
  %i.bi = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i.i19.i, 4
  %i.bj = icmp eq i64 %i.bi, 0
  br i1 %i.bj, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.bk = inttoptr i64 %.0.copyload.i.i.i.i.i.i.i.i.i.i19.i to ptr
  br label %bb.u

bb.t:                                             ; preds = %bb.r
  %i.bl = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i.i19.i, -5
  %i.bm = inttoptr i64 %i.bl to ptr
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !751
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
end_hunk_0
