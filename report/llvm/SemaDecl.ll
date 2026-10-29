Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/SemaDecl?download=true
inline.NumInlined: 28669
inline.NumDeleted: 12983
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 16
begin_hunk_0_@"_ZNK5clang8SemaBase21SemaDiagnosticBuilderlsINS_4diag24NotAllowedBlockVarReason4$_11EvEERKS1_OT_":bb.a
  %i.s = zext i8 %i.q to i64
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.s
  store i64 %i.j, ptr %i.t, align 8, !tbaa !835
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 132
  %i.w = load i8, ptr %i.v, align 4, !tbaa !837, !range !816, !noundef !805
  %i.x = trunc nuw i8 %i.w to i1
  br i1 %i.x, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.y = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNK5clang8SemaBase21SemaDiagnosticBuilder22getDeviceDeferredDiagsEv(ptr noundef nonnull align 8 dereferenceable(136) %0) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #28
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !847 ; 3 uses
  %.not.i = icmp eq ptr %i.aa, null
  br i1 %.not.i, label %_ZN5clang16CanonicalDeclPtrIKNS_12FunctionDeclEEC2EPS2_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !810
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 32
  %i.ad = load ptr, ptr %i.ac, align 8
  %i.ae = tail call noundef ptr %i.ad(ptr noundef nonnull align 8 dereferenceable(168) %i.aa) #28, !inline_history !1
  br label %_ZN5clang16CanonicalDeclPtrIKNS_12FunctionDeclEEC2EPS2_.exit

_ZN5clang16CanonicalDeclPtrIKNS_12FunctionDeclEEC2EPS2_.exit: ; preds = %bb.d, %bb.e
  %i.af = phi ptr [ %i.ae, %bb.e ], [ null, %bb.d ]
  store ptr %i.af, ptr %1, align 8, !tbaa !849
  %i.ag = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIN5clang16CanonicalDeclPtrIKNS2_12FunctionDeclEEESt6vectorISt4pairINS2_14SourceLocationENS2_17PartialDiagnosticEESaISB_EENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_SD_EEEES6_SD_SF_SI_E24lookupOrInsertIntoBucketIS6_JEEES8_IPSI_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.y, ptr noundef nonnull align 8 dereferenceable(8) %1)
  %.fca.0.extract.i = extractvalue { ptr, i8 } %i.ag, 0
  %i.ah = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i, i64 8
  %i.ai = load i32, ptr %i.u, align 8, !tbaa !813
  %i.aj = zext i32 %i.ai to i64
  %i.ak = load ptr, ptr %i.ah, align 8, !tbaa !852
  %i.al = getelementptr inbounds nuw [32 x i8], ptr %i.ak, i64 %i.aj ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 8 ; 3 uses
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !820 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.an, null
  br i1 %.not.i.i.i, label %_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i, label %"_ZNK5clang17PartialDiagnosticlsINS_4diag24NotAllowedBlockVarReason4$_11EvEERKS0_OT_.exit"

_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i: ; preds = %_ZN5clang16CanonicalDeclPtrIKNS_12FunctionDeclEEC2EPS2_.exit
  %i.ao = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !821
  %i.aq = call noundef ptr @_ZN5clang20DiagStorageAllocator8AllocateEv(ptr noundef nonnull align 8 dereferenceable(14980) %i.ap) ; 2 uses
  store ptr %i.aq, ptr %i.am, align 8, !tbaa !820
  br label %"_ZNK5clang17PartialDiagnosticlsINS_4diag24NotAllowedBlockVarReason4$_11EvEERKS0_OT_.exit"

"_ZNK5clang17PartialDiagnosticlsINS_4diag24NotAllowedBlockVarReason4$_11EvEERKS0_OT_.exit": ; preds = %_ZN5clang16CanonicalDeclPtrIKNS_12FunctionDeclEEC2EPS2_.exit, %_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i
  %i.ar = phi ptr [ %i.aq, %_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i ], [ %i.an, %_ZN5clang16CanonicalDeclPtrIKNS_12FunctionDeclEEC2EPS2_.exit ] ; 2 uses
  %i.as = sext i32 %.0.val to i64
  %i.at = getelementptr inbounds nuw i8, ptr %i.ar, i64 1
  %i.au = load i8, ptr %i.ar, align 8, !tbaa !833
  %i.av = zext i8 %i.au to i64
  %i.aw = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.av
  store i8 2, ptr %i.aw, align 1, !tbaa !834
  %i.ax = load ptr, ptr %i.am, align 8, !tbaa !820 ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  %i.az = load i8, ptr %i.ax, align 8, !tbaa !833 ; 2 uses
  %i.ba = add i8 %i.az, 1
  store i8 %i.ba, ptr %i.ax, align 8, !tbaa !833
  %i.bb = zext i8 %i.az to i64
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %i.bb
  store i64 %i.as, ptr %i.bc, align 8, !tbaa !835
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #28
  br label %bb.f

bb.f:                                             ; preds = %bb.c, %"_ZNK5clang17PartialDiagnosticlsINS_4diag24NotAllowedBlockVarReason4$_11EvEERKS0_OT_.exit", %"_ZNK5clang8SemaBase20ImmediateDiagBuilderlsINS_4diag24NotAllowedBlockVarReason4$_11EvEERKS1_OT_.exit"
  ret ptr %0
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef zeroext i1 @_ZL24CheckC23ConstexprVarTypeRN5clang4SemaENS_14SourceLocationENS_8QualTypeE(ptr noundef nonnull align 8 dereferenceable(18640) %0, i32 %1, i64 %2) unnamed_addr #0 {
bb.a:
  %3 = alloca %"class.clang::QualType", align 8   ; 3 uses
  %4 = alloca %"class.clang::SemaBase::SemaDiagnosticBuilder", align 8 ; 5 uses
  %5 = alloca %"class.clang::SemaBase::SemaDiagnosticBuilder", align 8 ; 5 uses
  store i64 %2, ptr %3, align 8
  %i.a = and i64 %2, -16
  %i.b = inttoptr i64 %i.a to ptr
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !834  ; 2 uses
  %i.e = and i64 %i.d, -16
  %i.f = inttoptr i64 %i.e to ptr
  %i.g = load ptr, ptr %i.f, align 16, !tbaa !856
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 17
  %i.i = load i16, ptr %i.h, align 1
  %i.j = and i16 %i.i, 8
  %.not = icmp eq i16 %i.j, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @_ZN5clang8SemaBase4DiagENS_14SourceLocationEj(ptr dead_on_unwind nonnull writable sret(%"class.clang::SemaBase::SemaDiagnosticBuilder") align 8 %4, ptr noundef nonnull align 8 dereferenceable(8) %i.k, i32 %1, i32 noundef 3402) #28
  %i.l = call noundef nonnull align 8 dereferenceable(136) ptr @_ZN5clanglsINS_8QualTypeEEERKNS_8SemaBase21SemaDiagnosticBuilderES5_RKT_(ptr noundef nonnull align 8 dereferenceable(136) %4, ptr noundef nonnull align 8 dereferenceable(8) %3) ; 0 uses
  call void @_ZN5clang8SemaBase21SemaDiagnosticBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(136) dereferenceable(136) %4) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  br label %.critedge17

bb.c:                                             ; preds = %bb.a
  %i.m = and i64 %2, 7
  %i.n = or i64 %i.d, %i.m
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !804, !nonnull !805, !align !806
  %i.q = tail call i64 @_ZNK5clang10ASTContext18getBaseElementTypeENS_8QualTypeE(ptr noundef nonnull align 8 dereferenceable(23904) %i.p, i64 %i.n) #28 ; 3 uses
  %i.r = and i64 %i.q, -16
  %i.s = inttoptr i64 %i.r to ptr                 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 16, !tbaa !856
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %.sroa.0.0.copyload.i.i.i.i = load i64, ptr %i.u, align 8, !tbaa !834
  %i.v = and i64 %.sroa.0.0.copyload.i.i.i.i, -16
  %i.w = inttoptr i64 %i.v to ptr
  %i.x = load ptr, ptr %i.w, align 16, !tbaa !856 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.z = load i8, ptr %i.y, align 16              ; 2 uses
  %i.aa = icmp ne i8 %i.z, 7
  %i.ab = and i64 %i.q, 4
  %.not.i = icmp eq i64 %i.ab, 0
  %or.cond = and i1 %.not.i, %i.aa
  br i1 %or.cond, label %_ZNK5clang8QualType19isVolatileQualifiedEv.exit, label %_ZNK5clang8QualType19isVolatileQualifiedEv.exit.thread

_ZNK5clang8QualType19isVolatileQualifiedEv.exit:  ; preds = %bb.c
  %i.ac = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %.0.copyload.i.i.i.i.i1.i = load i64, ptr %i.ac, align 8 ; 2 uses
  %i.ad = and i64 %.0.copyload.i.i.i.i.i1.i, 4
  %i.ae = or i64 %.0.copyload.i.i.i.i.i1.i, %i.q
  %i.af = and i64 %i.ae, 2
  %i.ag = or disjoint i64 %i.af, %i.ad
  %or.cond36 = icmp eq i64 %i.ag, 0
  br i1 %or.cond36, label %bb.d, label %_ZNK5clang8QualType19isVolatileQualifiedEv.exit.thread

_ZNK5clang8QualType19isVolatileQualifiedEv.exit.thread: ; preds = %_ZNK5clang8QualType19isVolatileQualifiedEv.exit, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @_ZN5clang8SemaBase4DiagENS_14SourceLocationEj(ptr dead_on_unwind nonnull writable sret(%"class.clang::SemaBase::SemaDiagnosticBuilder") align 8 %5, ptr noundef nonnull align 8 dereferenceable(8) %i.ah, i32 %1, i32 noundef 3402) #28
  %i.ai = call noundef nonnull align 8 dereferenceable(136) ptr @_ZN5clanglsINS_8QualTypeEEERKNS_8SemaBase21SemaDiagnosticBuilderES5_RKT_(ptr noundef nonnull align 8 dereferenceable(136) %5, ptr noundef nonnull align 8 dereferenceable(8) %3) ; 0 uses
  call void @_ZN5clang8SemaBase21SemaDiagnosticBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(136) dereferenceable(136) %5) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  br label %.critedge17

bb.d:                                             ; preds = %_ZNK5clang8QualType19isVolatileQualifiedEv.exit
  %i.aj = icmp eq i8 %i.z, 49
  br i1 %i.aj, label %_ZNK5clang4Type15getAsRecordDeclEv.exit, label %.critedge17

_ZNK5clang4Type15getAsRecordDeclEv.exit:          ; preds = %bb.d
  %i.ak = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !1602 ; 2 uses
  %i.am = tail call noundef ptr @_ZNK5clang7TagDecl13getDefinitionEv(ptr noundef nonnull align 8 dereferenceable(128) %i.al) #28 ; 2 uses
  %.not.not.i.i.i = icmp eq ptr %i.am, null
  %spec.select.i.i2.i = select i1 %.not.not.i.i.i, ptr %i.al, ptr %i.am ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %spec.select.i.i2.i, i64 28
  %i.ao = load i32, ptr %i.an, align 4
  %i.ap = and i32 %i.ao, 128
  %.not35 = icmp eq i32 %i.ap, 0
  br i1 %.not35, label %bb.e, label %.critedge17

bb.e:                                             ; preds = %_ZNK5clang4Type15getAsRecordDeclEv.exit
  %i.aq = tail call ptr @_ZNK5clang10RecordDecl11field_beginEv(ptr noundef nonnull align 8 dereferenceable(128) %spec.select.i.i2.i) #28 ; 2 uses
  %.not15.i = icmp eq ptr %i.aq, null
  br i1 %.not15.i, label %.critedge17, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.e, %_ZN5clang11DeclContext22specific_decl_iteratorINS_9FieldDeclEEppEv.exit.i.i
  %.sroa.013.016.i = phi ptr [ %.sroa.013.2.i, %_ZN5clang11DeclContext22specific_decl_iteratorINS_9FieldDeclEEppEv.exit.i.i ], [ %i.aq, %bb.e ] ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.013.016.i, i64 48
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.ar, align 8, !tbaa !834
  %i.as = tail call fastcc noundef zeroext i1 @_ZL24CheckC23ConstexprVarTypeRN5clang4SemaENS_14SourceLocationENS_8QualTypeE(ptr noundef nonnull align 8 dereferenceable(18640) %0, i32 %1, i64 %.sroa.0.0.copyload.i.i), !inline_history !3341 ; 3 uses
  br i1 %i.as, label %.critedge17, label %bb.f

bb.f:                                             ; preds = %.lr.ph.i
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.013.016.i, i64 8
  %.0.copyload.i.i.i.i.i.i.i.i = load i64, ptr %i.at, align 8
  %i.au = and i64 %.0.copyload.i.i.i.i.i.i.i.i, -8 ; 2 uses
  %i.av = inttoptr i64 %i.au to ptr               ; 2 uses
  %.not1.i.i.i.i = icmp eq i64 %i.au, 0
  br i1 %.not1.i.i.i.i, label %_ZN5clang11DeclContext22specific_decl_iteratorINS_9FieldDeclEEppEv.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.f, %bb.g
  %.sroa.013.1.i = phi ptr [ %i.bd, %bb.g ], [ %i.av, %bb.f ] ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.013.1.i, i64 28
  %i.ax = load i32, ptr %i.aw, align 4
  %i.ay = and i32 %i.ax, 127
  %i.az = add nsw i32 %i.ay, -50
  %i.ba = icmp ult i32 %i.az, 3
  br i1 %i.ba, label %_ZN5clang11DeclContext22specific_decl_iteratorINS_9FieldDeclEEppEv.exit.i.i, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i.i.i.i
  %i.bb = getelementptr inbounds nuw i8, ptr %.sroa.013.1.i, i64 8
  %.0.copyload.i.i.i.i.i.i.i.i.i = load i64, ptr %i.bb, align 8
  %i.bc = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i, -8 ; 2 uses
  %i.bd = inttoptr i64 %i.bc to ptr               ; 2 uses
  %.not.i.i.i.i = icmp eq i64 %i.bc, 0
  br i1 %.not.i.i.i.i, label %_ZN5clang11DeclContext22specific_decl_iteratorINS_9FieldDeclEEppEv.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !62

_ZN5clang11DeclContext22specific_decl_iteratorINS_9FieldDeclEEppEv.exit.i.i: ; preds = %bb.g, %.lr.ph.i.i.i.i, %bb.f
  %.sroa.013.2.i = phi ptr [ %i.av, %bb.f ], [ %.sroa.013.1.i, %.lr.ph.i.i.i.i ], [ %i.bd, %bb.g ] ; 2 uses
  %.not.i38 = icmp eq ptr %.sroa.013.2.i, null
  br i1 %.not.i38, label %.critedge17, label %.lr.ph.i, !llvm.loop !3342

.critedge17:                                      ; preds = %.lr.ph.i, %_ZN5clang11DeclContext22specific_decl_iteratorINS_9FieldDeclEEppEv.exit.i.i, %bb.e, %_ZNK5clang4Type15getAsRecordDeclEv.exit, %bb.d, %_ZNK5clang8QualType19isVolatileQualifiedEv.exit.thread, %bb.b
  %.1 = phi i1 [ true, %bb.b ], [ true, %_ZNK5clang8QualType19isVolatileQualifiedEv.exit.thread ], [ false, %bb.e ], [ false, %bb.d ], [ false, %_ZNK5clang4Type15getAsRecordDeclEv.exit ], [ %i.as, %_ZN5clang11DeclContext22specific_decl_iteratorINS_9FieldDeclEEppEv.exit.i.i ], [ %i.as, %.lr.ph.i ]
  ret i1 %.1
}

declare noundef zeroext i1 @_ZN5clang4Sema18RequireLiteralTypeENS_14SourceLocationENS_8QualTypeEj(ptr noundef nonnull align 8 dereferenceable(18640), i32, i64, i32 noundef) local_unnamed_addr #2

declare noundef zeroext i1 @_ZN5clang7SemaPPC15CheckPPCMMATypeENS_8QualTypeENS_14SourceLocationE(ptr noundef nonnull align 8 dereferenceable(8), i64, i32) local_unnamed_addr #2

declare noundef zeroext i1 @_ZNK5clang4Type24isSVESizelessBuiltinTypeEv(ptr noundef nonnull align 16 dereferenceable(24)) local_unnamed_addr #2

declare void @_ZNK5clang10ASTContext21getFunctionFeatureMapERN4llvm9StringMapIbNS1_15MallocAllocatorEEEPKNS_12FunctionDeclE(ptr noundef nonnull align 8 dereferenceable(23904), ptr noundef nonnull align 8 dereferenceable(20), ptr noundef) local_unnamed_addr #2

declare noundef zeroext i1 @_ZN5clang7SemaARM19checkSVETypeSupportENS_8QualTypeENS_14SourceLocationEPKNS_12FunctionDeclERKN4llvm9StringMapIbNS6_15MallocAllocatorEEE(ptr noundef nonnull align 8 dereferenceable(8), i64, i32, ptr noundef, ptr noundef nonnull align 8 dereferenceable(20)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm9StringMapIbNS_15MallocAllocatorEED2Ev(ptr noundef nonnull align 8 dead_on_return(20) dereferenceable(20) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.b = load i32, ptr %i.a, align 4, !tbaa !2207
  %i.c = icmp eq i32 %i.b, 0
  %.pre13 = load ptr, ptr %0, align 8, !tbaa !2208 ; 4 uses
  br i1 %i.c, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i32, ptr %i.d, align 8, !tbaa !3343 ; 2 uses
  %i.f = zext i32 %i.e to i64
  %.idx = shl nuw nsw i64 %i.f, 3
  %i.g = getelementptr inbounds nuw i8, ptr %.pre13, i64 %.idx
  %.not11 = icmp eq i32 %i.e, 0
  br i1 %.not11, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b, %bb.d
  %.012 = phi ptr [ %i.k, %bb.d ], [ %.pre13, %bb.b ] ; 2 uses
  %i.h = load ptr, ptr %.012, align 8, !tbaa !1856 ; 3 uses
  %.not10 = icmp eq ptr %i.h, null
  br i1 %.not10, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.i = load i64, ptr %i.h, align 8, !tbaa !960
  %i.j = add i64 %i.i, 17
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %i.h, i64 noundef %i.j, i64 noundef 8) #28
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %.lr.ph
  %i.k = getelementptr inbounds nuw i8, ptr %.012, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.k, %i.g
  br i1 %.not, label %.loopexit.loopexit, label %.lr.ph

.loopexit.loopexit:                               ; preds = %bb.d
  %.pre = load ptr, ptr %0, align 8, !tbaa !2208
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %bb.b, %bb.a
  %i.l = phi ptr [ %.pre, %.loopexit.loopexit ], [ %.pre13, %bb.b ], [ %.pre13, %bb.a ]
  tail call void @free(ptr noundef %i.l) #28
  ret void
}

declare noundef zeroext i1 @_ZNK5clang4Type24isRVVSizelessBuiltinTypeEv(ptr noundef nonnull align 16 dereferenceable(24)) local_unnamed_addr #2

declare void @_ZN5clang9SemaRISCV19checkRVVTypeSupportENS_8QualTypeENS_14SourceLocationEPNS_4DeclERKN4llvm9StringMapIbNS5_15MallocAllocatorEEE(ptr noundef nonnull align 8 dereferenceable(24), i64, i32, ptr noundef, ptr noundef nonnull align 8 dereferenceable(20)) local_unnamed_addr #2

declare noundef zeroext i1 @_ZN5clang4Sema28CheckVarDeclSizeAddressSpaceEPKNS_7VarDeclENS_6LangASE(ptr noundef nonnull align 8 dereferenceable(18640), ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZN5clang4Sema20AddOverriddenMethodsEPNS_13CXXRecordDeclEPNS_13CXXMethodDeclE(ptr noundef nonnull align 8 dereferenceable(18640) %0, ptr noundef nonnull %1, ptr noundef %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 2 uses
  %3 = alloca %"class.llvm::SmallPtrSet.2088", align 8 ; 9 uses
  %4 = alloca %"class.clang::CXXBasePaths", align 8 ; 26 uses
  %5 = alloca %class.anon.2107, align 8           ; 6 uses
  store ptr %2, ptr %i.a, align 8, !tbaa !2210
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 24
  store ptr %i.b, ptr %3, align 8, !tbaa !1086
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 4, ptr %i.c, align 8, !tbaa !1088
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 12 ; 2 uses
  store i32 0, ptr %i.d, align 4, !tbaa !1087
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  store i8 1, ptr %i.e, align 8, !tbaa !1085
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  store ptr null, ptr %4, align 8, !tbaa !3361
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %i.f, ptr %i.g, align 8, !tbaa !3362
  store ptr %i.f, ptr %i.f, align 8, !tbaa !3363
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i64 0, ptr %i.h, align 8, !tbaa !3364
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 168
  store i32 1, ptr %i.i, align 8
  store i32 0, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 176 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 200
  store ptr %i.l, ptr %i.k, align 8, !tbaa !1086
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 184
  store i32 4, ptr %i.m, align 8, !tbaa !1088
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 188
  store i32 0, ptr %i.n, align 4, !tbaa !1087
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 192 ; 2 uses
  store i8 1, ptr %i.o, align 8, !tbaa !1085
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 232
  store ptr null, ptr %i.p, align 8, !tbaa !3365
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 240 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 256 ; 2 uses
  store ptr %i.r, ptr %i.q, align 8, !tbaa !876
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 248
  store i32 0, ptr %i.s, align 8, !tbaa !877
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 252
  store i32 4, ptr %i.t, align 4, !tbaa !878
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 352
  store i8 0, ptr %i.u, align 8, !tbaa !3366
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 360
  store i64 0, ptr %i.v, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 368
  store i8 1, ptr %i.w, align 8, !tbaa !3367
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 369
  store i8 0, ptr %i.x, align 1, !tbaa !3368
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 370
  store i8 0, ptr %i.y, align 2, !tbaa !3369
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28
  store ptr %i.a, ptr %5, align 8, !tbaa !3370
  %i.z = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %0, ptr %i.z, align 8, !tbaa !2214
  %i.aa = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %3, ptr %i.aa, align 8, !tbaa !3371
  %i.ab = ptrtoint ptr %5 to i64
  %i.ac = call noundef zeroext i1 @_ZNK5clang13CXXRecordDecl13lookupInBasesEN4llvm12function_refIFbPKNS_16CXXBaseSpecifierERNS_11CXXBasePathEEEERNS_12CXXBasePathsEb(ptr noundef nonnull align 8 dereferenceable(144) %1, ptr nonnull @"_ZN4llvm12function_refIFbPKN5clang16CXXBaseSpecifierERNS1_11CXXBasePathEEE11callback_fnIZNS1_4Sema20AddOverriddenMethodsEPNS1_13CXXRecordDeclEPNS1_13CXXMethodDeclEE3$_0EEblS4_S6_", i64 %i.ab, ptr noundef nonnull align 8 dereferenceable(371) %4, i1 noundef zeroext false) #28 ; 0 uses
  %i.ad = load i32, ptr %i.d, align 4, !tbaa !1087
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  %i.ae = load ptr, ptr %i.q, align 8, !tbaa !876 ; 2 uses
  %i.af = icmp eq ptr %i.ae, %i.r
  br i1 %i.af, label %_ZN4llvm11SmallVectorIN5clang18CXXBasePathElementELj4EED2Ev.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @free(ptr noundef %i.ae) #28
  br label %_ZN4llvm11SmallVectorIN5clang18CXXBasePathElementELj4EED2Ev.exit.i

_ZN4llvm11SmallVectorIN5clang18CXXBasePathElementELj4EED2Ev.exit.i: ; preds = %bb.b, %bb.a
  %i.ag = load i8, ptr %i.o, align 8, !tbaa !1085, !range !816, !noundef !805
  %i.ah = trunc nuw i8 %i.ag to i1
  br i1 %i.ah, label %_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit.i, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm11SmallVectorIN5clang18CXXBasePathElementELj4EED2Ev.exit.i
  %i.ai = load ptr, ptr %i.k, align 8, !tbaa !1086
  call void @free(ptr noundef %i.ai) #28
  br label %_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit.i

_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit.i:         ; preds = %bb.c, %_ZN4llvm11SmallVectorIN5clang18CXXBasePathElementELj4EED2Ev.exit.i
  %i.aj = load i32, ptr %i.i, align 8
  %i.ak = and i32 %i.aj, 1
  %.not.i.i.i = icmp eq i32 %i.ak, 0
  br i1 %.not.i.i.i, label %bb.d, label %_ZN4llvm13SmallDenseMapIN5clang8QualTypeENS1_12CXXBasePaths31IsVirtBaseAndNumberNonVirtBasesELj8ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEED2Ev.exit.i

bb.d:                                             ; preds = %_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit.i
  %i.al = getelementptr inbounds nuw i8, ptr %4, i64 56
  %i.am = load i32, ptr %i.al, align 8, !tbaa !834 ; 2 uses
  %i.an = icmp eq i32 %i.am, 0
  br i1 %i.an, label %_ZN4llvm13SmallDenseMapIN5clang8QualTypeENS1_12CXXBasePaths31IsVirtBaseAndNumberNonVirtBasesELj8ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEED2Ev.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ao = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !834
  %i.aq = zext i32 %i.am to i64                   ; 2 uses
  %i.ar = shl nuw nsw i64 %i.aq, 4
  %i.as = add nuw nsw i64 %i.aq, 31
  %i.at = lshr i64 %i.as, 3
  %i.au = and i64 %i.at, 1073741820
  %i.av = add nuw nsw i64 %i.au, %i.ar
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.ap, i64 noundef %i.av, i64 noundef 8) #28
  br label %_ZN4llvm13SmallDenseMapIN5clang8QualTypeENS1_12CXXBasePaths31IsVirtBaseAndNumberNonVirtBasesELj8ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEED2Ev.exit.i

_ZN4llvm13SmallDenseMapIN5clang8QualTypeENS1_12CXXBasePaths31IsVirtBaseAndNumberNonVirtBasesELj8ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEED2Ev.exit.i: ; preds = %bb.e, %bb.d, %_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit.i
  %i.aw = load ptr, ptr %i.f, align 8, !tbaa !3363 ; 2 uses
  %.not8.i.i.i = icmp eq ptr %i.aw, %i.f
  br i1 %.not8.i.i.i, label %_ZN5clang12CXXBasePathsD2Ev.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN4llvm13SmallDenseMapIN5clang8QualTypeENS1_12CXXBasePaths31IsVirtBaseAndNumberNonVirtBasesELj8ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEED2Ev.exit.i, %_ZN4llvm11SmallVectorIN5clang18CXXBasePathElementELj4EED2Ev.exit.i.i.i
  %.09.i.i.i = phi ptr [ %i.ax, %_ZN4llvm11SmallVectorIN5clang18CXXBasePathElementELj4EED2Ev.exit.i.i.i ], [ %i.aw, %_ZN4llvm13SmallDenseMapIN5clang8QualTypeENS1_12CXXBasePaths31IsVirtBaseAndNumberNonVirtBasesELj8ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEED2Ev.exit.i ] ; 4 uses
  %i.ax = load ptr, ptr %.09.i.i.i, align 8, !tbaa !3363 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.09.i.i.i, i64 16
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !876 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.09.i.i.i, i64 32
  %i.bb = icmp eq ptr %i.az, %i.ba
  br i1 %i.bb, label %_ZN4llvm11SmallVectorIN5clang18CXXBasePathElementELj4EED2Ev.exit.i.i.i, label %bb.f

bb.f:                                             ; preds = %.lr.ph.i.i.i
  call void @free(ptr noundef %i.az) #28
  br label %_ZN4llvm11SmallVectorIN5clang18CXXBasePathElementELj4EED2Ev.exit.i.i.i

_ZN4llvm11SmallVectorIN5clang18CXXBasePathElementELj4EED2Ev.exit.i.i.i: ; preds = %bb.f, %.lr.ph.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.09.i.i.i, i64 noundef 144) #29
  %.not.i.i1.i = icmp eq ptr %i.ax, %i.f
  br i1 %.not.i.i1.i, label %_ZN5clang12CXXBasePathsD2Ev.exit, label %.lr.ph.i.i.i, !llvm.loop !3344

_ZN5clang12CXXBasePathsD2Ev.exit:                 ; preds = %_ZN4llvm11SmallVectorIN5clang18CXXBasePathElementELj4EED2Ev.exit.i.i.i, %_ZN4llvm13SmallDenseMapIN5clang8QualTypeENS1_12CXXBasePaths31IsVirtBaseAndNumberNonVirtBasesELj8ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEED2Ev.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  %i.bc = load i8, ptr %i.e, align 8, !tbaa !1085, !range !816, !noundef !805
  %i.bd = trunc nuw i8 %i.bc to i1
end_hunk_0
begin_hunk_1_@_ZN5clang4Sema8ActOnTagEPNS_5ScopeEjNS_10TagUseKindENS_14SourceLocationERNS_12CXXScopeSpecEPNS_14IdentifierInfoES4_RKNS_20ParsedAttributesViewENS_15AccessSpecifierES4_N4llvm15MutableArrayRefIPNS_21TemplateParameterListEEERbSI_S4_bNS_12ActionResultINS_9OpaquePtrINS_8QualTypeEEELb0EEEbbNS_12OffsetOfKindEPNS_12SkipBodyInfoE:bb.a
bb.l:                                             ; preds = %_ZNK5clang8SemaBase21SemaDiagnosticBuilderlsIN4llvm9StringRefEvEERKS1_OT_.exit, %_ZNK5clang12CXXScopeSpec10isNotEmptyEv.exit523, %bb.d
  %.not438 = icmp eq ptr %i.ap, null
  br i1 %.not438, label %._crit_edge958, label %bb.m

._crit_edge958:                                   ; preds = %bb.l
  %.pre = load i8, ptr %i.g, align 1, !range !816
  %i.ce = trunc nuw i8 %.pre to i1
  br label %bb.w

bb.m:                                             ; preds = %bb.l
  %i.cf = load i32, ptr %i.e, align 4, !tbaa !1977
  %i.cg = icmp eq i32 %i.cf, 4
  br i1 %i.cg, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.0304.0.copyload = load i32, ptr %28, align 4, !tbaa !813
  call void @_ZN5clang8SemaBase4DiagENS_14SourceLocationEj(ptr dead_on_unwind nonnull writable sret(%"class.clang::SemaBase::SemaDiagnosticBuilder") align 8 %33, ptr noundef nonnull align 8 dereferenceable(8) %i.ch, i32 %.sroa.0304.0.copyload, i32 noundef 13) #28
  call void @_ZN5clang8SemaBase21SemaDiagnosticBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(136) dereferenceable(136) %33) #28
  br label %.critedge509

bb.o:                                             ; preds = %bb.m
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ap, i64 20
  %i.cj = load i32, ptr %i.ci, align 4
  %i.ck = and i32 %i.cj, 536870911
  %.not439 = icmp eq i32 %i.ck, 0
  br i1 %.not439, label %bb.r, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cl = load i8, ptr %i.h, align 1, !tbaa !882, !range !816, !noundef !805
  %i.cm = trunc nuw i8 %i.cl to i1
  br i1 %i.cm, label %.critedge509, label %bb.q

bb.q:                                             ; preds = %bb.p
  store i8 0, ptr %12, align 1, !tbaa !882
  %i.cn = load i32, ptr %i.a, align 4, !tbaa !2371
  %.sroa.0294.0.copyload = load i32, ptr %28, align 4, !tbaa !813
  %i.co = load ptr, ptr %i.b, align 8, !tbaa !812
  %.sroa.0293.0.copyload = load i32, ptr %29, align 4, !tbaa !813
  %i.cp = trunc i64 %i.ad to i32
  %i.cq = add i32 %i.cp, -1
  %i.cr = load i8, ptr %i.g, align 1, !tbaa !882, !range !816, !noundef !805
  %i.cs = trunc nuw i8 %i.cr to i1
  %i.ct = load ptr, ptr %i.d, align 8, !tbaa !2373
  %i.cu = call { ptr, i8 } @_ZN5clang4Sema18CheckClassTemplateEPNS_5ScopeEjNS_10TagUseKindENS_14SourceLocationERNS_12CXXScopeSpecEPNS_14IdentifierInfoES4_RKNS_20ParsedAttributesViewEPNS_21TemplateParameterListENS_15AccessSpecifierES4_S4_jPSD_bPNS_12SkipBodyInfoE(ptr noundef nonnull align 8 dereferenceable(18640) %0, ptr noundef %1, i32 noundef %2, i32 noundef %i.cn, i32 %.sroa.0294.0.copyload, ptr noundef nonnull align 8 dereferenceable(48) %5, ptr noundef %i.co, i32 %.sroa.0293.0.copyload, ptr noundef nonnull align 8 dereferenceable(40) %8, ptr noundef nonnull %i.ap, i8 noundef zeroext %9, i32 %10, i32 0, i32 noundef %i.cq, ptr noundef %i.am, i1 noundef zeroext %i.cs, ptr noundef %i.ct) #28
  %.fca.0.extract = extractvalue { ptr, i8 } %i.cu, 0
  br label %.critedge509

bb.r:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %34) #28
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.cw = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %.sroa.0.0.copyload.i526 = load i32, ptr %i.cw, align 8, !tbaa !813
  call void @_ZN5clang8SemaBase4DiagENS_14SourceLocationEj(ptr dead_on_unwind nonnull writable sret(%"class.clang::SemaBase::SemaDiagnosticBuilder") align 8 %34, ptr noundef nonnull align 8 dereferenceable(8) %i.cv, i32 %.sroa.0.0.copyload.i526, i32 noundef 5289) #28
  %i.cx = load i32, ptr %i.e, align 4, !tbaa !1977
  %i.cy = call noundef i32 @_ZN5clang14KeywordHelpers24getKeywordForTagTypeKindENS_11TagTypeKindE(i32 noundef %i.cx) #28
  %i.cz = call { ptr, i64 } @_ZN5clang14KeywordHelpers14getKeywordNameENS_21ElaboratedTypeKeywordE(i32 noundef %i.cy) #28 ; 2 uses
  %i.da = extractvalue { ptr, i64 } %i.cz, 0      ; 2 uses
  %i.db = extractvalue { ptr, i64 } %i.cz, 1      ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %34, i64 120
  %i.dd = load i8, ptr %i.dc, align 8, !tbaa !815, !range !816, !noundef !805
  %i.de = trunc nuw i8 %i.dd to i1
  br i1 %i.de, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.df = getelementptr inbounds nuw i8, ptr %34, i64 32
  call void @_ZNK5clang19StreamingDiagnostic9AddStringEN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(84) %i.df, ptr %i.da, i64 %i.db)
  br label %_ZNK5clang8SemaBase21SemaDiagnosticBuilderlsIN4llvm9StringRefEvEERKS1_OT_.exit536

bb.t:                                             ; preds = %bb.r
  %i.dg = getelementptr inbounds nuw i8, ptr %34, i64 128
  %i.dh = getelementptr inbounds nuw i8, ptr %34, i64 132
  %i.di = load i8, ptr %i.dh, align 4, !tbaa !837, !range !816, !noundef !805
  %i.dj = trunc nuw i8 %i.di to i1
  br i1 %i.dj, label %bb.u, label %_ZNK5clang8SemaBase21SemaDiagnosticBuilderlsIN4llvm9StringRefEvEERKS1_OT_.exit536

bb.u:                                             ; preds = %bb.t
  %i.dk = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNK5clang8SemaBase21SemaDiagnosticBuilder22getDeviceDeferredDiagsEv(ptr noundef nonnull align 8 dereferenceable(136) %34) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #28
  %i.dl = getelementptr inbounds nuw i8, ptr %34, i64 16
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !847 ; 3 uses
  %.not.i.i527 = icmp eq ptr %i.dm, null
  br i1 %.not.i.i527, label %_ZN5clang16CanonicalDeclPtrIKNS_12FunctionDeclEEC2EPS2_.exit.i528, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !810
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 32
  %i.dp = load ptr, ptr %i.do, align 8
  %i.dq = call noundef ptr %i.dp(ptr noundef nonnull align 8 dereferenceable(168) %i.dm) #28, !inline_history !21
  br label %_ZN5clang16CanonicalDeclPtrIKNS_12FunctionDeclEEC2EPS2_.exit.i528

_ZN5clang16CanonicalDeclPtrIKNS_12FunctionDeclEEC2EPS2_.exit.i528: ; preds = %bb.v, %bb.u
  %i.dr = phi ptr [ %i.dq, %bb.v ], [ null, %bb.u ]
  store ptr %i.dr, ptr %26, align 8, !tbaa !849
  %i.ds = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIN5clang16CanonicalDeclPtrIKNS2_12FunctionDeclEEESt6vectorISt4pairINS2_14SourceLocationENS2_17PartialDiagnosticEESaISB_EENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_SD_EEEES6_SD_SF_SI_E24lookupOrInsertIntoBucketIS6_JEEES8_IPSI_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.dk, ptr noundef nonnull align 8 dereferenceable(8) %26)
  %.fca.0.extract.i.i529 = extractvalue { ptr, i8 } %i.ds, 0
  %i.dt = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i.i529, i64 8
  %i.du = load i32, ptr %i.dg, align 8, !tbaa !813
  %i.dv = zext i32 %i.du to i64
  %i.dw = load ptr, ptr %i.dt, align 8, !tbaa !852
  %i.dx = getelementptr inbounds nuw [32 x i8], ptr %i.dw, i64 %i.dv
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 8
  call void @_ZNK5clang19StreamingDiagnostic9AddStringEN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(20) %i.dy, ptr %i.da, i64 %i.db)
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #28
  br label %_ZNK5clang8SemaBase21SemaDiagnosticBuilderlsIN4llvm9StringRefEvEERKS1_OT_.exit536

_ZNK5clang8SemaBase21SemaDiagnosticBuilderlsIN4llvm9StringRefEvEERKS1_OT_.exit536: ; preds = %bb.s, %bb.t, %_ZN5clang16CanonicalDeclPtrIKNS_12FunctionDeclEEC2EPS2_.exit.i528
  %i.dz = call noundef nonnull align 8 dereferenceable(136) ptr @_ZN5clanglsIPNS_14IdentifierInfoEEERKNS_8SemaBase21SemaDiagnosticBuilderES6_RKT_(ptr noundef nonnull align 8 dereferenceable(136) %34, ptr noundef nonnull align 8 dereferenceable(8) %i.b) ; 0 uses
  call void @_ZN5clang8SemaBase21SemaDiagnosticBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(136) dereferenceable(136) %34) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #28
  store i8 1, ptr %i.g, align 1, !tbaa !882
  br label %bb.w

bb.w:                                             ; preds = %._crit_edge958, %_ZNK5clang8SemaBase21SemaDiagnosticBuilderlsIN4llvm9StringRefEvEERKS1_OT_.exit536
  %i.ea = phi i1 [ %i.ce, %._crit_edge958 ], [ true, %_ZNK5clang8SemaBase21SemaDiagnosticBuilderlsIN4llvm9StringRefEvEERKS1_OT_.exit536 ]
  %or.cond12 = select i1 %.not437, i1 %i.ea, i1 false
  br i1 %or.cond12, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.eb = getelementptr [8 x i8], ptr %i.am, i64 %i.ad
  %i.ec = getelementptr i8, ptr %i.eb, i64 -8
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !2069
  %i.ee = call noundef zeroext i1 @_ZN5clang4Sema22CheckTemplateDeclScopeEPNS_5ScopeEPNS_21TemplateParameterListE(ptr noundef nonnull align 8 dereferenceable(18640) %0, ptr noundef %1, ptr noundef %i.ed) #28
  br i1 %i.ee, label %.critedge509, label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w, %_ZNK5clang12CXXScopeSpec10isNotEmptyEv.exit
  %i.ef = load i32, ptr %i.a, align 4, !tbaa !2371
  %i.eg = icmp eq i32 %i.ef, 3
  %i.eh = load i32, ptr %i.e, align 4             ; 2 uses
  %i.ei = icmp eq i32 %i.eh, 4
  %or.cond14 = select i1 %i.eg, i1 %i.ei, i1 false
  br i1 %or.cond14, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %35) #28
  %i.ej = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.sroa.0288.0.copyload = load i32, ptr %28, align 4, !tbaa !813
  call void @_ZN5clang8SemaBase4DiagENS_14SourceLocationEj(ptr dead_on_unwind nonnull writable sret(%"class.clang::SemaBase::SemaDiagnosticBuilder") align 8 %35, ptr noundef nonnull align 8 dereferenceable(8) %i.ej, i32 %.sroa.0288.0.copyload, i32 noundef 5675) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %36) #28
  %i.ek = load i8, ptr %i.f, align 1, !tbaa !882, !range !816, !noundef !805
  %i.el = trunc nuw i8 %i.ek to i1
  %.sroa.0287.0.copyload = load i32, ptr %28, align 4, !tbaa !813 ; 2 uses
  %..sroa.0287.0.copyload = select i1 %i.el, i32 %14, i32 %.sroa.0287.0.copyload
  %.sroa.3828.0.insert.ext = zext i32 %..sroa.0287.0.copyload to i64
  %.sroa.3828.0.insert.shift = shl nuw i64 %.sroa.3828.0.insert.ext, 32
  %.sroa.0827.0.insert.ext = zext i32 %.sroa.0287.0.copyload to i64
  %.sroa.0827.0.insert.insert = or disjoint i64 %.sroa.3828.0.insert.shift, %.sroa.0827.0.insert.ext
  %i.em = getelementptr inbounds nuw i8, ptr %36, i64 12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(9) %i.em, i8 0, i64 9, i1 false), !alias.scope !3702
  %i.en = getelementptr inbounds nuw i8, ptr %36, i64 24 ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %36, i64 40 ; 4 uses
  store ptr %i.eo, ptr %i.en, align 8, !tbaa !926, !alias.scope !3702
  %i.ep = getelementptr inbounds nuw i8, ptr %36, i64 32
  store i64 0, ptr %i.ep, align 8, !tbaa !927, !alias.scope !3702
  store i8 0, ptr %i.eo, align 8, !tbaa !834, !alias.scope !3702
  %i.eq = getelementptr inbounds nuw i8, ptr %36, i64 56
  store i8 0, ptr %i.eq, align 8, !tbaa !930, !alias.scope !3702
  store i64 %.sroa.0827.0.insert.insert, ptr %36, align 8, !tbaa !813, !alias.scope !3702
  %.sroa.22.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %36, i64 8
  store i8 1, ptr %.sroa.22.0..sroa_idx.i.i, align 8, !tbaa !882, !alias.scope !3702
  %i.er = call noundef nonnull align 8 dereferenceable(136) ptr @_ZNK5clang8SemaBase21SemaDiagnosticBuilderlsINS_9FixItHintEvEERKS1_OT_(ptr noundef nonnull align 8 dereferenceable(136) %35, ptr noundef nonnull align 8 dereferenceable(57) %36) ; 0 uses
  %i.es = load ptr, ptr %i.en, align 8, !tbaa !858 ; 2 uses
  %i.et = icmp eq ptr %i.es, %i.eo
  br i1 %i.et, label %_ZN5clang9FixItHintD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.z
  %i.eu = load i64, ptr %i.eo, align 8, !tbaa !834
  %i.ev = add i64 %i.eu, 1
  call void @_ZdlPvm(ptr noundef %i.es, i64 noundef %i.ev) #29
  br label %_ZN5clang9FixItHintD2Ev.exit

_ZN5clang9FixItHintD2Ev.exit:                     ; preds = %bb.z, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #28
  call void @_ZN5clang8SemaBase21SemaDiagnosticBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(136) dereferenceable(136) %35) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %37) #28
  %.sroa.0284.0.copyload = load i32, ptr %28, align 4, !tbaa !813
  call void @_ZN5clang8SemaBase4DiagENS_14SourceLocationEj(ptr dead_on_unwind nonnull writable sret(%"class.clang::SemaBase::SemaDiagnosticBuilder") align 8 %37, ptr noundef nonnull align 8 dereferenceable(8) %i.ej, i32 %.sroa.0284.0.copyload, i32 noundef 6088) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #28
  %i.ew = load i8, ptr %i.f, align 1, !tbaa !882, !range !816, !noundef !805
  %i.ex = load i8, ptr %i.c, align 1, !tbaa !882, !range !816, !noundef !805
  %narrow = add nuw nsw i8 %i.ex, %i.ew
  %i.ey = zext nneg i8 %narrow to i32
  store i32 %i.ey, ptr %i.i, align 4, !tbaa !813
  %i.ez = call noundef nonnull align 8 dereferenceable(136) ptr @_ZNK5clang8SemaBase21SemaDiagnosticBuilderlsIivEERKS1_OT_(ptr noundef nonnull align 8 dereferenceable(136) %37, ptr noundef nonnull align 4 dereferenceable(4) %i.i) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #28
  call void @_ZN5clang8SemaBase21SemaDiagnosticBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(136) dereferenceable(136) %37) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #28
  %.pre959 = load i32, ptr %i.e, align 4, !tbaa !1977
  br label %bb.aa

bb.aa:                                            ; preds = %_ZN5clang9FixItHintD2Ev.exit, %bb.y
  %i.fa = phi i32 [ %.pre959, %_ZN5clang9FixItHintD2Ev.exit ], [ %i.eh, %bb.y ]
  call void @llvm.lifetime.start.p0(ptr nonnull %38) #28
  store i64 0, ptr %38, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #28
  %i.fb = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.fc = load i8, ptr %i.fb, align 8, !tbaa !1052, !range !816, !noundef !805
  %i.fd = trunc nuw i8 %i.fc to i1                ; 2 uses
  %i.fe = load ptr, ptr %16, align 8              ; 2 uses
  %.not.i = icmp ne ptr %i.fe, null               ; 3 uses
  %.not891 = select i1 %i.fd, i1 true, i1 %.not.i
  %i.ff = load i8, ptr %i.f, align 1, !range !816 ; 2 uses
  %i.fg = select i1 %.not891, i8 1, i8 %i.ff
  store i8 %i.fg, ptr %i.j, align 1, !tbaa !882
  %i.fh = icmp eq i32 %i.fa, 4
  br i1 %i.fh, label %bb.ab, label %bb.ao

bb.ab:                                            ; preds = %bb.aa
  br i1 %i.fd, label %.critedge, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %.not.i.not = xor i1 %.not.i, true
  %i.fi = trunc nuw i8 %i.ff to i1
  %or.cond17 = select i1 %.not.i.not, i1 %i.fi, i1 false
  %i.fj = load i8, ptr %i.h, align 1, !range !816
  %i.fk = trunc nuw i8 %i.fj to i1
  %or.cond885 = select i1 %or.cond17, i1 true, i1 %i.fk
  br i1 %or.cond885, label %.critedge, label %bb.ad

.critedge:                                        ; preds = %bb.ac, %bb.ab
  %i.fl = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.fm = load ptr, ptr %i.fl, align 8, !tbaa !804, !nonnull !805, !align !806
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 18984
  %.0.copyload.i.i.i.i.i = load i64, ptr %i.fn, align 8
  %i.fo = and i64 %.0.copyload.i.i.i.i.i, -16
  %i.fp = inttoptr i64 %i.fo to ptr
  %i.fq = load ptr, ptr %i.fp, align 16, !tbaa !856
  %i.fr = ptrtoint ptr %i.fq to i64
  store i64 %i.fr, ptr %38, align 8
  br label %bb.ao

bb.ad:                                            ; preds = %bb.ac
  br i1 %.not.i, label %bb.ae, label %bb.al

bb.ae:                                            ; preds = %bb.ad
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #28
  store ptr null, ptr %i.k, align 8, !tbaa !2056
  %i.fs = call i64 @_ZN5clang4Sema17GetTypeFromParserENS_9OpaquePtrINS_8QualTypeEEEPPNS_14TypeSourceInfoE(ptr nonnull %i.fe, ptr noundef nonnull %i.k) #28 ; 0 uses
  %i.ft = load ptr, ptr %i.k, align 8, !tbaa !2056 ; 2 uses
  %i.fu = ptrtoint ptr %i.ft to i64
  %i.fv = or i64 %i.fu, 4
  store i64 %i.fv, ptr %38, align 8
  %i.fw = call noundef zeroext i1 @_ZN5clang4Sema23CheckEnumUnderlyingTypeEPNS_14TypeSourceInfoE(ptr noundef nonnull align 8 dereferenceable(18640) %0, ptr noundef %i.ft)
  br i1 %i.fw, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.fx = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.fy = load ptr, ptr %i.fx, align 8, !tbaa !804, !nonnull !805, !align !806
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fy, i64 18984
  %.0.copyload.i.i.i.i.i540 = load i64, ptr %i.fz, align 8
  %i.ga = and i64 %.0.copyload.i.i.i.i.i540, -16
  %i.gb = inttoptr i64 %i.ga to ptr
  %i.gc = load ptr, ptr %i.gb, align 16, !tbaa !856
  %i.gd = ptrtoint ptr %i.gc to i64
  store i64 %i.gd, ptr %38, align 8
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  call void @llvm.lifetime.start.p0(ptr nonnull %39) #28
  %i.ge = load ptr, ptr %i.k, align 8, !tbaa !2056 ; 2 uses
  %.sroa.0.0.copyload.i541 = load i64, ptr %i.ge, align 8, !tbaa !834
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ge, i64 8
  %i.gg = inttoptr i64 %.sroa.0.0.copyload.i541 to ptr
  store ptr %i.gg, ptr %39, align 8
  %i.gh = getelementptr inbounds nuw i8, ptr %39, i64 8
  store ptr %i.gf, ptr %i.gh, align 8
  %i.gi = call i32 @_ZNK5clang7TypeLoc11getBeginLocEv(ptr noundef nonnull align 8 dereferenceable(16) %39) #28
  %i.gj = load ptr, ptr %i.k, align 8, !tbaa !2056
  %i.gk = call noundef zeroext i1 @_ZN5clang4Sema31DiagnoseUnexpandedParameterPackENS_14SourceLocationEPNS_14TypeSourceInfoENS0_30UnexpandedParameterPackContextE(ptr noundef nonnull align 8 dereferenceable(18640) %0, i32 %i.gi, ptr noundef %i.gj, i32 noundef 6) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #28
  br i1 %i.gk, label %bb.ah, label %._crit_edge960

._crit_edge960:                                   ; preds = %bb.ag
  %.sroa.0.0.copyload.i543.pre = load i64, ptr %38, align 8
  br label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.gl = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.gm = load ptr, ptr %i.gl, align 8, !tbaa !804, !nonnull !805, !align !806
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gm, i64 18984
  %.0.copyload.i.i.i.i.i542 = load i64, ptr %i.gn, align 8
  %i.go = and i64 %.0.copyload.i.i.i.i.i542, -16
  %i.gp = inttoptr i64 %i.go to ptr
  %i.gq = load ptr, ptr %i.gp, align 16, !tbaa !856
  %i.gr = ptrtoint ptr %i.gq to i64               ; 2 uses
  store i64 %i.gr, ptr %38, align 8
  br label %bb.ai

bb.ai:                                            ; preds = %._crit_edge960, %bb.ah
  %.sroa.0.0.copyload.i543 = phi i64 [ %.sroa.0.0.copyload.i543.pre, %._crit_edge960 ], [ %i.gr, %bb.ah ] ; 2 uses
  %i.gs = and i64 %.sroa.0.0.copyload.i543, 4
  %.not.i.i544 = icmp eq i64 %i.gs, 0
  %i.gt = and i64 %.sroa.0.0.copyload.i543, -5    ; 2 uses
  %i.gu = inttoptr i64 %i.gt to ptr               ; 2 uses
  %.not441893 = icmp eq i64 %i.gt, 0
  %.not441 = or i1 %.not.i.i544, %.not441893
  br i1 %.not441, label %.critedge19, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %.sroa.0.0.copyload.i545 = load i64, ptr %i.gu, align 8, !tbaa !834
  %i.gv = and i64 %.sroa.0.0.copyload.i545, -16
  %i.gw = inttoptr i64 %i.gv to ptr
  %i.gx = load ptr, ptr %i.gw, align 16, !tbaa !856
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gx, i64 8
  %.sroa.0.0.copyload.i.i.i.i547 = load i64, ptr %i.gy, align 8, !tbaa !834
  %i.gz = and i64 %.sroa.0.0.copyload.i.i.i.i547, -16
  %i.ha = inttoptr i64 %i.gz to ptr
  %i.hb = load ptr, ptr %i.ha, align 16, !tbaa !856
  %i.hc = getelementptr inbounds nuw i8, ptr %i.hb, i64 16
  %i.hd = load i8, ptr %i.hc, align 16
  %i.he = icmp eq i8 %i.hd, 7
  br i1 %i.he, label %bb.ak, label %.critedge19

bb.ak:                                            ; preds = %bb.aj
  call void @llvm.lifetime.start.p0(ptr nonnull %40) #28
  %.sroa.0.0.copyload.i548 = load i64, ptr %i.gu, align 8, !tbaa !834
  store i64 %.sroa.0.0.copyload.i548, ptr %40, align 8
  %i.hf = call i64 @_ZNK5clang8QualType24getAtomicUnqualifiedTypeEv(ptr noundef nonnull align 8 dereferenceable(8) %40) #28
  %i.hg = and i64 %i.hf, -16
  %i.hh = inttoptr i64 %i.hg to ptr
  %i.hi = load ptr, ptr %i.hh, align 16, !tbaa !856
  %i.hj = ptrtoint ptr %i.hi to i64
  store i64 %i.hj, ptr %38, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #28
  br label %.critedge19

.critedge19:                                      ; preds = %bb.ai, %bb.ak, %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #28
  br label %bb.ao

bb.al:                                            ; preds = %bb.ad
  %i.hk = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.hl = load ptr, ptr %i.hk, align 8, !tbaa !804, !nonnull !805, !align !806 ; 2 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hl, i64 17712
  %i.hn = load ptr, ptr %i.hm, align 8, !tbaa !1858 ; 2 uses
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hn, i64 260
  %i.hp = load i32, ptr %i.ho, align 4, !tbaa !1866
  %i.hq = icmp eq i32 %i.hp, 15
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hn, i64 264
  %i.hs = load i32, ptr %i.hr, align 8            ; 2 uses
  %i.ht = icmp eq i32 %i.hs, 28
  %i.hu = icmp eq i32 %i.hs, 0
  %i.hv = or i1 %i.ht, %i.hu
  %or.cond886 = select i1 %i.hq, i1 %i.hv, i1 false
  br i1 %or.cond886, label %_ZNK4llvm6Triple24isWindowsMSVCEnvironmentEv.exit.thread, label %bb.ao

_ZNK4llvm6Triple24isWindowsMSVCEnvironmentEv.exit.thread: ; preds = %bb.al
  %i.hw = load i32, ptr %i.a, align 4, !tbaa !2371
  %i.hx = icmp eq i32 %i.hw, 2
  br i1 %i.hx, label %bb.an, label %bb.am

bb.am:                                            ; preds = %_ZNK4llvm6Triple24isWindowsMSVCEnvironmentEv.exit.thread
  %i.hy = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.hz = load ptr, ptr %i.hy, align 8, !tbaa !853, !nonnull !805, !align !806
  %i.ia = load i64, ptr %i.hz, align 8
  %i.ib = and i64 %i.ia, 32
  %.not440 = icmp eq i64 %i.ib, 0
  br i1 %.not440, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am, %_ZNK4llvm6Triple24isWindowsMSVCEnvironmentEv.exit.thread
  %i.ic = getelementptr inbounds nuw i8, ptr %i.hl, i64 18984
  %.0.copyload.i.i.i.i.i549 = load i64, ptr %i.ic, align 8
  %i.id = and i64 %.0.copyload.i.i.i.i.i549, -16
  %i.ie = inttoptr i64 %i.id to ptr
  %i.if = load ptr, ptr %i.ie, align 16, !tbaa !856
  %i.ig = ptrtoint ptr %i.if to i64
  store i64 %i.ig, ptr %38, align 8
  br label %bb.ao

bb.ao:                                            ; preds = %bb.al, %.critedge, %bb.an, %bb.am, %.critedge19, %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #28
  %i.ih = getelementptr inbounds nuw i8, ptr %0, i64 616 ; 4 uses
  %i.ii = load ptr, ptr %i.ih, align 8, !tbaa !932 ; 2 uses
  store ptr %i.ii, ptr %i.l, align 8, !tbaa !974
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #28
  store ptr %i.ii, ptr %i.m, align 8, !tbaa !974
  %i.ij = call noundef i32 @_ZNK5clang4Sema28forRedeclarationInCurContextEv(ptr noundef nonnull align 8 dereferenceable(18640) %0) #28
  %i.ik = load i32, ptr %i.a, align 4, !tbaa !2371 ; 2 uses
  %i.il = icmp eq i32 %i.ik, 3
  %i.im = icmp eq i32 %i.ik, 0
  %or.cond21 = or i1 %i.il, %i.im
  %spec.store.select94 = select i1 %or.cond21, i32 0, i32 %i.ij ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %41) #28
  store ptr %29, ptr %41, align 8, !tbaa !984
  %i.in = getelementptr inbounds nuw i8, ptr %41, i64 8
  store ptr %28, ptr %i.in, align 8, !tbaa !984
  %i.io = getelementptr inbounds nuw i8, ptr %41, i64 16
  store ptr %i.e, ptr %i.io, align 8, !tbaa !920
  %i.ip = getelementptr inbounds nuw i8, ptr %41, i64 24
  store ptr %0, ptr %i.ip, align 8, !tbaa !2379
  %i.iq = getelementptr inbounds nuw i8, ptr %41, i64 32
  store ptr %i.l, ptr %i.iq, align 8, !tbaa !3703
  %i.ir = getelementptr inbounds nuw i8, ptr %41, i64 40
  store ptr %i.b, ptr %i.ir, align 8, !tbaa !2380
  %i.is = getelementptr inbounds nuw i8, ptr %41, i64 48
  store ptr %i.f, ptr %i.is, align 8, !tbaa !2039
  %i.it = getelementptr inbounds nuw i8, ptr %41, i64 56
  store ptr %i.c, ptr %i.it, align 8, !tbaa !2039
  %i.iu = getelementptr inbounds nuw i8, ptr %41, i64 64
  store ptr %i.j, ptr %i.iu, align 8, !tbaa !2039
  %i.iv = getelementptr inbounds nuw i8, ptr %41, i64 72
  store ptr %i.a, ptr %i.iv, align 8, !tbaa !920
  %i.iw = getelementptr inbounds nuw i8, ptr %41, i64 80
  store ptr %i.h, ptr %i.iw, align 8, !tbaa !2039
  %i.ix = getelementptr inbounds nuw i8, ptr %41, i64 88
  store ptr %38, ptr %i.ix, align 8, !tbaa !3704
  %i.iy = getelementptr inbounds nuw i8, ptr %41, i64 96
  store ptr %i.d, ptr %i.iy, align 8, !tbaa !3705
  call void @llvm.lifetime.start.p0(ptr nonnull %42) #28
  %i.iz = load ptr, ptr %i.b, align 8, !tbaa !812
  %i.ja = ptrtoint ptr %i.iz to i64               ; 2 uses
  %.sroa.0274.0.copyload = load i32, ptr %29, align 4, !tbaa !813
  store i32 0, ptr %42, align 8, !tbaa !874
  %i.jb = getelementptr inbounds nuw i8, ptr %42, i64 4 ; 5 uses
  store i32 0, ptr %i.jb, align 4, !tbaa !875
  %i.jc = getelementptr inbounds nuw i8, ptr %42, i64 8 ; 20 uses
  %i.jd = getelementptr inbounds nuw i8, ptr %42, i64 24 ; 2 uses
  store ptr %i.jd, ptr %i.jc, align 8, !tbaa !876
  %i.je = getelementptr inbounds nuw i8, ptr %42, i64 16 ; 31 uses
  store i32 0, ptr %i.je, align 8, !tbaa !877
  %i.jf = getelementptr inbounds nuw i8, ptr %42, i64 20 ; 2 uses
  store i32 8, ptr %i.jf, align 4, !tbaa !878
  %i.jg = getelementptr inbounds nuw i8, ptr %42, i64 88 ; 28 uses
  %i.jh = getelementptr inbounds nuw i8, ptr %42, i64 112 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.jg, i8 0, i64 24, i1 false)
  store ptr %0, ptr %i.jh, align 8, !tbaa !879
  %i.ji = getelementptr inbounds nuw i8, ptr %42, i64 120
  store i64 %i.ja, ptr %i.ji, align 8, !tbaa !835
  %i.jj = getelementptr inbounds nuw i8, ptr %42, i64 128
  store i32 %.sroa.0274.0.copyload, ptr %i.jj, align 8, !tbaa !813
  %i.jk = getelementptr inbounds nuw i8, ptr %42, i64 136
  call void @_ZN5clang18DeclarationNameLocC1ENS_15DeclarationNameE(ptr noundef nonnull align 8 dereferenceable(8) %i.jk, i64 %i.ja) #28
  %i.jl = getelementptr inbounds nuw i8, ptr %42, i64 144
end_hunk_1
