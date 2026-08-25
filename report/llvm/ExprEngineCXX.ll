Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/ExprEngineCXX?download=true
inline.NumInlined: 2904
inline.NumDeleted: 1635
begin_hunk_0_@_ZN5clang4ento10ExprEngine16VisitCXXThisExprEPKNS_11CXXThisExprEPNS0_12ExplodedNodeERNS0_15ExplodedNodeSetE:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  %i.ak = load ptr, ptr %7, align 8, !tbaa !171   ; 2 uses
  %.not.i.i22 = icmp eq ptr %i.ak, null
  br i1 %.not.i.i22, label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit24, label %bb.g

bb.g:                                             ; preds = %_ZN5clang4ento11NodeBuilder12generateNodeEPKNS_4StmtEPNS0_12ExplodedNodeEN4llvm18IntrusiveRefCntPtrIKNS0_12ProgramStateEEEPKNS_15ProgramPointTagENS_12ProgramPoint4KindE.exit
  call void @_ZN5clang4ento19ProgramStateReleaseEPKNS0_12ProgramStateE(ptr noundef nonnull %i.ak) #15
  br label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit24

_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit24: ; preds = %_ZN5clang4ento11NodeBuilder12generateNodeEPKNS_4StmtEPNS0_12ExplodedNodeEN4llvm18IntrusiveRefCntPtrIKNS0_12ProgramStateEEEPKNS_15ProgramPointTagENS_12ProgramPoint4KindE.exit, %bb.g
  call void @_ZN5clang4ento19ProgramStateReleaseEPKNS0_12ProgramStateE(ptr noundef nonnull %i.ad) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #15
  ret void
}

declare noundef ptr @_ZN5clang4ento16MemRegionManager16getCXXThisRegionENS_8QualTypeEPKNS_10StackFrameE(ptr noundef nonnull align 8 dereferenceable(152), i64, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN5clang4ento10ExprEngine15VisitLambdaExprEPKNS_10LambdaExprEPNS0_12ExplodedNodeERNS0_15ExplodedNodeSetE(ptr noundef nonnull align 8 dereferenceable(812) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(72) %3) local_unnamed_addr #0 align 2 {
bb.a:
  %4 = alloca %"class.clang::ento::EnvironmentEntry", align 8 ; 4 uses
  %5 = alloca %"class.clang::ento::EnvironmentEntry", align 8 ; 4 uses
  %6 = alloca %"class.clang::ProgramPoint", align 8 ; 4 uses
  %7 = alloca %"class.llvm::IntrusiveRefCntPtr", align 8 ; 5 uses
  %i.a = alloca ptr, align 8                      ; 4 uses
  %8 = alloca %"class.std::optional.607", align 8 ; 5 uses
  %9 = alloca %"class.llvm::IntrusiveRefCntPtr", align 8 ; 3 uses
  %10 = alloca %"class.clang::ConstructionContextItem", align 8 ; 6 uses
  %11 = alloca %"class.llvm::IntrusiveRefCntPtr", align 8 ; 3 uses
  %12 = alloca %"class.llvm::IntrusiveRefCntPtr", align 8 ; 3 uses
  %13 = alloca %"class.clang::ConstructionContextItem", align 8 ; 6 uses
  %14 = alloca %"class.llvm::IntrusiveRefCntPtr", align 8 ; 4 uses
  %15 = alloca %"class.clang::ento::ExplodedNodeSet", align 8 ; 12 uses
  %16 = alloca %"class.clang::ento::NodeBuilder", align 8 ; 6 uses
  %17 = alloca %"class.llvm::IntrusiveRefCntPtr", align 8 ; 3 uses
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %.sroa.3.0.copyload.i = load i64, ptr %.sroa.3.0..sroa_idx.i, align 8, !tbaa !174
  %i.b = and i64 %.sroa.3.0.copyload.i, -8
  %i.c = inttoptr i64 %i.b to ptr                 ; 7 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 584
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !318, !nonnull !234, !align !311
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 232
  %i.g = tail call noundef ptr @_ZN5clang4ento16MemRegionManager22getCXXTempObjectRegionEPKNS_4ExprEPKNS_10StackFrameE(ptr noundef nonnull align 8 dereferenceable(152) %i.f, ptr noundef %1, ptr noundef %i.c) #15 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !171  ; 4 uses
  %.not.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i, label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5clang4ento18ProgramStateRetainEPKNS0_12ProgramStateE(ptr noundef nonnull %i.i) #15
  br label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit

_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit: ; preds = %bb.a, %bb.b
  %i.j = tail call noundef ptr @_ZNK5clang10LambdaExpr14getLambdaClassEv(ptr noundef nonnull align 8 dereferenceable(32) %1) #15
  %i.k = tail call ptr @_ZNK5clang10RecordDecl11field_beginEv(ptr noundef nonnull align 8 dereferenceable(128) %i.j) #15 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.n = load i16, ptr %i.m, align 4              ; 2 uses
  %i.o = zext i16 %i.n to i64
  %.idx = shl nuw nsw i64 %i.o, 3
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 %.idx
  %i.q = icmp ne ptr %i.k, null
  %i.r = icmp ne i16 %i.n, 0
  %or.cond142148 = select i1 %i.q, i1 %i.r, i1 false
  br i1 %or.cond142148, label %.lr.ph, label %_ZNK4llvm20iterator_facade_baseINS_6detail12zip_shortestIJNS1_15SafeIntIteratorIjLb0EEEN5clang11DeclContext22specific_decl_iteratorINS5_9FieldDeclEEEPKPNS5_4ExprEEEESt20forward_iterator_tagSt5tupleIJjPS8_RSC_EElPSJ_SJ_EneERKSE_.exit.thread

.lr.ph:                                           ; preds = %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.u = getelementptr inbounds nuw i8, ptr %10, i64 12
  %i.v = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.w = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.x = getelementptr inbounds nuw i8, ptr %13, i64 12
  br label %bb.j

_ZNK4llvm20iterator_facade_baseINS_6detail12zip_shortestIJNS1_15SafeIntIteratorIjLb0EEEN5clang11DeclContext22specific_decl_iteratorINS5_9FieldDeclEEEPKPNS5_4ExprEEEESt20forward_iterator_tagSt5tupleIJjPS8_RSC_EElPSJ_SJ_EneERKSE_.exit.thread: ; preds = %_ZN4llvm6detail10zip_commonINS0_12zip_shortestIJNS0_15SafeIntIteratorIjLb0EEEN5clang11DeclContext22specific_decl_iteratorINS5_9FieldDeclEEEPKPNS5_4ExprEEEESt5tupleIJjPS8_RSC_EEJS4_S9_SD_EEppEv.exit, %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit
  %.sroa.0127.0.lcssa = phi ptr [ %i.i, %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit ], [ %.sroa.0127.3, %_ZN4llvm6detail10zip_commonINS0_12zip_shortestIJNS0_15SafeIntIteratorIjLb0EEEN5clang11DeclContext22specific_decl_iteratorINS5_9FieldDeclEEEPKPNS5_4ExprEEEESt5tupleIJjPS8_RSC_EEJS4_S9_SD_EEppEv.exit ] ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.0127.0.lcssa, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !256
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 96
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !314 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.0127.0.lcssa, i64 24
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !1008
  %i.ae = load ptr, ptr %i.ab, align 8, !tbaa !175
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %i.ag = load ptr, ptr %i.af, align 8
  %i.ah = call { ptr, i8 } %i.ag(ptr noundef nonnull align 8 dereferenceable(40) %i.ab, ptr noundef %i.ad, ptr %i.g, i8 4, i64 0) #15, !inline_history !1009 ; 2 uses
  %.fca.0.extract = extractvalue { ptr, i8 } %i.ah, 0
  %.fca.1.extract = extractvalue { ptr, i8 } %i.ah, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %15, i8 0, i64 24, i1 false)
  %i.ai = getelementptr inbounds nuw i8, ptr %15, i64 24 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %15, i64 40 ; 2 uses
  store ptr %i.aj, ptr %i.ai, align 8, !tbaa !181
  %i.ak = getelementptr inbounds nuw i8, ptr %15, i64 32
  store i32 0, ptr %i.ak, align 8, !tbaa !183
  %i.al = getelementptr inbounds nuw i8, ptr %15, i64 36
  store i32 4, ptr %i.al, align 4, !tbaa !184
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #15
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 600
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !8
  store ptr %i.an, ptr %16, align 8, !tbaa !149
  %i.ao = getelementptr inbounds nuw i8, ptr %16, i64 8
  store i8 0, ptr %i.ao, align 8, !tbaa !150
  %i.ap = getelementptr inbounds nuw i8, ptr %16, i64 16
  store ptr %15, ptr %i.ap, align 8, !tbaa !153
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %2, ptr %i.a, align 8, !tbaa !154
  %.not.i.i80 = icmp eq ptr %2, null
  br i1 %.not.i.i80, label %_ZN5clang4ento11NodeBuilderC2EPNS0_12ExplodedNodeERNS0_15ExplodedNodeSetERKNS0_18NodeBuilderContextE.exit, label %bb.c

bb.c:                                             ; preds = %_ZNK4llvm20iterator_facade_baseINS_6detail12zip_shortestIJNS1_15SafeIntIteratorIjLb0EEEN5clang11DeclContext22specific_decl_iteratorINS5_9FieldDeclEEEPKPNS5_4ExprEEEESt20forward_iterator_tagSt5tupleIJjPS8_RSC_EElPSJ_SJ_EneERKSE_.exit.thread
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !155
  %i.as = trunc i64 %i.ar to i1
  br i1 %i.as, label %_ZN5clang4ento11NodeBuilderC2EPNS0_12ExplodedNodeERNS0_15ExplodedNodeSetERKNS0_18NodeBuilderContextE.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.at = call noundef zeroext i1 @_ZN4llvm9SetVectorIPN5clang4ento12ExplodedNodeENS_11SmallVectorIS4_Lj4EEENS_8DenseSetIS4_NS_12DenseMapInfoIS4_vEEEELj4EE6insertERKS4_(ptr noundef nonnull align 8 dereferenceable(72) %15, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  br label %_ZN5clang4ento11NodeBuilderC2EPNS0_12ExplodedNodeERNS0_15ExplodedNodeSetERKNS0_18NodeBuilderContextE.exit

_ZN5clang4ento11NodeBuilderC2EPNS0_12ExplodedNodeERNS0_15ExplodedNodeSetERKNS0_18NodeBuilderContextE.exit: ; preds = %_ZNK4llvm20iterator_facade_baseINS_6detail12zip_shortestIJNS1_15SafeIntIteratorIjLb0EEEN5clang11DeclContext22specific_decl_iteratorINS5_9FieldDeclEEEPKPNS5_4ExprEEEESt20forward_iterator_tagSt5tupleIJjPS8_RSC_EElPSJ_SJ_EneERKSE_.exit.thread, %bb.c, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @_ZNK5clang4ento12ProgramState8BindExprEPKNS_4ExprEPKNS_10StackFrameENS0_4SValEb(ptr dead_on_unwind nonnull writable sret(%"class.llvm::IntrusiveRefCntPtr") align 8 %17, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.0127.0.lcssa, ptr noundef nonnull %1, ptr noundef %i.c, ptr %.fca.0.extract, i8 %.fca.1.extract, i1 noundef zeroext true) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #15
  %.sroa.3.0.copyload.i.i = load i64, ptr %.sroa.3.0..sroa_idx.i, align 8, !tbaa !174
  %i.au = and i64 %.sroa.3.0.copyload.i.i, -8
  %i.av = inttoptr i64 %i.au to ptr
  call void @_ZN5clang12ProgramPoint15getProgramPointEPKNS_4StmtENS0_4KindEPKNS_10StackFrameEPKNS_15ProgramPointTagE(ptr dead_on_unwind nonnull writable sret(%"class.clang::ProgramPoint") align 8 %6, ptr noundef nonnull %1, i32 noundef 12, ptr noundef %i.av, ptr noundef null) #15
  %i.aw = load ptr, ptr %17, align 8, !tbaa !171  ; 3 uses
  store ptr %i.aw, ptr %7, align 8, !tbaa !171
  %.not.i.i.i = icmp eq ptr %i.aw, null
  br i1 %.not.i.i.i, label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit.i, label %bb.e

bb.e:                                             ; preds = %_ZN5clang4ento11NodeBuilderC2EPNS0_12ExplodedNodeERNS0_15ExplodedNodeSetERKNS0_18NodeBuilderContextE.exit
  call void @_ZN5clang4ento18ProgramStateRetainEPKNS0_12ProgramStateE(ptr noundef nonnull %i.aw) #15
  br label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit.i

_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit.i: ; preds = %bb.e, %_ZN5clang4ento11NodeBuilderC2EPNS0_12ExplodedNodeERNS0_15ExplodedNodeSetERKNS0_18NodeBuilderContextE.exit
  %i.ax = call noundef ptr @_ZN5clang4ento11NodeBuilder12generateNodeERKNS_12ProgramPointEN4llvm18IntrusiveRefCntPtrIKNS0_12ProgramStateEEEPNS0_12ExplodedNodeEb(ptr noundef nonnull align 8 dereferenceable(24) %16, ptr noundef nonnull align 8 dereferenceable(48) %6, ptr nofree noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull %2, i1 noundef zeroext false) #15 ; 0 uses
  %i.ay = load ptr, ptr %7, align 8, !tbaa !171   ; 2 uses
  %.not.i.i6.i = icmp eq ptr %i.ay, null
  br i1 %.not.i.i6.i, label %_ZN5clang4ento11NodeBuilder12generateNodeEPKNS_4StmtEPNS0_12ExplodedNodeEN4llvm18IntrusiveRefCntPtrIKNS0_12ProgramStateEEEPKNS_15ProgramPointTagENS_12ProgramPoint4KindE.exit, label %bb.f

bb.f:                                             ; preds = %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit.i
  call void @_ZN5clang4ento19ProgramStateReleaseEPKNS0_12ProgramStateE(ptr noundef nonnull %i.ay) #15
  br label %_ZN5clang4ento11NodeBuilder12generateNodeEPKNS_4StmtEPNS0_12ExplodedNodeEN4llvm18IntrusiveRefCntPtrIKNS0_12ProgramStateEEEPKNS_15ProgramPointTagENS_12ProgramPoint4KindE.exit

_ZN5clang4ento11NodeBuilder12generateNodeEPKNS_4StmtEPNS0_12ExplodedNodeEN4llvm18IntrusiveRefCntPtrIKNS0_12ProgramStateEEEPKNS_15ProgramPointTagENS_12ProgramPoint4KindE.exit: ; preds = %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit.i, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  %i.az = load ptr, ptr %17, align 8, !tbaa !171  ; 2 uses
  %.not.i.i81 = icmp eq ptr %i.az, null
  br i1 %.not.i.i81, label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit, label %bb.g

bb.g:                                             ; preds = %_ZN5clang4ento11NodeBuilder12generateNodeEPKNS_4StmtEPNS0_12ExplodedNodeEN4llvm18IntrusiveRefCntPtrIKNS0_12ProgramStateEEEPKNS_15ProgramPointTagENS_12ProgramPoint4KindE.exit
  call void @_ZN5clang4ento19ProgramStateReleaseEPKNS0_12ProgramStateE(ptr noundef nonnull %i.az) #15
  br label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit

_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit: ; preds = %_ZN5clang4ento11NodeBuilder12generateNodeEPKNS_4StmtEPNS0_12ExplodedNodeEN4llvm18IntrusiveRefCntPtrIKNS0_12ProgramStateEEEPKNS_15ProgramPointTagENS_12ProgramPoint4KindE.exit, %bb.g
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !377, !nonnull !234, !align !311
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 256
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !551
  call void @_ZN5clang4ento14CheckerManager18runCheckersForStmtEbRNS0_15ExplodedNodeSetERKS2_PKNS_4StmtERNS0_10ExprEngineEb(ptr noundef nonnull align 8 dereferenceable(1864) %i.bd, i1 noundef zeroext false, ptr noundef nonnull align 8 dereferenceable(72) %3, ptr noundef nonnull align 8 dereferenceable(72) %15, ptr noundef nonnull %1, ptr noundef nonnull align 8 dereferenceable(812) %0, i1 noundef zeroext false) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #15
  %i.be = load ptr, ptr %i.ai, align 8, !tbaa !181 ; 2 uses
  %i.bf = icmp eq ptr %i.be, %i.aj
  br i1 %i.bf, label %_ZN4llvm11SmallVectorIPN5clang4ento12ExplodedNodeELj4EED2Ev.exit.i.i, label %bb.h

bb.h:                                             ; preds = %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit
  call void @free(ptr noundef %i.be) #15
  br label %_ZN4llvm11SmallVectorIPN5clang4ento12ExplodedNodeELj4EED2Ev.exit.i.i

_ZN4llvm11SmallVectorIPN5clang4ento12ExplodedNodeELj4EED2Ev.exit.i.i: ; preds = %bb.h, %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit
  %i.bg = getelementptr inbounds nuw i8, ptr %15, i64 20
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !188 ; 2 uses
  %i.bi = icmp eq i32 %i.bh, 0
  br i1 %i.bi, label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit83, label %bb.i

bb.i:                                             ; preds = %_ZN4llvm11SmallVectorIPN5clang4ento12ExplodedNodeELj4EED2Ev.exit.i.i
  %i.bj = load ptr, ptr %15, align 8, !tbaa !191
  %i.bk = zext i32 %i.bh to i64                   ; 2 uses
  %i.bl = shl nuw nsw i64 %i.bk, 3
  %i.bm = add nuw nsw i64 %i.bk, 31
  %i.bn = lshr i64 %i.bm, 3
  %i.bo = and i64 %i.bn, 1073741820
  %i.bp = add nuw nsw i64 %i.bo, %i.bl
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.bj, i64 noundef %i.bp, i64 noundef 8) #15
  br label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit83

_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit83: ; preds = %_ZN4llvm11SmallVectorIPN5clang4ento12ExplodedNodeELj4EED2Ev.exit.i.i, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #15
  call void @_ZN5clang4ento19ProgramStateReleaseEPKNS0_12ProgramStateE(ptr noundef nonnull %.sroa.0127.0.lcssa) #15
  ret void

bb.j:                                             ; preds = %.lr.ph, %_ZN4llvm6detail10zip_commonINS0_12zip_shortestIJNS0_15SafeIntIteratorIjLb0EEEN5clang11DeclContext22specific_decl_iteratorINS5_9FieldDeclEEEPKPNS5_4ExprEEEESt5tupleIJjPS8_RSC_EEJS4_S9_SD_EEppEv.exit
  %.sroa.0127.0152 = phi ptr [ %i.i, %.lr.ph ], [ %.sroa.0127.3, %_ZN4llvm6detail10zip_commonINS0_12zip_shortestIJNS0_15SafeIntIteratorIjLb0EEEN5clang11DeclContext22specific_decl_iteratorINS5_9FieldDeclEEEPKPNS5_4ExprEEEESt5tupleIJjPS8_RSC_EEJS4_S9_SD_EEppEv.exit ] ; 16 uses
  %.sroa.0110.0152 = phi ptr [ %i.l, %.lr.ph ], [ %i.es, %_ZN4llvm6detail10zip_commonINS0_12zip_shortestIJNS0_15SafeIntIteratorIjLb0EEEN5clang11DeclContext22specific_decl_iteratorINS5_9FieldDeclEEEPKPNS5_4ExprEEEESt5tupleIJjPS8_RSC_EEJS4_S9_SD_EEppEv.exit ] ; 2 uses
  %.sroa.7113.0150 = phi ptr [ %i.k, %.lr.ph ], [ %.sroa.7113.2, %_ZN4llvm6detail10zip_commonINS0_12zip_shortestIJNS0_15SafeIntIteratorIjLb0EEEN5clang11DeclContext22specific_decl_iteratorINS5_9FieldDeclEEEPKPNS5_4ExprEEEESt5tupleIJjPS8_RSC_EEJS4_S9_SD_EEppEv.exit ] ; 5 uses
  %.sroa.13.0149 = phi i64 [ 0, %.lr.ph ], [ %i.eg, %_ZN4llvm6detail10zip_commonINS0_12zip_shortestIJNS0_15SafeIntIteratorIjLb0EEEN5clang11DeclContext22specific_decl_iteratorINS5_9FieldDeclEEEPKPNS5_4ExprEEEESt5tupleIJjPS8_RSC_EEJS4_S9_SD_EEppEv.exit ] ; 2 uses
  %i.bq = trunc i64 %.sroa.13.0149 to i32         ; 2 uses
  %i.br = call { ptr, i8 } @_ZNK5clang4ento12ProgramState9getLValueEPKNS_9FieldDeclENS0_4SValE(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.0127.0152, ptr noundef nonnull %.sroa.7113.0150, ptr %i.g, i8 4) #15 ; 2 uses
  %.fca.0.extract32 = extractvalue { ptr, i8 } %i.br, 0
  %.fca.1.extract33 = extractvalue { ptr, i8 } %i.br, 1 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %.sroa.7113.0150, i64 68
  %i.bt = load i32, ptr %i.bs, align 4
  %i.bu = and i32 %i.bt, 12
  %i.bv = icmp eq i32 %i.bu, 12
  br i1 %i.bv, label %bb.q, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bw = getelementptr inbounds nuw i8, ptr %.sroa.7113.0150, i64 48
  %.sroa.0.0.copyload.i = load i64, ptr %i.bw, align 8, !tbaa !174 ; 2 uses
  %i.bx = and i64 %.sroa.0.0.copyload.i, -16
  %i.by = inttoptr i64 %i.bx to ptr
  %i.bz = load ptr, ptr %i.by, align 16, !tbaa !312
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  %.sroa.0.0.copyload.i.i.i.i84 = load i64, ptr %i.ca, align 8, !tbaa !174
  %i.cb = and i64 %.sroa.0.0.copyload.i.i.i.i84, -16
  %i.cc = inttoptr i64 %i.cb to ptr
  %i.cd = load ptr, ptr %i.cc, align 16, !tbaa !312
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 16
  %i.cf = load i8, ptr %i.ce, align 16
  %i.cg = and i8 %i.cf, -2
  %spec.select.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.cg, 2
  br i1 %spec.select.i.i.i.i.i.i.i.i.i, label %bb.l, label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit87

bb.l:                                             ; preds = %bb.k
  %i.ch = load ptr, ptr %i.s, align 8, !tbaa !377, !nonnull !234, !align !311 ; 2 uses
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !175
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 24
  %i.ck = load ptr, ptr %i.cj, align 8
  %i.cl = call noundef nonnull align 8 dereferenceable(23904) ptr %i.ck(ptr noundef nonnull align 8 dereferenceable(272) %i.ch) #15, !inline_history !418
  %i.cm = load ptr, ptr %i.s, align 8, !tbaa !377, !nonnull !234, !align !311 ; 2 uses
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !175
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 24
  %i.cp = load ptr, ptr %i.co, align 8
  %i.cq = call noundef nonnull align 8 dereferenceable(23904) ptr %i.cp(ptr noundef nonnull align 8 dereferenceable(272) %i.cm) #15, !inline_history !418
  %i.cr = call noundef ptr @_ZNK5clang10ASTContext14getAsArrayTypeENS_8QualTypeE(ptr noundef nonnull align 8 dereferenceable(23904) %i.cq, i64 %.sroa.0.0.copyload.i) #15 ; 3 uses
  %.not.i.i.i85 = icmp eq ptr %i.cr, null
  br i1 %.not.i.i.i85, label %_ZNK5clang10ASTContext22getAsConstantArrayTypeENS_8QualTypeE.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 16
  %i.ct = load i8, ptr %i.cs, align 16
  %i.cu = and i8 %i.ct, -2
  %spec.select.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.cu, 2
  %spec.select.i.i.i.i = select i1 %spec.select.i.i.i.i.i.i.i.i.i.i, ptr %i.cr, ptr null
  br label %_ZNK5clang10ASTContext22getAsConstantArrayTypeENS_8QualTypeE.exit

_ZNK5clang10ASTContext22getAsConstantArrayTypeENS_8QualTypeE.exit: ; preds = %bb.l, %bb.m
  %.0.i.i.i = phi ptr [ %spec.select.i.i.i.i, %bb.m ], [ null, %bb.l ]
  %i.cv = call noundef i64 @_ZNK5clang10ASTContext28getConstantArrayElementCountEPKNS_17ConstantArrayTypeE(ptr noundef nonnull align 8 dereferenceable(23904) %i.cl, ptr noundef %.0.i.i.i) #15
  %i.cw = icmp eq i64 %i.cv, 0
  br i1 %i.cw, label %bb.t, label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit87

_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit87: ; preds = %_ZNK5clang10ASTContext22getAsConstantArrayTypeENS_8QualTypeE.exit, %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #15
  store ptr %.sroa.0127.0152, ptr %9, align 8, !tbaa !171
  call void @_ZN5clang4ento18ProgramStateRetainEPKNS0_12ProgramStateE(ptr noundef nonnull %.sroa.0127.0152) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #15
  store ptr %1, ptr %10, align 8, !tbaa !403
  store i32 8, ptr %i.t, align 8, !tbaa !406
  store i32 %i.bq, ptr %i.u, align 4, !tbaa !407
  call void @_ZN5clang4ento10ExprEngine26getObjectUnderConstructionEN4llvm18IntrusiveRefCntPtrIKNS0_12ProgramStateEEERKNS_23ConstructionContextItemEPKNS_10StackFrameE(ptr dead_on_unwind nonnull writable sret(%"class.std::optional.607") align 8 %8, ptr nofree noundef nonnull align 8 dereferenceable(8) %9, ptr noundef nonnull align 8 dereferenceable(16) %10, ptr noundef %i.c) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #15
  %i.cx = load ptr, ptr %9, align 8, !tbaa !171   ; 2 uses
  %.not.i.i88 = icmp eq ptr %i.cx, null
  br i1 %.not.i.i88, label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit89, label %bb.n

bb.n:                                             ; preds = %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit87
  call void @_ZN5clang4ento19ProgramStateReleaseEPKNS0_12ProgramStateE(ptr noundef nonnull %i.cx) #15
  br label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit89

_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit89: ; preds = %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit87, %bb.n
  %i.cy = load i8, ptr %i.v, align 8, !tbaa !494, !range !399, !noundef !234
  %i.cz = trunc nuw i8 %i.cy to i1
  br i1 %i.cz, label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit93, label %bb.p

_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit93: ; preds = %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit89
  %i.da = call noundef ptr @_ZNK5clang4ento4SVal11getAsRegionEv(ptr noundef nonnull align 8 dereferenceable(9) %8) #15
  %i.db = getelementptr inbounds nuw i8, ptr %.sroa.0127.0152, i64 8
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !256
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 96
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !314 ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %.sroa.0127.0152, i64 24
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !1008
  %i.dh = load ptr, ptr %i.de, align 8, !tbaa !175
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 16
  %i.dj = load ptr, ptr %i.di, align 8
  %i.dk = call { ptr, i8 } %i.dj(ptr noundef nonnull align 8 dereferenceable(40) %i.de, ptr noundef %i.dg, ptr %i.da, i8 4, i64 0) #15, !inline_history !1009 ; 2 uses
  store ptr %.sroa.0127.0152, ptr %12, align 8, !tbaa !171
  call void @_ZN5clang4ento18ProgramStateRetainEPKNS0_12ProgramStateE(ptr noundef nonnull %.sroa.0127.0152) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #15
  store ptr %1, ptr %13, align 8, !tbaa !403
  store i32 8, ptr %i.w, align 8, !tbaa !406
  store i32 %i.bq, ptr %i.x, align 4, !tbaa !407
  call void @_ZN5clang4ento10ExprEngine24finishObjectConstructionEN4llvm18IntrusiveRefCntPtrIKNS0_12ProgramStateEEERKNS_23ConstructionContextItemEPKNS_10StackFrameE(ptr dead_on_unwind nonnull writable sret(%"class.llvm::IntrusiveRefCntPtr") align 8 %11, ptr nofree noundef nonnull align 8 dereferenceable(8) %12, ptr noundef nonnull align 8 dereferenceable(16) %13, ptr noundef %i.c) #15
  %i.dl = load ptr, ptr %11, align 8, !tbaa !171  ; 2 uses
  store ptr %.sroa.0127.0152, ptr %11, align 8, !tbaa !171
  call void @_ZN5clang4ento19ProgramStateReleaseEPKNS0_12ProgramStateE(ptr noundef nonnull %.sroa.0127.0152) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #15
  %i.dm = load ptr, ptr %12, align 8, !tbaa !171  ; 2 uses
  %.not.i.i94 = icmp eq ptr %i.dm, null
  br i1 %.not.i.i94, label %.critedge, label %bb.o

bb.o:                                             ; preds = %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit93
  call void @_ZN5clang4ento19ProgramStateReleaseEPKNS0_12ProgramStateE(ptr noundef nonnull %i.dm) #15
  br label %.critedge

bb.p:                                             ; preds = %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit89
  %i.dn = load ptr, ptr %.sroa.0110.0152, align 8, !tbaa !465
  %i.do = getelementptr inbounds nuw i8, ptr %.sroa.0127.0152, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #15
  call void @_ZN5clang4ento16EnvironmentEntryC1EPKNS_4ExprEPKNS_10StackFrameE(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef %i.dn, ptr noundef %i.c) #15
  %i.dp = getelementptr inbounds nuw i8, ptr %.sroa.0127.0152, i64 8
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !256
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 240
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !267
  %i.dt = call { ptr, i8 } @_ZNK5clang4ento11Environment7getSValERKNS0_16EnvironmentEntryERNS0_11SValBuilderE(ptr noundef nonnull align 8 dereferenceable(8) %i.do, ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(412) %i.ds) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #15
  br label %.critedge

.critedge:                                        ; preds = %bb.o, %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit93, %bb.p
  %.pn = phi { ptr, i8 } [ %i.dt, %bb.p ], [ %i.dk, %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit93 ], [ %i.dk, %bb.o ]
  %.sroa.0127.1 = phi ptr [ %.sroa.0127.0152, %bb.p ], [ %i.dl, %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit93 ], [ %i.dl, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #15
  br label %bb.r

bb.q:                                             ; preds = %bb.j
  %i.du = getelementptr inbounds nuw i8, ptr %.sroa.7113.0150, i64 72
  %i.dv = load ptr, ptr %i.du, align 8
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 40
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !1010
  %i.dy = getelementptr inbounds nuw i8, ptr %.sroa.0127.0152, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #15
  call void @_ZN5clang4ento16EnvironmentEntryC1EPKNS_4ExprEPKNS_10StackFrameE(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef %i.dx, ptr noundef %i.c) #15
  %i.dz = getelementptr inbounds nuw i8, ptr %.sroa.0127.0152, i64 8
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !256
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 240
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !267
  %i.ed = call { ptr, i8 } @_ZNK5clang4ento11Environment7getSValERKNS0_16EnvironmentEntryERNS0_11SValBuilderE(ptr noundef nonnull align 8 dereferenceable(8) %i.dy, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(412) %i.ec) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15
  br label %bb.r

bb.r:                                             ; preds = %.critedge, %bb.q
  %.pn146 = phi { ptr, i8 } [ %i.ed, %bb.q ], [ %.pn, %.critedge ] ; 2 uses
  %.sroa.0127.2 = phi ptr [ %.sroa.0127.0152, %bb.q ], [ %.sroa.0127.1, %.critedge ] ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1013)
  %i.ee = add i8 %.fca.1.extract33, -2
  %spec.select.i.i.i.i.i.i = icmp ult i8 %i.ee, 3
  br i1 %spec.select.i.i.i.i.i.i, label %_ZNK5clang4ento4SVal5getAsINS0_3LocEEESt8optionalIT_Ev.exit.i, label %bb.s

_ZNK5clang4ento4SVal5getAsINS0_3LocEEESt8optionalIT_Ev.exit.i: ; preds = %bb.r
  %.sroa.0101.1 = extractvalue { ptr, i8 } %.pn146, 0
  %.sroa.7.1 = extractvalue { ptr, i8 } %.pn146, 1
  call void @_ZNK5clang4ento12ProgramState7bindLocENS0_3LocENS0_4SValEPKNS_10StackFrameEb(ptr dead_on_unwind nonnull writable sret(%"class.llvm::IntrusiveRefCntPtr") align 8 %14, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.0127.2, ptr %.fca.0.extract32, i8 %.fca.1.extract33, ptr %.sroa.0101.1, i8 %.sroa.7.1, ptr noundef %i.c, i1 noundef zeroext true) #15
  br label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit97

bb.s:                                             ; preds = %bb.r
  store ptr %.sroa.0127.2, ptr %14, align 8, !tbaa !171, !alias.scope !1013
  call void @_ZN5clang4ento18ProgramStateRetainEPKNS0_12ProgramStateE(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.0127.2) #15, !noalias !1013
  br label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit97

_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit97: ; preds = %_ZNK5clang4ento4SVal5getAsINS0_3LocEEESt8optionalIT_Ev.exit.i, %bb.s
  %i.ef = load ptr, ptr %14, align 8, !tbaa !171
  store ptr %.sroa.0127.2, ptr %14, align 8, !tbaa !171
  call void @_ZN5clang4ento19ProgramStateReleaseEPKNS0_12ProgramStateE(ptr noundef nonnull %.sroa.0127.2) #15
  br label %bb.t

bb.t:                                             ; preds = %_ZNK5clang10ASTContext22getAsConstantArrayTypeENS_8QualTypeE.exit, %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit97
  %.sroa.0127.3 = phi ptr [ %i.ef, %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit97 ], [ %.sroa.0127.0152, %_ZNK5clang10ASTContext22getAsConstantArrayTypeENS_8QualTypeE.exit ] ; 2 uses
  %i.eg = add nuw nsw i64 %.sroa.13.0149, 1
  %i.eh = getelementptr inbounds nuw i8, ptr %.sroa.7113.0150, i64 8
  %.0.copyload.i.i.i.i.i.i.i.i = load i64, ptr %i.eh, align 8
  %i.ei = and i64 %.0.copyload.i.i.i.i.i.i.i.i, -8 ; 2 uses
  %i.ej = inttoptr i64 %i.ei to ptr               ; 2 uses
  %.not1.i.i.i.i = icmp eq i64 %i.ei, 0
  br i1 %.not1.i.i.i.i, label %_ZN4llvm6detail10zip_commonINS0_12zip_shortestIJNS0_15SafeIntIteratorIjLb0EEEN5clang11DeclContext22specific_decl_iteratorINS5_9FieldDeclEEEPKPNS5_4ExprEEEESt5tupleIJjPS8_RSC_EEJS4_S9_SD_EEppEv.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.t, %bb.u
  %.sroa.7113.1 = phi ptr [ %i.er, %bb.u ], [ %i.ej, %bb.t ] ; 3 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %.sroa.7113.1, i64 28
  %i.el = load i32, ptr %i.ek, align 4
  %i.em = and i32 %i.el, 127
  %i.en = add nsw i32 %i.em, -50
  %i.eo = icmp ult i32 %i.en, 3
  br i1 %i.eo, label %_ZN4llvm6detail10zip_commonINS0_12zip_shortestIJNS0_15SafeIntIteratorIjLb0EEEN5clang11DeclContext22specific_decl_iteratorINS5_9FieldDeclEEEPKPNS5_4ExprEEEESt5tupleIJjPS8_RSC_EEJS4_S9_SD_EEppEv.exit, label %bb.u

bb.u:                                             ; preds = %.lr.ph.i.i.i.i
  %i.ep = getelementptr inbounds nuw i8, ptr %.sroa.7113.1, i64 8
  %.0.copyload.i.i.i.i.i.i.i.i.i = load i64, ptr %i.ep, align 8
  %i.eq = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i, -8 ; 2 uses
  %i.er = inttoptr i64 %i.eq to ptr               ; 2 uses
  %.not.i.i.i.i = icmp eq i64 %i.eq, 0
  br i1 %.not.i.i.i.i, label %_ZN4llvm6detail10zip_commonINS0_12zip_shortestIJNS0_15SafeIntIteratorIjLb0EEEN5clang11DeclContext22specific_decl_iteratorINS5_9FieldDeclEEEPKPNS5_4ExprEEEESt5tupleIJjPS8_RSC_EEJS4_S9_SD_EEppEv.exit, label %.lr.ph.i.i.i.i, !llvm.loop !1016

_ZN4llvm6detail10zip_commonINS0_12zip_shortestIJNS0_15SafeIntIteratorIjLb0EEEN5clang11DeclContext22specific_decl_iteratorINS5_9FieldDeclEEEPKPNS5_4ExprEEEESt5tupleIJjPS8_RSC_EEJS4_S9_SD_EEppEv.exit: ; preds = %.lr.ph.i.i.i.i, %bb.u, %bb.t
  %.sroa.7113.2 = phi ptr [ %i.ej, %bb.t ], [ %i.er, %bb.u ], [ %.sroa.7113.1, %.lr.ph.i.i.i.i ] ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %.sroa.0110.0152, i64 8 ; 2 uses
  %i.et = icmp ne ptr %.sroa.7113.2, null
  %i.eu = icmp ne ptr %i.es, %i.p
  %or.cond142 = select i1 %i.et, i1 %i.eu, i1 false
  br i1 %or.cond142, label %bb.j, label %_ZNK4llvm20iterator_facade_baseINS_6detail12zip_shortestIJNS1_15SafeIntIteratorIjLb0EEEN5clang11DeclContext22specific_decl_iteratorINS5_9FieldDeclEEEPKPNS5_4ExprEEEESt20forward_iterator_tagSt5tupleIJjPS8_RSC_EElPSJ_SJ_EneERKSE_.exit.thread
}

declare noundef ptr @_ZNK5clang10LambdaExpr14getLambdaClassEv(ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #3

declare noundef i64 @_ZNK5clang10ASTContext28getConstantArrayElementCountEPKNS_17ConstantArrayTypeE(ptr noundef nonnull align 8 dereferenceable(23904), ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN5clang4ento10ExprEngine19VisitAttributedStmtEPKNS_14AttributedStmtEPNS0_12ExplodedNodeERNS0_15ExplodedNodeSetE(ptr noundef nonnull align 8 dereferenceable(812) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(72) %3) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %4 = alloca %"class.clang::PostStmt", align 8   ; 7 uses
  %5 = alloca %"class.llvm::IntrusiveRefCntPtr", align 8 ; 5 uses
  %6 = alloca %"class.llvm::IntrusiveRefCntPtr", align 8 ; 5 uses
  %7 = alloca %"class.clang::ento::EnvironmentEntry", align 8 ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %8 = alloca %"class.clang::ento::ExplodedNodeSet", align 8 ; 10 uses
  %9 = alloca %"class.clang::ento::ExplodedNodeSet", align 8 ; 11 uses
  %10 = alloca %"class.clang::ento::ExplodedNodeSet", align 8 ; 11 uses
  %11 = alloca %"class.llvm::IntrusiveRefCntPtr", align 8 ; 4 uses
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 24
  %.sroa.3.0.copyload.i = load i64, ptr %.sroa.3.0..sroa_idx.i, align 8, !tbaa !174
  %i.c = and i64 %.sroa.3.0.copyload.i, -8
  %i.d = inttoptr i64 %i.c to ptr
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %8, i8 0, i64 24, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %8, i64 24 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %8, i64 40 ; 2 uses
  store ptr %i.f, ptr %i.e, align 8, !tbaa !181
  %i.g = getelementptr inbounds nuw i8, ptr %8, i64 32 ; 2 uses
  store i32 0, ptr %i.g, align 8, !tbaa !183
  %i.h = getelementptr inbounds nuw i8, ptr %8, i64 36
  store i32 4, ptr %i.h, align 4, !tbaa !184
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !377, !nonnull !234, !align !311
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 256
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !551
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %9, i8 0, i64 24, i1 false)
  %i.m = getelementptr inbounds nuw i8, ptr %9, i64 24 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %9, i64 40 ; 2 uses
  store ptr %i.n, ptr %i.m, align 8, !tbaa !181
  %i.o = getelementptr inbounds nuw i8, ptr %9, i64 32
  store i32 0, ptr %i.o, align 8, !tbaa !183
  %i.p = getelementptr inbounds nuw i8, ptr %9, i64 36
  store i32 4, ptr %i.p, align 4, !tbaa !184
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %2, ptr %i.b, align 8, !tbaa !154
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.r = load i64, ptr %i.q, align 8, !tbaa !155
  %i.s = trunc i64 %i.r to i1
  br i1 %i.s, label %_ZN5clang4ento15ExplodedNodeSetC2EPNS0_12ExplodedNodeE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.t = call noundef zeroext i1 @_ZN4llvm9SetVectorIPN5clang4ento12ExplodedNodeENS_11SmallVectorIS4_Lj4EEENS_8DenseSetIS4_NS_12DenseMapInfoIS4_vEEEELj4EE6insertERKS4_(ptr noundef nonnull align 8 dereferenceable(72) %9, ptr noundef nonnull align 8 dereferenceable(8) %i.b) ; 0 uses
  br label %_ZN5clang4ento15ExplodedNodeSetC2EPNS0_12ExplodedNodeE.exit

_ZN5clang4ento15ExplodedNodeSetC2EPNS0_12ExplodedNodeE.exit: ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @_ZN5clang4ento14CheckerManager18runCheckersForStmtEbRNS0_15ExplodedNodeSetERKS2_PKNS_4StmtERNS0_10ExprEngineEb(ptr noundef nonnull align 8 dereferenceable(1864) %i.l, i1 noundef zeroext true, ptr noundef nonnull align 8 dereferenceable(72) %8, ptr noundef nonnull align 8 dereferenceable(72) %9, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(812) %0, i1 noundef zeroext false) #15
  %i.u = load ptr, ptr %i.m, align 8, !tbaa !181  ; 2 uses
  %i.v = icmp eq ptr %i.u, %i.n
  br i1 %i.v, label %_ZN4llvm11SmallVectorIPN5clang4ento12ExplodedNodeELj4EED2Ev.exit.i.i, label %bb.c

bb.c:                                             ; preds = %_ZN5clang4ento15ExplodedNodeSetC2EPNS0_12ExplodedNodeE.exit
  call void @free(ptr noundef %i.u) #15
  br label %_ZN4llvm11SmallVectorIPN5clang4ento12ExplodedNodeELj4EED2Ev.exit.i.i

_ZN4llvm11SmallVectorIPN5clang4ento12ExplodedNodeELj4EED2Ev.exit.i.i: ; preds = %bb.c, %_ZN5clang4ento15ExplodedNodeSetC2EPNS0_12ExplodedNodeE.exit
  %i.w = getelementptr inbounds nuw i8, ptr %9, i64 20
  %i.x = load i32, ptr %i.w, align 4, !tbaa !188  ; 2 uses
  %i.y = icmp eq i32 %i.x, 0
  br i1 %i.y, label %_ZN5clang4ento15ExplodedNodeSetD2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZN4llvm11SmallVectorIPN5clang4ento12ExplodedNodeELj4EED2Ev.exit.i.i
  %i.z = load ptr, ptr %9, align 8, !tbaa !191
  %i.aa = zext i32 %i.x to i64                    ; 2 uses
  %i.ab = shl nuw nsw i64 %i.aa, 3
  %i.ac = add nuw nsw i64 %i.aa, 31
  %i.ad = lshr i64 %i.ac, 3
  %i.ae = and i64 %i.ad, 1073741820
  %i.af = add nuw nsw i64 %i.ae, %i.ab
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.z, i64 noundef %i.af, i64 noundef 8) #15
  br label %_ZN5clang4ento15ExplodedNodeSetD2Ev.exit

_ZN5clang4ento15ExplodedNodeSetD2Ev.exit:         ; preds = %_ZN4llvm11SmallVectorIPN5clang4ento12ExplodedNodeELj4EED2Ev.exit.i.i, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %10, i8 0, i64 24, i1 false)
  %i.ag = getelementptr inbounds nuw i8, ptr %10, i64 24 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %10, i64 40 ; 2 uses
  store ptr %i.ah, ptr %i.ag, align 8, !tbaa !181
  %i.ai = getelementptr inbounds nuw i8, ptr %10, i64 32
  store i32 0, ptr %i.ai, align 8, !tbaa !183
  %i.aj = getelementptr inbounds nuw i8, ptr %10, i64 36
  store i32 4, ptr %i.aj, align 4, !tbaa !184
  %i.ak = load ptr, ptr %i.e, align 8, !tbaa !181 ; 2 uses
  %i.al = load i32, ptr %i.g, align 8, !tbaa !183 ; 2 uses
  %i.am = zext i32 %i.al to i64
  %.idx = shl nuw nsw i64 %i.am, 3
  %i.an = getelementptr inbounds nuw i8, ptr %i.ak, i64 %.idx
  %.not104 = icmp eq i32 %i.al, 0
  br i1 %.not104, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN5clang4ento15ExplodedNodeSetD2Ev.exit
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.aq = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ar = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.as = getelementptr inbounds nuw i8, ptr %4, i64 24
  br label %bb.i

._crit_edge:                                      ; preds = %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit43, %_ZN5clang4ento15ExplodedNodeSetD2Ev.exit
  %i.at = load ptr, ptr %i.i, align 8, !tbaa !377, !nonnull !234, !align !311
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 256
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !551
  call void @_ZN5clang4ento14CheckerManager18runCheckersForStmtEbRNS0_15ExplodedNodeSetERKS2_PKNS_4StmtERNS0_10ExprEngineEb(ptr noundef nonnull align 8 dereferenceable(1864) %i.av, i1 noundef zeroext false, ptr noundef nonnull align 8 dereferenceable(72) %3, ptr noundef nonnull align 8 dereferenceable(72) %10, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(812) %0, i1 noundef zeroext false) #15
  %i.aw = load ptr, ptr %i.ag, align 8, !tbaa !181 ; 2 uses
  %i.ax = icmp eq ptr %i.aw, %i.ah
  br i1 %i.ax, label %_ZN4llvm11SmallVectorIPN5clang4ento12ExplodedNodeELj4EED2Ev.exit.i.i28, label %bb.e

bb.e:                                             ; preds = %._crit_edge
  call void @free(ptr noundef %i.aw) #15
  br label %_ZN4llvm11SmallVectorIPN5clang4ento12ExplodedNodeELj4EED2Ev.exit.i.i28

_ZN4llvm11SmallVectorIPN5clang4ento12ExplodedNodeELj4EED2Ev.exit.i.i28: ; preds = %bb.e, %._crit_edge
  %i.ay = getelementptr inbounds nuw i8, ptr %10, i64 20
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !188 ; 2 uses
  %i.ba = icmp eq i32 %i.az, 0
  br i1 %i.ba, label %_ZN5clang4ento15ExplodedNodeSetD2Ev.exit29, label %bb.f

bb.f:                                             ; preds = %_ZN4llvm11SmallVectorIPN5clang4ento12ExplodedNodeELj4EED2Ev.exit.i.i28
  %i.bb = load ptr, ptr %10, align 8, !tbaa !191
  %i.bc = zext i32 %i.az to i64                   ; 2 uses
  %i.bd = shl nuw nsw i64 %i.bc, 3
  %i.be = add nuw nsw i64 %i.bc, 31
  %i.bf = lshr i64 %i.be, 3
  %i.bg = and i64 %i.bf, 1073741820
  %i.bh = add nuw nsw i64 %i.bg, %i.bd
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.bb, i64 noundef %i.bh, i64 noundef 8) #15
  br label %_ZN5clang4ento15ExplodedNodeSetD2Ev.exit29

_ZN5clang4ento15ExplodedNodeSetD2Ev.exit29:       ; preds = %_ZN4llvm11SmallVectorIPN5clang4ento12ExplodedNodeELj4EED2Ev.exit.i.i28, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #15
  %i.bi = load ptr, ptr %i.e, align 8, !tbaa !181 ; 2 uses
  %i.bj = icmp eq ptr %i.bi, %i.f
  br i1 %i.bj, label %_ZN4llvm11SmallVectorIPN5clang4ento12ExplodedNodeELj4EED2Ev.exit.i.i30, label %bb.g

bb.g:                                             ; preds = %_ZN5clang4ento15ExplodedNodeSetD2Ev.exit29
  call void @free(ptr noundef %i.bi) #15
  br label %_ZN4llvm11SmallVectorIPN5clang4ento12ExplodedNodeELj4EED2Ev.exit.i.i30

_ZN4llvm11SmallVectorIPN5clang4ento12ExplodedNodeELj4EED2Ev.exit.i.i30: ; preds = %bb.g, %_ZN5clang4ento15ExplodedNodeSetD2Ev.exit29
  %i.bk = getelementptr inbounds nuw i8, ptr %8, i64 20
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !188 ; 2 uses
  %i.bm = icmp eq i32 %i.bl, 0
  br i1 %i.bm, label %_ZN5clang4ento15ExplodedNodeSetD2Ev.exit31, label %bb.h

bb.h:                                             ; preds = %_ZN4llvm11SmallVectorIPN5clang4ento12ExplodedNodeELj4EED2Ev.exit.i.i30
  %i.bn = load ptr, ptr %8, align 8, !tbaa !191
  %i.bo = zext i32 %i.bl to i64                   ; 2 uses
  %i.bp = shl nuw nsw i64 %i.bo, 3
  %i.bq = add nuw nsw i64 %i.bo, 31
  %i.br = lshr i64 %i.bq, 3
  %i.bs = and i64 %i.br, 1073741820
  %i.bt = add nuw nsw i64 %i.bs, %i.bp
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.bn, i64 noundef %i.bt, i64 noundef 8) #15
  br label %_ZN5clang4ento15ExplodedNodeSetD2Ev.exit31

_ZN5clang4ento15ExplodedNodeSetD2Ev.exit31:       ; preds = %_ZN4llvm11SmallVectorIPN5clang4ento12ExplodedNodeELj4EED2Ev.exit.i.i30, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #15
  ret void

bb.i:                                             ; preds = %.lr.ph, %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit43
  %.0105 = phi ptr [ %i.ak, %.lr.ph ], [ %i.du, %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit43 ] ; 2 uses
  %i.bu = load ptr, ptr %.0105, align 8, !tbaa !154 ; 3 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 56
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !171 ; 3 uses
  %.not.i.i32 = icmp eq ptr %i.bw, null
  br i1 %.not.i.i32, label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @_ZN5clang4ento18ProgramStateRetainEPKNS0_12ProgramStateE(ptr noundef nonnull %i.bw) #15
  br label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit

_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit: ; preds = %bb.i, %bb.j
  %i.bx = load i32, ptr %1, align 8
  %i.by = lshr i32 %i.bx, 9
  %i.bz = zext nneg i32 %i.by to i64
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %i.bz ; 5 uses
  br label %bb.k

bb.k:                                             ; preds = %_ZNK5clang4ento4SVal5getAsINS0_20DefinedOrUnknownSValEEESt8optionalIT_Ev.exit.thread71, %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit
  %.sroa.050.0 = phi ptr [ %i.ao, %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit ], [ %i.dl, %_ZNK5clang4ento4SVal5getAsINS0_20DefinedOrUnknownSValEEESt8optionalIT_Ev.exit.thread71 ] ; 8 uses
  %.sroa.055.0 = phi ptr [ %i.bw, %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit ], [ %.sroa.055.177, %_ZNK5clang4ento4SVal5getAsINS0_20DefinedOrUnknownSValEEESt8optionalIT_Ev.exit.thread71 ] ; 15 uses
  %i.cb = icmp ult ptr %.sroa.050.0, %i.ca
  br i1 %i.cb, label %.lr.ph.i.i.i, label %bb.m
end_hunk_0
