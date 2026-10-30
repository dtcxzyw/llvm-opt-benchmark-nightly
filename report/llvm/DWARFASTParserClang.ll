Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/DWARFASTParserClang?download=true
inline.NumInlined: 6874
inline.NumDeleted: 3417
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZN12lldb_private15TypeSystemClang22GetTranslationUnitDeclEv:bb.a
  %.3.i.i.i.i = phi ptr [ %i.m, %bb.b ], [ %i.ap, %bb.l ], [ %i.af, %bb.i ]
  ret ptr %.3.i.i.i.i
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #9

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZN19DWARFASTParserClang27ParseTemplateParameterInfosERKN12lldb_private6plugin5dwarf8DWARFDIEERNS0_15TypeSystemClang22TemplateParameterInfosE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(152) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(112) %2) local_unnamed_addr #2 align 2 {
bb.a:
  %3 = alloca %"class.llvm::iterator_range", align 8 ; 6 uses
  %4 = alloca %"class.lldb_private::plugin::dwarf::DWARFDIE::child_iterator", align 8 ; 8 uses
  %5 = alloca %"class.lldb_private::plugin::dwarf::DWARFDIE::child_iterator", align 16 ; 6 uses
  %6 = alloca %"class.lldb_private::plugin::dwarf::DWARFDIE", align 8 ; 5 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !98
  %.not.i.i = icmp ne ptr %i.a, null
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = icmp ne ptr %i.c, null
  %i.e = select i1 %.not.i.i, i1 %i.d, i1 false
  br i1 %i.e, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  call void @_ZNK12lldb_private6plugin5dwarf8DWARFDIE8childrenEv(ptr dead_on_unwind nonnull writable sret(%"class.llvm::iterator_range") align 8 %3, ptr noundef nonnull align 8 dereferenceable(16) %1) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  %.sroa.0.0.copyload.i = load ptr, ptr %3, align 8 ; 2 uses
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.sroa.2.0.copyload.i = load ptr, ptr %.sroa.2.0..sroa_idx.i, align 8 ; 2 uses
  store ptr %.sroa.0.0.copyload.i, ptr %4, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store ptr %.sroa.2.0.copyload.i, ptr %i.f, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.i = load <2 x ptr>, ptr %i.g, align 8
  store <2 x ptr> %i.i, ptr %5, align 16
  br label %bb.c

bb.c:                                             ; preds = %bb.g, %bb.b
  %i.j = phi ptr [ %i.y, %bb.g ], [ %.sroa.2.0.copyload.i, %bb.b ]
  %i.k = phi ptr [ %i.x, %bb.g ], [ %.sroa.0.0.copyload.i, %bb.b ]
  %.not.i.i.i = icmp ne ptr %i.k, null
  %i.l = icmp ne ptr %i.j, null
  %i.m = select i1 %.not.i.i.i, i1 %i.l, i1 false
  br i1 %i.m, label %_ZNK4llvm20iterator_facade_baseIN12lldb_private6plugin5dwarf8DWARFDIE14child_iteratorESt20forward_iterator_tagS4_lPS4_RS4_EneERKS5_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = load ptr, ptr %5, align 16, !tbaa !98
  %.not.i4.i.i = icmp ne ptr %i.n, null
  %i.o = load ptr, ptr %i.h, align 8
  %i.p = icmp ne ptr %i.o, null
  %i.q = select i1 %.not.i4.i.i, i1 %i.p, i1 false
  br i1 %i.q, label %_ZNK4llvm20iterator_facade_baseIN12lldb_private6plugin5dwarf8DWARFDIE14child_iteratorESt20forward_iterator_tagS4_lPS4_RS4_EneERKS5_.exit, label %_ZNK4llvm20iterator_facade_baseIN12lldb_private6plugin5dwarf8DWARFDIE14child_iteratorESt20forward_iterator_tagS4_lPS4_RS4_EneERKS5_.exit.thread

_ZNK4llvm20iterator_facade_baseIN12lldb_private6plugin5dwarf8DWARFDIE14child_iteratorESt20forward_iterator_tagS4_lPS4_RS4_EneERKS5_.exit: ; preds = %bb.c, %bb.d
  %i.r = call noundef zeroext i1 @_ZN12lldb_private6plugin5dwarfeqERKNS1_12DWARFBaseDIEES4_(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %5) #24
  br i1 %i.r, label %_ZNK4llvm20iterator_facade_baseIN12lldb_private6plugin5dwarf8DWARFDIE14child_iteratorESt20forward_iterator_tagS4_lPS4_RS4_EneERKS5_.exit.thread, label %bb.e

_ZNK4llvm20iterator_facade_baseIN12lldb_private6plugin5dwarf8DWARFDIE14child_iteratorESt20forward_iterator_tagS4_lPS4_RS4_EneERKS5_.exit.thread: ; preds = %bb.d, %_ZNK4llvm20iterator_facade_baseIN12lldb_private6plugin5dwarf8DWARFDIE14child_iteratorESt20forward_iterator_tagS4_lPS4_RS4_EneERKS5_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.t = load i32, ptr %i.s, align 8, !tbaa !214
  %.not.i.i14 = icmp eq i32 %i.t, 0
  br i1 %.not.i.i14, label %bb.h, label %bb.i

bb.e:                                             ; preds = %_ZNK4llvm20iterator_facade_baseIN12lldb_private6plugin5dwarf8DWARFDIE14child_iteratorESt20forward_iterator_tagS4_lPS4_RS4_EneERKS5_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(16) %4, i64 16, i1 false)
  %i.u = call noundef zeroext i16 @_ZNK12lldb_private6plugin5dwarf12DWARFBaseDIE3TagEv(ptr noundef nonnull align 8 dereferenceable(16) %6) #24
  switch i16 %i.u, label %bb.g [
    i16 47, label %bb.f
    i16 48, label %bb.f
    i16 16647, label %bb.f
    i16 16646, label %bb.f
  ]

bb.f:                                             ; preds = %bb.e, %bb.e, %bb.e, %bb.e
  %i.v = call noundef zeroext i1 @_ZN19DWARFASTParserClang16ParseTemplateDIEERKN12lldb_private6plugin5dwarf8DWARFDIEERNS0_15TypeSystemClang22TemplateParameterInfosE(ptr noundef nonnull align 8 dereferenceable(152) %0, ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(112) %2) ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  %i.w = call { ptr, ptr } @_ZNK12lldb_private6plugin5dwarf8DWARFDIE10GetSiblingEv(ptr noundef nonnull align 8 dereferenceable(16) %4) #24 ; 2 uses
  %i.x = extractvalue { ptr, ptr } %i.w, 0        ; 2 uses
  %i.y = extractvalue { ptr, ptr } %i.w, 1        ; 2 uses
  store ptr %i.x, ptr %4, align 8
  store ptr %i.y, ptr %i.f, align 8
  br label %bb.c

bb.h:                                             ; preds = %_ZNK4llvm20iterator_facade_baseIN12lldb_private6plugin5dwarf8DWARFDIE14child_iteratorESt20forward_iterator_tagS4_lPS4_RS4_EneERKS5_.exit.thread
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 104
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !746
  %i.ab = icmp ne ptr %i.aa, null
  br label %bb.i

bb.i:                                             ; preds = %_ZNK4llvm20iterator_facade_baseIN12lldb_private6plugin5dwarf8DWARFDIE14child_iteratorESt20forward_iterator_tagS4_lPS4_RS4_EneERKS5_.exit.thread, %bb.h, %bb.a
  %.0 = phi i1 [ false, %bb.a ], [ true, %_ZNK4llvm20iterator_facade_baseIN12lldb_private6plugin5dwarf8DWARFDIE14child_iteratorESt20forward_iterator_tagS4_lPS4_RS4_EneERKS5_.exit.thread ], [ %i.ab, %bb.h ]
  ret i1 %.0
}

declare noundef ptr @_ZN12lldb_private15TypeSystemClang26CreateFunctionTemplateDeclEPN5clang11DeclContextENS_21OptionalClangModuleIDEPNS1_12FunctionDeclERKNS0_22TemplateParameterInfosE(ptr noundef nonnull align 8 dereferenceable(328), ptr noundef, i32, ptr noundef, ptr noundef nonnull align 8 dereferenceable(112)) local_unnamed_addr #5

declare void @_ZN12lldb_private15TypeSystemClang40CreateFunctionTemplateSpecializationInfoEPN5clang12FunctionDeclEPNS1_20FunctionTemplateDeclERKNS0_22TemplateParameterInfosE(ptr noundef nonnull align 8 dereferenceable(328), ptr noundef, ptr noundef, ptr noundef nonnull align 8 dereferenceable(112)) local_unnamed_addr #5

declare void @_ZN12lldb_private12_lldb_assertEbPKcS1_S1_jRSt9once_flag(i1 noundef zeroext, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #5

declare void @_ZN12lldb_private15TypeSystemClang27CreateParameterDeclarationsEPN5clang12FunctionDeclERKNS1_17FunctionProtoTypeERKN4llvm11SmallVectorINS7_9StringRefELj3EEE(ptr dead_on_unwind writable sret(%"class.llvm::SmallVector.654") align 8, ptr noundef nonnull align 8 dereferenceable(328), ptr noundef, ptr noundef nonnull align 16 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #5

declare void @_ZN12lldb_private6plugin5dwarf14DWARFASTParser19ParseChildArrayInfoERKNS1_8DWARFDIEEPKNS_16ExecutionContextE(ptr dead_on_unwind writable sret(%"class.std::optional.673") align 8, ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) local_unnamed_addr #5

declare void @_ZN12lldb_private15TypeSystemClang19RequireCompleteTypeENS_12CompilerTypeE(ptr nofree noundef align 8 dereferenceable(24)) local_unnamed_addr #5

declare void @_ZN12lldb_private15TypeSystemClang15CreateArrayTypeERKNS_12CompilerTypeESt8optionalImEb(ptr dead_on_unwind writable sret(%"class.lldb_private::CompilerType") align 8, ptr noundef nonnull align 8 dereferenceable(328), ptr noundef nonnull align 8 dereferenceable(24), i64, i8, i1 noundef zeroext) local_unnamed_addr #5

declare void @_ZN12lldb_private15TypeSystemClang19SetMetadataAsUserIDEPKN5clang4TypeEm(ptr noundef nonnull align 8 dereferenceable(328), ptr noundef, i64 noundef) local_unnamed_addr #5

declare void @_ZN12lldb_private15TypeSystemClang23CreateMemberPointerTypeERKNS_12CompilerTypeES3_(ptr dead_on_unwind writable sret(%"class.lldb_private::CompilerType") align 8, ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #5

declare void @_ZNK12lldb_private12CompilerType11GetByteSizeEPNS_21ExecutionContextScopeE(ptr dead_on_unwind writable sret(%"class.llvm::Expected") align 8, ptr noundef nonnull align 8 dereferenceable(24), ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN19DWARFASTParserClang16ParseInheritanceERKN12lldb_private6plugin5dwarf8DWARFDIEES5_NS0_12CompilerTypeERKSt10shared_ptrINS0_6ModuleEERSt6vectorISt10unique_ptrIN5clang16CXXBaseSpecifierESt14default_deleteISF_EESaISI_EERNS0_16ClangASTImporter10LayoutInfoE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr nofree noundef align 8 dereferenceable(24) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(88) %6) local_unnamed_addr #2 align 2 {
bb.a:
  %7 = alloca %"class.llvm::formatv_object.1592", align 8 ; 17 uses
  %8 = alloca %"class.std::shared_ptr.688", align 8 ; 6 uses
  %9 = alloca %"class.lldb_private::plugin::dwarf::DWARFAttributes", align 8 ; 7 uses
  %10 = alloca %"class.lldb_private::plugin::dwarf::DWARFFormValue", align 8 ; 8 uses
  %11 = alloca %"class.lldb_private::plugin::dwarf::DWARFFormValue", align 8 ; 9 uses
  %12 = alloca %"class.std::shared_ptr.202", align 16 ; 3 uses
  %13 = alloca %"class.lldb_private::plugin::dwarf::DWARFDIE", align 8 ; 5 uses
  %14 = alloca %"class.lldb_private::plugin::dwarf::DWARFDIE", align 8 ; 5 uses
  %15 = alloca %"class.lldb_private::CompilerType", align 16 ; 7 uses
  %16 = alloca %"class.lldb_private::CompilerType", align 16 ; 4 uses
  %17 = alloca %"class.std::unique_ptr.691", align 8 ; 7 uses
  %18 = alloca %"struct.std::pair.712", align 8   ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #24
  call void @_ZNK12lldb_private12CompilerType13GetTypeSystemINS_15TypeSystemClangEEESt10shared_ptrIT_Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.688") align 8 %8, ptr noundef nonnull align 8 dereferenceable(24) %3)
  %i.a = load ptr, ptr %8, align 8, !tbaa !748
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %bb.aq, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #24
  call void @_ZNK12lldb_private6plugin5dwarf12DWARFBaseDIE13GetAttributesENS2_7RecurseE(ptr dead_on_unwind nonnull writable sret(%"class.lldb_private::plugin::dwarf::DWARFAttributes") align 8 %9, ptr noundef nonnull align 8 dereferenceable(16) %1, i1 noundef zeroext true) #24
  %i.b = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 3 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !214
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %bb.ap, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #24
  store ptr null, ptr %10, align 8, !tbaa !93
  %i.e = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i16 0, ptr %i.e, align 8, !tbaa !94
  %i.f = getelementptr inbounds nuw i8, ptr %10, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, i8 0, i64 16, i1 false)
  %i.g = call noundef zeroext i16 @_ZNK12lldb_private6plugin5dwarf12DWARFBaseDIE3TagEv(ptr noundef nonnull align 8 dereferenceable(16) %2) #24
  %switch.tableidx = add i16 %i.g, -2             ; 2 uses
  %i.h = icmp ult i16 %switch.tableidx, 22
  br i1 %i.h, label %switch.lookup, label %_ZL23GetDefaultAccessibilityRKN12lldb_private6plugin5dwarf8DWARFDIEE.exit

switch.lookup:                                    ; preds = %bb.c
  %i.i = zext nneg i16 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._ZN19DWARFASTParserClang16ParseInheritanceERKN12lldb_private6plugin5dwarf8DWARFDIEES5_NS0_12CompilerTypeERKSt10shared_ptrINS0_6ModuleEERSt6vectorISt10unique_ptrIN5clang16CXXBaseSpecifierESt14default_deleteISF_EESaISI_EERNS0_16ClangASTImporter10LayoutInfoE, i64 %i.i
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i32
  br label %_ZL23GetDefaultAccessibilityRKN12lldb_private6plugin5dwarf8DWARFDIEE.exit

_ZL23GetDefaultAccessibilityRKN12lldb_private6plugin5dwarf8DWARFDIEE.exit: ; preds = %bb.c, %switch.lookup
  %.0.i = phi i32 [ %switch.ext, %switch.lookup ], [ 0, %bb.c ] ; 2 uses
  %i.j = load i32, ptr %i.b, align 8, !tbaa !214
  %.not66 = icmp eq i32 %i.j, 0
  br i1 %.not66, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZL23GetDefaultAccessibilityRKN12lldb_private6plugin5dwarf8DWARFDIEE.exit
  %i.k = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 8
  br label %bb.d

._crit_edge:                                      ; preds = %bb.s, %_ZL23GetDefaultAccessibilityRKN12lldb_private6plugin5dwarf8DWARFDIEE.exit
  %.024.lcssa = phi i32 [ %.0.i, %_ZL23GetDefaultAccessibilityRKN12lldb_private6plugin5dwarf8DWARFDIEE.exit ], [ %.125, %bb.s ]
  %.022.lcssa = phi i1 [ false, %_ZL23GetDefaultAccessibilityRKN12lldb_private6plugin5dwarf8DWARFDIEE.exit ], [ %.123, %bb.s ] ; 2 uses
  %.021.lcssa = phi i64 [ 0, %_ZL23GetDefaultAccessibilityRKN12lldb_private6plugin5dwarf8DWARFDIEE.exit ], [ %.2, %bb.s ]
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #24
  %i.n = call { ptr, ptr } @_ZNK12lldb_private6plugin5dwarf14DWARFFormValue9ReferenceEv(ptr noundef nonnull align 8 dereferenceable(40) %10) #24 ; 2 uses
  %i.o = extractvalue { ptr, ptr } %i.n, 0
  store ptr %i.o, ptr %13, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.q = extractvalue { ptr, ptr } %i.n, 1
  store ptr %i.q, ptr %i.p, align 8
  %i.r = call noundef ptr @_ZNK12lldb_private6plugin5dwarf8DWARFDIE14ResolveTypeUIDERKS2_(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %13) #24 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #24
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %bb.t, label %bb.u

bb.d:                                             ; preds = %.lr.ph, %bb.s
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.s ] ; 3 uses
  %.02162 = phi i64 [ 0, %.lr.ph ], [ %.2, %bb.s ] ; 6 uses
  %.02261 = phi i1 [ false, %.lr.ph ], [ %.123, %bb.s ] ; 5 uses
  %.02460 = phi i32 [ %.0.i, %.lr.ph ], [ %.125, %bb.s ] ; 5 uses
  %i.t = load ptr, ptr %9, align 8, !tbaa !196
  %i.u = getelementptr inbounds nuw [48 x i8], ptr %i.t, i64 %indvars.iv
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.w = load i16, ptr %i.v, align 8, !tbaa !217
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #24
  store ptr null, ptr %11, align 8, !tbaa !93
  store i16 0, ptr %i.k, align 8, !tbaa !94
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.l, i8 0, i64 16, i1 false)
  %19 = trunc nuw i64 %indvars.iv to i32
  %i.x = call noundef zeroext i1 @_ZNK12lldb_private6plugin5dwarf15DWARFAttributes23ExtractFormValueAtIndexEjRNS1_14DWARFFormValueE(ptr noundef nonnull align 8 dereferenceable(400) %9, i32 noundef %19, ptr noundef nonnull align 8 dereferenceable(40) %11) #24
  br i1 %i.x, label %bb.e, label %bb.s

bb.e:                                             ; preds = %bb.d
  switch i16 %i.w, label %bb.s [
    i16 73, label %bb.f
    i16 56, label %bb.g
    i16 50, label %bb.q
    i16 76, label %bb.r
  ]

bb.f:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %10, ptr noundef nonnull align 8 dereferenceable(40) %11, i64 40, i1 false), !tbaa.struct !221
  br label %bb.s

bb.g:                                             ; preds = %bb.e
  %i.y = load ptr, ptr %i.m, align 8, !tbaa !193  ; 8 uses
  %i.z = load <2 x ptr>, ptr %4, align 8, !tbaa !250
  store <2 x ptr> %i.z, ptr %12, align 16, !tbaa !250
  %.not.i.i.i = icmp eq ptr %i.y, null
  br i1 %.not.i.i.i, label %_ZNSt10shared_ptrIN12lldb_private6ModuleEEC2ERKS2_.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 8 ; 7 uses
  %i.ab = load i8, ptr @__libc_single_threaded, align 1, !tbaa !88
  %.not.i.i.i.i = icmp eq i8 %i.ab, 0
  br i1 %.not.i.i.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ac = load i32, ptr %i.aa, align 4, !tbaa !166
  %i.ad = add nsw i32 %i.ac, 1
  store i32 %i.ad, ptr %i.aa, align 4, !tbaa !166
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  %i.ae = atomicrmw volatile add ptr %i.aa, i32 1 acq_rel, align 4 ; 0 uses
  br label %bb.k

_ZNSt10shared_ptrIN12lldb_private6ModuleEEC2ERKS2_.exit: ; preds = %bb.g
  %i.af = call fastcc i64 @_ZL25ExtractDataMemberLocationRKN12lldb_private6plugin5dwarf8DWARFDIEERKNS1_14DWARFFormValueESt10shared_ptrINS_6ModuleEE(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(40) %11, ptr nofree noundef align 8 dereferenceable(16) %12)
  br label %_ZNSt12__shared_ptrIN12lldb_private6ModuleELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.k:                                             ; preds = %bb.i, %bb.j
  %i.ag = call fastcc i64 @_ZL25ExtractDataMemberLocationRKN12lldb_private6plugin5dwarf8DWARFDIEERKNS1_14DWARFFormValueESt10shared_ptrINS_6ModuleEE(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(40) %11, ptr nofree noundef align 8 dereferenceable(16) %12) ; 3 uses
  %i.ah = load atomic i64, ptr %i.aa acquire, align 8 ; 2 uses
  %i.ai = icmp eq i64 %i.ah, 4294967297
  %i.aj = trunc i64 %i.ah to i32                  ; 2 uses
  br i1 %i.ai, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  store i32 0, ptr %i.aa, align 8, !tbaa !164
  %i.ak = getelementptr inbounds nuw i8, ptr %i.y, i64 12
  store i32 0, ptr %i.ak, align 4, !tbaa !165
  %i.al = load ptr, ptr %i.y, align 8, !tbaa !52
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  %i.an = load ptr, ptr %i.am, align 8
  call void %i.an(ptr noundef nonnull align 8 dereferenceable(16) %i.y) #24, !inline_history !7
  %i.ao = load ptr, ptr %i.y, align 8, !tbaa !52
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 24
  %i.aq = load ptr, ptr %i.ap, align 8
  call void %i.aq(ptr noundef nonnull align 8 dereferenceable(16) %i.y) #24, !inline_history !7
  br label %_ZNSt12__shared_ptrIN12lldb_private6ModuleELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.m:                                             ; preds = %bb.k
  %i.ar = load i8, ptr @__libc_single_threaded, align 1, !tbaa !88
  %.not.i.i.i27 = icmp eq i8 %i.ar, 0
  br i1 %.not.i.i.i27, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.as = add nsw i32 %i.aj, -1
  store i32 %i.as, ptr %i.aa, align 8, !tbaa !166
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.o:                                             ; preds = %bb.m
  %i.at = atomicrmw volatile add ptr %i.aa, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.o, %bb.n
  %.0.i.i.i.i = phi i32 [ %i.aj, %bb.n ], [ %i.at, %bb.o ]
  %i.au = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.au, label %bb.p, label %_ZNSt12__shared_ptrIN12lldb_private6ModuleELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !167

bb.p:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.y) #24
  br label %_ZNSt12__shared_ptrIN12lldb_private6ModuleELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN12lldb_private6ModuleELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt10shared_ptrIN12lldb_private6ModuleEEC2ERKS2_.exit, %bb.l, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.p
  %.sroa.448.0.extract.trunc57.in.in = phi i64 [ %i.af, %_ZNSt10shared_ptrIN12lldb_private6ModuleEEC2ERKS2_.exit ], [ %i.ag, %bb.l ], [ %i.ag, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i ], [ %i.ag, %bb.p ] ; 2 uses
  %.not59 = icmp samesign ult i64 %.sroa.448.0.extract.trunc57.in.in, 4294967296
  %i.av = and i64 %.sroa.448.0.extract.trunc57.in.in, 4294967295
  %spec.select = select i1 %.not59, i64 %.02162, i64 %i.av
  br label %bb.s

bb.q:                                             ; preds = %bb.e
  %i.aw = load i64, ptr %i.l, align 8, !tbaa !88
  %i.ax = trunc i64 %i.aw to i32
  %i.ay = call noundef i32 @_ZN12lldb_private6plugin5dwarf14DWARFASTParser22GetAccessTypeFromDWARFEj(i32 noundef %i.ax) #24
  br label %bb.s

bb.r:                                             ; preds = %bb.e
  %i.az = load i64, ptr %i.l, align 8, !tbaa !88
  %i.ba = icmp ne i64 %i.az, 0
  br label %bb.s

bb.s:                                             ; preds = %_ZNSt12__shared_ptrIN12lldb_private6ModuleELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.f, %bb.q, %bb.r, %bb.e, %bb.d
  %.125 = phi i32 [ %.02460, %bb.e ], [ %.02460, %bb.f ], [ %.02460, %bb.d ], [ %i.ay, %bb.q ], [ %.02460, %bb.r ], [ %.02460, %_ZNSt12__shared_ptrIN12lldb_private6ModuleELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ] ; 2 uses
  %.123 = phi i1 [ %.02261, %bb.e ], [ %.02261, %bb.f ], [ %.02261, %bb.d ], [ %.02261, %bb.q ], [ %i.ba, %bb.r ], [ %.02261, %_ZNSt12__shared_ptrIN12lldb_private6ModuleELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ] ; 2 uses
  %.2 = phi i64 [ %.02162, %bb.e ], [ %.02162, %bb.f ], [ %.02162, %bb.d ], [ %.02162, %bb.q ], [ %.02162, %bb.r ], [ %spec.select, %_ZNSt12__shared_ptrIN12lldb_private6ModuleELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #24
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.bb = load i32, ptr %i.b, align 8, !tbaa !214
  %20 = zext i32 %i.bb to i64
  %21 = icmp samesign ult i64 %indvars.iv.next, %20
  br i1 %21, label %bb.d, label %._crit_edge, !llvm.loop !1334

bb.t:                                             ; preds = %._crit_edge
  %i.bc = load ptr, ptr %4, align 8, !tbaa !104
  %i.bd = call noundef i64 @_ZNK12lldb_private6plugin5dwarf12DWARFBaseDIE9GetOffsetEv(ptr noundef nonnull align 8 dereferenceable(16) %1) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #24
  %i.be = call { ptr, ptr } @_ZNK12lldb_private6plugin5dwarf14DWARFFormValue9ReferenceEv(ptr noundef nonnull align 8 dereferenceable(40) %10) #24 ; 2 uses
  %i.bf = extractvalue { ptr, ptr } %i.be, 0
  store ptr %i.bf, ptr %14, align 8
  %i.bg = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.bh = extractvalue { ptr, ptr } %i.be, 1
  store ptr %i.bh, ptr %i.bg, align 8
  %i.bi = call noundef i64 @_ZNK12lldb_private6plugin5dwarf12DWARFBaseDIE9GetOffsetEv(ptr noundef nonnull align 8 dereferenceable(16) %14) #24
  %i.bj = call noundef i64 @_ZNK12lldb_private6plugin5dwarf12DWARFBaseDIE9GetOffsetEv(ptr noundef nonnull align 8 dereferenceable(16) %2) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #24
  %i.bk = getelementptr inbounds nuw i8, ptr %7, i64 64 ; 2 uses
  store ptr @.str.28, ptr %7, align 8, !tbaa !170, !alias.scope !1343
  %.sroa.22.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 174, ptr %.sroa.22.0..sroa_idx.i.i.i.i.i, align 8, !tbaa !220, !alias.scope !1343
  %i.bl = getelementptr inbounds nuw i8, ptr %7, i64 16
  store ptr %i.bk, ptr %i.bl, align 8, !tbaa !244, !alias.scope !1343
  %.sroa.2.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %7, i64 24
  store i64 3, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i, align 8, !tbaa !220, !alias.scope !1343
  %i.bm = getelementptr inbounds nuw i8, ptr %7, i64 32
  store i8 1, ptr %i.bm, align 8, !tbaa !248, !alias.scope !1343
  %i.bn = getelementptr inbounds nuw i8, ptr %7, i64 40 ; 2 uses
  store i64 %i.bj, ptr %i.bn, align 8, !tbaa !220, !alias.scope !1343
  %i.bo = getelementptr inbounds nuw i8, ptr %7, i64 48 ; 2 uses
  store i64 %i.bi, ptr %i.bo, align 8, !tbaa !220, !alias.scope !1343
  %i.bp = getelementptr inbounds nuw i8, ptr %7, i64 56 ; 2 uses
  store i64 %i.bd, ptr %i.bp, align 8, !tbaa !220, !alias.scope !1343
  %.ptr.1.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %7, i64 80
  %.ptr.2.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %7, i64 96
  %i.bq = ptrtoint ptr %i.bp to i64
  %i.br = ptrtoint ptr %i.bo to i64
  %i.bs = ptrtoint ptr %i.bn to i64
  store ptr @_ZN4llvm12function_refIFvRNS_11raw_ostreamENS_9StringRefEEE11callback_fnINS_7support6detail13FormatFunctorImEEEEvlS2_S3_, ptr %i.bk, align 8, !alias.scope !1343
  %.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %7, i64 72
  store i64 %i.bq, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !alias.scope !1343
  store ptr @_ZN4llvm12function_refIFvRNS_11raw_ostreamENS_9StringRefEEE11callback_fnINS_7support6detail13FormatFunctorImEEEEvlS2_S3_, ptr %.ptr.1.i.i.i.i.i, align 8, !alias.scope !1343
  %.sroa.6.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %7, i64 88
  store i64 %i.br, ptr %.sroa.6.0..sroa_idx.i.i.i.i, align 8, !alias.scope !1343
  store ptr @_ZN4llvm12function_refIFvRNS_11raw_ostreamENS_9StringRefEEE11callback_fnINS_7support6detail13FormatFunctorImEEEEvlS2_S3_, ptr %.ptr.2.i.i.i.i.i, align 8, !alias.scope !1343
  %.sroa.8.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %7, i64 104
  store i64 %i.bs, ptr %.sroa.8.0..sroa_idx.i.i.i.i, align 8, !tbaa !88, !alias.scope !1343
  call void @_ZN12lldb_private6Module11ReportErrorERKN4llvm19formatv_object_baseE(ptr noundef nonnull align 8 dereferenceable(952) %i.bc, ptr noundef nonnull align 8 dereferenceable(33) %7) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #24
  br label %bb.ao

bb.u:                                             ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #24
  call void @_ZN12lldb_private4Type19GetFullCompilerTypeEv(ptr dead_on_unwind nonnull writable sret(%"class.lldb_private::CompilerType") align 8 %15, ptr noundef nonnull align 8 dereferenceable(144) %i.r) #24
  %i.bt = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.bu = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 2 uses
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !157 ; 2 uses
  %i.bw = load <2 x ptr>, ptr %15, align 16, !tbaa !250
  store <2 x ptr> %i.bw, ptr %16, align 16, !tbaa !250
  %.not.i.i.i.i28 = icmp eq ptr %i.bv, null
  br i1 %.not.i.i.i.i28, label %_ZN12lldb_private12CompilerTypeC2ERKS0_.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bv, i64 12 ; 3 uses
  %i.by = load i8, ptr @__libc_single_threaded, align 1, !tbaa !88
  %.not.i.i.i.i.i = icmp eq i8 %i.by, 0
  br i1 %.not.i.i.i.i.i, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bz = load i32, ptr %i.bx, align 4, !tbaa !166
  %i.ca = add nsw i32 %i.bz, 1
  store i32 %i.ca, ptr %i.bx, align 4, !tbaa !166
  br label %_ZN12lldb_private12CompilerTypeC2ERKS0_.exit

bb.x:                                             ; preds = %bb.v
  %i.cb = atomicrmw volatile add ptr %i.bx, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZN12lldb_private12CompilerTypeC2ERKS0_.exit

_ZN12lldb_private12CompilerTypeC2ERKS0_.exit:     ; preds = %bb.u, %bb.w, %bb.x
  %i.cc = getelementptr inbounds nuw i8, ptr %16, i64 16
  %i.cd = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 3 uses
  %i.ce = load ptr, ptr %i.cd, align 16, !tbaa !162
  store ptr %i.ce, ptr %i.cc, align 16, !tbaa !162
  call void @_ZN12lldb_private15TypeSystemClang19RequireCompleteTypeENS_12CompilerTypeE(ptr nofree noundef nonnull align 8 dereferenceable(24) %16) #24
  %i.cf = load ptr, ptr %i.bt, align 8, !tbaa !157 ; 4 uses
  %.not.i.i.i29 = icmp eq ptr %i.cf, null
  br i1 %.not.i.i.i29, label %_ZN12lldb_private12CompilerTypeD2Ev.exit, label %bb.y

bb.y:                                             ; preds = %_ZN12lldb_private12CompilerTypeC2ERKS0_.exit
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 12 ; 3 uses
  %i.ch = load i8, ptr @__libc_single_threaded, align 1, !tbaa !88
  %.not.i.i.i.i30 = icmp eq i8 %i.ch, 0
  br i1 %.not.i.i.i.i30, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ci = load i32, ptr %i.cg, align 4, !tbaa !166 ; 2 uses
  %i.cj = add nsw i32 %i.ci, -1
  store i32 %i.cj, ptr %i.cg, align 4, !tbaa !166
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.aa:                                            ; preds = %bb.y
  %i.ck = atomicrmw volatile add ptr %i.cg, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.aa, %bb.z
  %.0.i.i.i.i.i = phi i32 [ %i.ci, %bb.z ], [ %i.ck, %bb.aa ]
  %i.cl = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.cl, label %bb.ab, label %_ZN12lldb_private12CompilerTypeD2Ev.exit

bb.ab:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  %i.cm = load ptr, ptr %i.cf, align 8, !tbaa !52
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 24
  %i.co = load ptr, ptr %i.cn, align 8
  call void %i.co(ptr noundef nonnull align 8 dereferenceable(16) %i.cf) #24, !inline_history !5
  br label %_ZN12lldb_private12CompilerTypeD2Ev.exit

_ZN12lldb_private12CompilerTypeD2Ev.exit:         ; preds = %_ZN12lldb_private12CompilerTypeC2ERKS0_.exit, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.ab
  %i.cp = call noundef zeroext i1 @_ZN12lldb_private15TypeSystemClang27IsObjCObjectOrInterfaceTypeERKNS_12CompilerTypeE(ptr noundef nonnull align 8 dereferenceable(24) %3) #24
  br i1 %i.cp, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %_ZN12lldb_private12CompilerTypeD2Ev.exit
  %i.cq = call noundef zeroext i1 @_ZN12lldb_private15TypeSystemClang17SetObjCSuperClassERKNS_12CompilerTypeES3_(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %15) #24 ; 0 uses
  br label %bb.aj

bb.ad:                                            ; preds = %_ZN12lldb_private12CompilerTypeD2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #24
  %i.cr = load ptr, ptr %8, align 8, !tbaa !748
  %i.cs = load ptr, ptr %i.cd, align 16, !tbaa !162
  call void @_ZN12lldb_private15TypeSystemClang24CreateBaseClassSpecifierEPvN4lldb10AccessTypeEbb(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr.691") align 8 %17, ptr noundef nonnull align 8 dereferenceable(328) %i.cr, ptr noundef %i.cs, i32 noundef %.024.lcssa, i1 noundef zeroext %.022.lcssa, i1 noundef zeroext true) #24
  %i.ct = load ptr, ptr %17, align 8              ; 2 uses
  %.not = icmp eq ptr %i.ct, null
  %i.cu = ptrtoint ptr %i.ct to i64
  br i1 %.not, label %_ZNSt10unique_ptrIN5clang16CXXBaseSpecifierESt14default_deleteIS1_EED2Ev.exit, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.cv = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !751 ; 4 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !752
  %.not.i.i31 = icmp eq ptr %i.cw, %i.cy
  br i1 %.not.i.i31, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  store i64 %i.cu, ptr %i.cw, align 8, !tbaa !754
  store ptr null, ptr %17, align 8, !tbaa !754
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cw, i64 8
  store ptr %i.cz, ptr %i.cv, align 8, !tbaa !751
  br label %_ZNSt6vectorISt10unique_ptrIN5clang16CXXBaseSpecifierESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit

bb.ag:                                            ; preds = %bb.ae
  call void @_ZNSt6vectorISt10unique_ptrIN5clang16CXXBaseSpecifierESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr %i.cw, ptr noundef nonnull align 8 dereferenceable(8) %17)
  br label %_ZNSt6vectorISt10unique_ptrIN5clang16CXXBaseSpecifierESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit

_ZNSt6vectorISt10unique_ptrIN5clang16CXXBaseSpecifierESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit: ; preds = %bb.af, %bb.ag
  br i1 %.022.lcssa, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %_ZNSt6vectorISt10unique_ptrIN5clang16CXXBaseSpecifierESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit
  %i.da = getelementptr inbounds nuw i8, ptr %6, i64 40
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #24
  %i.db = load ptr, ptr %i.cd, align 16, !tbaa !162
  %i.dc = call noundef ptr @_ZN12lldb_private15TypeSystemClang18GetAsCXXRecordDeclEPv(ptr noundef %i.db) #24
  store ptr %i.dc, ptr %18, align 8, !tbaa !1346
  %i.dd = getelementptr inbounds nuw i8, ptr %18, i64 8 ; 2 uses
  store i64 %.021.lcssa, ptr %i.dd, align 8, !tbaa !220
  %i.de = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13CXXRecordDeclENS2_9CharUnitsENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E24lookupOrInsertIntoBucketIS5_JS6_EEESt4pairIPSB_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.da, ptr noundef nonnull align 8 dereferenceable(16) %18, ptr noundef nonnull align 8 dereferenceable(8) %i.dd), !noalias !1347 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #24
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %_ZNSt6vectorISt10unique_ptrIN5clang16CXXBaseSpecifierESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit
  %.pr = load ptr, ptr %17, align 8, !tbaa !754   ; 2 uses
  %.not.i32 = icmp eq ptr %.pr, null
  br i1 %.not.i32, label %_ZNSt10unique_ptrIN5clang16CXXBaseSpecifierESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN5clang16CXXBaseSpecifierEEclEPS1_.exit.i

_ZNKSt14default_deleteIN5clang16CXXBaseSpecifierEEclEPS1_.exit.i: ; preds = %bb.ai
  call void @_ZdlPvm(ptr noundef nonnull %.pr, i64 noundef 24) #25
  br label %_ZNSt10unique_ptrIN5clang16CXXBaseSpecifierESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN5clang16CXXBaseSpecifierESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.ad, %bb.ai, %_ZNKSt14default_deleteIN5clang16CXXBaseSpecifierEEclEPS1_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #24
  br label %bb.aj

bb.aj:                                            ; preds = %_ZNSt10unique_ptrIN5clang16CXXBaseSpecifierESt14default_deleteIS1_EED2Ev.exit, %bb.ac
  %i.df = load ptr, ptr %i.bu, align 8, !tbaa !157 ; 4 uses
  %.not.i.i.i33 = icmp eq ptr %i.df, null
  br i1 %.not.i.i.i33, label %_ZN12lldb_private12CompilerTypeD2Ev.exit37, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 12 ; 3 uses
  %i.dh = load i8, ptr @__libc_single_threaded, align 1, !tbaa !88
  %.not.i.i.i.i34 = icmp eq i8 %i.dh, 0
  br i1 %.not.i.i.i.i34, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.di = load i32, ptr %i.dg, align 4, !tbaa !166 ; 2 uses
  %i.dj = add nsw i32 %i.di, -1
  store i32 %i.dj, ptr %i.dg, align 4, !tbaa !166
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i35

bb.am:                                            ; preds = %bb.ak
  %i.dk = atomicrmw volatile add ptr %i.dg, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i35
end_hunk_0
