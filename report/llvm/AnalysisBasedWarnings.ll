Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/AnalysisBasedWarnings?download=true
inline.NumInlined: 7712
inline.NumDeleted: 3982
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 10
begin_hunk_0_@_ZN12_GLOBAL__N_122UninitValsDiagReporterD2Ev:bb.a
  %i.tw = icmp eq ptr %i.tu, %i.tv
  br i1 %i.tw, label %_ZN4llvm11SmallVectorISt4pairIPKN5clang7VarDeclENS_14PointerIntPairIPNS0_INS2_9UninitUseELj2EEELj1EbNS_21PointerLikeTypeTraitsIS9_EENS_18PointerIntPairInfoIS9_Lj1ESB_EEEEELj0EED2Ev.exit.i, label %bb.dc

bb.dc:                                            ; preds = %_ZN12_GLOBAL__N_122UninitValsDiagReporter16flushDiagnosticsEv.exit
  call void @free(ptr noundef %i.tu) #23
  br label %_ZN4llvm11SmallVectorISt4pairIPKN5clang7VarDeclENS_14PointerIntPairIPNS0_INS2_9UninitUseELj2EEELj1EbNS_21PointerLikeTypeTraitsIS9_EENS_18PointerIntPairInfoIS9_Lj1ESB_EEEEELj0EED2Ev.exit.i

_ZN4llvm11SmallVectorISt4pairIPKN5clang7VarDeclENS_14PointerIntPairIPNS0_INS2_9UninitUseELj2EEELj1EbNS_21PointerLikeTypeTraitsIS9_EENS_18PointerIntPairInfoIS9_Lj1ESB_EEEEELj0EED2Ev.exit.i: ; preds = %bb.dc, %_ZN12_GLOBAL__N_122UninitValsDiagReporter16flushDiagnosticsEv.exit
  %i.tx = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.ty = load i32, ptr %i.tx, align 4, !tbaa !1054 ; 2 uses
  %i.tz = icmp eq i32 %i.ty, 0
  br i1 %i.tz, label %_ZN4llvm9MapVectorIPKN5clang7VarDeclENS_14PointerIntPairIPNS_11SmallVectorINS1_9UninitUseELj2EEELj1EbNS_21PointerLikeTypeTraitsIS9_EENS_18PointerIntPairInfoIS9_Lj1ESB_EEEENS_8DenseMapIS4_jNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_jEEEENS6_ISt4pairIS4_SE_ELj0EEELj0EED2Ev.exit, label %bb.dd

bb.dd:                                            ; preds = %_ZN4llvm11SmallVectorISt4pairIPKN5clang7VarDeclENS_14PointerIntPairIPNS0_INS2_9UninitUseELj2EEELj1EbNS_21PointerLikeTypeTraitsIS9_EENS_18PointerIntPairInfoIS9_Lj1ESB_EEEEELj0EED2Ev.exit.i
  %i.ua = load ptr, ptr %i.a, align 8, !tbaa !1088
  %i.ub = zext i32 %i.ty to i64                   ; 2 uses
  %i.uc = shl nuw nsw i64 %i.ub, 4
  %i.ud = add nuw nsw i64 %i.ub, 31
  %i.ue = lshr i64 %i.ud, 3
  %i.uf = and i64 %i.ue, 1073741820
  %i.ug = add nuw nsw i64 %i.uf, %i.uc
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.ua, i64 noundef %i.ug, i64 noundef 8) #23
  br label %_ZN4llvm9MapVectorIPKN5clang7VarDeclENS_14PointerIntPairIPNS_11SmallVectorINS1_9UninitUseELj2EEELj1EbNS_21PointerLikeTypeTraitsIS9_EENS_18PointerIntPairInfoIS9_Lj1ESB_EEEENS_8DenseMapIS4_jNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_jEEEENS6_ISt4pairIS4_SE_ELj0EEELj0EED2Ev.exit

_ZN4llvm9MapVectorIPKN5clang7VarDeclENS_14PointerIntPairIPNS_11SmallVectorINS1_9UninitUseELj2EEELj1EbNS_21PointerLikeTypeTraitsIS9_EENS_18PointerIntPairInfoIS9_Lj1ESB_EEEENS_8DenseMapIS4_jNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_jEEEENS6_ISt4pairIS4_SE_ELj0EEELj0EED2Ev.exit: ; preds = %_ZN4llvm11SmallVectorISt4pairIPKN5clang7VarDeclENS_14PointerIntPairIPNS0_INS2_9UninitUseELj2EEELj1EbNS_21PointerLikeTypeTraitsIS9_EENS_18PointerIntPairInfoIS9_Lj1ESB_EEEEELj0EED2Ev.exit.i, %bb.dd
  call void @_ZN5clang22UninitVariablesHandlerD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) #23
  ret void
}

declare void @_ZN5clang25checkCalledOnceParametersERNS_19AnalysisDeclContextERNS_22CalledOnceCheckHandlerEb(ptr noundef nonnull align 8 dereferenceable(280), ptr noundef nonnull align 8 dereferenceable(8), i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(read) uwtable
define internal fastcc noundef zeroext i1 @_ZN12_GLOBAL__N_134shouldAnalyzeCalledOnceConventionsERKN5clang17DiagnosticsEngineENS0_14SourceLocationE(ptr nofree noundef nonnull readonly align 8 dereferenceable(15256) %0, i32 %1) unnamed_addr #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !744  ; 3 uses
  %i.c = tail call noundef zeroext i8 @_ZNK5clang13DiagnosticIDs21getDiagnosticSeverityEjNS_14SourceLocationERKNS_17DiagnosticsEngineE(ptr noundef nonnull align 8 dereferenceable(24) %i.b, i32 noundef 6885, i32 %1, ptr noundef nonnull readonly align 8 dereferenceable(15256) %0) #25
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.c, 1
  br i1 %.not.i.i.i.i.i.i.i, label %bb.b, label %_ZN12_GLOBAL__N_127shouldAnalyzeCalledOnceImplEN4llvm8ArrayRefIjEERKN5clang17DiagnosticsEngineENS3_14SourceLocationE.exit

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noundef zeroext i8 @_ZNK5clang13DiagnosticIDs21getDiagnosticSeverityEjNS_14SourceLocationERKNS_17DiagnosticsEngineE(ptr noundef nonnull align 8 dereferenceable(24) %i.b, i32 noundef 6886, i32 %1, ptr noundef nonnull readonly align 8 dereferenceable(15256) %0) #25
  %.not53.i.i.i.i.i.i.i = icmp eq i8 %i.d, 1
  br i1 %.not53.i.i.i.i.i.i.i, label %bb.c, label %_ZN12_GLOBAL__N_127shouldAnalyzeCalledOnceImplEN4llvm8ArrayRefIjEERKN5clang17DiagnosticsEngineENS3_14SourceLocationE.exit

bb.c:                                             ; preds = %bb.b
  %i.e = tail call noundef zeroext i8 @_ZNK5clang13DiagnosticIDs21getDiagnosticSeverityEjNS_14SourceLocationERKNS_17DiagnosticsEngineE(ptr noundef nonnull align 8 dereferenceable(24) %i.b, i32 noundef 6884, i32 %1, ptr noundef nonnull readonly align 8 dereferenceable(15256) %0) #25
  %.not54.i.i.i.i.i.i.i = icmp ne i8 %i.e, 1
  br label %_ZN12_GLOBAL__N_127shouldAnalyzeCalledOnceImplEN4llvm8ArrayRefIjEERKN5clang17DiagnosticsEngineENS3_14SourceLocationE.exit

_ZN12_GLOBAL__N_127shouldAnalyzeCalledOnceImplEN4llvm8ArrayRefIjEERKN5clang17DiagnosticsEngineENS3_14SourceLocationE.exit: ; preds = %bb.c, %bb.a, %bb.b
  %.028.i.i.i.i.i.i.i = phi i1 [ true, %bb.b ], [ true, %bb.a ], [ %.not54.i.i.i.i.i.i.i, %bb.c ]
  ret i1 %.028.i.i.i.i.i.i.i
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN5clang22CalledOnceCheckHandlerD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #1 comdat align 2 {
bb.a:
  ret void
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZN5clang19AnalysisDeclContext12getParentMapEv(ptr noundef nonnull align 8 dereferenceable(280)) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef zeroext i1 @_ZL10isNoexceptPKN5clang12FunctionDeclE(ptr noundef nonnull %0) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.sroa.0.0.copyload.i = load i64, ptr %i.a, align 8, !tbaa !861
  %i.b = and i64 %.sroa.0.0.copyload.i, -16
  %i.c = inttoptr i64 %i.b to ptr
  %i.d = load ptr, ptr %i.c, align 16, !tbaa !863 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.f = load i8, ptr %i.e, align 16
  %.not.i = icmp eq i8 %i.f, 24
  br i1 %.not.i, label %_ZNK5clang4Type6castAsINS_17FunctionProtoTypeEEEPKT_v.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = tail call noundef ptr @_ZNK5clang4Type27getUnqualifiedDesugaredTypeEv(ptr noundef nonnull align 16 dereferenceable(24) %i.d) #23
  br label %_ZNK5clang4Type6castAsINS_17FunctionProtoTypeEEEPKT_v.exit

_ZNK5clang4Type6castAsINS_17FunctionProtoTypeEEEPKT_v.exit: ; preds = %bb.a, %bb.b
  %.1.i = phi ptr [ %i.g, %bb.b ], [ %i.d, %bb.a ]
  %i.h = tail call noundef i32 @_ZNK5clang17FunctionProtoType8canThrowEv(ptr noundef nonnull align 16 dereferenceable(48) %.1.i) #23
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %_ZNK5clang4Decl7hasAttrINS_11NoThrowAttrEEEbv.exit, label %bb.c

bb.c:                                             ; preds = %_ZNK5clang4Type6castAsINS_17FunctionProtoTypeEEEPKT_v.exit
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.k = load i32, ptr %i.j, align 4
  %i.l = and i32 %i.k, 256
  %.not.i4 = icmp eq i32 %i.l, 0
  br i1 %.not.i4, label %_ZNK5clang4Decl7hasAttrINS_11NoThrowAttrEEEbv.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZNK5clang4Decl8getAttrsEv(ptr noundef nonnull align 8 dereferenceable(33) %0) #23 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !760  ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.p = load i32, ptr %i.o, align 8, !tbaa !761  ; 2 uses
  %i.q = zext i32 %i.p to i64
  %.idx.i.i = shl nuw nsw i64 %i.q, 3
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 %.idx.i.i ; 3 uses
  %.not.i.i = icmp eq i32 %i.p, 0
  br i1 %.not.i.i, label %_ZNK5clang4Decl7hasAttrINS_11NoThrowAttrEEEbv.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.d, %bb.e
  %.sroa.07.1.i.i.i.i = phi ptr [ %i.w, %bb.e ], [ %i.n, %bb.d ] ; 3 uses
  %i.s = load ptr, ptr %.sroa.07.1.i.i.i.i, align 8, !tbaa !865
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 36
  %i.u = load i16, ptr %i.t, align 4
  %i.v = icmp eq i16 %i.u, 305
  br i1 %i.v, label %_ZN5clangneENS_22specific_attr_iteratorINS_11NoThrowAttrEN4llvm11SmallVectorIPNS_4AttrELj4EEEEES7_.exit.loopexit.i.i, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.07.1.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.w, %i.r
  br i1 %.not.i.i.i.i.i, label %_ZN5clangneENS_22specific_attr_iteratorINS_11NoThrowAttrEN4llvm11SmallVectorIPNS_4AttrELj4EEEEES7_.exit.loopexit.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !1673

_ZN5clangneENS_22specific_attr_iteratorINS_11NoThrowAttrEN4llvm11SmallVectorIPNS_4AttrELj4EEEEES7_.exit.loopexit.i.i: ; preds = %bb.e, %.lr.ph.i.i.i.i.i
  %.sroa.07.0.i.i.ph.i.i = phi ptr [ %i.r, %bb.e ], [ %.sroa.07.1.i.i.i.i, %.lr.ph.i.i.i.i.i ]
  %i.x = icmp ne ptr %.sroa.07.0.i.i.ph.i.i, %i.r
  br label %_ZNK5clang4Decl7hasAttrINS_11NoThrowAttrEEEbv.exit

_ZNK5clang4Decl7hasAttrINS_11NoThrowAttrEEEbv.exit: ; preds = %_ZN5clangneENS_22specific_attr_iteratorINS_11NoThrowAttrEN4llvm11SmallVectorIPNS_4AttrELj4EEEEES7_.exit.loopexit.i.i, %bb.d, %bb.c, %_ZNK5clang4Type6castAsINS_17FunctionProtoTypeEEEPKT_v.exit
  %.0 = phi i1 [ true, %_ZNK5clang4Type6castAsINS_17FunctionProtoTypeEEEPKT_v.exit ], [ false, %bb.c ], [ false, %bb.d ], [ %i.x, %_ZN5clangneENS_22specific_attr_iteratorINS_11NoThrowAttrEN4llvm11SmallVectorIPNS_4AttrELj4EEEEES7_.exit.loopexit.i.i ]
  ret i1 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZL27checkThrowInNonThrowingFuncRN5clang4SemaEPKNS_12FunctionDeclERNS_19AnalysisDeclContextE(ptr noundef nonnull align 8 dereferenceable(18640) %0, ptr noundef nonnull %1, ptr noundef nonnull align 8 dereferenceable(280) %2) unnamed_addr #1 {
bb.a:
  %3 = alloca %"class.llvm::BitVector", align 8   ; 12 uses
  %i.a = alloca ptr, align 8                      ; 2 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %4 = alloca %class.anon.2432, align 8           ; 6 uses
  store ptr %1, ptr %i.a, align 8, !tbaa !934
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  %i.c = tail call noundef ptr @_ZN5clang19AnalysisDeclContext6getCFGEv(ptr noundef nonnull align 8 dereferenceable(280) %2) #23 ; 7 uses
  store ptr %i.c, ptr %i.b, align 8, !tbaa !1089
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !919  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 56
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !917
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 64
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !918
  %i.j = icmp eq ptr %i.g, %i.i
  br i1 %i.j, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  store ptr %0, ptr %4, align 8, !tbaa !39
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %i.b, ptr %i.k, align 8, !tbaa !1689
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %i.a, ptr %i.l, align 8, !tbaa !1690
  %i.m = ptrtoint ptr %4 to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.o = load i32, ptr %i.n, align 8, !tbaa !866  ; 2 uses
  %i.p = add i32 %i.o, 63                         ; 2 uses
  %i.q = lshr i32 %i.p, 6                         ; 3 uses
  %i.r = zext nneg i32 %i.q to i64                ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 4 uses
  store ptr %i.s, ptr %3, align 8, !tbaa !760
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 12
  store i32 6, ptr %i.u, align 4, !tbaa !838
  %i.v = icmp ugt i32 %i.p, 447
  br i1 %i.v, label %_ZN4llvm9BitVectorC2Ejb.exit.loopexit.i, label %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.i.i.i.i

_ZN4llvm9BitVectorC2Ejb.exit.loopexit.i:          ; preds = %bb.c
  store i32 0, ptr %i.t, align 8, !tbaa !761
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(68) %3, ptr noundef nonnull %i.s, i64 noundef %i.r, i64 noundef 8) #23
  %i.w = load ptr, ptr %3, align 8, !tbaa !760
  br label %_ZN4llvm9BitVectorC2Ejb.exit.sink.split.i

_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.i.i.i.i:      ; preds = %bb.c
  %.not.i.i.i = icmp eq i32 %i.q, 0
  br i1 %.not.i.i.i, label %_ZN4llvm9BitVectorC2Ejb.exit.i, label %_ZN4llvm9BitVectorC2Ejb.exit.sink.split.i

_ZN4llvm9BitVectorC2Ejb.exit.sink.split.i:        ; preds = %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.i.i.i.i, %_ZN4llvm9BitVectorC2Ejb.exit.loopexit.i
  %.sink.i = phi ptr [ %i.w, %_ZN4llvm9BitVectorC2Ejb.exit.loopexit.i ], [ %i.s, %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.i.i.i.i ]
  %.idx.i.i.i.i.i.i.i.i = shl nuw nsw i64 %i.r, 3
  call void @llvm.memset.p0.i64(ptr align 8 %.sink.i, i8 0, i64 %.idx.i.i.i.i.i.i.i.i, i1 false), !tbaa !826
  br label %_ZN4llvm9BitVectorC2Ejb.exit.i

_ZN4llvm9BitVectorC2Ejb.exit.i:                   ; preds = %_ZN4llvm9BitVectorC2Ejb.exit.sink.split.i, %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.i.i.i.i
  store i32 %i.q, ptr %i.t, align 8, !tbaa !761
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 64
  store i32 %i.o, ptr %i.x, align 8, !tbaa !873
  %i.y = load ptr, ptr %i.c, align 8, !tbaa !777
  %i.z = call noundef i32 @_ZN5clang14reachable_code22ScanReachableFromBlockEPKNS_8CFGBlockERN4llvm9BitVectorE(ptr noundef nonnull %i.y, ptr noundef nonnull align 8 dereferenceable(68) %3) #23 ; 0 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !904 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !905 ; 2 uses
  %.not38.i = icmp eq ptr %i.ab, %i.ad
  br i1 %.not38.i, label %._crit_edge.i, label %.lr.ph40.i

._crit_edge.i:                                    ; preds = %.loopexit.i, %_ZN4llvm9BitVectorC2Ejb.exit.i
  %5 = load ptr, ptr %3, align 8, !tbaa !760      ; 2 uses
  %i.ae = icmp eq ptr %5, %i.s
  br i1 %i.ae, label %_ZL20visitReachableThrowsPN5clang3CFGEN4llvm12function_refIFvPKNS_12CXXThrowExprERNS_8CFGBlockEEEE.exit, label %bb.d

bb.d:                                             ; preds = %._crit_edge.i
  call void @free(ptr noundef %5) #23
  br label %_ZL20visitReachableThrowsPN5clang3CFGEN4llvm12function_refIFvPKNS_12CXXThrowExprERNS_8CFGBlockEEEE.exit

.lr.ph40.i:                                       ; preds = %_ZN4llvm9BitVectorC2Ejb.exit.i, %.loopexit.i
  %.039.i = phi ptr [ %i.bg, %.loopexit.i ], [ %i.ab, %_ZN4llvm9BitVectorC2Ejb.exit.i ] ; 2 uses
  %i.af = load ptr, ptr %.039.i, align 8, !tbaa !906 ; 4 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 48
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !916 ; 2 uses
  %i.ai = lshr i32 %i.ah, 6
  %i.aj = zext nneg i32 %i.ai to i64
  %6 = load ptr, ptr %3, align 8, !tbaa !760
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %i.aj
  %i.al = and i32 %i.ah, 63
  %i.am = load i64, ptr %i.ak, align 8, !tbaa !826
  %i.an = zext nneg i32 %i.al to i64
  %i.ao = shl nuw i64 1, %i.an
  %i.ap = and i64 %i.ao, %i.am
  %.not31.i = icmp eq i64 %i.ap, 0
  br i1 %.not31.i, label %.loopexit.i, label %bb.e

bb.e:                                             ; preds = %.lr.ph40.i
  %i.aq = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !925, !noalias !1691 ; 2 uses
  %i.as = load ptr, ptr %i.af, align 8, !tbaa !924, !noalias !1692 ; 2 uses
  %.not3236.i = icmp eq ptr %i.ar, %i.as
  br i1 %.not3236.i, label %.loopexit.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.e, %_ZNK5clang10CFGElement5getAsINS_7CFGStmtEEESt8optionalIT_Ev.exit.i
  %.sroa.023.037.i = phi ptr [ %i.at, %_ZNK5clang10CFGElement5getAsINS_7CFGStmtEEESt8optionalIT_Ev.exit.i ], [ %i.ar, %bb.e ] ; 2 uses
  %i.at = getelementptr inbounds i8, ptr %.sroa.023.037.i, i64 -16 ; 3 uses
  %i.au = getelementptr inbounds i8, ptr %.sroa.023.037.i, i64 -8
  %.0.copyload.i.i.i.i.i.i.i = load i64, ptr %i.au, align 8, !noalias !1693
  %i.av = trunc i64 %.0.copyload.i.i.i.i.i.i.i to i32
  %i.aw = shl i32 %i.av, 2
  %i.ax = and i32 %i.aw, 12
  %.0.copyload.i.i.i3.i.i.i.i = load i64, ptr %i.at, align 8, !noalias !1693 ; 2 uses
  %i.ay = trunc i64 %.0.copyload.i.i.i3.i.i.i.i to i32
  %i.az = and i32 %i.ay, 3
  %i.ba = add nuw nsw i32 %i.az, -7
  %i.bb = add nsw i32 %i.ba, %i.ax
  %spec.select.i.i.i = icmp ult i32 %i.bb, 3
  br i1 %spec.select.i.i.i, label %bb.f, label %_ZNK5clang10CFGElement5getAsINS_7CFGStmtEEESt8optionalIT_Ev.exit.i

bb.f:                                             ; preds = %.lr.ph.i
  %i.bc = and i64 %.0.copyload.i.i.i3.i.i.i.i, -4
  %i.bd = inttoptr i64 %i.bc to ptr               ; 2 uses
  %i.be = load i16, ptr %i.bd, align 8
  %i.bf = and i16 %i.be, 511
  %.not34.i = icmp eq i16 %i.bf, 99
  br i1 %.not34.i, label %bb.g, label %_ZNK5clang10CFGElement5getAsINS_7CFGStmtEEESt8optionalIT_Ev.exit.i

bb.g:                                             ; preds = %bb.f
  call fastcc void @"_ZN4llvm12function_refIFvPKN5clang12CXXThrowExprERNS1_8CFGBlockEEE11callback_fnIZL27checkThrowInNonThrowingFuncRNS1_4SemaEPKNS1_12FunctionDeclERNS1_19AnalysisDeclContextEE3$_0EEvlS4_S6_"(i64 noundef %i.m, ptr noundef nonnull %i.bd, ptr noundef nonnull align 8 dereferenceable(120) %i.af) #23, !inline_history !1688
  br label %_ZNK5clang10CFGElement5getAsINS_7CFGStmtEEESt8optionalIT_Ev.exit.i

_ZNK5clang10CFGElement5getAsINS_7CFGStmtEEESt8optionalIT_Ev.exit.i: ; preds = %bb.g, %bb.f, %.lr.ph.i
  %.not32.i = icmp eq ptr %i.at, %i.as
  br i1 %.not32.i, label %.loopexit.i, label %.lr.ph.i

.loopexit.i:                                      ; preds = %_ZNK5clang10CFGElement5getAsINS_7CFGStmtEEESt8optionalIT_Ev.exit.i, %bb.e, %.lr.ph40.i
  %i.bg = getelementptr inbounds nuw i8, ptr %.039.i, i64 8 ; 2 uses
  %.not.i = icmp eq ptr %i.bg, %i.ad
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph40.i

_ZL20visitReachableThrowsPN5clang3CFGEN4llvm12function_refIFvPKNS_12CXXThrowExprERNS_8CFGBlockEEEE.exit: ; preds = %._crit_edge.i, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  br label %bb.h

bb.h:                                             ; preds = %bb.b, %bb.a, %_ZL20visitReachableThrowsPN5clang3CFGEN4llvm12function_refIFvPKNS_12CXXThrowExprERNS_8CFGBlockEEEE.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  ret void
}

declare void @_ZN5clang22checkUnsafeBufferUsageEPKNS_4DeclERNS_24UnsafeBufferUsageHandlerEb(ptr noundef, ptr noundef nonnull align 8 dereferenceable(8), i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZNK5clang4sema21AnalysisBasedWarnings10PrintStatsEv(ptr noundef nonnull align 8 dereferenceable(176) %0) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = tail call noundef nonnull align 8 dereferenceable(96) ptr @_ZN4llvm4errsEv() #23 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1095
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !1096 ; 2 uses
  %i.f = ptrtoint ptr %i.c to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = icmp ult i64 %i.h, 36
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.j = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.a, ptr noundef nonnull @.str, i64 noundef 36) #23 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(36) %i.e, ptr noundef nonnull align 1 dereferenceable(36) @.str, i64 36, i1 false)
  %i.k = load ptr, ptr %i.d, align 8, !tbaa !1096
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 36
  store ptr %i.l, ptr %i.d, align 8, !tbaa !1096
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit

_ZN4llvm11raw_ostreamlsEPKc.exit:                 ; preds = %bb.b, %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 92 ; 2 uses
  %i.n = load i32, ptr %i.m, align 4, !tbaa !1047 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.p = load i32, ptr %i.o, align 8, !tbaa !1050 ; 2 uses
  %.not = icmp eq i32 %i.n, %i.p
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit
  %i.q = sub i32 %i.n, %i.p
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 100
  %i.s = load i32, ptr %i.r, align 4, !tbaa !1048
  %i.t = udiv i32 %i.s, %i.q
  %i.u = zext i32 %i.t to i64
  br label %bb.e

bb.e:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit, %bb.d
  %i.v = phi i64 [ %i.u, %bb.d ], [ 0, %_ZN4llvm11raw_ostreamlsEPKc.exit ]
  %i.w = tail call noundef nonnull align 8 dereferenceable(96) ptr @_ZN4llvm4errsEv() #23
  %i.x = load i32, ptr %i.m, align 4, !tbaa !1047
  %i.y = zext i32 %i.x to i64
  %i.z = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsEm(ptr noundef nonnull align 8 dereferenceable(48) %i.w, i64 noundef %i.y) #23 ; 4 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !1095
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 32 ; 3 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !1096 ; 2 uses
  %i.ae = ptrtoint ptr %i.ab to i64
  %i.af = ptrtoint ptr %i.ad to i64
  %i.ag = sub i64 %i.ae, %i.af
  %i.ah = icmp ult i64 %i.ag, 21
  br i1 %i.ah, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ai = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.z, ptr noundef nonnull @.str.1, i64 noundef 21) #23
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit11

bb.g:                                             ; preds = %bb.e
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(21) %i.ad, ptr noundef nonnull align 1 dereferenceable(21) @.str.1, i64 21, i1 false)
  %i.aj = load ptr, ptr %i.ac, align 8, !tbaa !1096
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 21
  store ptr %i.ak, ptr %i.ac, align 8, !tbaa !1096
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit11

_ZN4llvm11raw_ostreamlsEPKc.exit11:               ; preds = %bb.f, %bb.g
  %.0.i.i10 = phi ptr [ %i.ai, %bb.f ], [ %i.z, %bb.g ]
  %i.al = load i32, ptr %i.o, align 8, !tbaa !1050
  %i.am = zext i32 %i.al to i64
  %i.an = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsEm(ptr noundef nonnull align 8 dereferenceable(48) %.0.i.i10, i64 noundef %i.am) #23 ; 4 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 24
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !1095
  %i.aq = getelementptr inbounds nuw i8, ptr %i.an, i64 32 ; 3 uses
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !1096 ; 2 uses
  %i.as = ptrtoint ptr %i.ap to i64
  %i.at = ptrtoint ptr %i.ar to i64
  %i.au = sub i64 %i.as, %i.at
  %i.av = icmp ult i64 %i.au, 12
  br i1 %i.av, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit11
  %i.aw = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.an, ptr noundef nonnull @.str.2, i64 noundef 12) #23 ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.aw, i64 32
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !1096
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit14

bb.i:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit11
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(12) %i.ar, ptr noundef nonnull align 1 dereferenceable(12) @.str.2, i64 12, i1 false)
  %i.ax = load ptr, ptr %i.aq, align 8, !tbaa !1096
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 12 ; 2 uses
  store ptr %i.ay, ptr %i.aq, align 8, !tbaa !1096
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit14

_ZN4llvm11raw_ostreamlsEPKc.exit14:               ; preds = %bb.h, %bb.i
  %i.az = phi ptr [ %.pre, %bb.h ], [ %i.ay, %bb.i ] ; 2 uses
  %.0.i.i13 = phi ptr [ %i.aw, %bb.h ], [ %i.an, %bb.i ] ; 4 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.0.i.i13, i64 24
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !1095
  %i.bc = ptrtoint ptr %i.bb to i64
  %i.bd = ptrtoint ptr %i.az to i64
  %i.be = sub i64 %i.bc, %i.bd
  %i.bf = icmp ult i64 %i.be, 2
  br i1 %i.bf, label %bb.j, label %bb.k

bb.j:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit14
  %i.bg = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %.0.i.i13, ptr noundef nonnull @.str.3, i64 noundef 2) #23
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit17

bb.k:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit14
  %i.bh = getelementptr inbounds nuw i8, ptr %.0.i.i13, i64 32 ; 2 uses
  store i16 8224, ptr %i.az, align 1
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !1096
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 2
  store ptr %i.bj, ptr %i.bh, align 8, !tbaa !1096
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit17

_ZN4llvm11raw_ostreamlsEPKc.exit17:               ; preds = %bb.j, %bb.k
  %.0.i.i16 = phi ptr [ %i.bg, %bb.j ], [ %.0.i.i13, %bb.k ]
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 100
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !1048
  %i.bm = zext i32 %i.bl to i64
  %i.bn = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsEm(ptr noundef nonnull align 8 dereferenceable(48) %.0.i.i16, i64 noundef %i.bm) #23 ; 4 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 24
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !1095
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bn, i64 32 ; 3 uses
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !1096 ; 2 uses
  %i.bs = ptrtoint ptr %i.bp to i64
  %i.bt = ptrtoint ptr %i.br to i64
  %i.bu = sub i64 %i.bs, %i.bt
  %i.bv = icmp ult i64 %i.bu, 19
  br i1 %i.bv, label %bb.l, label %bb.m

bb.l:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit17
  %i.bw = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.bn, ptr noundef nonnull @.str.4, i64 noundef 19) #23 ; 2 uses
  %.phi.trans.insert72 = getelementptr inbounds nuw i8, ptr %i.bw, i64 32
  %.pre73 = load ptr, ptr %.phi.trans.insert72, align 8, !tbaa !1096
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit20

bb.m:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit17
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(19) %i.br, ptr noundef nonnull align 1 dereferenceable(19) @.str.4, i64 19, i1 false)
  %i.bx = load ptr, ptr %i.bq, align 8, !tbaa !1096
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 19 ; 2 uses
  store ptr %i.by, ptr %i.bq, align 8, !tbaa !1096
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit20

_ZN4llvm11raw_ostreamlsEPKc.exit20:               ; preds = %bb.l, %bb.m
  %i.bz = phi ptr [ %.pre73, %bb.l ], [ %i.by, %bb.m ] ; 2 uses
  %.0.i.i19 = phi ptr [ %i.bw, %bb.l ], [ %i.bn, %bb.m ] ; 4 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %.0.i.i19, i64 24
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !1095
  %i.cc = ptrtoint ptr %i.cb to i64
  %i.cd = ptrtoint ptr %i.bz to i64
  %i.ce = sub i64 %i.cc, %i.cd
  %i.cf = icmp ult i64 %i.ce, 2
  br i1 %i.cf, label %bb.n, label %bb.o

bb.n:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit20
  %i.cg = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %.0.i.i19, ptr noundef nonnull @.str.3, i64 noundef 2) #23
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit23

bb.o:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit20
  %i.ch = getelementptr inbounds nuw i8, ptr %.0.i.i19, i64 32 ; 2 uses
  store i16 8224, ptr %i.bz, align 1
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !1096
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 2
  store ptr %i.cj, ptr %i.ch, align 8, !tbaa !1096
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit23

_ZN4llvm11raw_ostreamlsEPKc.exit23:               ; preds = %bb.n, %bb.o
  %.0.i.i22 = phi ptr [ %i.cg, %bb.n ], [ %.0.i.i19, %bb.o ]
  %i.ck = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsEm(ptr noundef nonnull align 8 dereferenceable(48) %.0.i.i22, i64 noundef %i.v) #23 ; 4 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 24
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !1095
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ck, i64 32 ; 3 uses
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !1096 ; 2 uses
  %i.cp = ptrtoint ptr %i.cm to i64
  %i.cq = ptrtoint ptr %i.co to i64
  %i.cr = sub i64 %i.cp, %i.cq
  %i.cs = icmp ult i64 %i.cr, 34
  br i1 %i.cs, label %bb.p, label %bb.q

end_hunk_0
