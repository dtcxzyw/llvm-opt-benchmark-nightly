inline.NumInlined: 3236
inline.NumDeleted: 1424
begin_hunk_0_@_ZN6hermes5irgen11ESTreeIRGen20ensureVariableExistsEPNS_6ESTree14IdentifierNodeE:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #16
  %i.bi = getelementptr inbounds nuw i8, ptr %i.ap, i64 216
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !343 ; 2 uses
  %.sroa.0.0.copyload.i31 = load ptr, ptr %i.bj, align 8, !tbaa !40
  %.sroa.2.0..sroa_idx.i32 = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  %.sroa.2.0.copyload.i33 = load i64, ptr %.sroa.2.0..sroa_idx.i32, align 8, !tbaa !243
  store ptr %.sroa.0.0.copyload.i31, ptr %9, align 8
  %i.bk = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i64 %.sroa.2.0.copyload.i33, ptr %i.bk, align 8
  store ptr %4, ptr %3, align 8, !tbaa !42, !alias.scope !433
  %i.bl = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %9, ptr %i.bl, align 8, !tbaa !42, !alias.scope !433
  %i.bm = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i8 2, ptr %i.bm, align 8, !tbaa !144, !alias.scope !433
  %i.bn = getelementptr inbounds nuw i8, ptr %3, i64 17
  store i8 5, ptr %i.bn, align 1, !tbaa !141, !alias.scope !433
  store ptr %3, ptr %2, align 8, !tbaa !42, !alias.scope !438
  %i.bo = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr @.str.9, ptr %i.bo, align 8, !tbaa !42, !alias.scope !438
  %i.bp = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i8 2, ptr %i.bp, align 8, !tbaa !144, !alias.scope !438
  %i.bq = getelementptr inbounds nuw i8, ptr %2, i64 17
  store i8 3, ptr %i.bq, align 1, !tbaa !141, !alias.scope !438
  call void @_ZN6hermes18SourceErrorManager7messageENS0_8DiagKindEN4llvh5SMLocENS2_7SMRangeERKNS2_5TwineENS_7WarningENS_9SubsystemE(ptr noundef nonnull align 8 dereferenceable(464) %i.au, i32 noundef 1, ptr %.sroa.0.0.copyload.i, ptr %.sroa.0.0.copyload.i, ptr %.sroa.2.0.copyload.i, ptr noundef nonnull align 8 dereferenceable(18) %2, i32 noundef 1, i32 noundef 0) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #16
  %i.br = load ptr, ptr %8, align 8, !tbaa !443   ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.bt = icmp eq ptr %i.br, %i.bs
  br i1 %i.bt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN4llvhplERKNS_5TwineES2_.exit49
  %i.bu = load i64, ptr %i.bs, align 8, !tbaa !42
  %i.bv = add i64 %i.bu, 1
  call void @_ZdlPvm(ptr noundef %i.br, i64 noundef %i.bv) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN4llvhplERKNS_5TwineES2_.exit49, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16
  br label %bb.d

bb.d:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNK6hermes15ScopedHashTableINS_10IdentifierEPNS_5ValueEE6lookupERKS1_.exit.thread
  %i.bw = call noundef ptr @_ZN6hermes5irgen11ESTreeIRGen28declareAmbientGlobalPropertyENS_10IdentifierE(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr %i.b)
  br label %bb.e

bb.e:                                             ; preds = %_ZNK6hermes15ScopedHashTableINS_10IdentifierEPNS_5ValueEE6lookupERKS1_.exit, %bb.d
  %.1 = phi ptr [ %i.bw, %bb.d ], [ %i.ae, %_ZNK6hermes15ScopedHashTableINS_10IdentifierEPNS_5ValueEE6lookupERKS1_.exit ]
  ret ptr %.1
}

declare noundef ptr @_ZN6hermes9IRBuilder17getInsertionBlockEv(ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #1

declare void @_ZNK6hermes8Function31getDescriptiveDefinitionKindStrB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(304)) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef ptr @_ZN6hermes5irgen11ESTreeIRGen27genMemberExpressionPropertyEPNS_6ESTree24MemberExpressionLikeNodeE(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_ZN6hermes6ESTree11getComputedEPNS0_24MemberExpressionLikeNodeE(ptr noundef %1) #16
  %i.b = tail call noundef ptr @_ZN6hermes6ESTree11getPropertyEPNS0_24MemberExpressionLikeNodeE(ptr noundef %1) #16 ; 4 uses
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noundef ptr @_ZN6hermes5irgen11ESTreeIRGen13genExpressionEPNS_6ESTree4NodeENS_10IdentifierE(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef %i.b, ptr null) #16
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.e = load i32, ptr %i.d, align 8, !tbaa !26
  %i.f = icmp ne i32 %i.e, 37
  %.not.not13 = icmp eq ptr %i.b, null
  %.not.not = or i1 %.not.not13, %i.f
  br i1 %.not.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.i = load double, ptr %i.h, align 8, !tbaa !446
  %i.j = tail call noundef ptr @_ZN6hermes9IRBuilder16getLiteralNumberEd(ptr noundef nonnull align 8 dereferenceable(40) %i.g, double noundef %i.i) #16
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.k = tail call noundef ptr @_ZN6hermes6ESTree11getPropertyEPNS0_24MemberExpressionLikeNodeE(ptr noundef %1) #16
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 48
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !366
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.o = tail call noundef ptr @_ZN6hermes9IRBuilder16getLiteralStringENS_10IdentifierE(ptr noundef nonnull align 8 dereferenceable(40) %i.n, ptr %i.m) #16
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.b
  %.1 = phi ptr [ %i.c, %bb.b ], [ %i.o, %bb.e ], [ %i.j, %bb.d ]
  ret ptr %.1
}

declare noundef zeroext i1 @_ZN6hermes6ESTree11getComputedEPNS0_24MemberExpressionLikeNodeE(ptr noundef) local_unnamed_addr #1

declare noundef ptr @_ZN6hermes5irgen11ESTreeIRGen13genExpressionEPNS_6ESTree4NodeENS_10IdentifierE(ptr noundef nonnull align 8 dereferenceable(200), ptr noundef, ptr) local_unnamed_addr #1

declare noundef ptr @_ZN6hermes6ESTree11getPropertyEPNS0_24MemberExpressionLikeNodeE(ptr noundef) local_unnamed_addr #1

declare noundef ptr @_ZN6hermes9IRBuilder16getLiteralNumberEd(ptr noundef nonnull align 8 dereferenceable(40), double noundef) local_unnamed_addr #1

declare noundef ptr @_ZN6hermes9IRBuilder16getLiteralStringENS_10IdentifierE(ptr noundef nonnull align 8 dereferenceable(40), ptr) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef zeroext i1 @_ZN6hermes5irgen11ESTreeIRGen31canCreateLRefWithoutSideEffectsEPNS_6ESTree4NodeE(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(200) %0, ptr noundef readonly captures(address_is_null) %1) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load i32, ptr %i.a, align 8, !tbaa !26
  %i.c = icmp eq i32 %i.b, 66
  %.not10 = icmp ne ptr %1, null
  %.not.not.not = and i1 %.not10, %i.c
  br i1 %.not.not.not, label %bb.b, label %_ZN4llvh16dyn_cast_or_nullIN6hermes8VariableENS1_5ValueEEENS_10cast_rettyIT_PT0_E8ret_typeES7_.exit

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !366  ; 3 uses
  %i.g = load ptr, ptr %i.d, align 8, !tbaa !344  ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.i = load i32, ptr %i.h, align 8, !tbaa !345  ; 4 uses
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %_ZNK4llvh12DenseMapBaseINS_8DenseMapIN6hermes10IdentifierEPNS2_19ScopedHashTableNodeIS3_PNS2_5ValueEEENS_12DenseMapInfoIS3_EENS_6detail12DenseMapPairIS3_S8_EEEES3_S8_SA_SD_E15LookupBucketForIS3_EEbRKT_RPKSD_.exit.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = ptrtoint ptr %i.f to i64
  %i.l = trunc i64 %i.k to i32                    ; 2 uses
  %i.m = lshr i32 %i.l, 4
  %i.n = lshr i32 %i.l, 9
  %i.o = xor i32 %i.m, %i.n
  %i.p = add i32 %i.i, -1                         ; 2 uses
  %.03649.i.i.i = and i32 %i.o, %i.p              ; 2 uses
  %i.q = zext nneg i32 %.03649.i.i.i to i64
  %i.r = getelementptr inbounds nuw [16 x i8], ptr %i.g, i64 %i.q ; 2 uses
  %.sroa.05.0.copyload50.i.i.i = load ptr, ptr %i.r, align 8, !tbaa !346 ; 2 uses
  %i.s = icmp eq ptr %i.f, %.sroa.05.0.copyload50.i.i.i
  br i1 %i.s, label %_ZNK4llvh12DenseMapBaseINS_8DenseMapIN6hermes10IdentifierEPNS2_19ScopedHashTableNodeIS3_PNS2_5ValueEEENS_12DenseMapInfoIS3_EENS_6detail12DenseMapPairIS3_S8_EEEES3_S8_SA_SD_E4findERKS3_.exit.i, label %.lr.ph.i.i.i, !prof !347

.lr.ph.i.i.i:                                     ; preds = %bb.c, %bb.d
  %.sroa.05.0.copyload54.i.i.i = phi ptr [ %.sroa.05.0.copyload.i.i.i, %bb.d ], [ %.sroa.05.0.copyload50.i.i.i, %bb.c ]
  %.03653.i.i.i = phi i32 [ %.036.i.i.i, %bb.d ], [ %.03649.i.i.i, %bb.c ]
  %.03851.i.i.i = phi i32 [ %i.u, %bb.d ], [ 1, %bb.c ] ; 2 uses
  %i.t = icmp eq ptr %.sroa.05.0.copyload54.i.i.i, inttoptr (i64 -8 to ptr)
  br i1 %i.t, label %_ZNK4llvh12DenseMapBaseINS_8DenseMapIN6hermes10IdentifierEPNS2_19ScopedHashTableNodeIS3_PNS2_5ValueEEENS_12DenseMapInfoIS3_EENS_6detail12DenseMapPairIS3_S8_EEEES3_S8_SA_SD_E15LookupBucketForIS3_EEbRKT_RPKSD_.exit.i.i, label %bb.d, !prof !245

bb.d:                                             ; preds = %.lr.ph.i.i.i
  %i.u = add i32 %.03851.i.i.i, 1
  %i.v = add i32 %.03851.i.i.i, %.03653.i.i.i
  %.036.i.i.i = and i32 %i.v, %i.p                ; 2 uses
  %i.w = zext i32 %.036.i.i.i to i64
  %i.x = getelementptr inbounds nuw [16 x i8], ptr %i.g, i64 %i.w ; 2 uses
  %.sroa.05.0.copyload.i.i.i = load ptr, ptr %i.x, align 8, !tbaa !346 ; 2 uses
  %i.y = icmp eq ptr %i.f, %.sroa.05.0.copyload.i.i.i
  br i1 %i.y, label %_ZNK4llvh12DenseMapBaseINS_8DenseMapIN6hermes10IdentifierEPNS2_19ScopedHashTableNodeIS3_PNS2_5ValueEEENS_12DenseMapInfoIS3_EENS_6detail12DenseMapPairIS3_S8_EEEES3_S8_SA_SD_E4findERKS3_.exit.i, label %.lr.ph.i.i.i, !prof !348, !llvm.loop !349

_ZNK4llvh12DenseMapBaseINS_8DenseMapIN6hermes10IdentifierEPNS2_19ScopedHashTableNodeIS3_PNS2_5ValueEEENS_12DenseMapInfoIS3_EENS_6detail12DenseMapPairIS3_S8_EEEES3_S8_SA_SD_E15LookupBucketForIS3_EEbRKT_RPKSD_.exit.i.i: ; preds = %.lr.ph.i.i.i, %bb.b
  %i.z = zext i32 %i.i to i64
  %i.aa = getelementptr inbounds nuw [16 x i8], ptr %i.g, i64 %i.z
  br label %_ZNK4llvh12DenseMapBaseINS_8DenseMapIN6hermes10IdentifierEPNS2_19ScopedHashTableNodeIS3_PNS2_5ValueEEENS_12DenseMapInfoIS3_EENS_6detail12DenseMapPairIS3_S8_EEEES3_S8_SA_SD_E4findERKS3_.exit.i

_ZNK4llvh12DenseMapBaseINS_8DenseMapIN6hermes10IdentifierEPNS2_19ScopedHashTableNodeIS3_PNS2_5ValueEEENS_12DenseMapInfoIS3_EENS_6detail12DenseMapPairIS3_S8_EEEES3_S8_SA_SD_E4findERKS3_.exit.i: ; preds = %bb.d, %_ZNK4llvh12DenseMapBaseINS_8DenseMapIN6hermes10IdentifierEPNS2_19ScopedHashTableNodeIS3_PNS2_5ValueEEENS_12DenseMapInfoIS3_EENS_6detail12DenseMapPairIS3_S8_EEEES3_S8_SA_SD_E15LookupBucketForIS3_EEbRKT_RPKSD_.exit.i.i, %bb.c
  %.sink.i.ph.pn.i.i = phi ptr [ %i.aa, %_ZNK4llvh12DenseMapBaseINS_8DenseMapIN6hermes10IdentifierEPNS2_19ScopedHashTableNodeIS3_PNS2_5ValueEEENS_12DenseMapInfoIS3_EENS_6detail12DenseMapPairIS3_S8_EEEES3_S8_SA_SD_E15LookupBucketForIS3_EEbRKT_RPKSD_.exit.i.i ], [ %i.r, %bb.c ], [ %i.x, %bb.d ] ; 2 uses
  %i.ab = zext i32 %i.i to i64
  %i.ac = getelementptr inbounds nuw [16 x i8], ptr %i.g, i64 %i.ab
  %i.ad = icmp eq ptr %.sink.i.ph.pn.i.i, %i.ac
  br i1 %i.ad, label %_ZN4llvh16dyn_cast_or_nullIN6hermes8VariableENS1_5ValueEEENS_10cast_rettyIT_PT0_E8ret_typeES7_.exit, label %_ZNK6hermes15ScopedHashTableINS_10IdentifierEPNS_5ValueEE6lookupERKS1_.exit

_ZNK6hermes15ScopedHashTableINS_10IdentifierEPNS_5ValueEE6lookupERKS1_.exit: ; preds = %_ZNK4llvh12DenseMapBaseINS_8DenseMapIN6hermes10IdentifierEPNS2_19ScopedHashTableNodeIS3_PNS2_5ValueEEENS_12DenseMapInfoIS3_EENS_6detail12DenseMapPairIS3_S8_EEEES3_S8_SA_SD_E4findERKS3_.exit.i
  %i.ae = getelementptr inbounds nuw i8, ptr %.sink.i.ph.pn.i.i, i64 8
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !350
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !352 ; 2 uses
  %.not.i = icmp eq ptr %i.ah, null
  br i1 %.not.i, label %_ZN4llvh16dyn_cast_or_nullIN6hermes8VariableENS1_5ValueEEENS_10cast_rettyIT_PT0_E8ret_typeES7_.exit, label %bb.e

bb.e:                                             ; preds = %_ZNK6hermes15ScopedHashTableINS_10IdentifierEPNS_5ValueEE6lookupERKS1_.exit
  %i.ai = load i8, ptr %i.ah, align 8, !tbaa !43
  %i.aj = icmp eq i8 %i.ai, 124
  br label %_ZN4llvh16dyn_cast_or_nullIN6hermes8VariableENS1_5ValueEEENS_10cast_rettyIT_PT0_E8ret_typeES7_.exit

_ZN4llvh16dyn_cast_or_nullIN6hermes8VariableENS1_5ValueEEENS_10cast_rettyIT_PT0_E8ret_typeES7_.exit: ; preds = %bb.e, %_ZNK6hermes15ScopedHashTableINS_10IdentifierEPNS_5ValueEE6lookupERKS1_.exit, %_ZNK4llvh12DenseMapBaseINS_8DenseMapIN6hermes10IdentifierEPNS2_19ScopedHashTableNodeIS3_PNS2_5ValueEEENS_12DenseMapInfoIS3_EENS_6detail12DenseMapPairIS3_S8_EEEES3_S8_SA_SD_E4findERKS3_.exit.i, %bb.a
  %spec.select = phi i1 [ false, %bb.a ], [ false, %_ZNK6hermes15ScopedHashTableINS_10IdentifierEPNS_5ValueEE6lookupERKS1_.exit ], [ %i.aj, %bb.e ], [ false, %_ZNK4llvh12DenseMapBaseINS_8DenseMapIN6hermes10IdentifierEPNS2_19ScopedHashTableNodeIS3_PNS2_5ValueEEENS_12DenseMapInfoIS3_EENS_6detail12DenseMapPairIS3_S8_EEEES3_S8_SA_SD_E4findERKS3_.exit.i ]
  ret i1 %spec.select
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN6hermes5irgen11ESTreeIRGen10createLRefEPNS_6ESTree4NodeEb(ptr dead_on_unwind noalias writable writeonly sret(%"class.hermes::irgen::LReference") align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(200) %1, ptr noundef %2, i1 noundef zeroext %3) local_unnamed_addr #0 align 2 {
bb.a:
  %4 = alloca %"class.llvh::Twine", align 8       ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 40
  %.sroa.0.0.copyload.i = load ptr, ptr %i.a, align 8, !tbaa !40 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.c, align 8, !tbaa !40
  store ptr %.sroa.0.0.copyload.i, ptr %i.c, align 8, !tbaa !40
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.e = load i32, ptr %i.d, align 8, !tbaa !26   ; 3 uses
  %5 = tail call i32 @llvm.fshl.i32(i32 %i.e, i32 %i.e, i32 31)
  switch i32 %5, label %.critedge38 [
    i32 0, label %bb.b
    i32 29, label %bb.c
    i32 33, label %bb.h
    i32 36, label %bb.i
  ]

bb.b:                                             ; preds = %bb.a
  store i32 0, ptr %0, align 8, !tbaa !41
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %1, ptr %i.f, align 8, !tbaa !36
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 0, ptr %i.g, align 8, !tbaa !72
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.i, i8 0, i64 16, i1 false)
  store ptr %.sroa.0.0.copyload.i, ptr %i.h, align 8, !tbaa !40
  br label %bb.k

bb.c:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !449
  %i.l = tail call noundef ptr @_ZN6hermes5irgen11ESTreeIRGen13genExpressionEPNS_6ESTree4NodeENS_10IdentifierE(ptr noundef nonnull align 8 dereferenceable(200) %1, ptr noundef %i.k, ptr null) #16
  %i.m = tail call noundef zeroext i1 @_ZN6hermes6ESTree11getComputedEPNS0_24MemberExpressionLikeNodeE(ptr noundef nonnull %2) #16
  %i.n = tail call noundef ptr @_ZN6hermes6ESTree11getPropertyEPNS0_24MemberExpressionLikeNodeE(ptr noundef nonnull %2) #16 ; 4 uses
  br i1 %i.m, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.o = tail call noundef ptr @_ZN6hermes5irgen11ESTreeIRGen13genExpressionEPNS_6ESTree4NodeENS_10IdentifierE(ptr noundef nonnull align 8 dereferenceable(200) %1, ptr noundef %i.n, ptr null) #16
  br label %_ZN6hermes5irgen11ESTreeIRGen27genMemberExpressionPropertyEPNS_6ESTree24MemberExpressionLikeNodeE.exit

bb.e:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.q = load i32, ptr %i.p, align 8, !tbaa !26
  %i.r = icmp ne i32 %i.q, 37
  %.not.not13.i = icmp eq ptr %i.n, null
  %.not.not.i = or i1 %.not.not13.i, %i.r
  br i1 %.not.not.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.s = getelementptr inbounds nuw i8, ptr %i.n, i64 48
  %i.t = load double, ptr %i.s, align 8, !tbaa !446
  %i.u = tail call noundef ptr @_ZN6hermes9IRBuilder16getLiteralNumberEd(ptr noundef nonnull align 8 dereferenceable(40) %i.b, double noundef %i.t) #16
  br label %_ZN6hermes5irgen11ESTreeIRGen27genMemberExpressionPropertyEPNS_6ESTree24MemberExpressionLikeNodeE.exit

bb.g:                                             ; preds = %bb.e
  %i.v = tail call noundef ptr @_ZN6hermes6ESTree11getPropertyEPNS0_24MemberExpressionLikeNodeE(ptr noundef nonnull %2) #16
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 48
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !366
  %i.y = tail call noundef ptr @_ZN6hermes9IRBuilder16getLiteralStringENS_10IdentifierE(ptr noundef nonnull align 8 dereferenceable(40) %i.b, ptr %i.x) #16
  br label %_ZN6hermes5irgen11ESTreeIRGen27genMemberExpressionPropertyEPNS_6ESTree24MemberExpressionLikeNodeE.exit

_ZN6hermes5irgen11ESTreeIRGen27genMemberExpressionPropertyEPNS_6ESTree24MemberExpressionLikeNodeE.exit: ; preds = %bb.d, %bb.f, %bb.g
  %.1.i = phi ptr [ %i.o, %bb.d ], [ %i.y, %bb.g ], [ %i.u, %bb.f ]
  store i32 1, ptr %0, align 8, !tbaa !41
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %1, ptr %i.z, align 8, !tbaa !36
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 0, ptr %i.aa, align 8, !tbaa !72
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.l, ptr %i.ac, align 8, !tbaa !42
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %.1.i, ptr %i.ad, align 8, !tbaa !42
  store ptr %.sroa.0.0.copyload.i, ptr %i.ab, align 8, !tbaa !40
  br label %bb.k

bb.h:                                             ; preds = %bb.a
  %i.ae = tail call noundef ptr @_ZN6hermes5irgen11ESTreeIRGen20ensureVariableExistsEPNS_6ESTree14IdentifierNodeE(ptr noundef nonnull align 8 dereferenceable(200) %1, ptr noundef nonnull %2)
  %i.af = zext i1 %3 to i8
  store i32 2, ptr %0, align 8, !tbaa !41
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %1, ptr %i.ag, align 8, !tbaa !36
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %i.af, ptr %i.ah, align 8, !tbaa !72
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.ae, ptr %i.aj, align 8, !tbaa !42
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr null, ptr %i.ak, align 8, !tbaa !42
  store ptr %.sroa.0.0.copyload.i, ptr %i.ai, align 8, !tbaa !40
  br label %bb.k

bb.i:                                             ; preds = %bb.a
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !411
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 56
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !364
  tail call void @_ZN6hermes5irgen11ESTreeIRGen10createLRefEPNS_6ESTree4NodeEb(ptr dead_on_unwind writable sret(%"class.hermes::irgen::LReference") align 8 %0, ptr noundef nonnull align 8 dereferenceable(200) %1, ptr noundef %i.ao, i1 noundef zeroext true)
  br label %bb.k

.critedge38:                                      ; preds = %bb.a
  %i.ap = add i32 %i.e, -98
  %i.aq = icmp ult i32 %i.ap, -4
  br i1 %i.aq, label %.critedge40, label %bb.j

bb.j:                                             ; preds = %.critedge38
  %i.ar = zext i1 %3 to i8
  store i32 4, ptr %0, align 8, !tbaa !41
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %1, ptr %i.as, align 8, !tbaa !36
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %i.ar, ptr %i.at, align 8, !tbaa !72
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr null, ptr %i.au, align 8, !tbaa !452
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %2, ptr %i.av, align 8, !tbaa !42
  br label %bb.k

.critedge40:                                      ; preds = %.critedge38
  %i.aw = load ptr, ptr %i.b, align 8, !tbaa !194
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 40
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !75
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 160
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !78, !nonnull !24, !align !140
  %i.bb = getelementptr inbounds nuw i8, ptr %2, i64 24
  %.sroa.0.0.copyload.i44 = load ptr, ptr %i.bb, align 8, !tbaa !40
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 32
  %.sroa.2.0.copyload.i = load ptr, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !40
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #16
  %i.bc = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.bd = getelementptr inbounds nuw i8, ptr %4, i64 17
  store i8 1, ptr %i.bd, align 1, !tbaa !141
  store ptr @.str.10, ptr %4, align 8, !tbaa !42
  store i8 3, ptr %i.bc, align 8, !tbaa !144
  call void @_ZN6hermes18SourceErrorManager7messageENS0_8DiagKindEN4llvh7SMRangeERKNS2_5TwineENS_9SubsystemE(ptr noundef nonnull align 8 dereferenceable(464) %i.ba, i32 noundef 0, ptr %.sroa.0.0.copyload.i44, ptr %.sroa.2.0.copyload.i, ptr noundef nonnull align 8 dereferenceable(18) %4, i32 noundef 0) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  store i32 3, ptr %0, align 8, !tbaa !41
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %1, ptr %i.be, align 8, !tbaa !36
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 0, ptr %i.bf, align 8, !tbaa !72
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bh, i8 0, i64 16, i1 false)
  store ptr %.sroa.0.0.copyload.i, ptr %i.bg, align 8, !tbaa !40
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.h, %_ZN6hermes5irgen11ESTreeIRGen27genMemberExpressionPropertyEPNS_6ESTree24MemberExpressionLikeNodeE.exit, %.critedge40, %bb.b
  store ptr %.sroa.0.0.copyload.i.i, ptr %i.c, align 8, !tbaa !40
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef ptr @_ZN6hermes5irgen11ESTreeIRGen21genHermesInternalCallEN4llvh9StringRefEPNS_5ValueENS2_8ArrayRefIS5_EE(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr %1, i64 %2, ptr noundef %3, ptr %4, i64 %5) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = tail call noundef ptr @_ZN6hermes9IRBuilder31createTryLoadGlobalPropertyInstEN4llvh9StringRefE(ptr noundef nonnull align 8 dereferenceable(40) %i.a, ptr nonnull @.str.11, i64 14) #16 ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %spec.select = select i1 %i.c, ptr null, ptr %i.d
  %i.e = tail call noundef ptr @_ZN6hermes9IRBuilder22createLoadPropertyInstEPNS_5ValueEN4llvh9StringRefE(ptr noundef nonnull align 8 dereferenceable(40) %i.a, ptr noundef %spec.select, ptr %1, i64 %2) #16 ; 2 uses
  %i.f = icmp eq ptr %i.e, null
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.h = select i1 %i.f, ptr null, ptr %i.g
  %i.i = tail call noundef ptr @_ZN6hermes9IRBuilder14createCallInstEPNS_13LiteralStringEPNS_5ValueES4_N4llvh8ArrayRefIS4_EE(ptr noundef nonnull align 8 dereferenceable(40) %i.a, ptr noundef null, ptr noundef %i.h, ptr noundef %3, ptr %4, i64 %5) #16 ; 2 uses
  %i.j = icmp eq ptr %i.i, null
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.l = select i1 %i.j, ptr null, ptr %i.k
  ret ptr %i.l
}

declare noundef ptr @_ZN6hermes9IRBuilder14createCallInstEPNS_13LiteralStringEPNS_5ValueES4_N4llvh8ArrayRefIS4_EE(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef, ptr noundef, ptr noundef, ptr, i64) local_unnamed_addr #1

declare noundef ptr @_ZN6hermes9IRBuilder22createLoadPropertyInstEPNS_5ValueEN4llvh9StringRefE(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef, ptr, i64) local_unnamed_addr #1

declare noundef ptr @_ZN6hermes9IRBuilder31createTryLoadGlobalPropertyInstEN4llvh9StringRefE(ptr noundef nonnull align 8 dereferenceable(40), ptr, i64) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef ptr @_ZN6hermes5irgen11ESTreeIRGen14genBuiltinCallENS_13BuiltinMethod4EnumEN4llvh8ArrayRefIPNS_5ValueEEE(ptr noundef nonnull align 8 dereferenceable(200) %0, i8 noundef zeroext %1, ptr %2, i64 %3) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = tail call noundef ptr @_ZN6hermes9IRBuilder21createCallBuiltinInstENS_13BuiltinMethod4EnumEN4llvh8ArrayRefIPNS_5ValueEEE(ptr noundef nonnull align 8 dereferenceable(40) %i.a, i8 noundef zeroext %1, ptr %2, i64 %3) #16 ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %spec.select = select i1 %i.c, ptr null, ptr %i.d
  ret ptr %spec.select
}

declare noundef ptr @_ZN6hermes9IRBuilder21createCallBuiltinInstENS_13BuiltinMethod4EnumEN4llvh8ArrayRefIPNS_5ValueEEE(ptr noundef nonnull align 8 dereferenceable(40), i8 noundef zeroext, ptr, i64) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN6hermes5irgen11ESTreeIRGen16emitEnsureObjectEPNS_5ValueEN4llvh9StringRefE(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef %1, ptr %2, i64 %3) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca [2 x ptr], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  store ptr %1, ptr %i.a, align 8, !tbaa !195
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = tail call noundef ptr @_ZN6hermes9IRBuilder16getLiteralStringEN4llvh9StringRefE(ptr noundef nonnull align 8 dereferenceable(40) %i.c, ptr %2, i64 %3) #16
  store ptr %i.d, ptr %i.b, align 8, !tbaa !195
  %i.e = call noundef ptr @_ZN6hermes9IRBuilder21createCallBuiltinInstENS_13BuiltinMethod4EnumEN4llvh8ArrayRefIPNS_5ValueEEE(ptr noundef nonnull align 8 dereferenceable(40) %i.c, i8 noundef zeroext 40, ptr nonnull %i.a, i64 2) #16 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  ret void
}

declare noundef ptr @_ZN6hermes9IRBuilder16getLiteralStringEN4llvh9StringRefE(ptr noundef nonnull align 8 dereferenceable(40), ptr, i64) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef ptr @_ZN6hermes5irgen11ESTreeIRGen18emitIteratorSymbolEv(ptr noundef nonnull align 8 dereferenceable(200) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = tail call noundef ptr @_ZN6hermes9IRBuilder31createTryLoadGlobalPropertyInstEN4llvh9StringRefE(ptr noundef nonnull align 8 dereferenceable(40) %i.a, ptr nonnull @.str.12, i64 6) #16 ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 16
end_hunk_0
begin_hunk_1_@_ZN4llvh8DenseMapIPN6hermes7LiteralENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_EENS4_12DenseSetPairIS3_EEE4growEj:_ZN4llvh8DenseMapIPN6hermes7LiteralENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_EENS4_12DenseSetPairIS3_EEE15allocateBucketsEj.exit
  br i1 %.not19.i, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes7LiteralENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_EENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E18moveFromOldBucketsEPSA_SD_.exit, label %.lr.ph.i6

.lr.ph.i6:                                        ; preds = %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes7LiteralENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_EENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E9initEmptyEv.exit.i
  %i.ay = add i32 %i.am, -1                       ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.g, %.lr.ph.i6
  %i.az = phi i32 [ 0, %.lr.ph.i6 ], [ %i.bw, %bb.g ] ; 3 uses
  %.020.i = phi ptr [ %i.c, %.lr.ph.i6 ], [ %i.bx, %bb.g ] ; 2 uses
  %i.ba = load ptr, ptr %.020.i, align 8, !tbaa !500 ; 4 uses
  %magicptr.i = ptrtoint ptr %i.ba to i64         ; 2 uses
  switch i64 %magicptr.i, label %bb.d [
    i64 -8, label %bb.g
    i64 -16, label %bb.g
  ]

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.assume(i1 %.not6.i.i)
  %i.bb = trunc i64 %magicptr.i to i32            ; 2 uses
  %i.bc = lshr i32 %i.bb, 4
  %i.bd = lshr i32 %i.bb, 9
  %i.be = xor i32 %i.bc, %i.bd
  %.02944.i.i.i = and i32 %i.be, %i.ay            ; 2 uses
  %i.bf = zext nneg i32 %.02944.i.i.i to i64
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.bf ; 3 uses
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !500 ; 2 uses
  %i.bi = icmp eq ptr %i.ba, %i.bh
  br i1 %i.bi, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes7LiteralENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_EENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E15LookupBucketForIS4_EEbRKT_RPSA_.exit.i, label %.lr.ph.i.i.i, !prof !347

.lr.ph.i.i.i:                                     ; preds = %bb.d, %bb.f
  %i.bj = phi ptr [ %i.bt, %bb.f ], [ %i.bh, %bb.d ] ; 2 uses
  %i.bk = phi ptr [ %i.bs, %bb.f ], [ %i.bg, %bb.d ] ; 2 uses
  %.02947.i.i.i = phi i32 [ %.029.i.i.i, %bb.f ], [ %.02944.i.i.i, %bb.d ]
  %.02746.i.i.i = phi i32 [ %i.bp, %bb.f ], [ 1, %bb.d ] ; 2 uses
  %.03245.i.i.i = phi ptr [ %spec.select.i.i.i, %bb.f ], [ null, %bb.d ] ; 4 uses
  %i.bl = icmp eq ptr %i.bj, inttoptr (i64 -8 to ptr)
  br i1 %i.bl, label %bb.e, label %bb.f, !prof !245

bb.e:                                             ; preds = %.lr.ph.i.i.i
  %.not.i.i.i = icmp eq ptr %.03245.i.i.i, null
  %i.bm = select i1 %.not.i.i.i, ptr %i.bk, ptr %.03245.i.i.i
  br label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes7LiteralENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_EENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E15LookupBucketForIS4_EEbRKT_RPSA_.exit.i

bb.f:                                             ; preds = %.lr.ph.i.i.i
  %i.bn = icmp eq ptr %i.bj, inttoptr (i64 -16 to ptr)
  %i.bo = icmp eq ptr %.03245.i.i.i, null
  %or.cond.not.i.i.i = select i1 %i.bn, i1 %i.bo, i1 false
  %spec.select.i.i.i = select i1 %or.cond.not.i.i.i, ptr %i.bk, ptr %.03245.i.i.i
  %i.bp = add i32 %.02746.i.i.i, 1
  %i.bq = add i32 %.02746.i.i.i, %.02947.i.i.i
  %.029.i.i.i = and i32 %i.bq, %i.ay              ; 2 uses
  %i.br = zext i32 %.029.i.i.i to i64
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.br ; 3 uses
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !500 ; 2 uses
  %i.bu = icmp eq ptr %i.ba, %i.bt
  br i1 %i.bu, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes7LiteralENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_EENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E15LookupBucketForIS4_EEbRKT_RPSA_.exit.i, label %.lr.ph.i.i.i, !prof !348, !llvm.loop !1127

_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes7LiteralENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_EENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E15LookupBucketForIS4_EEbRKT_RPSA_.exit.i: ; preds = %bb.f, %bb.e, %bb.d
  %.sink.i.i.i = phi ptr [ %i.bm, %bb.e ], [ %i.bg, %bb.d ], [ %i.bs, %bb.f ]
  store ptr %i.ba, ptr %.sink.i.i.i, align 8, !tbaa !500
  %i.bv = add i32 %i.az, 1                        ; 2 uses
  store i32 %i.bv, ptr %i.ak, align 8, !tbaa !1129
  br label %bb.g

bb.g:                                             ; preds = %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes7LiteralENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_EENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E15LookupBucketForIS4_EEbRKT_RPSA_.exit.i, %bb.c, %bb.c
  %i.bw = phi i32 [ %i.az, %bb.c ], [ %i.az, %bb.c ], [ %i.bv, %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes7LiteralENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_EENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E15LookupBucketForIS4_EEbRKT_RPSA_.exit.i ]
  %i.bx = getelementptr inbounds nuw i8, ptr %.020.i, i64 8 ; 2 uses
  %.not.i7 = icmp eq ptr %i.bx, %i.aj
  br i1 %.not.i7, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes7LiteralENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_EENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E18moveFromOldBucketsEPSA_SD_.exit, label %bb.c, !llvm.loop !1140

_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes7LiteralENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_EENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E18moveFromOldBucketsEPSA_SD_.exit: ; preds = %bb.g, %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes7LiteralENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_EENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E9initEmptyEv.exit.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.c) #16
  br label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes7LiteralENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_EENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E9initEmptyEv.exit

_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes7LiteralENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_EENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E9initEmptyEv.exit: ; preds = %.lr.ph.i, %middle.block37, %bb.a, %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes7LiteralENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_EENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E18moveFromOldBucketsEPSA_SD_.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt23_Sp_counted_ptr_inplaceIN6hermes15SerializedScopeESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev(ptr noundef nonnull align 8 dereferenceable(320) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 320) #19
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt23_Sp_counted_ptr_inplaceIN6hermes15SerializedScopeESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(320) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !228  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZN4llvh11SmallVectorIN6hermes15SerializedScope11DeclarationELj16EED2Ev.exit.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @free(ptr noundef %i.b) #16
  br label %_ZN4llvh11SmallVectorIN6hermes15SerializedScope11DeclarationELj16EED2Ev.exit.i.i

_ZN4llvh11SmallVectorIN6hermes15SerializedScope11DeclarationELj16EED2Ev.exit.i.i: ; preds = %bb.b, %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !236  ; 8 uses
  %.not.i.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIN6hermes15SerializedScopeEEvPT_.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4llvh11SmallVectorIN6hermes15SerializedScope11DeclarationELj16EED2Ev.exit.i.i
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 4 uses
  %i.h = load atomic i64, ptr %i.g acquire, align 8 ; 2 uses
  %i.i = icmp eq i64 %i.h, 4294967297
  %i.j = trunc i64 %i.h to i32                    ; 2 uses
  br i1 %i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %i.g, align 8, !tbaa !222
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 12
  store i32 0, ptr %i.k, align 4, !tbaa !225
  %i.l = load ptr, ptr %i.f, align 8, !tbaa !226
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.n = load ptr, ptr %i.m, align 8
  tail call void %i.n(ptr noundef nonnull align 8 dereferenceable(16) %i.f) #16, !inline_history !1141
  %i.o = load ptr, ptr %i.f, align 8, !tbaa !226
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.q = load ptr, ptr %i.p, align 8
  tail call void %i.q(ptr noundef nonnull align 8 dereferenceable(16) %i.f) #16, !inline_history !1141
  br label %_ZSt8_DestroyIN6hermes15SerializedScopeEEvPT_.exit

bb.e:                                             ; preds = %bb.c
  %i.r = load i8, ptr @__libc_single_threaded, align 1, !tbaa !42
  %.not.i.i.i.i.i = icmp eq i8 %i.r, 0
  br i1 %.not.i.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.s = add nsw i32 %i.j, -1
  store i32 %i.s, ptr %i.g, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.t = atomicrmw volatile add ptr %i.g, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.g, %bb.f
  %.0.i.i.i.i.i.i = phi i32 [ %i.j, %bb.f ], [ %i.t, %bb.g ]
  %i.u = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.u, label %bb.h, label %_ZSt8_DestroyIN6hermes15SerializedScopeEEvPT_.exit, !prof !238

bb.h:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.f) #16
  br label %_ZSt8_DestroyIN6hermes15SerializedScopeEEvPT_.exit

_ZSt8_DestroyIN6hermes15SerializedScopeEEvPT_.exit: ; preds = %_ZN4llvh11SmallVectorIN6hermes15SerializedScope11DeclarationELj16EED2Ev.exit.i.i, %bb.d, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.h
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt23_Sp_counted_ptr_inplaceIN6hermes15SerializedScopeESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(320) %0) unnamed_addr #0 comdat align 2 {
_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN6hermes15SerializedScopeESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 320) #19
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZNSt23_Sp_counted_ptr_inplaceIN6hermes15SerializedScopeESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info(ptr noundef nonnull align 8 dereferenceable(320) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = icmp eq ptr %1, @_ZZNSt19_Sp_make_shared_tag5_S_tiEvE5__tag
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noundef zeroext i1 @_ZNSt19_Sp_make_shared_tag5_S_eqERKSt9type_info(ptr noundef nonnull align 8 dereferenceable(16) %1) #16
  %spec.select = select i1 %i.c, ptr %i.a, ptr null
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi ptr [ %i.a, %bb.a ], [ %spec.select, %bb.b ]
  ret ptr %.0
}

; Function Attrs: nounwind
declare noundef zeroext i1 @_ZNSt19_Sp_make_shared_tag5_S_eqERKSt9type_info(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #15

attributes #0 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #6 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #15 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #16 = { nounwind }
attributes #17 = { builtin nounwind allocsize(0) }
attributes #18 = { noreturn nounwind }
attributes #19 = { builtin nounwind }
attributes #20 = { nounwind allocsize(0) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{!8, !22, i64 56}
!8 = !{!"_ZTSN6hermes20GlobalObjectPropertyE", !9, i64 0, !20, i64 40, !21, i64 48, !22, i64 56}
!9 = !{!"_ZTSN6hermes5ValueE", !10, i64 0, !11, i64 2, !13, i64 8}
!10 = !{!"_ZTSN6hermes9ValueKindE", !5, i64 0}
!11 = !{!"_ZTSN6hermes4TypeE", !12, i64 0, !12, i64 2}
!12 = !{!"short", !5, i64 0}
!13 = !{!"_ZTSN4llvh11SmallVectorIPN6hermes11InstructionELj2EEE", !14, i64 0, !19, i64 16}
!14 = !{!"_ZTSN4llvh15SmallVectorImplIPN6hermes11InstructionEEE", !15, i64 0}
!15 = !{!"_ZTSN4llvh23SmallVectorTemplateBaseIPN6hermes11InstructionELb1EEE", !16, i64 0}
!16 = !{!"_ZTSN4llvh25SmallVectorTemplateCommonIPN6hermes11InstructionEvEE", !17, i64 0}
!17 = !{!"_ZTSN4llvh15SmallVectorBaseE", !18, i64 0, !4, i64 8, !4, i64 12}
!18 = !{!"any pointer", !5, i64 0}
!19 = !{!"_ZTSN4llvh18SmallVectorStorageIPN6hermes11InstructionELj2EEE", !5, i64 0}
!20 = !{!"p1 _ZTSN6hermes6ModuleE", !18, i64 0}
!21 = !{!"p1 _ZTSN6hermes13LiteralStringE", !18, i64 0}
!22 = !{!"bool", !5, i64 0}
!23 = !{i8 0, i8 2}
!24 = !{}
!25 = !{!8, !21, i64 48}
!26 = !{!27, !32, i64 16}
!27 = !{!"_ZTSN6hermes6ESTree4NodeE", !28, i64 0, !32, i64 16, !4, i64 20, !33, i64 24, !34, i64 40}
!28 = !{!"_ZTSN4llvh10ilist_nodeIN6hermes6ESTree4NodeEJEEE", !29, i64 0}
!29 = !{!"_ZTSN4llvh15ilist_node_implINS_12ilist_detail12node_optionsIN6hermes6ESTree4NodeELb0ELb0EvEEEE", !30, i64 0}
!30 = !{!"_ZTSN4llvh15ilist_node_baseILb0EEE", !31, i64 0, !31, i64 8}
!31 = !{!"p1 _ZTSN4llvh15ilist_node_baseILb0EEE", !18, i64 0}
!32 = !{!"_ZTSN6hermes6ESTree8NodeKindE", !5, i64 0}
!33 = !{!"_ZTSN4llvh7SMRangeE", !34, i64 0, !34, i64 8}
!34 = !{!"_ZTSN4llvh5SMLocE", !35, i64 0}
!35 = !{!"p1 omnipotent char", !18, i64 0}
!36 = !{!37, !39, i64 8}
!37 = !{!"_ZTSN6hermes5irgen10LReferenceE", !38, i64 0, !39, i64 8, !22, i64 16, !5, i64 24, !34, i64 40}
!38 = !{!"_ZTSN6hermes5irgen10LReference4KindE", !5, i64 0}
!39 = !{!"p1 _ZTSN6hermes5irgen11ESTreeIRGenE", !18, i64 0}
!40 = !{!35, !35, i64 0}
!41 = !{!37, !38, i64 0}
!42 = !{!5, !5, i64 0}
!43 = !{!9, !10, i64 0}
!44 = !{!45, !66, i64 168}
!45 = !{!"_ZTSN6hermes5irgen11ESTreeIRGenE", !20, i64 0, !46, i64 8, !51, i64 48, !52, i64 56, !53, i64 64, !54, i64 72, !54, i64 80, !55, i64 88, !59, i64 120, !64, i64 136, !64, i64 144, !64, i64 152, !50, i64 160, !66, i64 168, !67, i64 176}
!46 = !{!"_ZTSN6hermes9IRBuilderE", !20, i64 0, !47, i64 8, !49, i64 16, !34, i64 24, !50, i64 32}
!47 = !{!"_ZTSN4llvh14ilist_iteratorINS_12ilist_detail12node_optionsIN6hermes11InstructionELb0ELb0EvEELb0ELb0EEE", !48, i64 0}
!48 = !{!"p1 _ZTSN4llvh15ilist_node_implINS_12ilist_detail12node_optionsIN6hermes11InstructionELb0ELb0EvEEEE", !18, i64 0}
!49 = !{!"p1 _ZTSN6hermes10BasicBlockE", !18, i64 0}
!50 = !{!"p1 _ZTSN6hermes9ScopeDescE", !18, i64 0}
!51 = !{!"_ZTSN6hermes12IRInstrumentE"}
!52 = !{!"p1 _ZTSN6hermes6ESTree4NodeE", !18, i64 0}
!53 = !{!"p1 _ZTSSt6vectorIPN6hermes6ESTree11ProgramNodeESaIS3_EE", !18, i64 0}
!54 = !{!"p1 _ZTSN6hermes5irgen15FunctionContextE", !18, i64 0}
!55 = !{!"_ZTSN6hermes15ScopedHashTableINS_10IdentifierEPNS_5ValueEEE", !56, i64 0, !58, i64 24}
!56 = !{!"_ZTSN4llvh8DenseMapIN6hermes10IdentifierEPNS1_19ScopedHashTableNodeIS2_PNS1_5ValueEEENS_12DenseMapInfoIS2_EENS_6detail12DenseMapPairIS2_S7_EEEE", !57, i64 0, !4, i64 8, !4, i64 12, !4, i64 16}
!57 = !{!"p1 _ZTSN4llvh6detail12DenseMapPairIN6hermes10IdentifierEPNS2_19ScopedHashTableNodeIS3_PNS2_5ValueEEEEE", !18, i64 0}
!58 = !{!"p1 _ZTSN6hermes20ScopedHashTableScopeINS_10IdentifierEPNS_5ValueEEE", !18, i64 0}
!59 = !{!"_ZTSSt10shared_ptrIKN6hermes15SerializedScopeEE", !60, i64 0}
!60 = !{!"_ZTSSt12__shared_ptrIKN6hermes15SerializedScopeELN9__gnu_cxx12_Lock_policyE2EE", !61, i64 0, !62, i64 8}
!61 = !{!"p1 _ZTSN6hermes15SerializedScopeE", !18, i64 0}
!62 = !{!"_ZTSSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE", !63, i64 0}
!63 = !{!"p1 _ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !18, i64 0}
!64 = !{!"_ZTSN6hermes10IdentifierE", !65, i64 0}
!65 = !{!"p1 _ZTSN6hermes12UniqueStringE", !18, i64 0}
!66 = !{!"p1 _ZTSN6hermes17ScopeCreationInstE", !18, i64 0}
!67 = !{!"_ZTSN4llvh8DenseMapIPN6hermes6ESTree23FunctionDeclarationNodeESt4pairIPNS1_8FunctionENS1_5irgen11ESTreeIRGen14AlreadyEmittedEENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_SB_EEEE", !68, i64 0, !4, i64 8, !4, i64 12, !4, i64 16}
!68 = !{!"p1 _ZTSN4llvh6detail12DenseMapPairIPN6hermes6ESTree23FunctionDeclarationNodeESt4pairIPNS2_8FunctionENS2_5irgen11ESTreeIRGen14AlreadyEmittedEEEE", !18, i64 0}
!69 = !{!70, !71, i64 40}
!70 = !{!"_ZTSN6hermes8VariableE", !9, i64 0, !71, i64 40, !64, i64 48, !50, i64 56, !22, i64 64}
!71 = !{!"_ZTSN6hermes18JavaScriptDeclKindE", !5, i64 0}
!72 = !{!37, !22, i64 16}
!73 = !{ptr @_ZN6hermes5irgen11ESTreeIRGen27emitDestructuringAssignmentEbPNS_6ESTree11PatternNodeEPNS_5ValueE}
!74 = !{!45, !20, i64 0}
!75 = !{!76, !77, i64 0}
!76 = !{!"_ZTSSt12__shared_ptrIN6hermes7ContextELN9__gnu_cxx12_Lock_policyE2EE", !77, i64 0, !62, i64 8}
!77 = !{!"p1 _ZTSN6hermes7ContextE", !18, i64 0}
!78 = !{!79, !114, i64 160}
!79 = !{!"_ZTSN6hermes7ContextE", !80, i64 0, !80, i64 32, !87, i64 64, !94, i64 72, !98, i64 104, !108, i64 152, !114, i64 160, !22, i64 168, !22, i64 169, !22, i64 170, !4, i64 172, !4, i64 176, !22, i64 180, !22, i64 181, !22, i64 182, !22, i64 183, !22, i64 184, !22, i64 185, !115, i64 188, !22, i64 192, !22, i64 193, !116, i64 200, !123, i64 208, !128, i64 232, !22, i64 236, !129, i64 240, !136, i64 632, !137, i64 640}
!80 = !{!"_ZTSN6hermes28BacktrackingBumpPtrAllocatorE", !81, i64 0, !86, i64 24}
!81 = !{!"_ZTSSt6vectorISt10unique_ptrIN6hermes28BacktrackingBumpPtrAllocator4SlabESt14default_deleteIS3_EESaIS6_EE", !82, i64 0}
!82 = !{!"_ZTSSt12_Vector_baseISt10unique_ptrIN6hermes28BacktrackingBumpPtrAllocator4SlabESt14default_deleteIS3_EESaIS6_EE", !83, i64 0}
!83 = !{!"_ZTSNSt12_Vector_baseISt10unique_ptrIN6hermes28BacktrackingBumpPtrAllocator4SlabESt14default_deleteIS3_EESaIS6_EE12_Vector_implE", !84, i64 0}
!84 = !{!"_ZTSNSt12_Vector_baseISt10unique_ptrIN6hermes28BacktrackingBumpPtrAllocator4SlabESt14default_deleteIS3_EESaIS6_EE17_Vector_impl_dataE", !85, i64 0, !85, i64 8, !85, i64 16}
!85 = !{!"p1 _ZTSSt10unique_ptrIN6hermes28BacktrackingBumpPtrAllocator4SlabESt14default_deleteIS2_EE", !18, i64 0}
!86 = !{!"p1 _ZTSN6hermes28BacktrackingBumpPtrAllocator5StateE", !18, i64 0}
!87 = !{!"_ZTSSt10unique_ptrIN6hermes6parser13PreParsedDataESt14default_deleteIS2_EE", !88, i64 0}
!88 = !{!"_ZTSSt15__uniq_ptr_dataIN6hermes6parser13PreParsedDataESt14default_deleteIS2_ELb1ELb1EE", !89, i64 0}
!89 = !{!"_ZTSSt15__uniq_ptr_implIN6hermes6parser13PreParsedDataESt14default_deleteIS2_EE", !90, i64 0}
!90 = !{!"_ZTSSt5tupleIJPN6hermes6parser13PreParsedDataESt14default_deleteIS2_EEE", !91, i64 0}
!91 = !{!"_ZTSSt11_Tuple_implILm0EJPN6hermes6parser13PreParsedDataESt14default_deleteIS2_EEE", !92, i64 0}
!92 = !{!"_ZTSSt10_Head_baseILm0EPN6hermes6parser13PreParsedDataELb0EE", !93, i64 0}
!93 = !{!"p1 _ZTSN6hermes6parser13PreParsedDataE", !18, i64 0}
!94 = !{!"_ZTSN6hermes11StringTableE", !95, i64 0, !96, i64 8}
!95 = !{!"p1 _ZTSN6hermes28BacktrackingBumpPtrAllocatorE", !18, i64 0}
!96 = !{!"_ZTSN4llvh8DenseMapINS_9StringRefEPN6hermes12UniqueStringENS_12DenseMapInfoIS1_EENS_6detail12DenseMapPairIS1_S4_EEEE", !97, i64 0, !4, i64 8, !4, i64 12, !4, i64 16}
!97 = !{!"p1 _ZTSN4llvh6detail12DenseMapPairINS_9StringRefEPN6hermes12UniqueStringEEE", !18, i64 0}
!98 = !{!"_ZTSSt3mapISt4pairIPN6hermes12UniqueStringES3_ENS1_14CompiledRegExpESt4lessIS4_ESaIS0_IKS4_S5_EEE", !99, i64 0}
!99 = !{!"_ZTSSt8_Rb_treeISt4pairIPN6hermes12UniqueStringES3_ES0_IKS4_NS1_14CompiledRegExpEESt10_Select1stIS7_ESt4lessIS4_ESaIS7_EE", !100, i64 0}
!100 = !{!"_ZTSNSt8_Rb_treeISt4pairIPN6hermes12UniqueStringES3_ES0_IKS4_NS1_14CompiledRegExpEESt10_Select1stIS7_ESt4lessIS4_ESaIS7_EE13_Rb_tree_implISB_Lb1EEE", !101, i64 0, !103, i64 8}
!101 = !{!"_ZTSSt20_Rb_tree_key_compareISt4lessISt4pairIPN6hermes12UniqueStringES4_EEE", !102, i64 0}
!102 = !{!"_ZTSSt4lessISt4pairIPN6hermes12UniqueStringES3_EE"}
!103 = !{!"_ZTSSt15_Rb_tree_header", !104, i64 0, !107, i64 32}
!104 = !{!"_ZTSSt18_Rb_tree_node_base", !105, i64 0, !106, i64 8, !106, i64 16, !106, i64 24}
!105 = !{!"_ZTSSt14_Rb_tree_color", !5, i64 0}
!106 = !{!"p1 _ZTSSt18_Rb_tree_node_base", !18, i64 0}
!107 = !{!"long", !5, i64 0}
!108 = !{!"_ZTSSt10unique_ptrIN6hermes18SourceErrorManagerESt14default_deleteIS1_EE", !109, i64 0}
!109 = !{!"_ZTSSt15__uniq_ptr_dataIN6hermes18SourceErrorManagerESt14default_deleteIS1_ELb1ELb1EE", !110, i64 0}
!110 = !{!"_ZTSSt15__uniq_ptr_implIN6hermes18SourceErrorManagerESt14default_deleteIS1_EE", !111, i64 0}
!111 = !{!"_ZTSSt5tupleIJPN6hermes18SourceErrorManagerESt14default_deleteIS1_EEE", !112, i64 0}
!112 = !{!"_ZTSSt11_Tuple_implILm0EJPN6hermes18SourceErrorManagerESt14default_deleteIS1_EEE", !113, i64 0}
!113 = !{!"_ZTSSt10_Head_baseILm0EPN6hermes18SourceErrorManagerELb0EE", !114, i64 0}
!114 = !{!"p1 _ZTSN6hermes18SourceErrorManagerE", !18, i64 0}
!115 = !{!"_ZTSN6hermes16ParseFlowSettingE", !5, i64 0}
!116 = !{!"_ZTSSt10unique_ptrIN4llvh8DenseMapINS0_9StringRefENS1_IS2_S2_NS0_12DenseMapInfoIS2_EENS0_6detail12DenseMapPairIS2_S2_EEEES4_NS6_IS2_S8_EEEESt14default_deleteISA_EE", !117, i64 0}
!117 = !{!"_ZTSSt15__uniq_ptr_dataIN4llvh8DenseMapINS0_9StringRefENS1_IS2_S2_NS0_12DenseMapInfoIS2_EENS0_6detail12DenseMapPairIS2_S2_EEEES4_NS6_IS2_S8_EEEESt14default_deleteISA_ELb1ELb1EE", !118, i64 0}
!118 = !{!"_ZTSSt15__uniq_ptr_implIN4llvh8DenseMapINS0_9StringRefENS1_IS2_S2_NS0_12DenseMapInfoIS2_EENS0_6detail12DenseMapPairIS2_S2_EEEES4_NS6_IS2_S8_EEEESt14default_deleteISA_EE", !119, i64 0}
!119 = !{!"_ZTSSt5tupleIJPN4llvh8DenseMapINS0_9StringRefENS1_IS2_S2_NS0_12DenseMapInfoIS2_EENS0_6detail12DenseMapPairIS2_S2_EEEES4_NS6_IS2_S8_EEEESt14default_deleteISA_EEE", !120, i64 0}
!120 = !{!"_ZTSSt11_Tuple_implILm0EJPN4llvh8DenseMapINS0_9StringRefENS1_IS2_S2_NS0_12DenseMapInfoIS2_EENS0_6detail12DenseMapPairIS2_S2_EEEES4_NS6_IS2_S8_EEEESt14default_deleteISA_EEE", !121, i64 0}
!121 = !{!"_ZTSSt10_Head_baseILm0EPN4llvh8DenseMapINS0_9StringRefENS1_IS2_S2_NS0_12DenseMapInfoIS2_EENS0_6detail12DenseMapPairIS2_S2_EEEES4_NS6_IS2_S8_EEEELb0EE", !122, i64 0}
!122 = !{!"p1 _ZTSN4llvh8DenseMapINS_9StringRefENS0_IS1_S1_NS_12DenseMapInfoIS1_EENS_6detail12DenseMapPairIS1_S1_EEEES3_NS5_IS1_S7_EEEE", !18, i64 0}
!123 = !{!"_ZTSSt6vectorIjSaIjEE", !124, i64 0}
!124 = !{!"_ZTSSt12_Vector_baseIjSaIjEE", !125, i64 0}
!125 = !{!"_ZTSNSt12_Vector_baseIjSaIjEE12_Vector_implE", !126, i64 0}
!126 = !{!"_ZTSNSt12_Vector_baseIjSaIjEE17_Vector_impl_dataE", !127, i64 0, !127, i64 8, !127, i64 16}
!127 = !{!"p1 int", !18, i64 0}
!128 = !{!"_ZTSN6hermes16DebugInfoSettingE", !5, i64 0}
!129 = !{!"_ZTSN6hermes22CodeGenerationSettingsE", !22, i64 0, !22, i64 1, !22, i64 2, !22, i64 3, !22, i64 4, !22, i64 5, !22, i64 6, !22, i64 7, !22, i64 8, !22, i64 9, !130, i64 16, !130, i64 168, !131, i64 320}
!130 = !{!"_ZTSN6hermes35CodeGenerationSettings_DumpSettingsE", !22, i64 0, !131, i64 8, !131, i64 80}
!131 = !{!"_ZTSN4llvh13SmallDenseSetINS_9StringRefELj4ENS_12DenseMapInfoIS1_EEEE", !132, i64 0}
!132 = !{!"_ZTSN4llvh6detail12DenseSetImplINS_9StringRefENS_13SmallDenseMapIS2_NS0_13DenseSetEmptyELj4ENS_12DenseMapInfoIS2_EENS0_12DenseSetPairIS2_EEEES6_EE", !133, i64 0}
!133 = !{!"_ZTSN4llvh13SmallDenseMapINS_9StringRefENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS1_EENS2_12DenseSetPairIS1_EEEE", !4, i64 0, !4, i64 0, !4, i64 4, !134, i64 8}
!134 = !{!"_ZTSN4llvh21AlignedCharArrayUnionIA4_NS_6detail12DenseSetPairINS_9StringRefEEENS_13SmallDenseMapIS3_NS1_13DenseSetEmptyELj4ENS_12DenseMapInfoIS3_EES4_E8LargeRepEccccccccEE", !135, i64 0}
!135 = !{!"_ZTSN4llvh16AlignedCharArrayILm8ELm64EEE", !5, i64 0}
!136 = !{!"_ZTSN6hermes20OptimizationSettingsE", !22, i64 0, !22, i64 1, !22, i64 2, !22, i64 3, !22, i64 4, !22, i64 5}
!137 = !{!"_ZTSSt10shared_ptrIN6hermes3hbc14BackendContextEE", !138, i64 0}
!138 = !{!"_ZTSSt12__shared_ptrIN6hermes3hbc14BackendContextELN9__gnu_cxx12_Lock_policyE2EE", !139, i64 0, !62, i64 8}
!139 = !{!"p1 _ZTSN6hermes3hbc14BackendContextE", !18, i64 0}
!140 = !{i64 8}
!141 = !{!142, !143, i64 17}
!142 = !{!"_ZTSN4llvh5TwineE", !5, i64 0, !5, i64 8, !143, i64 16, !143, i64 17}
!143 = !{!"_ZTSN4llvh5Twine8NodeKindE", !5, i64 0}
!144 = !{!142, !143, i64 16}
!145 = !{!70, !22, i64 64}
!146 = !{!45, !54, i64 80}
!147 = !{!148, !157, i64 112}
!148 = !{!"_ZTSN6hermes5irgen15FunctionContextE", !39, i64 0, !149, i64 8, !54, i64 16, !150, i64 24, !152, i64 48, !157, i64 112, !158, i64 120, !58, i64 128, !58, i64 136, !159, i64 144, !160, i64 152, !162, i64 168, !163, i64 176, !164, i64 184, !163, i64 192, !165, i64 200, !169, i64 264, !169, i64 336, !169, i64 408}
!149 = !{!"p1 _ZTSN6hermes3sem12FunctionInfoE", !18, i64 0}
!150 = !{!"_ZTSN6hermes9IRBuilder11SaveRestoreE", !151, i64 0, !49, i64 8, !34, i64 16}
!151 = !{!"p1 _ZTSN6hermes9IRBuilderE", !18, i64 0}
!152 = !{!"_ZTSN4llvh11SmallVectorIN6hermes5irgen9GotoLabelELj2EEE", !153, i64 0, !156, i64 16}
!153 = !{!"_ZTSN4llvh15SmallVectorImplIN6hermes5irgen9GotoLabelEEE", !154, i64 0}
!154 = !{!"_ZTSN4llvh23SmallVectorTemplateBaseIN6hermes5irgen9GotoLabelELb1EEE", !155, i64 0}
!155 = !{!"_ZTSN4llvh25SmallVectorTemplateCommonIN6hermes5irgen9GotoLabelEvEE", !17, i64 0}
!156 = !{!"_ZTSN4llvh18SmallVectorStorageIN6hermes5irgen9GotoLabelELj2EEE", !5, i64 0}
!157 = !{!"p1 _ZTSN6hermes8FunctionE", !18, i64 0}
!158 = !{!"p1 _ZTSN6hermes5irgen14SurroundingTryE", !18, i64 0}
!159 = !{!"p1 _ZTSN6hermes14AllocStackInstE", !18, i64 0}
!160 = !{!"_ZTSN6hermes23InternalIdentifierMakerE", !161, i64 0, !107, i64 8}
!161 = !{!"p1 _ZTSN6hermes11StringTableE", !18, i64 0}
!162 = !{!"p1 _ZTSN6hermes19CreateArgumentsInstE", !18, i64 0}
!163 = !{!"p1 _ZTSN6hermes8VariableE", !18, i64 0}
!164 = !{!"p1 _ZTSN6hermes5ValueE", !18, i64 0}
!165 = !{!"_ZTSN6hermes5irgen15EnterBlockScopeE", !54, i64 0, !50, i64 8, !66, i64 16, !58, i64 24, !166, i64 32}
!166 = !{!"_ZTSN6hermes20ScopedHashTableScopeINS_10IdentifierEPNS_5ValueEEE", !4, i64 0, !167, i64 8, !58, i64 16, !168, i64 24}
!167 = !{!"p1 _ZTSN6hermes19ScopedHashTableNodeINS_10IdentifierEPNS_5ValueEEE", !18, i64 0}
!168 = !{!"p1 _ZTSN6hermes15ScopedHashTableINS_10IdentifierEPNS_5ValueEEE", !18, i64 0}
!169 = !{!"_ZTSSt8optionalIN6hermes5irgen15EnterBlockScopeEE", !170, i64 0}
!170 = !{!"_ZTSSt14_Optional_baseIN6hermes5irgen15EnterBlockScopeELb0ELb0EE", !171, i64 0}
!171 = !{!"_ZTSSt17_Optional_payloadIN6hermes5irgen15EnterBlockScopeELb0ELb0ELb0EE", !172, i64 0}
!172 = !{!"_ZTSSt17_Optional_payloadIN6hermes5irgen15EnterBlockScopeELb1ELb0ELb0EE", !173, i64 0}
!173 = !{!"_ZTSSt22_Optional_payload_baseIN6hermes5irgen15EnterBlockScopeEE", !5, i64 0, !22, i64 64}
end_hunk_1
