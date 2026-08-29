Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/ComparisonCategories?download=true
inline.NumInlined: 961
inline.NumDeleted: 615
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZNK5clang22ComparisonCategoryInfo9ValueInfo16hasValidIntValueEv:bb.a
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !16   ; 3 uses
  %i.t = icmp eq i8 %i.o, 49
  br i1 %i.t, label %bb.d, label %_ZNK5clang4Type18getAsCXXRecordDeclEv.exit

bb.d:                                             ; preds = %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 28
  %i.v = load i32, ptr %i.u, align 4
  %i.w = and i32 %i.v, 127
  %i.x = add nsw i32 %i.w, -60
  %i.y = icmp ult i32 %i.x, 3
  br i1 %i.y, label %_ZNK5clang4Type18getAsCXXRecordDeclEv.exit, label %_ZNK5clang4Type27isIntegralOrEnumerationTypeEv.exit

_ZNK5clang4Type18getAsCXXRecordDeclEv.exit:       ; preds = %bb.d, %bb.c
  %i.z = tail call noundef ptr @_ZNK5clang13CXXRecordDecl13getDefinitionEv(ptr noundef nonnull align 8 dereferenceable(144) %i.s) ; 2 uses
  %.not.not.i.i = icmp eq ptr %i.z, null
  %spec.select = select i1 %.not.not.i.i, ptr %i.s, ptr %i.z ; 2 uses
  %i.aa = tail call ptr @_ZNK5clang10RecordDecl11field_beginEv(ptr noundef nonnull align 8 dereferenceable(128) %spec.select) #11 ; 2 uses
  %.not3.i.i = icmp eq ptr %i.aa, null
  br i1 %.not3.i.i, label %_ZNK5clang4Type27isIntegralOrEnumerationTypeEv.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZNK5clang4Type18getAsCXXRecordDeclEv.exit, %_ZN5clang11DeclContext22specific_decl_iteratorINS_9FieldDeclEEppEv.exit.i.i
  %.05.i.i = phi i32 [ %i.am, %_ZN5clang11DeclContext22specific_decl_iteratorINS_9FieldDeclEEppEv.exit.i.i ], [ 0, %_ZNK5clang4Type18getAsCXXRecordDeclEv.exit ] ; 2 uses
  %.sroa.02.04.i.i = phi ptr [ %.sroa.02.2.i.i, %_ZN5clang11DeclContext22specific_decl_iteratorINS_9FieldDeclEEppEv.exit.i.i ], [ %i.aa, %_ZNK5clang4Type18getAsCXXRecordDeclEv.exit ]
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.02.04.i.i, i64 8
  %.0.copyload.i.i.i.i.i.i.i.i = load i64, ptr %i.ab, align 8
  %i.ac = and i64 %.0.copyload.i.i.i.i.i.i.i.i, -8 ; 2 uses
  %i.ad = inttoptr i64 %i.ac to ptr               ; 2 uses
  %.not1.i.i.i.i = icmp eq i64 %i.ac, 0
  br i1 %.not1.i.i.i.i, label %_ZN5clang11DeclContext22specific_decl_iteratorINS_9FieldDeclEEppEv.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i, %bb.e
  %.sroa.02.1.i.i = phi ptr [ %i.al, %bb.e ], [ %i.ad, %.lr.ph.i.i ] ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.02.1.i.i, i64 28
  %i.af = load i32, ptr %i.ae, align 4
  %i.ag = and i32 %i.af, 127
  %i.ah = add nsw i32 %i.ag, -50
  %i.ai = icmp ult i32 %i.ah, 3
  br i1 %i.ai, label %_ZN5clang11DeclContext22specific_decl_iteratorINS_9FieldDeclEEppEv.exit.i.i, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i.i.i.i
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.02.1.i.i, i64 8
  %.0.copyload.i.i.i.i.i.i.i.i.i = load i64, ptr %i.aj, align 8
  %i.ak = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i, -8 ; 2 uses
  %i.al = inttoptr i64 %i.ak to ptr               ; 2 uses
  %.not.i.i.i.i = icmp eq i64 %i.ak, 0
  br i1 %.not.i.i.i.i, label %_ZN5clang11DeclContext22specific_decl_iteratorINS_9FieldDeclEEppEv.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !27

_ZN5clang11DeclContext22specific_decl_iteratorINS_9FieldDeclEEppEv.exit.i.i: ; preds = %bb.e, %.lr.ph.i.i.i.i, %.lr.ph.i.i
  %.sroa.02.2.i.i = phi ptr [ %i.ad, %.lr.ph.i.i ], [ %i.al, %bb.e ], [ %.sroa.02.1.i.i, %.lr.ph.i.i.i.i ] ; 2 uses
  %i.am = add i32 %.05.i.i, 1
  %.not.i.i = icmp eq ptr %.sroa.02.2.i.i, null
  br i1 %.not.i.i, label %_ZNK5clang10RecordDecl12getNumFieldsEv.exit, label %.lr.ph.i.i, !llvm.loop !29

_ZNK5clang10RecordDecl12getNumFieldsEv.exit:      ; preds = %_ZN5clang11DeclContext22specific_decl_iteratorINS_9FieldDeclEEppEv.exit.i.i
  %.not6 = icmp eq i32 %.05.i.i, 0
  br i1 %.not6, label %bb.f, label %_ZNK5clang4Type27isIntegralOrEnumerationTypeEv.exit

bb.f:                                             ; preds = %_ZNK5clang10RecordDecl12getNumFieldsEv.exit
  %i.an = tail call ptr @_ZNK5clang10RecordDecl11field_beginEv(ptr noundef nonnull align 8 dereferenceable(128) %spec.select) #11
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 48
  %.sroa.0.0.copyload.i7 = load i64, ptr %i.ao, align 8, !tbaa !15
  %i.ap = and i64 %.sroa.0.0.copyload.i7, -16
  %i.aq = inttoptr i64 %i.ap to ptr
  %i.ar = load ptr, ptr %i.aq, align 16, !tbaa !8
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %.sroa.0.0.copyload.i.i.i38.i = load i64, ptr %i.as, align 8, !tbaa !15 ; 2 uses
  %i.at = and i64 %.sroa.0.0.copyload.i.i.i38.i, -16
  %i.au = inttoptr i64 %i.at to ptr
  %i.av = load ptr, ptr %i.au, align 16, !tbaa !8 ; 4 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  %i.ax = load i8, ptr %i.aw, align 16            ; 2 uses
  %i.ay = icmp ne i8 %i.ax, 13
  %.not.not3039.i = icmp eq ptr %i.av, null
  %.not.not40.i = or i1 %.not.not3039.i, %i.ay
  br i1 %.not.not40.i, label %.lr.ph.i.preheader, label %tailrecurse._crit_edge.i

.lr.ph.i.preheader:                               ; preds = %bb.f
  %.not.i23 = icmp eq i8 %i.ax, 47
  br i1 %.not.i23, label %.lr.ph.i._crit_edge, label %.lr.ph

tailrecurse._crit_edge.i:                         ; preds = %tailrecurse.i, %bb.f
  %.lcssa.i = phi ptr [ %i.av, %bb.f ], [ %i.ca, %tailrecurse.i ]
  %i.az = getelementptr inbounds nuw i8, ptr %.lcssa.i, i64 16
  %i.ba = load i32, ptr %i.az, align 16
  %i.bb = lshr i32 %i.ba, 19
  %i.bc = and i32 %i.bb, 1023
  %i.bd = add nsw i32 %i.bc, -453
  %spec.select.i.i9 = icmp ult i32 %i.bd, 20
  br label %_ZNK5clang4Type27isIntegralOrEnumerationTypeEv.exit

.lr.ph.i:                                         ; preds = %tailrecurse.i
  %.not.i = icmp eq i8 %i.cc, 47
  br i1 %.not.i, label %.lr.ph.i._crit_edge, label %.lr.ph

.lr.ph.i._crit_edge:                              ; preds = %.lr.ph.i, %.lr.ph.i.preheader
  %.lcssa = phi ptr [ %i.av, %.lr.ph.i.preheader ], [ %i.ca, %.lr.ph.i ]
  %i.be = getelementptr inbounds nuw i8, ptr %.lcssa, i64 24
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !16 ; 2 uses
  %i.bg = tail call noundef ptr @_ZNK5clang7TagDecl13getDefinitionEv(ptr noundef nonnull align 8 dereferenceable(164) %i.bf) #11, !inline_history !22 ; 2 uses
  %.not.not.i.i11 = icmp eq ptr %i.bg, null
  %..i.i = select i1 %.not.not.i.i11, ptr %i.bf, ptr %i.bg ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %..i.i, i64 74
  %i.bi = load i8, ptr %i.bh, align 2
  %i.bj = trunc i8 %i.bi to i1
  %i.bk = getelementptr inbounds nuw i8, ptr %..i.i, i64 128
  %.0.copyload.i.i.i.i.i.i = load i64, ptr %i.bk, align 8
  %i.bl = icmp ugt i64 %.0.copyload.i.i.i.i.i.i, 7
  %i.bm = select i1 %i.bj, i1 true, i1 %i.bl
  br label %_ZNK5clang4Type27isIntegralOrEnumerationTypeEv.exit

.lr.ph:                                           ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %.sroa.0.0.copyload.i.i.i.i.i24 = phi i64 [ %.sroa.0.0.copyload.i.i.i.i10, %.lr.ph.i ], [ %.sroa.0.0.copyload.i.i.i38.i, %.lr.ph.i.preheader ]
  %i.bn = and i64 %.sroa.0.0.copyload.i.i.i.i.i24, -16
  %i.bo = inttoptr i64 %i.bn to ptr
  %i.bp = load ptr, ptr %i.bo, align 16, !tbaa !8 ; 3 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 16
  %i.br = load i8, ptr %i.bq, align 16            ; 2 uses
  %i.bs = icmp ne i8 %i.br, 35
  %.not17.not32.i = icmp eq ptr %i.bp, null
  %.not17.not.i = or i1 %.not17.not32.i, %i.bs
  br i1 %.not17.not.i, label %bb.g, label %tailrecurse.i

tailrecurse.i:                                    ; preds = %.lr.ph
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bp, i64 32
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.bt, align 16, !tbaa !15
  %i.bu = and i64 %.sroa.0.0.copyload.i.i, -16
  %i.bv = inttoptr i64 %i.bu to ptr
  %i.bw = load ptr, ptr %i.bv, align 16, !tbaa !8
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  %.sroa.0.0.copyload.i.i.i.i10 = load i64, ptr %i.bx, align 8, !tbaa !15 ; 2 uses
  %i.by = and i64 %.sroa.0.0.copyload.i.i.i.i10, -16
  %i.bz = inttoptr i64 %i.by to ptr
  %i.ca = load ptr, ptr %i.bz, align 16, !tbaa !8 ; 4 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 16
  %i.cc = load i8, ptr %i.cb, align 16            ; 2 uses
  %i.cd = icmp ne i8 %i.cc, 13
  %.not.not30.i = icmp eq ptr %i.ca, null
  %.not.not.i = or i1 %.not.not30.i, %i.cd
  br i1 %.not.not.i, label %.lr.ph.i, label %tailrecurse._crit_edge.i

bb.g:                                             ; preds = %.lr.ph
  %i.ce = icmp eq i8 %i.br, 10
  br label %_ZNK5clang4Type27isIntegralOrEnumerationTypeEv.exit

_ZNK5clang4Type27isIntegralOrEnumerationTypeEv.exit: ; preds = %_ZNK5clang4Type18getAsCXXRecordDeclEv.exit, %bb.b, %bb.d, %_ZNK5clang10RecordDecl12getNumFieldsEv.exit, %bb.g, %.lr.ph.i._crit_edge, %tailrecurse._crit_edge.i, %bb.a
  %.1 = phi i1 [ false, %bb.a ], [ %i.bm, %.lr.ph.i._crit_edge ], [ %i.ce, %bb.g ], [ %spec.select.i.i9, %tailrecurse._crit_edge.i ], [ false, %bb.b ], [ false, %_ZNK5clang10RecordDecl12getNumFieldsEv.exit ], [ false, %bb.d ], [ false, %_ZNK5clang4Type18getAsCXXRecordDeclEv.exit ]
  ret i1 %.1
}

declare noundef zeroext i1 @_ZNK5clang7VarDecl29isUsableInConstantExpressionsERKNS_10ASTContextE(ptr noundef nonnull align 8 dereferenceable(100), ptr noundef nonnull align 8 dereferenceable(23904)) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare noundef nonnull align 8 dereferenceable(23904) ptr @_ZNK5clang4Decl13getASTContextEv(ptr noundef nonnull align 8 dereferenceable(33)) local_unnamed_addr #3

declare ptr @_ZNK5clang10RecordDecl11field_beginEv(ptr noundef nonnull align 8 dereferenceable(128)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZNK5clang22ComparisonCategoryInfo9ValueInfo11getIntValueEv(ptr dead_on_unwind noalias writable sret(%"class.llvm::APSInt") align 8 initializes((8, 12)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !23
  %i.c = tail call noundef ptr @_ZNK5clang7VarDecl13evaluateValueEv(ptr noundef nonnull align 8 dereferenceable(100) %i.b) #11 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !30
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.g = load i32, ptr %i.f, align 8, !tbaa !33
  %i.h = zext i32 %i.g to i64
  %i.i = getelementptr inbounds nuw [56 x i8], ptr %i.e, i64 %i.h ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.m = load i32, ptr %i.l, align 8, !tbaa !34   ; 2 uses
  store i32 %i.m, ptr %i.k, align 8, !tbaa !34
  %i.n = icmp ult i32 %i.m, 65
  br i1 %i.n, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.o = load i64, ptr %i.j, align 8, !tbaa !15
  store i64 %i.o, ptr %0, align 8, !tbaa !15
  br label %_ZN4llvm6APSIntC2ERKS0_.exit

bb.c:                                             ; preds = %bb.a
  tail call void @_ZN4llvm5APInt12initSlowCaseERKS0_(ptr noundef nonnull align 8 dereferenceable(13) %0, ptr noundef nonnull align 8 dereferenceable(13) %i.j) #11
  br label %_ZN4llvm6APSIntC2ERKS0_.exit

_ZN4llvm6APSIntC2ERKS0_.exit:                     ; preds = %bb.b, %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.q = getelementptr inbounds nuw i8, ptr %i.i, i64 20
  %i.r = load i8, ptr %i.q, align 4, !tbaa !36, !range !39, !noundef !40
  store i8 %i.r, ptr %i.p, align 4, !tbaa !36
  ret void
}

declare noundef ptr @_ZNK5clang7VarDecl13evaluateValueEv(ptr noundef nonnull align 8 dereferenceable(100)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef ptr @_ZNK5clang22ComparisonCategoryInfo15lookupValueInfoENS_24ComparisonCategoryResultE(ptr noundef nonnull align 8 dereferenceable(113) %0, i8 noundef zeroext %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca i8, align 1                       ; 2 uses
  %i.c = alloca ptr, align 8                      ; 4 uses
  store i8 %1, ptr %i.b, align 1, !tbaa !41
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %.val = load ptr, ptr %i.d, align 8, !tbaa !42  ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %.val11 = load i32, ptr %i.e, align 8, !tbaa !44 ; 3 uses
  %i.f = zext i32 %.val11 to i64                  ; 3 uses
  %.idx3.i = shl nuw nsw i64 %i.f, 4              ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.val, i64 %.idx3.i
  %i.h = lshr i64 %i.f, 2                         ; 2 uses
  %.not.i = icmp eq i64 %i.h, 0
  br i1 %.not.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.a
  %i.i = and i64 %.idx3.i, 68719476672
  %scevgep.i.i.i.i = getelementptr i8, ptr %.val, i64 %i.i
  br label %bb.b

bb.b:                                             ; preds = %bb.f, %.lr.ph.i.i.i.i
  %.051.i.i.i.i = phi i64 [ %i.h, %.lr.ph.i.i.i.i ], [ %i.r, %bb.f ] ; 2 uses
  %.02950.i.i.i.i = phi ptr [ %.val, %.lr.ph.i.i.i.i ], [ %i.q, %bb.f ] ; 9 uses
  %.029.val39.i.i.i.i = load i8, ptr %.02950.i.i.i.i, align 8, !tbaa !45
  %i.j = icmp eq i8 %.029.val39.i.i.i.i, %1
  br i1 %i.j, label %"_ZN4llvm7find_ifIRNS_11SmallVectorIN5clang22ComparisonCategoryInfo9ValueInfoELj5EEEZNKS3_15lookupValueInfoENS2_24ComparisonCategoryResultEE3$_0EEDaOT_T0_.exit", label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %.02950.i.i.i.i, i64 16
  %.val37.i.i.i.i = load i8, ptr %i.k, align 8, !tbaa !45
  %i.l = icmp eq i8 %.val37.i.i.i.i, %1
  br i1 %i.l, label %"_ZN4llvm7find_ifIRNS_11SmallVectorIN5clang22ComparisonCategoryInfo9ValueInfoELj5EEEZNKS3_15lookupValueInfoENS2_24ComparisonCategoryResultEE3$_0EEDaOT_T0_.exit.loopexit.split.loop.exit", label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %.02950.i.i.i.i, i64 32
  %.val35.i.i.i.i = load i8, ptr %i.m, align 8, !tbaa !45
  %i.n = icmp eq i8 %.val35.i.i.i.i, %1
  br i1 %i.n, label %"_ZN4llvm7find_ifIRNS_11SmallVectorIN5clang22ComparisonCategoryInfo9ValueInfoELj5EEEZNKS3_15lookupValueInfoENS2_24ComparisonCategoryResultEE3$_0EEDaOT_T0_.exit.loopexit.split.loop.exit52", label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %.02950.i.i.i.i, i64 48
  %.val33.i.i.i.i = load i8, ptr %i.o, align 8, !tbaa !45
  %i.p = icmp eq i8 %.val33.i.i.i.i, %1
  br i1 %i.p, label %"_ZN4llvm7find_ifIRNS_11SmallVectorIN5clang22ComparisonCategoryInfo9ValueInfoELj5EEEZNKS3_15lookupValueInfoENS2_24ComparisonCategoryResultEE3$_0EEDaOT_T0_.exit.loopexit.split.loop.exit54", label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.q = getelementptr inbounds nuw i8, ptr %.02950.i.i.i.i, i64 64
  %i.r = add nsw i64 %.051.i.i.i.i, -1
  %i.s = icmp sgt i64 %.051.i.i.i.i, 1
  br i1 %i.s, label %bb.b, label %._crit_edge.loopexit.i.i.i.i, !llvm.loop !46

._crit_edge.loopexit.i.i.i.i:                     ; preds = %bb.f
  %i.t = and i32 %.val11, 3
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %._crit_edge.loopexit.i.i.i.i, %bb.a
  %.pre-phi60.i.i.i.i = phi i32 [ %i.t, %._crit_edge.loopexit.i.i.i.i ], [ %.val11, %bb.a ]
  %.029.lcssa.i.i.i.i = phi ptr [ %scevgep.i.i.i.i, %._crit_edge.loopexit.i.i.i.i ], [ %.val, %bb.a ] ; 5 uses
  switch i32 %.pre-phi60.i.i.i.i, label %bb.j [
    i32 3, label %bb.g
    i32 2, label %._crit_edge._crit_edge.i.i.i.i
    i32 1, label %._crit_edge._crit_edge57.i.i.i.i
  ]

bb.g:                                             ; preds = %._crit_edge.i.i.i.i
  %.029.val.i.i.i.i = load i8, ptr %.029.lcssa.i.i.i.i, align 8, !tbaa !45
  %i.u = icmp eq i8 %.029.val.i.i.i.i, %1
  br i1 %i.u, label %"_ZN4llvm7find_ifIRNS_11SmallVectorIN5clang22ComparisonCategoryInfo9ValueInfoELj5EEEZNKS3_15lookupValueInfoENS2_24ComparisonCategoryResultEE3$_0EEDaOT_T0_.exit", label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.v = getelementptr inbounds nuw i8, ptr %.029.lcssa.i.i.i.i, i64 16
  br label %._crit_edge._crit_edge.i.i.i.i

._crit_edge._crit_edge.i.i.i.i:                   ; preds = %bb.h, %._crit_edge.i.i.i.i
  %.1.i.i.i.i = phi ptr [ %i.v, %bb.h ], [ %.029.lcssa.i.i.i.i, %._crit_edge.i.i.i.i ] ; 3 uses
  %.1.val.i.i.i.i = load i8, ptr %.1.i.i.i.i, align 8, !tbaa !45
  %i.w = icmp eq i8 %.1.val.i.i.i.i, %1
  br i1 %i.w, label %"_ZN4llvm7find_ifIRNS_11SmallVectorIN5clang22ComparisonCategoryInfo9ValueInfoELj5EEEZNKS3_15lookupValueInfoENS2_24ComparisonCategoryResultEE3$_0EEDaOT_T0_.exit", label %bb.i

bb.i:                                             ; preds = %._crit_edge._crit_edge.i.i.i.i
  %i.x = getelementptr inbounds nuw i8, ptr %.1.i.i.i.i, i64 16
  br label %._crit_edge._crit_edge57.i.i.i.i

._crit_edge._crit_edge57.i.i.i.i:                 ; preds = %bb.i, %._crit_edge.i.i.i.i
  %.2.i.i.i.i = phi ptr [ %i.x, %bb.i ], [ %.029.lcssa.i.i.i.i, %._crit_edge.i.i.i.i ] ; 2 uses
  %.2.val.i.i.i.i = load i8, ptr %.2.i.i.i.i, align 8, !tbaa !45
  %i.y = icmp eq i8 %.2.val.i.i.i.i, %1
  br i1 %i.y, label %"_ZN4llvm7find_ifIRNS_11SmallVectorIN5clang22ComparisonCategoryInfo9ValueInfoELj5EEEZNKS3_15lookupValueInfoENS2_24ComparisonCategoryResultEE3$_0EEDaOT_T0_.exit", label %bb.j

bb.j:                                             ; preds = %._crit_edge._crit_edge57.i.i.i.i, %._crit_edge.i.i.i.i
  br label %"_ZN4llvm7find_ifIRNS_11SmallVectorIN5clang22ComparisonCategoryInfo9ValueInfoELj5EEEZNKS3_15lookupValueInfoENS2_24ComparisonCategoryResultEE3$_0EEDaOT_T0_.exit"

"_ZN4llvm7find_ifIRNS_11SmallVectorIN5clang22ComparisonCategoryInfo9ValueInfoELj5EEEZNKS3_15lookupValueInfoENS2_24ComparisonCategoryResultEE3$_0EEDaOT_T0_.exit.loopexit.split.loop.exit": ; preds = %bb.c
  %i.z = getelementptr inbounds nuw i8, ptr %.02950.i.i.i.i, i64 16
  br label %"_ZN4llvm7find_ifIRNS_11SmallVectorIN5clang22ComparisonCategoryInfo9ValueInfoELj5EEEZNKS3_15lookupValueInfoENS2_24ComparisonCategoryResultEE3$_0EEDaOT_T0_.exit"

"_ZN4llvm7find_ifIRNS_11SmallVectorIN5clang22ComparisonCategoryInfo9ValueInfoELj5EEEZNKS3_15lookupValueInfoENS2_24ComparisonCategoryResultEE3$_0EEDaOT_T0_.exit.loopexit.split.loop.exit52": ; preds = %bb.d
  %i.aa = getelementptr inbounds nuw i8, ptr %.02950.i.i.i.i, i64 32
  br label %"_ZN4llvm7find_ifIRNS_11SmallVectorIN5clang22ComparisonCategoryInfo9ValueInfoELj5EEEZNKS3_15lookupValueInfoENS2_24ComparisonCategoryResultEE3$_0EEDaOT_T0_.exit"

"_ZN4llvm7find_ifIRNS_11SmallVectorIN5clang22ComparisonCategoryInfo9ValueInfoELj5EEEZNKS3_15lookupValueInfoENS2_24ComparisonCategoryResultEE3$_0EEDaOT_T0_.exit.loopexit.split.loop.exit54": ; preds = %bb.e
  %i.ab = getelementptr inbounds nuw i8, ptr %.02950.i.i.i.i, i64 48
  br label %"_ZN4llvm7find_ifIRNS_11SmallVectorIN5clang22ComparisonCategoryInfo9ValueInfoELj5EEEZNKS3_15lookupValueInfoENS2_24ComparisonCategoryResultEE3$_0EEDaOT_T0_.exit"

"_ZN4llvm7find_ifIRNS_11SmallVectorIN5clang22ComparisonCategoryInfo9ValueInfoELj5EEEZNKS3_15lookupValueInfoENS2_24ComparisonCategoryResultEE3$_0EEDaOT_T0_.exit": ; preds = %bb.b, %"_ZN4llvm7find_ifIRNS_11SmallVectorIN5clang22ComparisonCategoryInfo9ValueInfoELj5EEEZNKS3_15lookupValueInfoENS2_24ComparisonCategoryResultEE3$_0EEDaOT_T0_.exit.loopexit.split.loop.exit", %"_ZN4llvm7find_ifIRNS_11SmallVectorIN5clang22ComparisonCategoryInfo9ValueInfoELj5EEEZNKS3_15lookupValueInfoENS2_24ComparisonCategoryResultEE3$_0EEDaOT_T0_.exit.loopexit.split.loop.exit52", %"_ZN4llvm7find_ifIRNS_11SmallVectorIN5clang22ComparisonCategoryInfo9ValueInfoELj5EEEZNKS3_15lookupValueInfoENS2_24ComparisonCategoryResultEE3$_0EEDaOT_T0_.exit.loopexit.split.loop.exit54", %bb.g, %._crit_edge._crit_edge.i.i.i.i, %._crit_edge._crit_edge57.i.i.i.i, %bb.j
  %.028.i.i.i.i = phi ptr [ %.1.i.i.i.i, %._crit_edge._crit_edge.i.i.i.i ], [ %i.g, %bb.j ], [ %.2.i.i.i.i, %._crit_edge._crit_edge57.i.i.i.i ], [ %.029.lcssa.i.i.i.i, %bb.g ], [ %i.ab, %"_ZN4llvm7find_ifIRNS_11SmallVectorIN5clang22ComparisonCategoryInfo9ValueInfoELj5EEEZNKS3_15lookupValueInfoENS2_24ComparisonCategoryResultEE3$_0EEDaOT_T0_.exit.loopexit.split.loop.exit54" ], [ %i.z, %"_ZN4llvm7find_ifIRNS_11SmallVectorIN5clang22ComparisonCategoryInfo9ValueInfoELj5EEEZNKS3_15lookupValueInfoENS2_24ComparisonCategoryResultEE3$_0EEDaOT_T0_.exit.loopexit.split.loop.exit" ], [ %i.aa, %"_ZN4llvm7find_ifIRNS_11SmallVectorIN5clang22ComparisonCategoryInfo9ValueInfoELj5EEEZNKS3_15lookupValueInfoENS2_24ComparisonCategoryResultEE3$_0EEDaOT_T0_.exit.loopexit.split.loop.exit52" ], [ %.02950.i.i.i.i, %bb.b ] ; 2 uses
  %i.ac = getelementptr inbounds nuw [16 x i8], ptr %.val, i64 %i.f
  %.not = icmp eq ptr %.028.i.i.i.i, %i.ac
  br i1 %.not, label %switch.lookup, label %.critedge

switch.lookup:                                    ; preds = %"_ZN4llvm7find_ifIRNS_11SmallVectorIN5clang22ComparisonCategoryInfo9ValueInfoELj5EEEZNKS3_15lookupValueInfoENS2_24ComparisonCategoryResultEE3$_0EEDaOT_T0_.exit"
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !47 ; 2 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !57
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 32
  %i.ah = load ptr, ptr %i.ag, align 8
  %i.ai = tail call noundef ptr %i.ah(ptr noundef nonnull align 8 dereferenceable(144) %i.ae) #11, !inline_history !59
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 64
  %i.ak = load ptr, ptr %0, align 8, !tbaa !60, !nonnull !40, !align !61
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 17768
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !62, !nonnull !40, !align !61 ; 4 uses
  %i.an = zext nneg i8 %1 to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._ZN5clang20ComparisonCategories15getResultStringENS_24ComparisonCategoryResultE, i64 %i.an
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64       ; 2 uses
  %i.ao = zext nneg i8 %1 to i64
  %switch.gep64 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZN5clang20ComparisonCategories15getResultStringENS_24ComparisonCategoryResultE.8, i64 %i.ao
  %switch.load65 = load ptr, ptr %switch.gep64, align 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  store ptr null, ptr %i.a, align 8, !tbaa !458
  %i.ap = call { ptr, i8 } @_ZN4llvm9StringMapIPN5clang14IdentifierInfoENS_20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EEEE11try_emplaceIJDnEEESt4pairINS_17StringMapIterBaseIS3_Lb0EEEbENS_9StringRefEDpOT_(ptr noundef nonnull align 8 dereferenceable(112) %i.am, ptr nonnull %switch.load65, i64 %switch.ext, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  %.fca.0.extract.i = extractvalue { ptr, i8 } %i.ap, 0
  %i.aq = load ptr, ptr %.fca.0.extract.i, align 8, !tbaa !460 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 8 ; 3 uses
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !462 ; 2 uses
  %.not.i13 = icmp eq ptr %i.as, null
  br i1 %.not.i13, label %bb.k, label %_ZN5clang15IdentifierTable3getEN4llvm9StringRefE.exit

bb.k:                                             ; preds = %switch.lookup
  %i.at = getelementptr inbounds nuw i8, ptr %i.am, i64 104
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !463 ; 3 uses
  %.not22.i = icmp eq ptr %i.au, null
  br i1 %.not22.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !57
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  %i.ax = load ptr, ptr %i.aw, align 8
  %i.ay = call noundef ptr %i.ax(ptr noundef nonnull align 8 dereferenceable(8) %i.au, ptr nonnull %switch.load65, i64 %switch.ext) #11, !inline_history !468 ; 3 uses
  store ptr %i.ay, ptr %i.ar, align 8, !tbaa !462
  %.not23.i = icmp eq ptr %i.ay, null
  br i1 %.not23.i, label %bb.m, label %_ZN5clang15IdentifierTable3getEN4llvm9StringRefE.exit

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.az = getelementptr inbounds nuw i8, ptr %i.am, i64 24 ; 3 uses
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !469 ; 2 uses
  %i.bb = ptrtoint ptr %i.ba to i64
  %i.bc = add i64 %i.bb, 24                       ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.am, i64 32
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !470
  %i.bf = icmp ult i64 %i.bc, %i.be
  br i1 %i.bf, label %bb.n, label %bb.o, !prof !471

bb.n:                                             ; preds = %bb.m
  %i.bg = inttoptr i64 %i.bc to ptr
  store ptr %i.bg, ptr %i.az, align 8, !tbaa !469
  br label %_ZN4llvm13AllocatorBaseINS_20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EEEE8AllocateIN5clang14IdentifierInfoEEEPT_m.exit.i

bb.o:                                             ; preds = %bb.m
  %i.bh = call noundef nonnull ptr @_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE12AllocateSlowEmmNS_5AlignE(ptr noundef nonnull align 8 dereferenceable(80) %i.az, i64 noundef 24, i64 noundef 24, i8 3)
  br label %_ZN4llvm13AllocatorBaseINS_20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EEEE8AllocateIN5clang14IdentifierInfoEEEPT_m.exit.i

_ZN4llvm13AllocatorBaseINS_20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EEEE8AllocateIN5clang14IdentifierInfoEEEPT_m.exit.i: ; preds = %bb.o, %bb.n
  %.0.i.i.i.i.i = phi ptr [ %i.ba, %bb.n ], [ %i.bh, %bb.o ] ; 6 uses
  %i.bi = load i64, ptr %.0.i.i.i.i.i, align 8
  %i.bj = and i64 %i.bi, -17592186044416
  %i.bk = or disjoint i64 %i.bj, 33553413
  store i64 %i.bk, ptr %.0.i.i.i.i.i, align 8
  %i.bl = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i, i64 8
  store i64 0, ptr %i.bl, align 8
  store ptr %.0.i.i.i.i.i, ptr %i.ar, align 8, !tbaa !462
  %i.bm = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i, i64 16
  store ptr %i.aq, ptr %i.bm, align 8, !tbaa !472
  br label %_ZN5clang15IdentifierTable3getEN4llvm9StringRefE.exit

_ZN5clang15IdentifierTable3getEN4llvm9StringRefE.exit: ; preds = %switch.lookup, %bb.l, %_ZN4llvm13AllocatorBaseINS_20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EEEE8AllocateIN5clang14IdentifierInfoEEEPT_m.exit.i
  %.0.i = phi ptr [ %.0.i.i.i.i.i, %_ZN4llvm13AllocatorBaseINS_20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EEEE8AllocateIN5clang14IdentifierInfoEEEPT_m.exit.i ], [ %i.as, %switch.lookup ], [ %i.ay, %bb.l ]
  %i.bn = ptrtoint ptr %.0.i to i64
  %i.bo = call i64 @_ZNK5clang11DeclContext6lookupENS_15DeclarationNameE(ptr noundef nonnull align 8 dereferenceable(32) %i.aj, i64 %i.bn) #11 ; 3 uses
  %i.bp = icmp ult i64 %i.bo, 8
  br i1 %i.bp, label %.critedge, label %bb.p

bb.p:                                             ; preds = %_ZN5clang15IdentifierTable3getEN4llvm9StringRefE.exit
  %i.bq = and i64 %i.bo, 4
  %.not.i.i.i.i.i = icmp eq i64 %i.bq, 0
  %i.br = and i64 %i.bo, -5
  %i.bs = inttoptr i64 %i.br to ptr               ; 3 uses
  br i1 %.not.i.i.i.i.i, label %_ZNK5clang23DeclContextLookupResult5frontEv.exit, label %_ZNK5clang23DeclContextLookupResult5frontEv.exit.thread

_ZNK5clang23DeclContextLookupResult5frontEv.exit: ; preds = %bb.p
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 28
  %i.bu = load i32, ptr %i.bt, align 4
  %i.bv = and i32 %i.bu, 127
  %i.bw = add nsw i32 %i.bv, -41
  %i.bx = icmp ult i32 %i.bw, 7
  br i1 %i.bx, label %_ZNK5clang23DeclContextLookupResult5frontEv.exit19, label %.critedge

_ZNK5clang23DeclContextLookupResult5frontEv.exit.thread: ; preds = %bb.p
  %i.by = load ptr, ptr %i.bs, align 8, !tbaa !475 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 28
  %i.ca = load i32, ptr %i.bz, align 4
  %i.cb = and i32 %i.ca, 127
  %i.cc = add nsw i32 %i.cb, -41
  %i.cd = icmp ult i32 %i.cc, 7
  br i1 %i.cd, label %_ZNK5clang23DeclContextLookupResult5frontEv.exit19, label %.critedge

_ZNK5clang23DeclContextLookupResult5frontEv.exit19: ; preds = %_ZNK5clang23DeclContextLookupResult5frontEv.exit.thread, %_ZNK5clang23DeclContextLookupResult5frontEv.exit
  %i.ce = phi ptr [ %i.bs, %_ZNK5clang23DeclContextLookupResult5frontEv.exit ], [ %i.by, %_ZNK5clang23DeclContextLookupResult5frontEv.exit.thread ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #11
  store ptr %i.ce, ptr %i.c, align 8, !tbaa !483
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 48
  %.sroa.0.0.copyload.i = load i64, ptr %i.cf, align 8, !tbaa !15
  %i.cg = and i64 %.sroa.0.0.copyload.i, -16
  %i.ch = inttoptr i64 %i.cg to ptr
  %i.ci = load ptr, ptr %i.ch, align 16, !tbaa !8
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 8
  %.sroa.0.0.copyload.i.i.i.i = load i64, ptr %i.cj, align 8, !tbaa !15
  %i.ck = and i64 %.sroa.0.0.copyload.i.i.i.i, -16
  %i.cl = inttoptr i64 %i.ck to ptr
  %i.cm = load ptr, ptr %i.cl, align 16, !tbaa !8 ; 3 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 16
  %i.co = load i8, ptr %i.cn, align 16            ; 3 uses
  %i.cp = add i8 %i.co, -47
  %switch.i.i.i.i.i.i.i.i.i.i = icmp ult i8 %i.cp, 3
  %.not.i7.i = icmp ne ptr %i.cm, null
  %.not.i.not8.i = and i1 %.not.i7.i, %switch.i.i.i.i.i.i.i.i.i.i
  %i.cq = and i8 %i.co, 62
  %spec.select.i.i.i = icmp eq i8 %i.cq, 48
  %or.cond.i = and i1 %spec.select.i.i.i, %.not.i.not8.i
  br i1 %or.cond.i, label %bb.q, label %_ZNK5clang4Type18getAsCXXRecordDeclEv.exit.thread

bb.q:                                             ; preds = %_ZNK5clang23DeclContextLookupResult5frontEv.exit19
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cm, i64 24
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !16 ; 3 uses
  %i.ct = icmp eq i8 %i.co, 49
  br i1 %i.ct, label %bb.r, label %_ZNK5clang4Type18getAsCXXRecordDeclEv.exit

bb.r:                                             ; preds = %bb.q
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cs, i64 28
  %i.cv = load i32, ptr %i.cu, align 4
  %i.cw = and i32 %i.cv, 127
  %i.cx = add nsw i32 %i.cw, -60
  %i.cy = icmp ult i32 %i.cx, 3
  br i1 %i.cy, label %_ZNK5clang4Type18getAsCXXRecordDeclEv.exit, label %_ZNK5clang4Type18getAsCXXRecordDeclEv.exit.thread

_ZNK5clang4Type18getAsCXXRecordDeclEv.exit:       ; preds = %bb.r, %bb.q
  %i.cz = call noundef ptr @_ZNK5clang13CXXRecordDecl13getDefinitionEv(ptr noundef nonnull align 8 dereferenceable(144) %i.cs) ; 2 uses
  %.not.not.i.i20 = icmp eq ptr %i.cz, null
  %spec.select = select i1 %.not.not.i.i20, ptr %i.cs, ptr %i.cz ; 2 uses
  %i.da = load ptr, ptr %spec.select, align 8, !tbaa !57
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 32
  %i.dc = load ptr, ptr %i.db, align 8
  %i.dd = call noundef ptr %i.dc(ptr noundef nonnull align 8 dereferenceable(144) %spec.select) #11, !inline_history !59
  %i.de = load ptr, ptr %i.ad, align 8, !tbaa !47 ; 2 uses
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !57
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 32
  %i.dh = load ptr, ptr %i.dg, align 8
  %i.di = call noundef ptr %i.dh(ptr noundef nonnull align 8 dereferenceable(144) %i.de) #11, !inline_history !59
  %.not10 = icmp eq ptr %i.dd, %i.di
  br i1 %.not10, label %bb.s, label %_ZNK5clang4Type18getAsCXXRecordDeclEv.exit.thread

bb.s:                                             ; preds = %_ZNK5clang4Type18getAsCXXRecordDeclEv.exit
  %i.dj = load i32, ptr %i.e, align 8, !tbaa !44  ; 3 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.dl = load i32, ptr %i.dk, align 4, !tbaa !484
  %.not.i21 = icmp ult i32 %i.dj, %i.dl
  br i1 %.not.i21, label %bb.u, label %bb.t, !prof !471

bb.t:                                             ; preds = %bb.s
  %i.dm = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4llvm23SmallVectorTemplateBaseIN5clang22ComparisonCategoryInfo9ValueInfoELb1EE18growAndEmplaceBackIJRNS1_24ComparisonCategoryResultERPNS1_7VarDeclEEEERS3_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.d, ptr noundef nonnull align 1 dereferenceable(1) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %i.c) ; 0 uses
  %.pre = load ptr, ptr %i.d, align 8, !tbaa !42
  %.pre42 = load i32, ptr %i.e, align 8, !tbaa !44
  br label %_ZN4llvm15SmallVectorImplIN5clang22ComparisonCategoryInfo9ValueInfoEE12emplace_backIJRNS1_24ComparisonCategoryResultERPNS1_7VarDeclEEEERS3_DpOT_.exit

bb.u:                                             ; preds = %bb.s
  %i.dn = zext i32 %i.dj to i64
  %i.do = load ptr, ptr %i.d, align 8, !tbaa !42  ; 2 uses
  %i.dp = getelementptr inbounds nuw [16 x i8], ptr %i.do, i64 %i.dn ; 2 uses
  store i8 %1, ptr %i.dp, align 8, !tbaa !45
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 8
  store ptr %i.ce, ptr %i.dq, align 8, !tbaa !23
  %i.dr = add nuw i32 %i.dj, 1                    ; 2 uses
  store i32 %i.dr, ptr %i.e, align 8, !tbaa !44
  br label %_ZN4llvm15SmallVectorImplIN5clang22ComparisonCategoryInfo9ValueInfoEE12emplace_backIJRNS1_24ComparisonCategoryResultERPNS1_7VarDeclEEEERS3_DpOT_.exit

_ZN4llvm15SmallVectorImplIN5clang22ComparisonCategoryInfo9ValueInfoEE12emplace_backIJRNS1_24ComparisonCategoryResultERPNS1_7VarDeclEEEERS3_DpOT_.exit: ; preds = %bb.t, %bb.u
  %i.ds = phi i32 [ %.pre42, %bb.t ], [ %i.dr, %bb.u ]
  %i.dt = phi ptr [ %.pre, %bb.t ], [ %i.do, %bb.u ]
  %i.du = zext i32 %i.ds to i64
  %i.dv = getelementptr inbounds nuw [16 x i8], ptr %i.dt, i64 %i.du
  %i.dw = getelementptr inbounds i8, ptr %i.dv, i64 -16
  br label %_ZNK5clang4Type18getAsCXXRecordDeclEv.exit.thread

_ZNK5clang4Type18getAsCXXRecordDeclEv.exit.thread: ; preds = %_ZNK5clang23DeclContextLookupResult5frontEv.exit19, %bb.r, %_ZNK5clang4Type18getAsCXXRecordDeclEv.exit, %_ZN4llvm15SmallVectorImplIN5clang22ComparisonCategoryInfo9ValueInfoEE12emplace_backIJRNS1_24ComparisonCategoryResultERPNS1_7VarDeclEEEERS3_DpOT_.exit
  %.0 = phi ptr [ %i.dw, %_ZN4llvm15SmallVectorImplIN5clang22ComparisonCategoryInfo9ValueInfoEE12emplace_backIJRNS1_24ComparisonCategoryResultERPNS1_7VarDeclEEEERS3_DpOT_.exit ], [ null, %_ZNK5clang4Type18getAsCXXRecordDeclEv.exit ], [ null, %bb.r ], [ null, %_ZNK5clang23DeclContextLookupResult5frontEv.exit19 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #11
  br label %.critedge

.critedge:                                        ; preds = %_ZNK5clang4Type18getAsCXXRecordDeclEv.exit.thread, %_ZNK5clang23DeclContextLookupResult5frontEv.exit, %_ZN5clang15IdentifierTable3getEN4llvm9StringRefE.exit, %_ZNK5clang23DeclContextLookupResult5frontEv.exit.thread, %"_ZN4llvm7find_ifIRNS_11SmallVectorIN5clang22ComparisonCategoryInfo9ValueInfoELj5EEEZNKS3_15lookupValueInfoENS2_24ComparisonCategoryResultEE3$_0EEDaOT_T0_.exit"
  %.2 = phi ptr [ %.028.i.i.i.i, %"_ZN4llvm7find_ifIRNS_11SmallVectorIN5clang22ComparisonCategoryInfo9ValueInfoELj5EEEZNKS3_15lookupValueInfoENS2_24ComparisonCategoryResultEE3$_0EEDaOT_T0_.exit" ], [ %.0, %_ZNK5clang4Type18getAsCXXRecordDeclEv.exit.thread ], [ null, %_ZNK5clang23DeclContextLookupResult5frontEv.exit ], [ null, %_ZN5clang15IdentifierTable3getEN4llvm9StringRefE.exit ], [ null, %_ZNK5clang23DeclContextLookupResult5frontEv.exit.thread ]
  ret ptr %.2
}

declare i64 @_ZNK5clang11DeclContext6lookupENS_15DeclarationNameE(ptr noundef nonnull align 8 dereferenceable(32), i64) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local { ptr, i64 } @_ZN5clang20ComparisonCategories15getResultStringENS_24ComparisonCategoryResultE(i8 noundef zeroext %0) local_unnamed_addr #4 align 2 {
switch.lookup:
  %i.a = zext nneg i8 %0 to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._ZN5clang20ComparisonCategories15getResultStringENS_24ComparisonCategoryResultE, i64 %i.a
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  %i.b = zext nneg i8 %0 to i64
  %switch.gep1 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZN5clang20ComparisonCategories15getResultStringENS_24ComparisonCategoryResultE.8, i64 %i.b
  %switch.load2 = load ptr, ptr %switch.gep1, align 8
  %.fca.0.insert = insertvalue { ptr, i64 } poison, ptr %switch.load2, 0
  %.fca.1.insert = insertvalue { ptr, i64 } %.fca.0.insert, i64 %switch.ext, 1
  ret { ptr, i64 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef ptr @_ZNK5clang20ComparisonCategories10lookupInfoENS_22ComparisonCategoryTypeE(ptr noundef nonnull align 8 dereferenceable(40) %0, i8 noundef zeroext %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca i8, align 1                       ; 3 uses
  %i.c = alloca ptr, align 8                      ; 5 uses
  %i.d = alloca i8, align 1                       ; 4 uses
  store i8 %1, ptr %i.b, align 1, !tbaa !485
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !486, !noalias !487 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !496, !noalias !487 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.j = load i32, ptr %i.i, align 4, !tbaa !497, !noalias !487 ; 4 uses
  %i.k = icmp eq i32 %i.j, 0
  br i1 %i.k, label %.loopexit.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = add i32 %i.j, -1                         ; 2 uses
  %i.m = sext i8 %1 to i32
  %i.n = mul nsw i32 %i.m, 37
  %.017.i.i.i.i = and i32 %i.l, %i.n              ; 3 uses
  %i.o = zext i32 %.017.i.i.i.i to i64            ; 2 uses
  %i.p = lshr i64 %i.o, 5
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.p
  %i.r = load i32, ptr %i.q, align 4, !tbaa !498, !noalias !499
  %i.s = and i32 %.017.i.i.i.i, 31
  %i.t = lshr i32 %i.r, %i.s
  %i.u = trunc i32 %i.t to i1
  br i1 %i.u, label %.lr.ph.i.i.i.i, label %.loopexit.i.i, !prof !500

bb.c:                                             ; preds = %.lr.ph.i.i.i.i
  %i.v = add nuw i32 %.018.i.i.i.i, 1
  %.0.i.i.i.i = and i32 %i.v, %i.l                ; 3 uses
  %i.w = zext i32 %.0.i.i.i.i to i64              ; 2 uses
  %i.x = lshr i64 %i.w, 5
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.x
  %i.z = load i32, ptr %i.y, align 4, !tbaa !498, !noalias !499
  %i.aa = and i32 %.0.i.i.i.i, 31
  %i.ab = lshr i32 %i.z, %i.aa
  %i.ac = trunc i32 %i.ab to i1
  br i1 %i.ac, label %.lr.ph.i.i.i.i, label %.loopexit.i.i, !prof !501

.lr.ph.i.i.i.i:                                   ; preds = %bb.b, %bb.c
  %i.ad = phi i64 [ %i.w, %bb.c ], [ %i.o, %bb.b ]
  %.018.i.i.i.i = phi i32 [ %.0.i.i.i.i, %bb.c ], [ %.017.i.i.i.i, %bb.b ]
  %i.ae = getelementptr inbounds nuw [128 x i8], ptr %i.f, i64 %i.ad ; 2 uses
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !15, !noalias !499
  %i.ag = icmp eq i8 %1, %i.af
  br i1 %i.ag, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIcN5clang22ComparisonCategoryInfoENS_12DenseMapInfoIcvEENS_6detail12DenseMapPairIcS3_EEEEcS3_S5_S8_E4findERKc.exit.loopexit, label %bb.c, !prof !471

.loopexit.i.i:                                    ; preds = %bb.c, %bb.b, %bb.a
  %i.ah = zext i32 %i.j to i64                    ; 2 uses
  %i.ai = getelementptr inbounds nuw [128 x i8], ptr %i.f, i64 %i.ah
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIcN5clang22ComparisonCategoryInfoENS_12DenseMapInfoIcvEENS_6detail12DenseMapPairIcS3_EEEEcS3_S5_S8_E4findERKc.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIcN5clang22ComparisonCategoryInfoENS_12DenseMapInfoIcvEENS_6detail12DenseMapPairIcS3_EEEEcS3_S5_S8_E4findERKc.exit.loopexit: ; preds = %.lr.ph.i.i.i.i
  %.pre48 = zext i32 %i.j to i64
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIcN5clang22ComparisonCategoryInfoENS_12DenseMapInfoIcvEENS_6detail12DenseMapPairIcS3_EEEEcS3_S5_S8_E4findERKc.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIcN5clang22ComparisonCategoryInfoENS_12DenseMapInfoIcvEENS_6detail12DenseMapPairIcS3_EEEEcS3_S5_S8_E4findERKc.exit: ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIcN5clang22ComparisonCategoryInfoENS_12DenseMapInfoIcvEENS_6detail12DenseMapPairIcS3_EEEEcS3_S5_S8_E4findERKc.exit.loopexit, %.loopexit.i.i
  %.pre-phi = phi i64 [ %.pre48, %_ZN4llvm12DenseMapBaseINS_8DenseMapIcN5clang22ComparisonCategoryInfoENS_12DenseMapInfoIcvEENS_6detail12DenseMapPairIcS3_EEEEcS3_S5_S8_E4findERKc.exit.loopexit ], [ %i.ah, %.loopexit.i.i ]
  %.lcssa.sink.i.i = phi ptr [ %i.ae, %_ZN4llvm12DenseMapBaseINS_8DenseMapIcN5clang22ComparisonCategoryInfoENS_12DenseMapInfoIcvEENS_6detail12DenseMapPairIcS3_EEEEcS3_S5_S8_E4findERKc.exit.loopexit ], [ %i.ai, %.loopexit.i.i ] ; 2 uses
  %i.aj = getelementptr inbounds nuw [128 x i8], ptr %i.f, i64 %.pre-phi
  %.not44 = icmp eq ptr %.lcssa.sink.i.i, %i.aj
  br i1 %.not44, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIcN5clang22ComparisonCategoryInfoENS_12DenseMapInfoIcvEENS_6detail12DenseMapPairIcS3_EEEEcS3_S5_S8_E4findERKc.exit
  %i.ak = getelementptr inbounds nuw i8, ptr %.lcssa.sink.i.i, i64 8
  br label %.thread

bb.e:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIcN5clang22ComparisonCategoryInfoENS_12DenseMapInfoIcvEENS_6detail12DenseMapPairIcS3_EEEEcS3_S5_S8_E4findERKc.exit
  %i.al = load ptr, ptr %0, align 8, !tbaa !502, !nonnull !40, !align !61 ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !503 ; 2 uses
  %.not.i = icmp eq ptr %i.an, null
  br i1 %.not.i, label %bb.f, label %_ZL18lookupStdNamespaceRKN5clang10ASTContextERPNS_13NamespaceDeclE.exit.thread

bb.f:                                             ; preds = %bb.e
  %i.ao = getelementptr inbounds nuw i8, ptr %i.al, i64 2536
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !504
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 80
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !505 ; 4 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 72 ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i.i.i = load i64, ptr %i.as, align 8 ; 3 uses
  %i.at = and i64 %.sroa.0.0.copyload.i.i.i.i.i.i, 1
  %i.au = icmp eq i64 %i.at, 0
  %i.av = and i64 %.sroa.0.0.copyload.i.i.i.i.i.i, -2
  %spec.select.i.i.i.i.i.i.i = select i1 %i.au, i64 %i.av, i64 0 ; 3 uses
  %i.aw = icmp ugt i64 %spec.select.i.i.i.i.i.i.i, 3
  br i1 %i.aw, label %bb.g, label %bb.n

bb.g:                                             ; preds = %bb.f
  %i.ax = and i64 %spec.select.i.i.i.i.i.i.i, 2
  %.not.i.i.i.i.i = icmp eq i64 %i.ax, 0
  %i.ay = and i64 %spec.select.i.i.i.i.i.i.i, -4
  %i.az = inttoptr i64 %i.ay to ptr               ; 4 uses
  br i1 %.not.i.i.i.i.i, label %_ZNK5clang10ASTContext22getTranslationUnitDeclEv.exit.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 18624
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !512 ; 2 uses
  %.not.not.i.i.i.i.i.i.i = icmp eq ptr %i.bb, null
  br i1 %.not.not.i.i.i.i.i.i.i, label %bb.m, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bc = getelementptr inbounds nuw i8, ptr %i.az, i64 2632 ; 3 uses
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !469 ; 2 uses
  %i.be = ptrtoint ptr %i.bd to i64               ; 2 uses
  %i.bf = add i64 %i.be, 24                       ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.az, i64 2640
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !470
  %i.bi = icmp ult i64 %i.bf, %i.bh
  br i1 %i.bi, label %bb.j, label %bb.k, !prof !471

bb.j:                                             ; preds = %bb.i
  %i.bj = inttoptr i64 %i.bf to ptr
  store ptr %i.bj, ptr %i.bc, align 8, !tbaa !469
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  %i.bk = tail call noundef nonnull ptr @_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE12AllocateSlowEmmNS_5AlignE(ptr noundef nonnull align 8 dereferenceable(80) %i.bc, i64 noundef 24, i64 noundef 24, i8 3) ; 2 uses
  %.pre.i.i.i.i.i.i.i = ptrtoint ptr %i.bk to i64
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.pre-phi.i.i.i.i.i.i.i = phi i64 [ %.pre.i.i.i.i.i.i.i, %bb.k ], [ %i.be, %bb.j ]
  %.0.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.bk, %bb.k ], [ %i.bd, %bb.j ] ; 3 uses
  store ptr %i.bb, ptr %.0.i.i.i.i.i.i.i.i.i.i.i, align 8, !tbaa !513
  %i.bl = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i.i.i.i.i.i.i, i64 8
  store i32 0, ptr %i.bl, align 8, !tbaa !515
  %i.bm = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i.i.i.i.i.i.i, i64 16
  store ptr %i.ar, ptr %i.bm, align 8, !tbaa !516
  %i.bn = or i64 %.pre-phi.i.i.i.i.i.i.i, 4
  br label %_ZN5clang25LazyGenerationalUpdatePtrIPKNS_4DeclEPS1_XadL_ZNS_17ExternalASTSource19CompleteRedeclChainES3_EEEC2ERKNS_10ASTContextES4_.exit.i.i.i.i.i

bb.m:                                             ; preds = %bb.h
  %i.bo = ptrtoint ptr %i.ar to i64
  br label %_ZN5clang25LazyGenerationalUpdatePtrIPKNS_4DeclEPS1_XadL_ZNS_17ExternalASTSource19CompleteRedeclChainES3_EEEC2ERKNS_10ASTContextES4_.exit.i.i.i.i.i

_ZN5clang25LazyGenerationalUpdatePtrIPKNS_4DeclEPS1_XadL_ZNS_17ExternalASTSource19CompleteRedeclChainES3_EEEC2ERKNS_10ASTContextES4_.exit.i.i.i.i.i: ; preds = %bb.m, %bb.l
  %.sroa.0.1.i.i.i.i.i.i.i = phi i64 [ %i.bo, %bb.m ], [ %i.bn, %bb.l ]
  %i.bp = or i64 %.sroa.0.1.i.i.i.i.i.i.i, 1      ; 2 uses
  store i64 %i.bp, ptr %i.as, align 8
  br label %bb.n

bb.n:                                             ; preds = %_ZN5clang25LazyGenerationalUpdatePtrIPKNS_4DeclEPS1_XadL_ZNS_17ExternalASTSource19CompleteRedeclChainES3_EEEC2ERKNS_10ASTContextES4_.exit.i.i.i.i.i, %bb.f
  %.0.copyload.i.i.i.i10.i.i.i.i.i = phi i64 [ %i.bp, %_ZN5clang25LazyGenerationalUpdatePtrIPKNS_4DeclEPS1_XadL_ZNS_17ExternalASTSource19CompleteRedeclChainES3_EEEC2ERKNS_10ASTContextES4_.exit.i.i.i.i.i ], [ %.sroa.0.0.copyload.i.i.i.i.i.i, %bb.f ] ; 2 uses
  %i.bq = and i64 %.0.copyload.i.i.i.i10.i.i.i.i.i, 4
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.bq, 0
  %i.br = and i64 %.0.copyload.i.i.i.i10.i.i.i.i.i, -6 ; 2 uses
  %i.bs = inttoptr i64 %i.br to ptr               ; 4 uses
  %.not.not14.i.i.i.i.i.i = icmp eq i64 %i.br, 0
  %.not.not.i.i.i.i.i.i = or i1 %.not.i.i.i.i.i.i.i.i.i.i, %.not.not14.i.i.i.i.i.i
  br i1 %.not.not.i.i.i.i.i.i, label %_ZNK5clang10ASTContext22getTranslationUnitDeclEv.exit.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 8 ; 2 uses
  %i.bu = load i32, ptr %i.bt, align 8, !tbaa !515
  %i.bv = load ptr, ptr %i.bs, align 8, !tbaa !513 ; 3 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 12
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !517 ; 2 uses
  %.not12.i.i.i.i.i.i = icmp eq i32 %i.bu, %i.bx
  br i1 %.not12.i.i.i.i.i.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  store i32 %i.bx, ptr %i.bt, align 8, !tbaa !515
  %i.by = load ptr, ptr %i.bv, align 8, !tbaa !57
  %i.bz = getelementptr i8, ptr %i.by, i64 152, !nosanitize !40
  %i.ca = load ptr, ptr %i.bz, align 8, !nosanitize !40
  tail call void %i.ca(ptr noundef nonnull align 8 dereferenceable(16) %i.bv, ptr noundef nonnull %i.ar) #11, !inline_history !520
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bs, i64 16
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !516
  br label %_ZNK5clang10ASTContext22getTranslationUnitDeclEv.exit.i

_ZNK5clang10ASTContext22getTranslationUnitDeclEv.exit.i: ; preds = %bb.q, %bb.n, %bb.g
end_hunk_0
