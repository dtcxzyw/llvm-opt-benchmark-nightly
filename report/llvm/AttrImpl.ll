Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/AttrImpl?download=true
inline.NumInlined: 29859
inline.NumDeleted: 5969
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN5clang14AllocAlignAttr6CreateERNS_10ASTContextENS_8ParamIdxERKNS_19AttributeCommonInfoE:bb.a

bb.e:                                             ; preds = %bb.d
  %i.n = and i32 %i.k, -15728641
  store i32 %i.n, ptr %i.j, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %_ZN5clang4AttrnwEmRNS_10ASTContextEm.exit
  ret ptr %.0.i.i.i.i.i
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef nonnull ptr @_ZN5clang14AllocAlignAttr14CreateImplicitERNS_10ASTContextENS_8ParamIdxENS_11SourceRangeENS0_8SpellingE(ptr noundef nonnull align 8 dereferenceable(23904) %0, i32 %1, i64 %2, i32 noundef %3) local_unnamed_addr #0 align 2 {
bb.a:
  %4 = alloca %"class.clang::AttributeCommonInfo", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %4, i8 0, i64 24, i1 false)
  store i64 %2, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 2 uses
  %i.c = load i32, ptr %i.b, align 8
  %i.d = and i32 %i.c, -67108864
  %switch.offset.i = mul i32 %3, 1114112
  %.sroa.01.0.insert.ext = add i32 %switch.offset.i, 65536
  %i.e = and i32 %.sroa.01.0.insert.ext, 67043328
  %i.f = or disjoint i32 %i.e, %i.d
  %i.g = or disjoint i32 %i.f, 443
  store i32 %i.g, ptr %i.b, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 2632 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !136  ; 3 uses
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = add i64 %i.j, 48                         ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 2640
  %i.m = load i64, ptr %i.l, align 8, !tbaa !137
  %i.n = icmp ult i64 %i.k, %i.m
  br i1 %i.n, label %_ZN5clang4AttrnwEmRNS_10ASTContextEm.exit.i, label %_ZN5clang4AttrnwEmRNS_10ASTContextEm.exit.thread.i, !prof !138

_ZN5clang4AttrnwEmRNS_10ASTContextEm.exit.thread.i: ; preds = %bb.a
  %i.o = tail call noundef nonnull ptr @_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE12AllocateSlowEmmNS_5AlignE(ptr noundef nonnull align 8 dereferenceable(80) %i.h, i64 noundef 48, i64 noundef 48, i8 3)
  br label %bb.b

_ZN5clang4AttrnwEmRNS_10ASTContextEm.exit.i:      ; preds = %bb.a
  %i.p = inttoptr i64 %i.k to ptr
  store ptr %i.p, ptr %i.h, align 8, !tbaa !136
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.i) ]
  br label %bb.b

bb.b:                                             ; preds = %_ZN5clang4AttrnwEmRNS_10ASTContextEm.exit.i, %_ZN5clang4AttrnwEmRNS_10ASTContextEm.exit.thread.i
  %.0.i.i.i.i.i10.i = phi ptr [ %i.o, %_ZN5clang4AttrnwEmRNS_10ASTContextEm.exit.thread.i ], [ %i.i, %_ZN5clang4AttrnwEmRNS_10ASTContextEm.exit.i ] ; 5 uses
  call void @_ZN5clang14AllocAlignAttrC1ERNS_10ASTContextERKNS_19AttributeCommonInfoENS_8ParamIdxE(ptr noundef nonnull align 8 dereferenceable(44) %.0.i.i.i.i.i10.i, ptr noundef nonnull align 8 dereferenceable(23904) %0, ptr noundef nonnull align 8 dereferenceable(36) %4, i32 %1) #20
  %i.q = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i10.i, i64 38 ; 2 uses
  %i.r = load i8, ptr %i.q, align 2
  %i.s = or i8 %i.r, 4
  store i8 %i.s, ptr %i.q, align 2
  %i.t = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i10.i, i64 32 ; 2 uses
  %i.u = load i32, ptr %i.t, align 8              ; 2 uses
  %i.v = and i32 %i.u, 15728640
  %.not11.i = icmp eq i32 %i.v, 15728640
  br i1 %.not11.i, label %bb.c, label %_ZN5clang14AllocAlignAttr14CreateImplicitERNS_10ASTContextENS_8ParamIdxERKNS_19AttributeCommonInfoE.exit

bb.c:                                             ; preds = %bb.b
  %i.w = load ptr, ptr %.0.i.i.i.i.i10.i, align 8, !tbaa !139
  %.not.i = icmp eq ptr %i.w, null
  br i1 %.not.i, label %bb.d, label %_ZN5clang14AllocAlignAttr14CreateImplicitERNS_10ASTContextENS_8ParamIdxERKNS_19AttributeCommonInfoE.exit

bb.d:                                             ; preds = %bb.c
  %i.x = and i32 %i.u, -15728641
  store i32 %i.x, ptr %i.t, align 8
  br label %_ZN5clang14AllocAlignAttr14CreateImplicitERNS_10ASTContextENS_8ParamIdxERKNS_19AttributeCommonInfoE.exit

_ZN5clang14AllocAlignAttr14CreateImplicitERNS_10ASTContextENS_8ParamIdxERKNS_19AttributeCommonInfoE.exit: ; preds = %bb.b, %bb.c, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  ret ptr %.0.i.i.i.i.i10.i
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef nonnull ptr @_ZN5clang14AllocAlignAttr6CreateERNS_10ASTContextENS_8ParamIdxENS_11SourceRangeENS0_8SpellingE(ptr noundef nonnull align 8 dereferenceable(23904) %0, i32 %1, i64 %2, i32 noundef %3) local_unnamed_addr #0 align 2 {
bb.a:
  %4 = alloca %"class.clang::AttributeCommonInfo", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %4, i8 0, i64 24, i1 false)
  store i64 %2, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 2 uses
  %i.c = load i32, ptr %i.b, align 8
  %i.d = and i32 %i.c, -67108864
  %switch.offset.i = mul i32 %3, 1114112
  %.sroa.01.0.insert.ext = add i32 %switch.offset.i, 65536
  %i.e = and i32 %.sroa.01.0.insert.ext, 67043328
  %i.f = or disjoint i32 %i.e, %i.d
  %i.g = or disjoint i32 %i.f, 443
  store i32 %i.g, ptr %i.b, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 2632 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !136  ; 2 uses
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = add i64 %i.j, 48                         ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 2640
  %i.m = load i64, ptr %i.l, align 8, !tbaa !137
  %i.n = icmp ult i64 %i.k, %i.m
  br i1 %i.n, label %bb.b, label %bb.c, !prof !138

bb.b:                                             ; preds = %bb.a
  %i.o = inttoptr i64 %i.k to ptr
  store ptr %i.o, ptr %i.h, align 8, !tbaa !136
  br label %_ZN5clang4AttrnwEmRNS_10ASTContextEm.exit.i

bb.c:                                             ; preds = %bb.a
  %i.p = tail call noundef nonnull ptr @_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE12AllocateSlowEmmNS_5AlignE(ptr noundef nonnull align 8 dereferenceable(80) %i.h, i64 noundef 48, i64 noundef 48, i8 3)
  br label %_ZN5clang4AttrnwEmRNS_10ASTContextEm.exit.i

_ZN5clang4AttrnwEmRNS_10ASTContextEm.exit.i:      ; preds = %bb.c, %bb.b
  %.0.i.i.i.i.i.i = phi ptr [ %i.i, %bb.b ], [ %i.p, %bb.c ] ; 5 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.i.i.i.i.i.i) ]
  call void @_ZN5clang14AllocAlignAttrC1ERNS_10ASTContextERKNS_19AttributeCommonInfoENS_8ParamIdxE(ptr noundef nonnull align 8 dereferenceable(44) %.0.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(23904) %0, ptr noundef nonnull align 8 dereferenceable(36) %4, i32 %1) #20
  %i.q = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i.i, i64 32 ; 2 uses
  %i.r = load i32, ptr %i.q, align 8              ; 2 uses
  %i.s = and i32 %i.r, 15728640
  %.not8.i = icmp eq i32 %i.s, 15728640
  br i1 %.not8.i, label %bb.d, label %_ZN5clang14AllocAlignAttr6CreateERNS_10ASTContextENS_8ParamIdxERKNS_19AttributeCommonInfoE.exit

bb.d:                                             ; preds = %_ZN5clang4AttrnwEmRNS_10ASTContextEm.exit.i
  %i.t = load ptr, ptr %.0.i.i.i.i.i.i, align 8, !tbaa !139
  %.not.i = icmp eq ptr %i.t, null
  br i1 %.not.i, label %bb.e, label %_ZN5clang14AllocAlignAttr6CreateERNS_10ASTContextENS_8ParamIdxERKNS_19AttributeCommonInfoE.exit

bb.e:                                             ; preds = %bb.d
  %i.u = and i32 %i.r, -15728641
  store i32 %i.u, ptr %i.q, align 8
  br label %_ZN5clang14AllocAlignAttr6CreateERNS_10ASTContextENS_8ParamIdxERKNS_19AttributeCommonInfoE.exit

_ZN5clang14AllocAlignAttr6CreateERNS_10ASTContextENS_8ParamIdxERKNS_19AttributeCommonInfoE.exit: ; preds = %_ZN5clang4AttrnwEmRNS_10ASTContextEm.exit.i, %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  ret ptr %.0.i.i.i.i.i.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @_ZN5clang14AllocAlignAttrC2ERNS_10ASTContextERKNS_19AttributeCommonInfoENS_8ParamIdxE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(44) initializes((0, 38), (40, 44)) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(36) %2, i32 %3) unnamed_addr #6 align 2 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(39) %0, ptr noundef nonnull align 8 dereferenceable(36) %2, i64 36, i1 false), !tbaa.struct !141
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i16 135, ptr %i.a, align 4
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 38 ; 2 uses
  %i.c = load i8, ptr %i.b, align 2
  %i.d = and i8 %i.c, -32
  store i8 %i.d, ptr %i.b, align 2
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 %3, ptr %i.e, align 8, !tbaa !30
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef zeroext i1 @_ZNK5clang14AllocAlignAttr12isEquivalentERKS0_RNS_28StructuralEquivalenceContextE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(44) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(44) %1, ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(145) %2) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.sroa.0.0.copyload.i = load i32, ptr %i.a, align 8, !tbaa !30 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.sroa.0.0.copyload.i5 = load i32, ptr %i.b, align 8, !tbaa !30
  %i.c = icmp sgt i32 %.sroa.0.0.copyload.i, -1
  %i.d = xor i32 %.sroa.0.0.copyload.i5, %.sroa.0.0.copyload.i ; 2 uses
  %i.e = icmp slt i32 %i.d, 0                     ; 2 uses
  %brmerge.i = or i1 %i.c, %i.e
  %not..i = xor i1 %i.e, true
  %i.f = and i32 %i.d, 1073741823
  %i.g = icmp eq i32 %i.f, 0
  %.0.i = select i1 %brmerge.i, i1 %not..i, i1 %i.g
  ret i1 %.0.i
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZNK5clang14AllocAlignAttr7ProfileERN4llvm16FoldingSetNodeIDERKNS_10ASTContextE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(44) %0, ptr noundef nonnull align 8 dereferenceable(144) %1, ptr nofree nonnull readnone align 8 captures(none) %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.sroa.0.0.copyload.i = load i32, ptr %i.a, align 8, !tbaa !30 ; 4 uses
  %i.b = icmp slt i32 %.sroa.0.0.copyload.i, 0
  %.lobit.i = lshr i32 %.sroa.0.0.copyload.i, 31  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 6 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !88   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
  %i.f = load i32, ptr %i.e, align 4, !tbaa !151
  %.not.i.i.i.i.i = icmp ult i32 %i.d, %i.f
  br i1 %.not.i.i.i.i.i, label %bb.c, label %bb.b, !prof !138

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4llvm23SmallVectorTemplateBaseIjLb1EE15growAndPushBackEj(ptr noundef nonnull align 8 dereferenceable(144) %1, i32 noundef %.lobit.i)
  br label %_ZN4llvm16FoldingSetNodeID10AddBooleanEb.exit.i

bb.c:                                             ; preds = %bb.a
  %i.g = zext i32 %i.d to i64
  %i.h = load ptr, ptr %1, align 8, !tbaa !87
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.g
  store i32 %.lobit.i, ptr %i.i, align 1
  %i.j = load i32, ptr %i.c, align 8, !tbaa !88
  %i.k = add i32 %i.j, 1
  store i32 %i.k, ptr %i.c, align 8, !tbaa !88
  br label %_ZN4llvm16FoldingSetNodeID10AddBooleanEb.exit.i

_ZN4llvm16FoldingSetNodeID10AddBooleanEb.exit.i:  ; preds = %bb.c, %bb.b
  br i1 %i.b, label %bb.d, label %_ZN12_GLOBAL__N_114profileAttrArgIN5clang8ParamIdxEEENSt9enable_ifIXntoooooooooosr3stdE9is_same_vIT_N4llvm9StringRefEEsr3stdE9is_same_vIS4_NS5_12VersionTupleEEsr3stdE9is_same_vIS4_PNS1_14IdentifierInfoEEsr3stdE9is_same_vIS4_PKS8_Esr3stdE9is_enum_vIS4_Esr3stdE13is_integral_vIS4_EEvE4typeERNS5_16FoldingSetNodeIDERKNS1_10ASTContextES4_.exit

bb.d:                                             ; preds = %_ZN4llvm16FoldingSetNodeID10AddBooleanEb.exit.i
  %i.l = and i32 %.sroa.0.0.copyload.i, 1073741823
  %3 = lshr i32 %.sroa.0.0.copyload.i, 30
  %4 = and i32 %3, 1
  %5 = xor i32 %4, -1
  %i.m = add nsw i32 %i.l, %5                     ; 2 uses
  %i.n = load i32, ptr %i.c, align 8, !tbaa !88   ; 2 uses
  %i.o = load i32, ptr %i.e, align 4, !tbaa !151
  %.not.i.i.i.i = icmp ult i32 %i.n, %i.o
  br i1 %.not.i.i.i.i, label %bb.f, label %bb.e, !prof !138

bb.e:                                             ; preds = %bb.d
  tail call void @_ZN4llvm23SmallVectorTemplateBaseIjLb1EE15growAndPushBackEj(ptr noundef nonnull align 8 dereferenceable(144) %1, i32 noundef %i.m)
  br label %_ZN12_GLOBAL__N_114profileAttrArgIN5clang8ParamIdxEEENSt9enable_ifIXntoooooooooosr3stdE9is_same_vIT_N4llvm9StringRefEEsr3stdE9is_same_vIS4_NS5_12VersionTupleEEsr3stdE9is_same_vIS4_PNS1_14IdentifierInfoEEsr3stdE9is_same_vIS4_PKS8_Esr3stdE9is_enum_vIS4_Esr3stdE13is_integral_vIS4_EEvE4typeERNS5_16FoldingSetNodeIDERKNS1_10ASTContextES4_.exit

bb.f:                                             ; preds = %bb.d
  %i.p = zext i32 %i.n to i64
  %i.q = load ptr, ptr %1, align 8, !tbaa !87
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.p
  store i32 %i.m, ptr %i.r, align 1
  %i.s = load i32, ptr %i.c, align 8, !tbaa !88
  %i.t = add i32 %i.s, 1
  store i32 %i.t, ptr %i.c, align 8, !tbaa !88
  br label %_ZN12_GLOBAL__N_114profileAttrArgIN5clang8ParamIdxEEENSt9enable_ifIXntoooooooooosr3stdE9is_same_vIT_N4llvm9StringRefEEsr3stdE9is_same_vIS4_NS5_12VersionTupleEEsr3stdE9is_same_vIS4_PNS1_14IdentifierInfoEEsr3stdE9is_same_vIS4_PKS8_Esr3stdE9is_enum_vIS4_Esr3stdE13is_integral_vIS4_EEvE4typeERNS5_16FoldingSetNodeIDERKNS1_10ASTContextES4_.exit

_ZN12_GLOBAL__N_114profileAttrArgIN5clang8ParamIdxEEENSt9enable_ifIXntoooooooooosr3stdE9is_same_vIT_N4llvm9StringRefEEsr3stdE9is_same_vIS4_NS5_12VersionTupleEEsr3stdE9is_same_vIS4_PNS1_14IdentifierInfoEEsr3stdE9is_same_vIS4_PKS8_Esr3stdE9is_enum_vIS4_Esr3stdE13is_integral_vIS4_EEvE4typeERNS5_16FoldingSetNodeIDERKNS1_10ASTContextES4_.exit: ; preds = %_ZN4llvm16FoldingSetNodeID10AddBooleanEb.exit.i, %bb.e, %bb.f
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef nonnull ptr @_ZNK5clang14AllocAlignAttr5cloneERNS_10ASTContextE(ptr noundef nonnull align 8 dereferenceable(44) %0, ptr noundef nonnull align 8 dereferenceable(23904) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 2632 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !136  ; 2 uses
  %i.c = ptrtoint ptr %i.b to i64
  %i.d = add i64 %i.c, 48                         ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 2640
  %i.f = load i64, ptr %i.e, align 8, !tbaa !137
  %i.g = icmp ult i64 %i.d, %i.f
  br i1 %i.g, label %bb.b, label %bb.c, !prof !138

bb.b:                                             ; preds = %bb.a
  %i.h = inttoptr i64 %i.d to ptr
  store ptr %i.h, ptr %i.a, align 8, !tbaa !136
  br label %_ZN5clang4AttrnwEmRNS_10ASTContextEm.exit

bb.c:                                             ; preds = %bb.a
  %i.i = tail call noundef nonnull ptr @_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE12AllocateSlowEmmNS_5AlignE(ptr noundef nonnull align 8 dereferenceable(80) %i.a, i64 noundef 48, i64 noundef 48, i8 3)
  br label %_ZN5clang4AttrnwEmRNS_10ASTContextEm.exit

_ZN5clang4AttrnwEmRNS_10ASTContextEm.exit:        ; preds = %bb.b, %bb.c
  %.0.i.i.i.i.i = phi ptr [ %i.b, %bb.b ], [ %i.i, %bb.c ] ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.i.i.i.i.i) ]
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.sroa.0.0.copyload = load i32, ptr %i.j, align 8, !tbaa !30
  tail call void @_ZN5clang14AllocAlignAttrC1ERNS_10ASTContextERKNS_19AttributeCommonInfoENS_8ParamIdxE(ptr noundef nonnull align 8 dereferenceable(44) %.0.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(23904) %1, ptr noundef nonnull align 8 dereferenceable(36) %0, i32 %.sroa.0.0.copyload) #20
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 38 ; 3 uses
  %i.l = load i8, ptr %i.k, align 2
  %i.m = and i8 %i.l, 1
  %i.n = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i, i64 38 ; 4 uses
  %i.o = load i8, ptr %i.n, align 2
  %i.p = and i8 %i.o, -2
  %i.q = or disjoint i8 %i.p, %i.m                ; 2 uses
  store i8 %i.q, ptr %i.n, align 2
  %i.r = load i8, ptr %i.k, align 2
  %i.s = and i8 %i.r, 2
  %i.t = and i8 %i.q, -3
  %i.u = or disjoint i8 %i.t, %i.s                ; 2 uses
  store i8 %i.u, ptr %i.n, align 2
  %i.v = load i8, ptr %i.k, align 2
  %i.w = and i8 %i.v, 4
  %i.x = and i8 %i.u, -5
  %i.y = or disjoint i8 %i.x, %i.w
  store i8 %i.y, ptr %i.n, align 2
  ret ptr %.0.i.i.i.i.i
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZNK5clang14AllocAlignAttr11printPrettyERN4llvm11raw_ostreamERKNS_14PrintingPolicyE(ptr noundef nonnull align 8 dereferenceable(44) %0, ptr noundef nonnull align 8 dereferenceable(48) %1, ptr nofree nonnull readnone align 8 captures(none) %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i32, ptr %i.a, align 8              ; 2 uses
  %i.c = and i32 %i.b, 15728640
  %.not.i = icmp eq i32 %i.c, 15728640
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = lshr i32 %i.b, 20
  %i.e = and i32 %i.d, 15
  br label %_ZNK5clang19AttributeCommonInfo29getAttributeSpellingListIndexEv.exit

bb.c:                                             ; preds = %bb.a
  %i.f = tail call noundef i32 @_ZNK5clang19AttributeCommonInfo35calculateAttributeSpellingListIndexEv(ptr noundef nonnull align 8 dereferenceable(36) %0) #20
  br label %_ZNK5clang19AttributeCommonInfo29getAttributeSpellingListIndexEv.exit

_ZNK5clang19AttributeCommonInfo29getAttributeSpellingListIndexEv.exit: ; preds = %bb.b, %bb.c
  %i.g = phi i32 [ %i.e, %bb.b ], [ %i.f, %bb.c ]
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 10 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !29
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 34 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !28   ; 4 uses
  %i.l = ptrtoint ptr %i.i to i64
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = sub i64 %i.l, %i.m                       ; 3 uses
  switch i32 %i.g, label %bb.d [
    i32 0, label %bb.e
    i32 1, label %bb.n
    i32 2, label %bb.w
  ]

bb.d:                                             ; preds = %_ZNK5clang19AttributeCommonInfo29getAttributeSpellingListIndexEv.exit
  unreachable

bb.e:                                             ; preds = %_ZNK5clang19AttributeCommonInfo29getAttributeSpellingListIndexEv.exit
  %i.o = icmp ult i64 %i.n, 26
  br i1 %i.o, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.p = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull @.str.102, i64 noundef 26) #20 ; 0 uses
  %.pre72 = load ptr, ptr %i.j, align 8, !tbaa !28
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit

bb.g:                                             ; preds = %bb.e
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(26) %i.k, ptr noundef nonnull align 1 dereferenceable(26) @.str.102, i64 26, i1 false)
  %i.q = load ptr, ptr %i.j, align 8, !tbaa !28
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 26 ; 2 uses
  store ptr %i.r, ptr %i.j, align 8, !tbaa !28
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit

_ZN4llvm11raw_ostreamlsEPKc.exit:                 ; preds = %bb.g, %bb.f
  %i.s = phi ptr [ %i.r, %bb.g ], [ %.pre72, %bb.f ] ; 2 uses
  %i.t = load ptr, ptr %i.h, align 8, !tbaa !29
  %i.u = icmp eq ptr %i.t, %i.s
  br i1 %i.u, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit
  %i.v = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull @.str, i64 noundef 1) #20 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit18

bb.i:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit
  store i8 40, ptr %i.s, align 1
  %i.w = load ptr, ptr %i.j, align 8, !tbaa !28
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 1
  store ptr %i.x, ptr %i.j, align 8, !tbaa !28
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit18

_ZN4llvm11raw_ostreamlsEPKc.exit18:               ; preds = %bb.h, %bb.i
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.sroa.0.0.copyload.i = load i32, ptr %i.y, align 8, !tbaa !30
  %i.z = and i32 %.sroa.0.0.copyload.i, 1073741823
  %i.aa = zext nneg i32 %i.z to i64
  %i.ab = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsEm(ptr noundef nonnull align 8 dereferenceable(48) %1, i64 noundef %i.aa) #20 ; 0 uses
  %i.ac = load ptr, ptr %i.h, align 8, !tbaa !29
  %i.ad = load ptr, ptr %i.j, align 8, !tbaa !28  ; 2 uses
  %i.ae = icmp eq ptr %i.ac, %i.ad
  br i1 %i.ae, label %bb.j, label %bb.k

bb.j:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit18
  %i.af = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull @.str.9, i64 noundef 1) #20 ; 0 uses
  %.pre73 = load ptr, ptr %i.j, align 8, !tbaa !28
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit24

bb.k:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit18
  store i8 41, ptr %i.ad, align 1
  %i.ag = load ptr, ptr %i.j, align 8, !tbaa !28
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 1 ; 2 uses
  store ptr %i.ah, ptr %i.j, align 8, !tbaa !28
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit24

_ZN4llvm11raw_ostreamlsEPKc.exit24:               ; preds = %bb.k, %bb.j
  %i.ai = phi ptr [ %i.ah, %bb.k ], [ %.pre73, %bb.j ] ; 2 uses
  %i.aj = load ptr, ptr %i.h, align 8, !tbaa !29
  %i.ak = ptrtoint ptr %i.aj to i64
  %i.al = ptrtoint ptr %i.ai to i64
  %i.am = sub i64 %i.ak, %i.al
  %i.an = icmp ult i64 %i.am, 2
  br i1 %i.an, label %bb.l, label %bb.m

bb.l:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit24
  %i.ao = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull @.str.30, i64 noundef 2) #20 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit27

bb.m:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit24
  store i16 10537, ptr %i.ai, align 1
  %i.ap = load ptr, ptr %i.j, align 8, !tbaa !28
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 2
  store ptr %i.aq, ptr %i.j, align 8, !tbaa !28
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit27

bb.n:                                             ; preds = %_ZNK5clang19AttributeCommonInfo29getAttributeSpellingListIndexEv.exit
  %i.ar = icmp ult i64 %i.n, 18
  br i1 %i.ar, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.as = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull @.str.103, i64 noundef 18) #20 ; 0 uses
  %.pre70 = load ptr, ptr %i.j, align 8, !tbaa !28
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit30

bb.p:                                             ; preds = %bb.n
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(18) %i.k, ptr noundef nonnull align 1 dereferenceable(18) @.str.103, i64 18, i1 false)
  %i.at = load ptr, ptr %i.j, align 8, !tbaa !28
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 18 ; 2 uses
  store ptr %i.au, ptr %i.j, align 8, !tbaa !28
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit30

_ZN4llvm11raw_ostreamlsEPKc.exit30:               ; preds = %bb.p, %bb.o
end_hunk_0
begin_hunk_1_@_ZN5clang13AllocSizeAttr14CreateImplicitERNS_10ASTContextENS_8ParamIdxES3_NS_11SourceRangeENS0_8SpellingE:bb.a
_ZN5clang4AttrnwEmRNS_10ASTContextEm.exit.i:      ; preds = %bb.a
  %i.p = inttoptr i64 %i.k to ptr
  store ptr %i.p, ptr %i.h, align 8, !tbaa !136
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.i) ]
  br label %bb.b

bb.b:                                             ; preds = %_ZN5clang4AttrnwEmRNS_10ASTContextEm.exit.i, %_ZN5clang4AttrnwEmRNS_10ASTContextEm.exit.thread.i
  %.0.i.i.i.i.i12.i = phi ptr [ %i.o, %_ZN5clang4AttrnwEmRNS_10ASTContextEm.exit.thread.i ], [ %i.i, %_ZN5clang4AttrnwEmRNS_10ASTContextEm.exit.i ] ; 5 uses
  call void @_ZN5clang13AllocSizeAttrC1ERNS_10ASTContextERKNS_19AttributeCommonInfoENS_8ParamIdxES6_(ptr noundef nonnull align 8 dereferenceable(48) %.0.i.i.i.i.i12.i, ptr noundef nonnull align 8 dereferenceable(23904) %0, ptr noundef nonnull align 8 dereferenceable(36) %5, i32 %1, i32 %2) #20
  %i.q = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i12.i, i64 38 ; 2 uses
  %i.r = load i8, ptr %i.q, align 2
  %i.s = or i8 %i.r, 4
  store i8 %i.s, ptr %i.q, align 2
  %i.t = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i12.i, i64 32 ; 2 uses
  %i.u = load i32, ptr %i.t, align 8              ; 2 uses
  %i.v = and i32 %i.u, 15728640
  %.not13.i = icmp eq i32 %i.v, 15728640
  br i1 %.not13.i, label %bb.c, label %_ZN5clang13AllocSizeAttr14CreateImplicitERNS_10ASTContextENS_8ParamIdxES3_RKNS_19AttributeCommonInfoE.exit

bb.c:                                             ; preds = %bb.b
  %i.w = load ptr, ptr %.0.i.i.i.i.i12.i, align 8, !tbaa !139
  %.not.i = icmp eq ptr %i.w, null
  br i1 %.not.i, label %bb.d, label %_ZN5clang13AllocSizeAttr14CreateImplicitERNS_10ASTContextENS_8ParamIdxES3_RKNS_19AttributeCommonInfoE.exit

bb.d:                                             ; preds = %bb.c
  %i.x = and i32 %i.u, -15728641
  store i32 %i.x, ptr %i.t, align 8
  br label %_ZN5clang13AllocSizeAttr14CreateImplicitERNS_10ASTContextENS_8ParamIdxES3_RKNS_19AttributeCommonInfoE.exit

_ZN5clang13AllocSizeAttr14CreateImplicitERNS_10ASTContextENS_8ParamIdxES3_RKNS_19AttributeCommonInfoE.exit: ; preds = %bb.b, %bb.c, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  ret ptr %.0.i.i.i.i.i12.i
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef nonnull ptr @_ZN5clang13AllocSizeAttr6CreateERNS_10ASTContextENS_8ParamIdxES3_NS_11SourceRangeENS0_8SpellingE(ptr noundef nonnull align 8 dereferenceable(23904) %0, i32 %1, i32 %2, i64 %3, i32 noundef %4) local_unnamed_addr #0 align 2 {
bb.a:
  %5 = alloca %"class.clang::AttributeCommonInfo", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %5, i8 0, i64 24, i1 false)
  store i64 %3, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 2 uses
  %i.c = load i32, ptr %i.b, align 8
  %i.d = and i32 %i.c, -67108864
  %switch.offset.i = mul i32 %4, 1114112
  %.sroa.02.0.insert.ext = add i32 %switch.offset.i, 65536
  %i.e = and i32 %.sroa.02.0.insert.ext, 67043328
  %i.f = or disjoint i32 %i.e, %i.d
  %i.g = or disjoint i32 %i.f, 443
  store i32 %i.g, ptr %i.b, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 2632 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !136  ; 2 uses
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = add i64 %i.j, 48                         ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 2640
  %i.m = load i64, ptr %i.l, align 8, !tbaa !137
  %i.n = icmp ult i64 %i.k, %i.m
  br i1 %i.n, label %bb.b, label %bb.c, !prof !138

bb.b:                                             ; preds = %bb.a
  %i.o = inttoptr i64 %i.k to ptr
  store ptr %i.o, ptr %i.h, align 8, !tbaa !136
  br label %_ZN5clang4AttrnwEmRNS_10ASTContextEm.exit.i

bb.c:                                             ; preds = %bb.a
  %i.p = tail call noundef nonnull ptr @_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE12AllocateSlowEmmNS_5AlignE(ptr noundef nonnull align 8 dereferenceable(80) %i.h, i64 noundef 48, i64 noundef 48, i8 3)
  br label %_ZN5clang4AttrnwEmRNS_10ASTContextEm.exit.i

_ZN5clang4AttrnwEmRNS_10ASTContextEm.exit.i:      ; preds = %bb.c, %bb.b
  %.0.i.i.i.i.i.i = phi ptr [ %i.i, %bb.b ], [ %i.p, %bb.c ] ; 5 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.i.i.i.i.i.i) ]
  call void @_ZN5clang13AllocSizeAttrC1ERNS_10ASTContextERKNS_19AttributeCommonInfoENS_8ParamIdxES6_(ptr noundef nonnull align 8 dereferenceable(48) %.0.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(23904) %0, ptr noundef nonnull align 8 dereferenceable(36) %5, i32 %1, i32 %2) #20
  %i.q = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i.i, i64 32 ; 2 uses
  %i.r = load i32, ptr %i.q, align 8              ; 2 uses
  %i.s = and i32 %i.r, 15728640
  %.not10.i = icmp eq i32 %i.s, 15728640
  br i1 %.not10.i, label %bb.d, label %_ZN5clang13AllocSizeAttr6CreateERNS_10ASTContextENS_8ParamIdxES3_RKNS_19AttributeCommonInfoE.exit

bb.d:                                             ; preds = %_ZN5clang4AttrnwEmRNS_10ASTContextEm.exit.i
  %i.t = load ptr, ptr %.0.i.i.i.i.i.i, align 8, !tbaa !139
  %.not.i = icmp eq ptr %i.t, null
  br i1 %.not.i, label %bb.e, label %_ZN5clang13AllocSizeAttr6CreateERNS_10ASTContextENS_8ParamIdxES3_RKNS_19AttributeCommonInfoE.exit

bb.e:                                             ; preds = %bb.d
  %i.u = and i32 %i.r, -15728641
  store i32 %i.u, ptr %i.q, align 8
  br label %_ZN5clang13AllocSizeAttr6CreateERNS_10ASTContextENS_8ParamIdxES3_RKNS_19AttributeCommonInfoE.exit

_ZN5clang13AllocSizeAttr6CreateERNS_10ASTContextENS_8ParamIdxES3_RKNS_19AttributeCommonInfoE.exit: ; preds = %_ZN5clang4AttrnwEmRNS_10ASTContextEm.exit.i, %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  ret ptr %.0.i.i.i.i.i.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @_ZN5clang13AllocSizeAttrC2ERNS_10ASTContextERKNS_19AttributeCommonInfoENS_8ParamIdxES6_(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(48) initializes((0, 38), (40, 48)) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(36) %2, i32 %3, i32 %4) unnamed_addr #6 align 2 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(39) %0, ptr noundef nonnull align 8 dereferenceable(36) %2, i64 36, i1 false), !tbaa.struct !141
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i16 136, ptr %i.a, align 4
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 38 ; 2 uses
  %i.c = load i8, ptr %i.b, align 2
  %i.d = and i8 %i.c, -32
  store i8 %i.d, ptr %i.b, align 2
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 %3, ptr %i.e, align 8, !tbaa !30
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 44
  store i32 %4, ptr %i.f, align 4, !tbaa !30
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @_ZN5clang13AllocSizeAttrC2ERNS_10ASTContextERKNS_19AttributeCommonInfoENS_8ParamIdxE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(48) initializes((0, 38), (40, 48)) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(36) %2, i32 %3) unnamed_addr #6 align 2 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(39) %0, ptr noundef nonnull align 8 dereferenceable(36) %2, i64 36, i1 false), !tbaa.struct !141
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i16 136, ptr %i.a, align 4
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 38 ; 2 uses
  %i.c = load i8, ptr %i.b, align 2
  %i.d = and i8 %i.c, -32
  store i8 %i.d, ptr %i.b, align 2
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 %3, ptr %i.e, align 8, !tbaa !30
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 44
  store i32 0, ptr %i.f, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef zeroext i1 @_ZNK5clang13AllocSizeAttr12isEquivalentERKS0_RNS_28StructuralEquivalenceContextE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %1, ptr nofree nonnull readnone align 8 captures(none) %2) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.sroa.0.0.copyload.i = load i32, ptr %i.a, align 8, !tbaa !30 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.sroa.0.0.copyload.i9 = load i32, ptr %i.b, align 8, !tbaa !30
  %i.c = icmp sgt i32 %.sroa.0.0.copyload.i, -1
  %i.d = xor i32 %.sroa.0.0.copyload.i9, %.sroa.0.0.copyload.i ; 2 uses
  %i.e = icmp slt i32 %i.d, 0                     ; 2 uses
  %brmerge.i = or i1 %i.c, %i.e
  %not..i = xor i1 %i.e, true
  %i.f = and i32 %i.d, 1073741823
  %i.g = icmp eq i32 %i.f, 0
  %.0.i = select i1 %brmerge.i, i1 %not..i, i1 %i.g
  br i1 %.0.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 44
  %.sroa.0.0.copyload.i10 = load i32, ptr %i.h, align 4, !tbaa !30 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 44
  %.sroa.0.0.copyload.i11 = load i32, ptr %i.i, align 4, !tbaa !30
  %i.j = icmp sgt i32 %.sroa.0.0.copyload.i10, -1
  %i.k = xor i32 %.sroa.0.0.copyload.i11, %.sroa.0.0.copyload.i10 ; 2 uses
  %i.l = icmp slt i32 %i.k, 0                     ; 2 uses
  %brmerge.i12 = or i1 %i.j, %i.l
  %not..i13 = xor i1 %i.l, true
  %i.m = and i32 %i.k, 1073741823
  %i.n = icmp eq i32 %i.m, 0
  %.0.i14 = select i1 %brmerge.i12, i1 %not..i13, i1 %i.n
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi i1 [ false, %bb.a ], [ %.0.i14, %bb.b ]
  ret i1 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZNK5clang13AllocSizeAttr7ProfileERN4llvm16FoldingSetNodeIDERKNS_10ASTContextE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(144) %1, ptr nofree nonnull readnone align 8 captures(none) %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.sroa.0.0.copyload.i = load i32, ptr %i.a, align 8, !tbaa !30 ; 4 uses
  %i.b = icmp slt i32 %.sroa.0.0.copyload.i, 0
  %.lobit.i = lshr i32 %.sroa.0.0.copyload.i, 31  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 12 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !88   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 4 uses
  %i.f = load i32, ptr %i.e, align 4, !tbaa !151
  %.not.i.i.i.i.i = icmp ult i32 %i.d, %i.f
  br i1 %.not.i.i.i.i.i, label %bb.c, label %bb.b, !prof !138

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4llvm23SmallVectorTemplateBaseIjLb1EE15growAndPushBackEj(ptr noundef nonnull align 8 dereferenceable(144) %1, i32 noundef %.lobit.i)
  %.pre12.pre = load i32, ptr %i.c, align 8, !tbaa !88
  br label %_ZN4llvm16FoldingSetNodeID10AddBooleanEb.exit.i

bb.c:                                             ; preds = %bb.a
  %i.g = zext i32 %i.d to i64
  %i.h = load ptr, ptr %1, align 8, !tbaa !87
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.g
  store i32 %.lobit.i, ptr %i.i, align 1
  %i.j = load i32, ptr %i.c, align 8, !tbaa !88
  %i.k = add i32 %i.j, 1                          ; 2 uses
  store i32 %i.k, ptr %i.c, align 8, !tbaa !88
  br label %_ZN4llvm16FoldingSetNodeID10AddBooleanEb.exit.i

_ZN4llvm16FoldingSetNodeID10AddBooleanEb.exit.i:  ; preds = %bb.c, %bb.b
  %.pre12 = phi i32 [ %i.k, %bb.c ], [ %.pre12.pre, %bb.b ] ; 3 uses
  br i1 %i.b, label %bb.d, label %_ZN12_GLOBAL__N_114profileAttrArgIN5clang8ParamIdxEEENSt9enable_ifIXntoooooooooosr3stdE9is_same_vIT_N4llvm9StringRefEEsr3stdE9is_same_vIS4_NS5_12VersionTupleEEsr3stdE9is_same_vIS4_PNS1_14IdentifierInfoEEsr3stdE9is_same_vIS4_PKS8_Esr3stdE9is_enum_vIS4_Esr3stdE13is_integral_vIS4_EEvE4typeERNS5_16FoldingSetNodeIDERKNS1_10ASTContextES4_.exit

bb.d:                                             ; preds = %_ZN4llvm16FoldingSetNodeID10AddBooleanEb.exit.i
  %i.l = and i32 %.sroa.0.0.copyload.i, 1073741823
  %3 = lshr i32 %.sroa.0.0.copyload.i, 30
  %4 = and i32 %3, 1
  %5 = xor i32 %4, -1
  %i.m = add nsw i32 %i.l, %5                     ; 2 uses
  %i.n = load i32, ptr %i.e, align 4, !tbaa !151
  %.not.i.i.i.i = icmp ult i32 %.pre12, %i.n
  br i1 %.not.i.i.i.i, label %bb.f, label %bb.e, !prof !138

bb.e:                                             ; preds = %bb.d
  tail call void @_ZN4llvm23SmallVectorTemplateBaseIjLb1EE15growAndPushBackEj(ptr noundef nonnull align 8 dereferenceable(144) %1, i32 noundef %i.m)
  %.pre = load i32, ptr %i.c, align 8, !tbaa !88
  br label %_ZN12_GLOBAL__N_114profileAttrArgIN5clang8ParamIdxEEENSt9enable_ifIXntoooooooooosr3stdE9is_same_vIT_N4llvm9StringRefEEsr3stdE9is_same_vIS4_NS5_12VersionTupleEEsr3stdE9is_same_vIS4_PNS1_14IdentifierInfoEEsr3stdE9is_same_vIS4_PKS8_Esr3stdE9is_enum_vIS4_Esr3stdE13is_integral_vIS4_EEvE4typeERNS5_16FoldingSetNodeIDERKNS1_10ASTContextES4_.exit

bb.f:                                             ; preds = %bb.d
  %i.o = zext i32 %.pre12 to i64
  %i.p = load ptr, ptr %1, align 8, !tbaa !87
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %i.o
  store i32 %i.m, ptr %i.q, align 1
  %i.r = load i32, ptr %i.c, align 8, !tbaa !88
  %i.s = add i32 %i.r, 1                          ; 2 uses
  store i32 %i.s, ptr %i.c, align 8, !tbaa !88
  br label %_ZN12_GLOBAL__N_114profileAttrArgIN5clang8ParamIdxEEENSt9enable_ifIXntoooooooooosr3stdE9is_same_vIT_N4llvm9StringRefEEsr3stdE9is_same_vIS4_NS5_12VersionTupleEEsr3stdE9is_same_vIS4_PNS1_14IdentifierInfoEEsr3stdE9is_same_vIS4_PKS8_Esr3stdE9is_enum_vIS4_Esr3stdE13is_integral_vIS4_EEvE4typeERNS5_16FoldingSetNodeIDERKNS1_10ASTContextES4_.exit

_ZN12_GLOBAL__N_114profileAttrArgIN5clang8ParamIdxEEENSt9enable_ifIXntoooooooooosr3stdE9is_same_vIT_N4llvm9StringRefEEsr3stdE9is_same_vIS4_NS5_12VersionTupleEEsr3stdE9is_same_vIS4_PNS1_14IdentifierInfoEEsr3stdE9is_same_vIS4_PKS8_Esr3stdE9is_enum_vIS4_Esr3stdE13is_integral_vIS4_EEvE4typeERNS5_16FoldingSetNodeIDERKNS1_10ASTContextES4_.exit: ; preds = %_ZN4llvm16FoldingSetNodeID10AddBooleanEb.exit.i, %bb.e, %bb.f
  %i.t = phi i32 [ %.pre12, %_ZN4llvm16FoldingSetNodeID10AddBooleanEb.exit.i ], [ %.pre, %bb.e ], [ %i.s, %bb.f ] ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 44
  %.sroa.0.0.copyload.i6 = load i32, ptr %i.u, align 4, !tbaa !30 ; 4 uses
  %i.v = icmp slt i32 %.sroa.0.0.copyload.i6, 0
  %.lobit.i7 = lshr i32 %.sroa.0.0.copyload.i6, 31 ; 2 uses
  %i.w = load i32, ptr %i.e, align 4, !tbaa !151
  %.not.i.i.i.i.i8 = icmp ult i32 %i.t, %i.w
  br i1 %.not.i.i.i.i.i8, label %bb.h, label %bb.g, !prof !138

bb.g:                                             ; preds = %_ZN12_GLOBAL__N_114profileAttrArgIN5clang8ParamIdxEEENSt9enable_ifIXntoooooooooosr3stdE9is_same_vIT_N4llvm9StringRefEEsr3stdE9is_same_vIS4_NS5_12VersionTupleEEsr3stdE9is_same_vIS4_PNS1_14IdentifierInfoEEsr3stdE9is_same_vIS4_PKS8_Esr3stdE9is_enum_vIS4_Esr3stdE13is_integral_vIS4_EEvE4typeERNS5_16FoldingSetNodeIDERKNS1_10ASTContextES4_.exit
  tail call void @_ZN4llvm23SmallVectorTemplateBaseIjLb1EE15growAndPushBackEj(ptr noundef nonnull align 8 dereferenceable(144) %1, i32 noundef %.lobit.i7)
  br label %_ZN4llvm16FoldingSetNodeID10AddBooleanEb.exit.i9

bb.h:                                             ; preds = %_ZN12_GLOBAL__N_114profileAttrArgIN5clang8ParamIdxEEENSt9enable_ifIXntoooooooooosr3stdE9is_same_vIT_N4llvm9StringRefEEsr3stdE9is_same_vIS4_NS5_12VersionTupleEEsr3stdE9is_same_vIS4_PNS1_14IdentifierInfoEEsr3stdE9is_same_vIS4_PKS8_Esr3stdE9is_enum_vIS4_Esr3stdE13is_integral_vIS4_EEvE4typeERNS5_16FoldingSetNodeIDERKNS1_10ASTContextES4_.exit
  %i.x = zext i32 %i.t to i64
  %i.y = load ptr, ptr %1, align 8, !tbaa !87
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %i.x
  store i32 %.lobit.i7, ptr %i.z, align 1
  %i.aa = load i32, ptr %i.c, align 8, !tbaa !88
  %i.ab = add i32 %i.aa, 1
  store i32 %i.ab, ptr %i.c, align 8, !tbaa !88
  br label %_ZN4llvm16FoldingSetNodeID10AddBooleanEb.exit.i9

_ZN4llvm16FoldingSetNodeID10AddBooleanEb.exit.i9: ; preds = %bb.h, %bb.g
  br i1 %i.v, label %bb.i, label %_ZN12_GLOBAL__N_114profileAttrArgIN5clang8ParamIdxEEENSt9enable_ifIXntoooooooooosr3stdE9is_same_vIT_N4llvm9StringRefEEsr3stdE9is_same_vIS4_NS5_12VersionTupleEEsr3stdE9is_same_vIS4_PNS1_14IdentifierInfoEEsr3stdE9is_same_vIS4_PKS8_Esr3stdE9is_enum_vIS4_Esr3stdE13is_integral_vIS4_EEvE4typeERNS5_16FoldingSetNodeIDERKNS1_10ASTContextES4_.exit11

bb.i:                                             ; preds = %_ZN4llvm16FoldingSetNodeID10AddBooleanEb.exit.i9
  %i.ac = and i32 %.sroa.0.0.copyload.i6, 1073741823
  %6 = lshr i32 %.sroa.0.0.copyload.i6, 30
  %7 = and i32 %6, 1
  %8 = xor i32 %7, -1
  %i.ad = add nsw i32 %i.ac, %8                   ; 2 uses
  %i.ae = load i32, ptr %i.c, align 8, !tbaa !88  ; 2 uses
  %i.af = load i32, ptr %i.e, align 4, !tbaa !151
  %.not.i.i.i.i10 = icmp ult i32 %i.ae, %i.af
  br i1 %.not.i.i.i.i10, label %bb.k, label %bb.j, !prof !138

bb.j:                                             ; preds = %bb.i
  tail call void @_ZN4llvm23SmallVectorTemplateBaseIjLb1EE15growAndPushBackEj(ptr noundef nonnull align 8 dereferenceable(144) %1, i32 noundef %i.ad)
  br label %_ZN12_GLOBAL__N_114profileAttrArgIN5clang8ParamIdxEEENSt9enable_ifIXntoooooooooosr3stdE9is_same_vIT_N4llvm9StringRefEEsr3stdE9is_same_vIS4_NS5_12VersionTupleEEsr3stdE9is_same_vIS4_PNS1_14IdentifierInfoEEsr3stdE9is_same_vIS4_PKS8_Esr3stdE9is_enum_vIS4_Esr3stdE13is_integral_vIS4_EEvE4typeERNS5_16FoldingSetNodeIDERKNS1_10ASTContextES4_.exit11

bb.k:                                             ; preds = %bb.i
  %i.ag = zext i32 %i.ae to i64
  %i.ah = load ptr, ptr %1, align 8, !tbaa !87
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %i.ag
  store i32 %i.ad, ptr %i.ai, align 1
  %i.aj = load i32, ptr %i.c, align 8, !tbaa !88
  %i.ak = add i32 %i.aj, 1
  store i32 %i.ak, ptr %i.c, align 8, !tbaa !88
  br label %_ZN12_GLOBAL__N_114profileAttrArgIN5clang8ParamIdxEEENSt9enable_ifIXntoooooooooosr3stdE9is_same_vIT_N4llvm9StringRefEEsr3stdE9is_same_vIS4_NS5_12VersionTupleEEsr3stdE9is_same_vIS4_PNS1_14IdentifierInfoEEsr3stdE9is_same_vIS4_PKS8_Esr3stdE9is_enum_vIS4_Esr3stdE13is_integral_vIS4_EEvE4typeERNS5_16FoldingSetNodeIDERKNS1_10ASTContextES4_.exit11

_ZN12_GLOBAL__N_114profileAttrArgIN5clang8ParamIdxEEENSt9enable_ifIXntoooooooooosr3stdE9is_same_vIT_N4llvm9StringRefEEsr3stdE9is_same_vIS4_NS5_12VersionTupleEEsr3stdE9is_same_vIS4_PNS1_14IdentifierInfoEEsr3stdE9is_same_vIS4_PKS8_Esr3stdE9is_enum_vIS4_Esr3stdE13is_integral_vIS4_EEvE4typeERNS5_16FoldingSetNodeIDERKNS1_10ASTContextES4_.exit11: ; preds = %_ZN4llvm16FoldingSetNodeID10AddBooleanEb.exit.i9, %bb.j, %bb.k
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef nonnull ptr @_ZNK5clang13AllocSizeAttr5cloneERNS_10ASTContextE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(23904) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 2632 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !136  ; 2 uses
  %i.c = ptrtoint ptr %i.b to i64
  %i.d = add i64 %i.c, 48                         ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 2640
  %i.f = load i64, ptr %i.e, align 8, !tbaa !137
  %i.g = icmp ult i64 %i.d, %i.f
  br i1 %i.g, label %bb.b, label %bb.c, !prof !138

bb.b:                                             ; preds = %bb.a
  %i.h = inttoptr i64 %i.d to ptr
  store ptr %i.h, ptr %i.a, align 8, !tbaa !136
  br label %_ZN5clang4AttrnwEmRNS_10ASTContextEm.exit

bb.c:                                             ; preds = %bb.a
  %i.i = tail call noundef nonnull ptr @_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE12AllocateSlowEmmNS_5AlignE(ptr noundef nonnull align 8 dereferenceable(80) %i.a, i64 noundef 48, i64 noundef 48, i8 3)
  br label %_ZN5clang4AttrnwEmRNS_10ASTContextEm.exit

_ZN5clang4AttrnwEmRNS_10ASTContextEm.exit:        ; preds = %bb.b, %bb.c
  %.0.i.i.i.i.i = phi ptr [ %i.b, %bb.b ], [ %i.i, %bb.c ] ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.i.i.i.i.i) ]
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.sroa.01.0.copyload = load i32, ptr %i.j, align 8, !tbaa !30
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 44
  %.sroa.0.0.copyload = load i32, ptr %i.k, align 4, !tbaa !30
  tail call void @_ZN5clang13AllocSizeAttrC1ERNS_10ASTContextERKNS_19AttributeCommonInfoENS_8ParamIdxES6_(ptr noundef nonnull align 8 dereferenceable(48) %.0.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(23904) %1, ptr noundef nonnull align 8 dereferenceable(36) %0, i32 %.sroa.01.0.copyload, i32 %.sroa.0.0.copyload) #20
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 38 ; 3 uses
  %i.m = load i8, ptr %i.l, align 2
  %i.n = and i8 %i.m, 1
  %i.o = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i, i64 38 ; 4 uses
  %i.p = load i8, ptr %i.o, align 2
  %i.q = and i8 %i.p, -2
  %i.r = or disjoint i8 %i.q, %i.n                ; 2 uses
  store i8 %i.r, ptr %i.o, align 2
  %i.s = load i8, ptr %i.l, align 2
  %i.t = and i8 %i.s, 2
  %i.u = and i8 %i.r, -3
  %i.v = or disjoint i8 %i.u, %i.t                ; 2 uses
  store i8 %i.v, ptr %i.o, align 2
  %i.w = load i8, ptr %i.l, align 2
  %i.x = and i8 %i.w, 4
  %i.y = and i8 %i.v, -5
  %i.z = or disjoint i8 %i.y, %i.x
  store i8 %i.z, ptr %i.o, align 2
  ret ptr %.0.i.i.i.i.i
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZNK5clang13AllocSizeAttr11printPrettyERN4llvm11raw_ostreamERKNS_14PrintingPolicyE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1, ptr nofree nonnull readnone align 8 captures(none) %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i32, ptr %i.a, align 8              ; 2 uses
  %i.c = and i32 %i.b, 15728640
  %.not.i = icmp eq i32 %i.c, 15728640
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = lshr i32 %i.b, 20
  %i.e = and i32 %i.d, 15
  br label %_ZNK5clang19AttributeCommonInfo29getAttributeSpellingListIndexEv.exit

bb.c:                                             ; preds = %bb.a
  %i.f = tail call noundef i32 @_ZNK5clang19AttributeCommonInfo35calculateAttributeSpellingListIndexEv(ptr noundef nonnull align 8 dereferenceable(36) %0) #20
  br label %_ZNK5clang19AttributeCommonInfo29getAttributeSpellingListIndexEv.exit

_ZNK5clang19AttributeCommonInfo29getAttributeSpellingListIndexEv.exit: ; preds = %bb.b, %bb.c
  %i.g = phi i32 [ %i.e, %bb.b ], [ %i.f, %bb.c ]
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 13 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !29
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 43 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !28   ; 4 uses
  %i.l = ptrtoint ptr %i.i to i64
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = sub i64 %i.l, %i.m                       ; 3 uses
  switch i32 %i.g, label %bb.d [
    i32 0, label %bb.e
    i32 1, label %bb.r
    i32 2, label %bb.ae
  ]

bb.d:                                             ; preds = %_ZNK5clang19AttributeCommonInfo29getAttributeSpellingListIndexEv.exit
  unreachable

bb.e:                                             ; preds = %_ZNK5clang19AttributeCommonInfo29getAttributeSpellingListIndexEv.exit
  %i.o = icmp ult i64 %i.n, 25
  br i1 %i.o, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.p = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull @.str.105, i64 noundef 25) #20 ; 0 uses
  %.pre122 = load ptr, ptr %i.j, align 8, !tbaa !28
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(25) %i.k, ptr noundef nonnull align 1 dereferenceable(25) @.str.105, i64 25, i1 false)
  %i.q = load ptr, ptr %i.j, align 8, !tbaa !28
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 25 ; 2 uses
  store ptr %i.r, ptr %i.j, align 8, !tbaa !28
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.s = phi ptr [ %i.r, %bb.g ], [ %.pre122, %bb.f ] ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  %i.u = load ptr, ptr %i.h, align 8, !tbaa !29
  %i.v = icmp eq ptr %i.u, %i.s
  br i1 %i.v, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.w = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull @.str, i64 noundef 1) #20 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit26

bb.j:                                             ; preds = %bb.h
  store i8 40, ptr %i.s, align 1
  %i.x = load ptr, ptr %i.j, align 8, !tbaa !28
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 1
  store ptr %i.y, ptr %i.j, align 8, !tbaa !28
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit26

_ZN4llvm11raw_ostreamlsEPKc.exit26:               ; preds = %bb.i, %bb.j
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.sroa.0.0.copyload.i27 = load i32, ptr %i.z, align 8, !tbaa !30
  %i.aa = and i32 %.sroa.0.0.copyload.i27, 1073741823
  %i.ab = zext nneg i32 %i.aa to i64
  %i.ac = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsEm(ptr noundef nonnull align 8 dereferenceable(48) %1, i64 noundef %i.ab) #20 ; 0 uses
  %.sroa.0.0.copyload.i31 = load i32, ptr %i.t, align 4, !tbaa !30
  %i.ad = icmp slt i32 %.sroa.0.0.copyload.i31, 0
  br i1 %i.ad, label %bb.k, label %_ZN4llvm11raw_ostreamlsEPKc.exit39

bb.k:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit26
  %i.ae = load ptr, ptr %i.h, align 8, !tbaa !29
  %i.af = load ptr, ptr %i.j, align 8, !tbaa !28  ; 2 uses
  %i.ag = ptrtoint ptr %i.ae to i64
  %i.ah = ptrtoint ptr %i.af to i64
  %i.ai = sub i64 %i.ag, %i.ah
  %i.aj = icmp ult i64 %i.ai, 2
  br i1 %i.aj, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ak = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull @.str.17, i64 noundef 2) #20 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit35

bb.m:                                             ; preds = %bb.k
  store i16 8236, ptr %i.af, align 1
  %i.al = load ptr, ptr %i.j, align 8, !tbaa !28
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 2
  store ptr %i.am, ptr %i.j, align 8, !tbaa !28
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit35

_ZN4llvm11raw_ostreamlsEPKc.exit35:               ; preds = %bb.l, %bb.m
  %.sroa.0.0.copyload.i36 = load i32, ptr %i.t, align 4, !tbaa !30
  %i.an = and i32 %.sroa.0.0.copyload.i36, 1073741823
  %i.ao = zext nneg i32 %i.an to i64
  %i.ap = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsEm(ptr noundef nonnull align 8 dereferenceable(48) %1, i64 noundef %i.ao) #20 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit39

_ZN4llvm11raw_ostreamlsEPKc.exit39:               ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit35, %_ZN4llvm11raw_ostreamlsEPKc.exit26
  %i.aq = load ptr, ptr %i.h, align 8, !tbaa !29
  %i.ar = load ptr, ptr %i.j, align 8, !tbaa !28  ; 2 uses
  %i.as = icmp eq ptr %i.aq, %i.ar
  br i1 %i.as, label %bb.n, label %bb.o

bb.n:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit39
  %i.at = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull @.str.9, i64 noundef 1) #20 ; 0 uses
  %.pre123 = load ptr, ptr %i.j, align 8, !tbaa !28
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit42

bb.o:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit39
  store i8 41, ptr %i.ar, align 1
  %i.au = load ptr, ptr %i.j, align 8, !tbaa !28
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 1 ; 2 uses
  store ptr %i.av, ptr %i.j, align 8, !tbaa !28
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit42

_ZN4llvm11raw_ostreamlsEPKc.exit42:               ; preds = %bb.o, %bb.n
  %i.aw = phi ptr [ %i.av, %bb.o ], [ %.pre123, %bb.n ] ; 2 uses
end_hunk_1
begin_hunk_2_@_ZNK5clang23ArgumentWithTypeTagAttr12isEquivalentERKS0_RNS_28StructuralEquivalenceContextE:bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i32, ptr %i.a, align 8              ; 2 uses
  %i.c = and i32 %i.b, 15728640
  %.not.i.i = icmp eq i32 %i.c, 15728640
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = lshr i32 %i.b, 20
  %i.e = and i32 %i.d, 15
  br label %_ZNK5clang23ArgumentWithTypeTagAttr11getSpellingEv.exit

bb.c:                                             ; preds = %bb.a
  %i.f = tail call noundef i32 @_ZNK5clang19AttributeCommonInfo35calculateAttributeSpellingListIndexEv(ptr noundef nonnull align 8 dereferenceable(57) %0) #20
  br label %_ZNK5clang23ArgumentWithTypeTagAttr11getSpellingEv.exit

_ZNK5clang23ArgumentWithTypeTagAttr11getSpellingEv.exit: ; preds = %bb.b, %bb.c
  %i.g = phi i32 [ %i.e, %bb.b ], [ %i.f, %bb.c ]
  %switch.i = icmp ult i32 %i.g, 3
  %.str.143..str.144.i = select i1 %switch.i, ptr @.str.143, ptr @.str.144
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.i = load i32, ptr %i.h, align 8              ; 2 uses
  %i.j = and i32 %i.i, 15728640
  %.not.i.i14 = icmp eq i32 %i.j, 15728640
  br i1 %.not.i.i14, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZNK5clang23ArgumentWithTypeTagAttr11getSpellingEv.exit
  %i.k = lshr i32 %i.i, 20
  %i.l = and i32 %i.k, 15
  br label %_ZNK5clang23ArgumentWithTypeTagAttr11getSpellingEv.exit17

bb.e:                                             ; preds = %_ZNK5clang23ArgumentWithTypeTagAttr11getSpellingEv.exit
  %i.m = tail call noundef i32 @_ZNK5clang19AttributeCommonInfo35calculateAttributeSpellingListIndexEv(ptr noundef nonnull align 8 dereferenceable(57) %1) #20
  br label %_ZNK5clang23ArgumentWithTypeTagAttr11getSpellingEv.exit17

_ZNK5clang23ArgumentWithTypeTagAttr11getSpellingEv.exit17: ; preds = %bb.d, %bb.e
  %i.n = phi i32 [ %i.l, %bb.d ], [ %i.m, %bb.e ]
  %switch.i15 = icmp ult i32 %i.n, 3
  %.str.143..str.144.i16 = select i1 %switch.i15, ptr @.str.143, ptr @.str.144
  %.not = icmp eq ptr %.str.143..str.144.i, %.str.143..str.144.i16
  br i1 %.not, label %bb.f, label %bb.j

bb.f:                                             ; preds = %_ZNK5clang23ArgumentWithTypeTagAttr11getSpellingEv.exit17
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !213
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !213
  %i.s = tail call noundef zeroext i1 @_ZN5clang24ASTStructuralEquivalence12isEquivalentEPKNS_14IdentifierInfoES3_(ptr noundef %i.p, ptr noundef %i.r) #20
  br i1 %i.s, label %bb.g, label %bb.j

bb.g:                                             ; preds = %bb.f
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.sroa.0.0.copyload.i = load i32, ptr %i.t, align 8, !tbaa !30 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.sroa.0.0.copyload.i18 = load i32, ptr %i.u, align 8, !tbaa !30
  %i.v = icmp sgt i32 %.sroa.0.0.copyload.i, -1
  %i.w = xor i32 %.sroa.0.0.copyload.i18, %.sroa.0.0.copyload.i ; 2 uses
  %i.x = icmp slt i32 %i.w, 0                     ; 2 uses
  %brmerge.i = or i1 %i.v, %i.x
  %not..i = xor i1 %i.x, true
  %i.y = and i32 %i.w, 1073741823
  %i.z = icmp eq i32 %i.y, 0
  %.0.i = select i1 %brmerge.i, i1 %not..i, i1 %i.z
  br i1 %.0.i, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 52
  %.sroa.0.0.copyload.i19 = load i32, ptr %i.aa, align 4, !tbaa !30 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 52
  %.sroa.0.0.copyload.i20 = load i32, ptr %i.ab, align 4, !tbaa !30
  %i.ac = icmp sgt i32 %.sroa.0.0.copyload.i19, -1
  %i.ad = xor i32 %.sroa.0.0.copyload.i20, %.sroa.0.0.copyload.i19 ; 2 uses
  %i.ae = icmp slt i32 %i.ad, 0                   ; 2 uses
  %brmerge.i21 = or i1 %i.ac, %i.ae
  %not..i22 = xor i1 %i.ae, true
  %i.af = and i32 %i.ad, 1073741823
  %i.ag = icmp eq i32 %i.af, 0
  %.0.i23 = select i1 %brmerge.i21, i1 %not..i22, i1 %i.ag
  br i1 %.0.i23, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ai = load i8, ptr %i.ah, align 8, !tbaa !214, !range !83, !noundef !84
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.ak = load i8, ptr %i.aj, align 8, !tbaa !214, !range !83, !noundef !84
  %.not24 = icmp eq i8 %i.ai, %i.ak
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.g, %bb.f, %_ZNK5clang23ArgumentWithTypeTagAttr11getSpellingEv.exit17
  %.0 = phi i1 [ false, %_ZNK5clang23ArgumentWithTypeTagAttr11getSpellingEv.exit17 ], [ false, %bb.h ], [ %.not24, %bb.i ], [ false, %bb.g ], [ false, %bb.f ]
  ret i1 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef nonnull ptr @_ZNK5clang23ArgumentWithTypeTagAttr11getSpellingEv(ptr noundef nonnull align 8 dereferenceable(57) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i32, ptr %i.a, align 8              ; 2 uses
  %i.c = and i32 %i.b, 15728640
  %.not.i = icmp eq i32 %i.c, 15728640
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = lshr i32 %i.b, 20
  %i.e = and i32 %i.d, 15
  br label %_ZNK5clang19AttributeCommonInfo29getAttributeSpellingListIndexEv.exit

bb.c:                                             ; preds = %bb.a
  %i.f = tail call noundef i32 @_ZNK5clang19AttributeCommonInfo35calculateAttributeSpellingListIndexEv(ptr noundef nonnull align 8 dereferenceable(36) %0) #20
  br label %_ZNK5clang19AttributeCommonInfo29getAttributeSpellingListIndexEv.exit

_ZNK5clang19AttributeCommonInfo29getAttributeSpellingListIndexEv.exit: ; preds = %bb.b, %bb.c
  %i.g = phi i32 [ %i.e, %bb.b ], [ %i.f, %bb.c ]
  %switch = icmp ult i32 %i.g, 3
  %.str.143..str.144 = select i1 %switch, ptr @.str.143, ptr @.str.144
  ret ptr %.str.143..str.144
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZNK5clang23ArgumentWithTypeTagAttr7ProfileERN4llvm16FoldingSetNodeIDERKNS_10ASTContextE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(57) %0, ptr noundef nonnull align 8 dereferenceable(144) %1, ptr nofree nonnull readnone align 8 captures(none) %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !213
  %i.c = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.d = trunc i64 %i.c to i32                    ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 24 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !88   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 8 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !151
  %.not.i.i.i.i.i = icmp ult i32 %i.f, %i.h
  br i1 %.not.i.i.i.i.i, label %bb.c, label %bb.b, !prof !138

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4llvm23SmallVectorTemplateBaseIjLb1EE15growAndPushBackEj(ptr noundef nonnull align 8 dereferenceable(144) %1, i32 noundef %i.d)
  %.pre.i.i.i.i = load i32, ptr %i.e, align 8, !tbaa !88
  br label %_ZN4llvm23SmallVectorTemplateBaseIjLb1EE9push_backEj.exit.i.i.i.i

bb.c:                                             ; preds = %bb.a
  %i.i = zext i32 %i.f to i64
  %i.j = load ptr, ptr %1, align 8, !tbaa !87
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.i
  store i32 %i.d, ptr %i.k, align 1
  %i.l = load i32, ptr %i.e, align 8, !tbaa !88
  %i.m = add i32 %i.l, 1                          ; 2 uses
  store i32 %i.m, ptr %i.e, align 8, !tbaa !88
  br label %_ZN4llvm23SmallVectorTemplateBaseIjLb1EE9push_backEj.exit.i.i.i.i

_ZN4llvm23SmallVectorTemplateBaseIjLb1EE9push_backEj.exit.i.i.i.i: ; preds = %bb.c, %bb.b
  %i.n = phi i32 [ %.pre.i.i.i.i, %bb.b ], [ %i.m, %bb.c ] ; 2 uses
  %i.o = lshr i64 %i.c, 32
  %i.p = trunc nuw i64 %i.o to i32                ; 2 uses
  %i.q = load i32, ptr %i.g, align 4, !tbaa !151
  %.not.i2.i.i.i.i = icmp ult i32 %i.n, %i.q
  br i1 %.not.i2.i.i.i.i, label %bb.e, label %bb.d, !prof !138

bb.d:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseIjLb1EE9push_backEj.exit.i.i.i.i
  tail call void @_ZN4llvm23SmallVectorTemplateBaseIjLb1EE15growAndPushBackEj(ptr noundef nonnull align 8 dereferenceable(144) %1, i32 noundef %i.p)
  %.pre = load i32, ptr %i.e, align 8, !tbaa !88
  br label %_ZN12_GLOBAL__N_114profileAttrArgIPKN5clang14IdentifierInfoEEENSt9enable_ifIXoooooooooosr3stdE9is_same_vIT_N4llvm9StringRefEEsr3stdE9is_same_vIS6_NS7_12VersionTupleEEsr3stdE9is_same_vIS6_PS2_Esr3stdE9is_same_vIS6_S4_Esr3stdE9is_enum_vIS6_Esr3stdE13is_integral_vIS6_EEvE4typeERNS7_16FoldingSetNodeIDERKNS1_10ASTContextES6_.exit

bb.e:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseIjLb1EE9push_backEj.exit.i.i.i.i
  %i.r = zext i32 %i.n to i64
  %i.s = load ptr, ptr %1, align 8, !tbaa !87
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %i.r
  store i32 %i.p, ptr %i.t, align 1
  %i.u = load i32, ptr %i.e, align 8, !tbaa !88
  %i.v = add i32 %i.u, 1                          ; 2 uses
  store i32 %i.v, ptr %i.e, align 8, !tbaa !88
  br label %_ZN12_GLOBAL__N_114profileAttrArgIPKN5clang14IdentifierInfoEEENSt9enable_ifIXoooooooooosr3stdE9is_same_vIT_N4llvm9StringRefEEsr3stdE9is_same_vIS6_NS7_12VersionTupleEEsr3stdE9is_same_vIS6_PS2_Esr3stdE9is_same_vIS6_S4_Esr3stdE9is_enum_vIS6_Esr3stdE13is_integral_vIS6_EEvE4typeERNS7_16FoldingSetNodeIDERKNS1_10ASTContextES6_.exit

_ZN12_GLOBAL__N_114profileAttrArgIPKN5clang14IdentifierInfoEEENSt9enable_ifIXoooooooooosr3stdE9is_same_vIT_N4llvm9StringRefEEsr3stdE9is_same_vIS6_NS7_12VersionTupleEEsr3stdE9is_same_vIS6_PS2_Esr3stdE9is_same_vIS6_S4_Esr3stdE9is_enum_vIS6_Esr3stdE13is_integral_vIS6_EEvE4typeERNS7_16FoldingSetNodeIDERKNS1_10ASTContextES6_.exit: ; preds = %bb.d, %bb.e
  %i.w = phi i32 [ %.pre, %bb.d ], [ %i.v, %bb.e ] ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.sroa.0.0.copyload.i = load i32, ptr %i.x, align 8, !tbaa !30 ; 4 uses
  %i.y = icmp slt i32 %.sroa.0.0.copyload.i, 0
  %.lobit.i = lshr i32 %.sroa.0.0.copyload.i, 31  ; 2 uses
  %i.z = load i32, ptr %i.g, align 4, !tbaa !151
  %.not.i.i.i.i.i10 = icmp ult i32 %i.w, %i.z
  br i1 %.not.i.i.i.i.i10, label %bb.g, label %bb.f, !prof !138

bb.f:                                             ; preds = %_ZN12_GLOBAL__N_114profileAttrArgIPKN5clang14IdentifierInfoEEENSt9enable_ifIXoooooooooosr3stdE9is_same_vIT_N4llvm9StringRefEEsr3stdE9is_same_vIS6_NS7_12VersionTupleEEsr3stdE9is_same_vIS6_PS2_Esr3stdE9is_same_vIS6_S4_Esr3stdE9is_enum_vIS6_Esr3stdE13is_integral_vIS6_EEvE4typeERNS7_16FoldingSetNodeIDERKNS1_10ASTContextES6_.exit
  tail call void @_ZN4llvm23SmallVectorTemplateBaseIjLb1EE15growAndPushBackEj(ptr noundef nonnull align 8 dereferenceable(144) %1, i32 noundef %.lobit.i)
  %.pre19.pre = load i32, ptr %i.e, align 8, !tbaa !88
  br label %_ZN4llvm16FoldingSetNodeID10AddBooleanEb.exit.i

bb.g:                                             ; preds = %_ZN12_GLOBAL__N_114profileAttrArgIPKN5clang14IdentifierInfoEEENSt9enable_ifIXoooooooooosr3stdE9is_same_vIT_N4llvm9StringRefEEsr3stdE9is_same_vIS6_NS7_12VersionTupleEEsr3stdE9is_same_vIS6_PS2_Esr3stdE9is_same_vIS6_S4_Esr3stdE9is_enum_vIS6_Esr3stdE13is_integral_vIS6_EEvE4typeERNS7_16FoldingSetNodeIDERKNS1_10ASTContextES6_.exit
  %i.aa = zext i32 %i.w to i64
  %i.ab = load ptr, ptr %1, align 8, !tbaa !87
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %i.aa
  store i32 %.lobit.i, ptr %i.ac, align 1
  %i.ad = load i32, ptr %i.e, align 8, !tbaa !88
  %i.ae = add i32 %i.ad, 1                        ; 2 uses
  store i32 %i.ae, ptr %i.e, align 8, !tbaa !88
  br label %_ZN4llvm16FoldingSetNodeID10AddBooleanEb.exit.i

_ZN4llvm16FoldingSetNodeID10AddBooleanEb.exit.i:  ; preds = %bb.g, %bb.f
  %.pre19 = phi i32 [ %i.ae, %bb.g ], [ %.pre19.pre, %bb.f ] ; 3 uses
  br i1 %i.y, label %bb.h, label %_ZN12_GLOBAL__N_114profileAttrArgIN5clang8ParamIdxEEENSt9enable_ifIXntoooooooooosr3stdE9is_same_vIT_N4llvm9StringRefEEsr3stdE9is_same_vIS4_NS5_12VersionTupleEEsr3stdE9is_same_vIS4_PNS1_14IdentifierInfoEEsr3stdE9is_same_vIS4_PKS8_Esr3stdE9is_enum_vIS4_Esr3stdE13is_integral_vIS4_EEvE4typeERNS5_16FoldingSetNodeIDERKNS1_10ASTContextES4_.exit

bb.h:                                             ; preds = %_ZN4llvm16FoldingSetNodeID10AddBooleanEb.exit.i
  %i.af = and i32 %.sroa.0.0.copyload.i, 1073741823
  %3 = lshr i32 %.sroa.0.0.copyload.i, 30
  %4 = and i32 %3, 1
  %5 = xor i32 %4, -1
  %i.ag = add nsw i32 %i.af, %5                   ; 2 uses
  %i.ah = load i32, ptr %i.g, align 4, !tbaa !151
  %.not.i.i.i.i = icmp ult i32 %.pre19, %i.ah
  br i1 %.not.i.i.i.i, label %bb.j, label %bb.i, !prof !138

bb.i:                                             ; preds = %bb.h
  tail call void @_ZN4llvm23SmallVectorTemplateBaseIjLb1EE15growAndPushBackEj(ptr noundef nonnull align 8 dereferenceable(144) %1, i32 noundef %i.ag)
  %.pre18 = load i32, ptr %i.e, align 8, !tbaa !88
  br label %_ZN12_GLOBAL__N_114profileAttrArgIN5clang8ParamIdxEEENSt9enable_ifIXntoooooooooosr3stdE9is_same_vIT_N4llvm9StringRefEEsr3stdE9is_same_vIS4_NS5_12VersionTupleEEsr3stdE9is_same_vIS4_PNS1_14IdentifierInfoEEsr3stdE9is_same_vIS4_PKS8_Esr3stdE9is_enum_vIS4_Esr3stdE13is_integral_vIS4_EEvE4typeERNS5_16FoldingSetNodeIDERKNS1_10ASTContextES4_.exit

bb.j:                                             ; preds = %bb.h
  %i.ai = zext i32 %.pre19 to i64
  %i.aj = load ptr, ptr %1, align 8, !tbaa !87
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %i.ai
  store i32 %i.ag, ptr %i.ak, align 1
  %i.al = load i32, ptr %i.e, align 8, !tbaa !88
  %i.am = add i32 %i.al, 1                        ; 2 uses
  store i32 %i.am, ptr %i.e, align 8, !tbaa !88
  br label %_ZN12_GLOBAL__N_114profileAttrArgIN5clang8ParamIdxEEENSt9enable_ifIXntoooooooooosr3stdE9is_same_vIT_N4llvm9StringRefEEsr3stdE9is_same_vIS4_NS5_12VersionTupleEEsr3stdE9is_same_vIS4_PNS1_14IdentifierInfoEEsr3stdE9is_same_vIS4_PKS8_Esr3stdE9is_enum_vIS4_Esr3stdE13is_integral_vIS4_EEvE4typeERNS5_16FoldingSetNodeIDERKNS1_10ASTContextES4_.exit

_ZN12_GLOBAL__N_114profileAttrArgIN5clang8ParamIdxEEENSt9enable_ifIXntoooooooooosr3stdE9is_same_vIT_N4llvm9StringRefEEsr3stdE9is_same_vIS4_NS5_12VersionTupleEEsr3stdE9is_same_vIS4_PNS1_14IdentifierInfoEEsr3stdE9is_same_vIS4_PKS8_Esr3stdE9is_enum_vIS4_Esr3stdE13is_integral_vIS4_EEvE4typeERNS5_16FoldingSetNodeIDERKNS1_10ASTContextES4_.exit: ; preds = %_ZN4llvm16FoldingSetNodeID10AddBooleanEb.exit.i, %bb.i, %bb.j
  %i.an = phi i32 [ %.pre19, %_ZN4llvm16FoldingSetNodeID10AddBooleanEb.exit.i ], [ %.pre18, %bb.i ], [ %i.am, %bb.j ] ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 52
  %.sroa.0.0.copyload.i11 = load i32, ptr %i.ao, align 4, !tbaa !30 ; 4 uses
  %i.ap = icmp slt i32 %.sroa.0.0.copyload.i11, 0
  %.lobit.i12 = lshr i32 %.sroa.0.0.copyload.i11, 31 ; 2 uses
  %i.aq = load i32, ptr %i.g, align 4, !tbaa !151
  %.not.i.i.i.i.i13 = icmp ult i32 %i.an, %i.aq
  br i1 %.not.i.i.i.i.i13, label %bb.l, label %bb.k, !prof !138

bb.k:                                             ; preds = %_ZN12_GLOBAL__N_114profileAttrArgIN5clang8ParamIdxEEENSt9enable_ifIXntoooooooooosr3stdE9is_same_vIT_N4llvm9StringRefEEsr3stdE9is_same_vIS4_NS5_12VersionTupleEEsr3stdE9is_same_vIS4_PNS1_14IdentifierInfoEEsr3stdE9is_same_vIS4_PKS8_Esr3stdE9is_enum_vIS4_Esr3stdE13is_integral_vIS4_EEvE4typeERNS5_16FoldingSetNodeIDERKNS1_10ASTContextES4_.exit
  tail call void @_ZN4llvm23SmallVectorTemplateBaseIjLb1EE15growAndPushBackEj(ptr noundef nonnull align 8 dereferenceable(144) %1, i32 noundef %.lobit.i12)
  %.pre21.pre = load i32, ptr %i.e, align 8, !tbaa !88
  br label %_ZN4llvm16FoldingSetNodeID10AddBooleanEb.exit.i14

bb.l:                                             ; preds = %_ZN12_GLOBAL__N_114profileAttrArgIN5clang8ParamIdxEEENSt9enable_ifIXntoooooooooosr3stdE9is_same_vIT_N4llvm9StringRefEEsr3stdE9is_same_vIS4_NS5_12VersionTupleEEsr3stdE9is_same_vIS4_PNS1_14IdentifierInfoEEsr3stdE9is_same_vIS4_PKS8_Esr3stdE9is_enum_vIS4_Esr3stdE13is_integral_vIS4_EEvE4typeERNS5_16FoldingSetNodeIDERKNS1_10ASTContextES4_.exit
  %i.ar = zext i32 %i.an to i64
  %i.as = load ptr, ptr %1, align 8, !tbaa !87
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %i.ar
  store i32 %.lobit.i12, ptr %i.at, align 1
  %i.au = load i32, ptr %i.e, align 8, !tbaa !88
  %i.av = add i32 %i.au, 1                        ; 2 uses
  store i32 %i.av, ptr %i.e, align 8, !tbaa !88
  br label %_ZN4llvm16FoldingSetNodeID10AddBooleanEb.exit.i14

_ZN4llvm16FoldingSetNodeID10AddBooleanEb.exit.i14: ; preds = %bb.l, %bb.k
  %.pre21 = phi i32 [ %i.av, %bb.l ], [ %.pre21.pre, %bb.k ] ; 3 uses
  br i1 %i.ap, label %bb.m, label %_ZN12_GLOBAL__N_114profileAttrArgIN5clang8ParamIdxEEENSt9enable_ifIXntoooooooooosr3stdE9is_same_vIT_N4llvm9StringRefEEsr3stdE9is_same_vIS4_NS5_12VersionTupleEEsr3stdE9is_same_vIS4_PNS1_14IdentifierInfoEEsr3stdE9is_same_vIS4_PKS8_Esr3stdE9is_enum_vIS4_Esr3stdE13is_integral_vIS4_EEvE4typeERNS5_16FoldingSetNodeIDERKNS1_10ASTContextES4_.exit16

bb.m:                                             ; preds = %_ZN4llvm16FoldingSetNodeID10AddBooleanEb.exit.i14
  %i.aw = and i32 %.sroa.0.0.copyload.i11, 1073741823
  %6 = lshr i32 %.sroa.0.0.copyload.i11, 30
  %7 = and i32 %6, 1
  %8 = xor i32 %7, -1
  %i.ax = add nsw i32 %i.aw, %8                   ; 2 uses
  %i.ay = load i32, ptr %i.g, align 4, !tbaa !151
  %.not.i.i.i.i15 = icmp ult i32 %.pre21, %i.ay
  br i1 %.not.i.i.i.i15, label %bb.o, label %bb.n, !prof !138

bb.n:                                             ; preds = %bb.m
  tail call void @_ZN4llvm23SmallVectorTemplateBaseIjLb1EE15growAndPushBackEj(ptr noundef nonnull align 8 dereferenceable(144) %1, i32 noundef %i.ax)
  %.pre20 = load i32, ptr %i.e, align 8, !tbaa !88
  br label %_ZN12_GLOBAL__N_114profileAttrArgIN5clang8ParamIdxEEENSt9enable_ifIXntoooooooooosr3stdE9is_same_vIT_N4llvm9StringRefEEsr3stdE9is_same_vIS4_NS5_12VersionTupleEEsr3stdE9is_same_vIS4_PNS1_14IdentifierInfoEEsr3stdE9is_same_vIS4_PKS8_Esr3stdE9is_enum_vIS4_Esr3stdE13is_integral_vIS4_EEvE4typeERNS5_16FoldingSetNodeIDERKNS1_10ASTContextES4_.exit16

bb.o:                                             ; preds = %bb.m
  %i.az = zext i32 %.pre21 to i64
  %i.ba = load ptr, ptr %1, align 8, !tbaa !87
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.ba, i64 %i.az
  store i32 %i.ax, ptr %i.bb, align 1
  %i.bc = load i32, ptr %i.e, align 8, !tbaa !88
  %i.bd = add i32 %i.bc, 1                        ; 2 uses
  store i32 %i.bd, ptr %i.e, align 8, !tbaa !88
  br label %_ZN12_GLOBAL__N_114profileAttrArgIN5clang8ParamIdxEEENSt9enable_ifIXntoooooooooosr3stdE9is_same_vIT_N4llvm9StringRefEEsr3stdE9is_same_vIS4_NS5_12VersionTupleEEsr3stdE9is_same_vIS4_PNS1_14IdentifierInfoEEsr3stdE9is_same_vIS4_PKS8_Esr3stdE9is_enum_vIS4_Esr3stdE13is_integral_vIS4_EEvE4typeERNS5_16FoldingSetNodeIDERKNS1_10ASTContextES4_.exit16

_ZN12_GLOBAL__N_114profileAttrArgIN5clang8ParamIdxEEENSt9enable_ifIXntoooooooooosr3stdE9is_same_vIT_N4llvm9StringRefEEsr3stdE9is_same_vIS4_NS5_12VersionTupleEEsr3stdE9is_same_vIS4_PNS1_14IdentifierInfoEEsr3stdE9is_same_vIS4_PKS8_Esr3stdE9is_enum_vIS4_Esr3stdE13is_integral_vIS4_EEvE4typeERNS5_16FoldingSetNodeIDERKNS1_10ASTContextES4_.exit16: ; preds = %_ZN4llvm16FoldingSetNodeID10AddBooleanEb.exit.i14, %bb.n, %bb.o
  %i.be = phi i32 [ %.pre21, %_ZN4llvm16FoldingSetNodeID10AddBooleanEb.exit.i14 ], [ %.pre20, %bb.n ], [ %i.bd, %bb.o ] ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.bg = load i8, ptr %i.bf, align 8, !tbaa !214, !range !83, !noundef !84
  %i.bh = zext nneg i8 %i.bg to i32               ; 2 uses
  %i.bi = load i32, ptr %i.g, align 4, !tbaa !151
  %.not.i.i.i.i17 = icmp ult i32 %i.be, %i.bi
  br i1 %.not.i.i.i.i17, label %bb.q, label %bb.p, !prof !138

bb.p:                                             ; preds = %_ZN12_GLOBAL__N_114profileAttrArgIN5clang8ParamIdxEEENSt9enable_ifIXntoooooooooosr3stdE9is_same_vIT_N4llvm9StringRefEEsr3stdE9is_same_vIS4_NS5_12VersionTupleEEsr3stdE9is_same_vIS4_PNS1_14IdentifierInfoEEsr3stdE9is_same_vIS4_PKS8_Esr3stdE9is_enum_vIS4_Esr3stdE13is_integral_vIS4_EEvE4typeERNS5_16FoldingSetNodeIDERKNS1_10ASTContextES4_.exit16
  tail call void @_ZN4llvm23SmallVectorTemplateBaseIjLb1EE15growAndPushBackEj(ptr noundef nonnull align 8 dereferenceable(144) %1, i32 noundef %i.bh)
  %.pre.i.i.i = load i32, ptr %i.e, align 8, !tbaa !88
  br label %_ZN4llvm23SmallVectorTemplateBaseIjLb1EE9push_backEj.exit.i.i.i

bb.q:                                             ; preds = %_ZN12_GLOBAL__N_114profileAttrArgIN5clang8ParamIdxEEENSt9enable_ifIXntoooooooooosr3stdE9is_same_vIT_N4llvm9StringRefEEsr3stdE9is_same_vIS4_NS5_12VersionTupleEEsr3stdE9is_same_vIS4_PNS1_14IdentifierInfoEEsr3stdE9is_same_vIS4_PKS8_Esr3stdE9is_enum_vIS4_Esr3stdE13is_integral_vIS4_EEvE4typeERNS5_16FoldingSetNodeIDERKNS1_10ASTContextES4_.exit16
  %i.bj = zext i32 %i.be to i64
  %i.bk = load ptr, ptr %1, align 8, !tbaa !87
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %i.bk, i64 %i.bj
  store i32 %i.bh, ptr %i.bl, align 1
  %i.bm = load i32, ptr %i.e, align 8, !tbaa !88
  %i.bn = add i32 %i.bm, 1                        ; 2 uses
  store i32 %i.bn, ptr %i.e, align 8, !tbaa !88
  br label %_ZN4llvm23SmallVectorTemplateBaseIjLb1EE9push_backEj.exit.i.i.i

_ZN4llvm23SmallVectorTemplateBaseIjLb1EE9push_backEj.exit.i.i.i: ; preds = %bb.q, %bb.p
  %i.bo = phi i32 [ %.pre.i.i.i, %bb.p ], [ %i.bn, %bb.q ] ; 2 uses
  %i.bp = load i32, ptr %i.g, align 4, !tbaa !151
  %.not.i2.i.i.i = icmp ult i32 %i.bo, %i.bp
  br i1 %.not.i2.i.i.i, label %bb.s, label %bb.r, !prof !138

bb.r:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseIjLb1EE9push_backEj.exit.i.i.i
  tail call void @_ZN4llvm23SmallVectorTemplateBaseIjLb1EE15growAndPushBackEj(ptr noundef nonnull align 8 dereferenceable(144) %1, i32 noundef 0)
  br label %_ZN12_GLOBAL__N_114profileAttrArgIbEENSt9enable_ifIXoooooooooosr3stdE9is_same_vIT_N4llvm9StringRefEEsr3stdE9is_same_vIS2_NS3_12VersionTupleEEsr3stdE9is_same_vIS2_PN5clang14IdentifierInfoEEsr3stdE9is_same_vIS2_PKS7_Esr3stdE9is_enum_vIS2_Esr3stdE13is_integral_vIS2_EEvE4typeERNS3_16FoldingSetNodeIDERKNS6_10ASTContextES2_.exit

bb.s:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseIjLb1EE9push_backEj.exit.i.i.i
  %i.bq = zext i32 %i.bo to i64
  %i.br = load ptr, ptr %1, align 8, !tbaa !87
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %i.br, i64 %i.bq
  store i32 0, ptr %i.bs, align 1
  %i.bt = load i32, ptr %i.e, align 8, !tbaa !88
  %i.bu = add i32 %i.bt, 1
  store i32 %i.bu, ptr %i.e, align 8, !tbaa !88
  br label %_ZN12_GLOBAL__N_114profileAttrArgIbEENSt9enable_ifIXoooooooooosr3stdE9is_same_vIT_N4llvm9StringRefEEsr3stdE9is_same_vIS2_NS3_12VersionTupleEEsr3stdE9is_same_vIS2_PN5clang14IdentifierInfoEEsr3stdE9is_same_vIS2_PKS7_Esr3stdE9is_enum_vIS2_Esr3stdE13is_integral_vIS2_EEvE4typeERNS3_16FoldingSetNodeIDERKNS6_10ASTContextES2_.exit

_ZN12_GLOBAL__N_114profileAttrArgIbEENSt9enable_ifIXoooooooooosr3stdE9is_same_vIT_N4llvm9StringRefEEsr3stdE9is_same_vIS2_NS3_12VersionTupleEEsr3stdE9is_same_vIS2_PN5clang14IdentifierInfoEEsr3stdE9is_same_vIS2_PKS7_Esr3stdE9is_enum_vIS2_Esr3stdE13is_integral_vIS2_EEvE4typeERNS3_16FoldingSetNodeIDERKNS6_10ASTContextES2_.exit: ; preds = %bb.r, %bb.s
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef nonnull ptr @_ZNK5clang23ArgumentWithTypeTagAttr5cloneERNS_10ASTContextE(ptr noundef nonnull align 8 dereferenceable(57) %0, ptr noundef nonnull align 8 dereferenceable(23904) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 2632 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !136  ; 2 uses
  %i.c = ptrtoint ptr %i.b to i64
  %i.d = add i64 %i.c, 64                         ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 2640
  %i.f = load i64, ptr %i.e, align 8, !tbaa !137
  %i.g = icmp ult i64 %i.d, %i.f
  br i1 %i.g, label %bb.b, label %bb.c, !prof !138

bb.b:                                             ; preds = %bb.a
  %i.h = inttoptr i64 %i.d to ptr
  store ptr %i.h, ptr %i.a, align 8, !tbaa !136
  br label %_ZN5clang4AttrnwEmRNS_10ASTContextEm.exit

bb.c:                                             ; preds = %bb.a
  %i.i = tail call noundef nonnull ptr @_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE12AllocateSlowEmmNS_5AlignE(ptr noundef nonnull align 8 dereferenceable(80) %i.a, i64 noundef 64, i64 noundef 64, i8 3)
  br label %_ZN5clang4AttrnwEmRNS_10ASTContextEm.exit

_ZN5clang4AttrnwEmRNS_10ASTContextEm.exit:        ; preds = %bb.b, %bb.c
  %.0.i.i.i.i.i = phi ptr [ %i.b, %bb.b ], [ %i.i, %bb.c ] ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.i.i.i.i.i) ]
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !213
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.sroa.01.0.copyload = load i32, ptr %i.l, align 8, !tbaa !30
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 52
  %.sroa.0.0.copyload = load i32, ptr %i.m, align 4, !tbaa !30
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.o = load i8, ptr %i.n, align 8, !tbaa !214, !range !83, !noundef !84
  %i.p = trunc nuw i8 %i.o to i1
  tail call void @_ZN5clang23ArgumentWithTypeTagAttrC1ERNS_10ASTContextERKNS_19AttributeCommonInfoEPKNS_14IdentifierInfoENS_8ParamIdxES9_b(ptr noundef nonnull align 8 dereferenceable(57) %.0.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(23904) %1, ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef %i.k, i32 %.sroa.01.0.copyload, i32 %.sroa.0.0.copyload, i1 noundef zeroext %i.p) #20
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 38 ; 3 uses
  %i.r = load i8, ptr %i.q, align 2
  %i.s = and i8 %i.r, 1
  %i.t = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i, i64 38 ; 4 uses
  %i.u = load i8, ptr %i.t, align 2
  %i.v = and i8 %i.u, -2
  %i.w = or disjoint i8 %i.v, %i.s                ; 2 uses
  store i8 %i.w, ptr %i.t, align 2
  %i.x = load i8, ptr %i.q, align 2
  %i.y = and i8 %i.x, 2
  %i.z = and i8 %i.w, -3
  %i.aa = or disjoint i8 %i.z, %i.y               ; 2 uses
  store i8 %i.aa, ptr %i.t, align 2
  %i.ab = load i8, ptr %i.q, align 2
  %i.ac = and i8 %i.ab, 4
  %i.ad = and i8 %i.aa, -5
  %i.ae = or disjoint i8 %i.ad, %i.ac
  store i8 %i.ae, ptr %i.t, align 2
  ret ptr %.0.i.i.i.i.i
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZNK5clang23ArgumentWithTypeTagAttr11printPrettyERN4llvm11raw_ostreamERKNS_14PrintingPolicyE(ptr noundef nonnull align 8 dereferenceable(57) %0, ptr noundef nonnull align 8 dereferenceable(48) %1, ptr nofree nonnull readnone align 8 captures(none) %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i32, ptr %i.a, align 8              ; 2 uses
  %i.c = and i32 %i.b, 15728640
  %.not.i = icmp eq i32 %i.c, 15728640
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = lshr i32 %i.b, 20
  %i.e = and i32 %i.d, 15
  br label %_ZNK5clang19AttributeCommonInfo29getAttributeSpellingListIndexEv.exit

bb.c:                                             ; preds = %bb.a
  %i.f = tail call noundef i32 @_ZNK5clang19AttributeCommonInfo35calculateAttributeSpellingListIndexEv(ptr noundef nonnull align 8 dereferenceable(36) %0) #20
  br label %_ZNK5clang19AttributeCommonInfo29getAttributeSpellingListIndexEv.exit

_ZNK5clang19AttributeCommonInfo29getAttributeSpellingListIndexEv.exit: ; preds = %bb.b, %bb.c
  %i.g = phi i32 [ %i.e, %bb.b ], [ %i.f, %bb.c ]
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 37 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !29
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 127 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !28   ; 7 uses
  %i.l = ptrtoint ptr %i.i to i64
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = sub i64 %i.l, %i.m                       ; 6 uses
  switch i32 %i.g, label %bb.d [
    i32 0, label %bb.e
    i32 1, label %bb.v
    i32 2, label %bb.am
    i32 3, label %bb.bd
    i32 4, label %bb.bu
    i32 5, label %bb.cl
  ]

bb.d:                                             ; preds = %_ZNK5clang19AttributeCommonInfo29getAttributeSpellingListIndexEv.exit
  unreachable

bb.e:                                             ; preds = %_ZNK5clang19AttributeCommonInfo29getAttributeSpellingListIndexEv.exit
  %i.o = icmp ult i64 %i.n, 37
  br i1 %i.o, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.p = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull @.str.139, i64 noundef 37) #20 ; 0 uses
  %.pre332 = load ptr, ptr %i.j, align 8, !tbaa !28
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit

bb.g:                                             ; preds = %bb.e
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(37) %i.k, ptr noundef nonnull align 1 dereferenceable(37) @.str.139, i64 37, i1 false)
  %i.q = load ptr, ptr %i.j, align 8, !tbaa !28
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 37 ; 2 uses
  store ptr %i.r, ptr %i.j, align 8, !tbaa !28
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit

_ZN4llvm11raw_ostreamlsEPKc.exit:                 ; preds = %bb.g, %bb.f
  %i.s = phi ptr [ %i.r, %bb.g ], [ %.pre332, %bb.f ] ; 2 uses
  %i.t = load ptr, ptr %i.h, align 8, !tbaa !29
  %i.u = icmp eq ptr %i.t, %i.s
  br i1 %i.u, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit
  %i.v = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull @.str, i64 noundef 1) #20 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit62

bb.i:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit
  store i8 40, ptr %i.s, align 1
  %i.w = load ptr, ptr %i.j, align 8, !tbaa !28
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 1
  store ptr %i.x, ptr %i.j, align 8, !tbaa !28
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit62

_ZN4llvm11raw_ostreamlsEPKc.exit62:               ; preds = %bb.h, %bb.i
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !213  ; 2 uses
  %.not59 = icmp eq ptr %i.z, null
  br i1 %.not59, label %.thread356, label %bb.j

end_hunk_2
begin_hunk_3_@_ZN5clang13FormatArgAttr6CreateERNS_10ASTContextENS_8ParamIdxERKNS_19AttributeCommonInfoE:bb.a

bb.e:                                             ; preds = %bb.d
  %i.n = and i32 %i.k, -15728641
  store i32 %i.n, ptr %i.j, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %_ZN5clang4AttrnwEmRNS_10ASTContextEm.exit
  ret ptr %.0.i.i.i.i.i
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef nonnull ptr @_ZN5clang13FormatArgAttr14CreateImplicitERNS_10ASTContextENS_8ParamIdxENS_11SourceRangeENS0_8SpellingE(ptr noundef nonnull align 8 dereferenceable(23904) %0, i32 %1, i64 %2, i32 noundef %3) local_unnamed_addr #0 align 2 {
bb.a:
  %4 = alloca %"class.clang::AttributeCommonInfo", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %4, i8 0, i64 24, i1 false)
  store i64 %2, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 2 uses
  %i.c = load i32, ptr %i.b, align 8
  %i.d = and i32 %i.c, -67108864
  %switch.offset.i = mul i32 %3, 1114112
  %.sroa.01.0.insert.ext = add i32 %switch.offset.i, 65536
  %i.e = and i32 %.sroa.01.0.insert.ext, 67043328
  %i.f = or disjoint i32 %i.e, %i.d
  %i.g = or disjoint i32 %i.f, 443
  store i32 %i.g, ptr %i.b, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 2632 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !136  ; 3 uses
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = add i64 %i.j, 48                         ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 2640
  %i.m = load i64, ptr %i.l, align 8, !tbaa !137
  %i.n = icmp ult i64 %i.k, %i.m
  br i1 %i.n, label %_ZN5clang4AttrnwEmRNS_10ASTContextEm.exit.i, label %_ZN5clang4AttrnwEmRNS_10ASTContextEm.exit.thread.i, !prof !138

_ZN5clang4AttrnwEmRNS_10ASTContextEm.exit.thread.i: ; preds = %bb.a
  %i.o = tail call noundef nonnull ptr @_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE12AllocateSlowEmmNS_5AlignE(ptr noundef nonnull align 8 dereferenceable(80) %i.h, i64 noundef 48, i64 noundef 48, i8 3)
  br label %bb.b

_ZN5clang4AttrnwEmRNS_10ASTContextEm.exit.i:      ; preds = %bb.a
  %i.p = inttoptr i64 %i.k to ptr
  store ptr %i.p, ptr %i.h, align 8, !tbaa !136
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.i) ]
  br label %bb.b

bb.b:                                             ; preds = %_ZN5clang4AttrnwEmRNS_10ASTContextEm.exit.i, %_ZN5clang4AttrnwEmRNS_10ASTContextEm.exit.thread.i
  %.0.i.i.i.i.i10.i = phi ptr [ %i.o, %_ZN5clang4AttrnwEmRNS_10ASTContextEm.exit.thread.i ], [ %i.i, %_ZN5clang4AttrnwEmRNS_10ASTContextEm.exit.i ] ; 5 uses
  call void @_ZN5clang13FormatArgAttrC1ERNS_10ASTContextERKNS_19AttributeCommonInfoENS_8ParamIdxE(ptr noundef nonnull align 8 dereferenceable(44) %.0.i.i.i.i.i10.i, ptr noundef nonnull align 8 dereferenceable(23904) %0, ptr noundef nonnull align 8 dereferenceable(36) %4, i32 %1) #20
  %i.q = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i10.i, i64 38 ; 2 uses
  %i.r = load i8, ptr %i.q, align 2
  %i.s = or i8 %i.r, 4
  store i8 %i.s, ptr %i.q, align 2
  %i.t = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i10.i, i64 32 ; 2 uses
  %i.u = load i32, ptr %i.t, align 8              ; 2 uses
  %i.v = and i32 %i.u, 15728640
  %.not11.i = icmp eq i32 %i.v, 15728640
  br i1 %.not11.i, label %bb.c, label %_ZN5clang13FormatArgAttr14CreateImplicitERNS_10ASTContextENS_8ParamIdxERKNS_19AttributeCommonInfoE.exit

bb.c:                                             ; preds = %bb.b
  %i.w = load ptr, ptr %.0.i.i.i.i.i10.i, align 8, !tbaa !139
  %.not.i = icmp eq ptr %i.w, null
  br i1 %.not.i, label %bb.d, label %_ZN5clang13FormatArgAttr14CreateImplicitERNS_10ASTContextENS_8ParamIdxERKNS_19AttributeCommonInfoE.exit

bb.d:                                             ; preds = %bb.c
  %i.x = and i32 %i.u, -15728641
  store i32 %i.x, ptr %i.t, align 8
  br label %_ZN5clang13FormatArgAttr14CreateImplicitERNS_10ASTContextENS_8ParamIdxERKNS_19AttributeCommonInfoE.exit

_ZN5clang13FormatArgAttr14CreateImplicitERNS_10ASTContextENS_8ParamIdxERKNS_19AttributeCommonInfoE.exit: ; preds = %bb.b, %bb.c, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  ret ptr %.0.i.i.i.i.i10.i
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef nonnull ptr @_ZN5clang13FormatArgAttr6CreateERNS_10ASTContextENS_8ParamIdxENS_11SourceRangeENS0_8SpellingE(ptr noundef nonnull align 8 dereferenceable(23904) %0, i32 %1, i64 %2, i32 noundef %3) local_unnamed_addr #0 align 2 {
bb.a:
  %4 = alloca %"class.clang::AttributeCommonInfo", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %4, i8 0, i64 24, i1 false)
  store i64 %2, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 2 uses
  %i.c = load i32, ptr %i.b, align 8
  %i.d = and i32 %i.c, -67108864
  %switch.offset.i = mul i32 %3, 1114112
  %.sroa.01.0.insert.ext = add i32 %switch.offset.i, 65536
  %i.e = and i32 %.sroa.01.0.insert.ext, 67043328
  %i.f = or disjoint i32 %i.e, %i.d
  %i.g = or disjoint i32 %i.f, 443
  store i32 %i.g, ptr %i.b, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 2632 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !136  ; 2 uses
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = add i64 %i.j, 48                         ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 2640
  %i.m = load i64, ptr %i.l, align 8, !tbaa !137
  %i.n = icmp ult i64 %i.k, %i.m
  br i1 %i.n, label %bb.b, label %bb.c, !prof !138

bb.b:                                             ; preds = %bb.a
  %i.o = inttoptr i64 %i.k to ptr
  store ptr %i.o, ptr %i.h, align 8, !tbaa !136
  br label %_ZN5clang4AttrnwEmRNS_10ASTContextEm.exit.i

bb.c:                                             ; preds = %bb.a
  %i.p = tail call noundef nonnull ptr @_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE12AllocateSlowEmmNS_5AlignE(ptr noundef nonnull align 8 dereferenceable(80) %i.h, i64 noundef 48, i64 noundef 48, i8 3)
  br label %_ZN5clang4AttrnwEmRNS_10ASTContextEm.exit.i

_ZN5clang4AttrnwEmRNS_10ASTContextEm.exit.i:      ; preds = %bb.c, %bb.b
  %.0.i.i.i.i.i.i = phi ptr [ %i.i, %bb.b ], [ %i.p, %bb.c ] ; 5 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.i.i.i.i.i.i) ]
  call void @_ZN5clang13FormatArgAttrC1ERNS_10ASTContextERKNS_19AttributeCommonInfoENS_8ParamIdxE(ptr noundef nonnull align 8 dereferenceable(44) %.0.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(23904) %0, ptr noundef nonnull align 8 dereferenceable(36) %4, i32 %1) #20
  %i.q = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i.i, i64 32 ; 2 uses
  %i.r = load i32, ptr %i.q, align 8              ; 2 uses
  %i.s = and i32 %i.r, 15728640
  %.not8.i = icmp eq i32 %i.s, 15728640
  br i1 %.not8.i, label %bb.d, label %_ZN5clang13FormatArgAttr6CreateERNS_10ASTContextENS_8ParamIdxERKNS_19AttributeCommonInfoE.exit

bb.d:                                             ; preds = %_ZN5clang4AttrnwEmRNS_10ASTContextEm.exit.i
  %i.t = load ptr, ptr %.0.i.i.i.i.i.i, align 8, !tbaa !139
  %.not.i = icmp eq ptr %i.t, null
  br i1 %.not.i, label %bb.e, label %_ZN5clang13FormatArgAttr6CreateERNS_10ASTContextENS_8ParamIdxERKNS_19AttributeCommonInfoE.exit

bb.e:                                             ; preds = %bb.d
  %i.u = and i32 %i.r, -15728641
  store i32 %i.u, ptr %i.q, align 8
  br label %_ZN5clang13FormatArgAttr6CreateERNS_10ASTContextENS_8ParamIdxERKNS_19AttributeCommonInfoE.exit

_ZN5clang13FormatArgAttr6CreateERNS_10ASTContextENS_8ParamIdxERKNS_19AttributeCommonInfoE.exit: ; preds = %_ZN5clang4AttrnwEmRNS_10ASTContextEm.exit.i, %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  ret ptr %.0.i.i.i.i.i.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @_ZN5clang13FormatArgAttrC2ERNS_10ASTContextERKNS_19AttributeCommonInfoENS_8ParamIdxE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(44) initializes((0, 38), (40, 44)) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(36) %2, i32 %3) unnamed_addr #6 align 2 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(39) %0, ptr noundef nonnull align 8 dereferenceable(36) %2, i64 36, i1 false), !tbaa.struct !141
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i16 230, ptr %i.a, align 4
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 38 ; 2 uses
  %i.c = load i8, ptr %i.b, align 2
  %i.d = and i8 %i.c, -32
  store i8 %i.d, ptr %i.b, align 2
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 %3, ptr %i.e, align 8, !tbaa !30
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef zeroext i1 @_ZNK5clang13FormatArgAttr12isEquivalentERKS0_RNS_28StructuralEquivalenceContextE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(44) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(44) %1, ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(145) %2) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.sroa.0.0.copyload.i = load i32, ptr %i.a, align 8, !tbaa !30 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.sroa.0.0.copyload.i5 = load i32, ptr %i.b, align 8, !tbaa !30
  %i.c = icmp sgt i32 %.sroa.0.0.copyload.i, -1
  %i.d = xor i32 %.sroa.0.0.copyload.i5, %.sroa.0.0.copyload.i ; 2 uses
  %i.e = icmp slt i32 %i.d, 0                     ; 2 uses
  %brmerge.i = or i1 %i.c, %i.e
  %not..i = xor i1 %i.e, true
  %i.f = and i32 %i.d, 1073741823
  %i.g = icmp eq i32 %i.f, 0
  %.0.i = select i1 %brmerge.i, i1 %not..i, i1 %i.g
  ret i1 %.0.i
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZNK5clang13FormatArgAttr7ProfileERN4llvm16FoldingSetNodeIDERKNS_10ASTContextE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(44) %0, ptr noundef nonnull align 8 dereferenceable(144) %1, ptr nofree nonnull readnone align 8 captures(none) %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.sroa.0.0.copyload.i = load i32, ptr %i.a, align 8, !tbaa !30 ; 4 uses
  %i.b = icmp slt i32 %.sroa.0.0.copyload.i, 0
  %.lobit.i = lshr i32 %.sroa.0.0.copyload.i, 31  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 6 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !88   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
  %i.f = load i32, ptr %i.e, align 4, !tbaa !151
  %.not.i.i.i.i.i = icmp ult i32 %i.d, %i.f
  br i1 %.not.i.i.i.i.i, label %bb.c, label %bb.b, !prof !138

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4llvm23SmallVectorTemplateBaseIjLb1EE15growAndPushBackEj(ptr noundef nonnull align 8 dereferenceable(144) %1, i32 noundef %.lobit.i)
  br label %_ZN4llvm16FoldingSetNodeID10AddBooleanEb.exit.i

bb.c:                                             ; preds = %bb.a
  %i.g = zext i32 %i.d to i64
  %i.h = load ptr, ptr %1, align 8, !tbaa !87
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.g
  store i32 %.lobit.i, ptr %i.i, align 1
  %i.j = load i32, ptr %i.c, align 8, !tbaa !88
  %i.k = add i32 %i.j, 1
  store i32 %i.k, ptr %i.c, align 8, !tbaa !88
  br label %_ZN4llvm16FoldingSetNodeID10AddBooleanEb.exit.i

_ZN4llvm16FoldingSetNodeID10AddBooleanEb.exit.i:  ; preds = %bb.c, %bb.b
  br i1 %i.b, label %bb.d, label %_ZN12_GLOBAL__N_114profileAttrArgIN5clang8ParamIdxEEENSt9enable_ifIXntoooooooooosr3stdE9is_same_vIT_N4llvm9StringRefEEsr3stdE9is_same_vIS4_NS5_12VersionTupleEEsr3stdE9is_same_vIS4_PNS1_14IdentifierInfoEEsr3stdE9is_same_vIS4_PKS8_Esr3stdE9is_enum_vIS4_Esr3stdE13is_integral_vIS4_EEvE4typeERNS5_16FoldingSetNodeIDERKNS1_10ASTContextES4_.exit

bb.d:                                             ; preds = %_ZN4llvm16FoldingSetNodeID10AddBooleanEb.exit.i
  %i.l = and i32 %.sroa.0.0.copyload.i, 1073741823
  %3 = lshr i32 %.sroa.0.0.copyload.i, 30
  %4 = and i32 %3, 1
  %5 = xor i32 %4, -1
  %i.m = add nsw i32 %i.l, %5                     ; 2 uses
  %i.n = load i32, ptr %i.c, align 8, !tbaa !88   ; 2 uses
  %i.o = load i32, ptr %i.e, align 4, !tbaa !151
  %.not.i.i.i.i = icmp ult i32 %i.n, %i.o
  br i1 %.not.i.i.i.i, label %bb.f, label %bb.e, !prof !138

bb.e:                                             ; preds = %bb.d
  tail call void @_ZN4llvm23SmallVectorTemplateBaseIjLb1EE15growAndPushBackEj(ptr noundef nonnull align 8 dereferenceable(144) %1, i32 noundef %i.m)
  br label %_ZN12_GLOBAL__N_114profileAttrArgIN5clang8ParamIdxEEENSt9enable_ifIXntoooooooooosr3stdE9is_same_vIT_N4llvm9StringRefEEsr3stdE9is_same_vIS4_NS5_12VersionTupleEEsr3stdE9is_same_vIS4_PNS1_14IdentifierInfoEEsr3stdE9is_same_vIS4_PKS8_Esr3stdE9is_enum_vIS4_Esr3stdE13is_integral_vIS4_EEvE4typeERNS5_16FoldingSetNodeIDERKNS1_10ASTContextES4_.exit

bb.f:                                             ; preds = %bb.d
  %i.p = zext i32 %i.n to i64
  %i.q = load ptr, ptr %1, align 8, !tbaa !87
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.p
  store i32 %i.m, ptr %i.r, align 1
  %i.s = load i32, ptr %i.c, align 8, !tbaa !88
  %i.t = add i32 %i.s, 1
  store i32 %i.t, ptr %i.c, align 8, !tbaa !88
  br label %_ZN12_GLOBAL__N_114profileAttrArgIN5clang8ParamIdxEEENSt9enable_ifIXntoooooooooosr3stdE9is_same_vIT_N4llvm9StringRefEEsr3stdE9is_same_vIS4_NS5_12VersionTupleEEsr3stdE9is_same_vIS4_PNS1_14IdentifierInfoEEsr3stdE9is_same_vIS4_PKS8_Esr3stdE9is_enum_vIS4_Esr3stdE13is_integral_vIS4_EEvE4typeERNS5_16FoldingSetNodeIDERKNS1_10ASTContextES4_.exit

_ZN12_GLOBAL__N_114profileAttrArgIN5clang8ParamIdxEEENSt9enable_ifIXntoooooooooosr3stdE9is_same_vIT_N4llvm9StringRefEEsr3stdE9is_same_vIS4_NS5_12VersionTupleEEsr3stdE9is_same_vIS4_PNS1_14IdentifierInfoEEsr3stdE9is_same_vIS4_PKS8_Esr3stdE9is_enum_vIS4_Esr3stdE13is_integral_vIS4_EEvE4typeERNS5_16FoldingSetNodeIDERKNS1_10ASTContextES4_.exit: ; preds = %_ZN4llvm16FoldingSetNodeID10AddBooleanEb.exit.i, %bb.e, %bb.f
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef nonnull ptr @_ZNK5clang13FormatArgAttr5cloneERNS_10ASTContextE(ptr noundef nonnull align 8 dereferenceable(44) %0, ptr noundef nonnull align 8 dereferenceable(23904) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 2632 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !136  ; 2 uses
  %i.c = ptrtoint ptr %i.b to i64
  %i.d = add i64 %i.c, 48                         ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 2640
  %i.f = load i64, ptr %i.e, align 8, !tbaa !137
  %i.g = icmp ult i64 %i.d, %i.f
  br i1 %i.g, label %bb.b, label %bb.c, !prof !138

bb.b:                                             ; preds = %bb.a
  %i.h = inttoptr i64 %i.d to ptr
  store ptr %i.h, ptr %i.a, align 8, !tbaa !136
  br label %_ZN5clang4AttrnwEmRNS_10ASTContextEm.exit

bb.c:                                             ; preds = %bb.a
  %i.i = tail call noundef nonnull ptr @_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE12AllocateSlowEmmNS_5AlignE(ptr noundef nonnull align 8 dereferenceable(80) %i.a, i64 noundef 48, i64 noundef 48, i8 3)
  br label %_ZN5clang4AttrnwEmRNS_10ASTContextEm.exit

_ZN5clang4AttrnwEmRNS_10ASTContextEm.exit:        ; preds = %bb.b, %bb.c
  %.0.i.i.i.i.i = phi ptr [ %i.b, %bb.b ], [ %i.i, %bb.c ] ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.i.i.i.i.i) ]
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.sroa.0.0.copyload = load i32, ptr %i.j, align 8, !tbaa !30
  tail call void @_ZN5clang13FormatArgAttrC1ERNS_10ASTContextERKNS_19AttributeCommonInfoENS_8ParamIdxE(ptr noundef nonnull align 8 dereferenceable(44) %.0.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(23904) %1, ptr noundef nonnull align 8 dereferenceable(36) %0, i32 %.sroa.0.0.copyload) #20
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 38 ; 3 uses
  %i.l = load i8, ptr %i.k, align 2
  %i.m = and i8 %i.l, 1
  %i.n = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i, i64 38 ; 4 uses
  %i.o = load i8, ptr %i.n, align 2
  %i.p = and i8 %i.o, -2
  %i.q = or disjoint i8 %i.p, %i.m                ; 2 uses
  store i8 %i.q, ptr %i.n, align 2
  %i.r = load i8, ptr %i.k, align 2
  %i.s = and i8 %i.r, 2
  %i.t = and i8 %i.q, -3
  %i.u = or disjoint i8 %i.t, %i.s                ; 2 uses
  store i8 %i.u, ptr %i.n, align 2
  %i.v = load i8, ptr %i.k, align 2
  %i.w = and i8 %i.v, 4
  %i.x = and i8 %i.u, -5
  %i.y = or disjoint i8 %i.x, %i.w
  store i8 %i.y, ptr %i.n, align 2
  ret ptr %.0.i.i.i.i.i
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZNK5clang13FormatArgAttr11printPrettyERN4llvm11raw_ostreamERKNS_14PrintingPolicyE(ptr noundef nonnull align 8 dereferenceable(44) %0, ptr noundef nonnull align 8 dereferenceable(48) %1, ptr nofree nonnull readnone align 8 captures(none) %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i32, ptr %i.a, align 8              ; 2 uses
  %i.c = and i32 %i.b, 15728640
  %.not.i = icmp eq i32 %i.c, 15728640
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = lshr i32 %i.b, 20
  %i.e = and i32 %i.d, 15
  br label %_ZNK5clang19AttributeCommonInfo29getAttributeSpellingListIndexEv.exit

bb.c:                                             ; preds = %bb.a
  %i.f = tail call noundef i32 @_ZNK5clang19AttributeCommonInfo35calculateAttributeSpellingListIndexEv(ptr noundef nonnull align 8 dereferenceable(36) %0) #20
  br label %_ZNK5clang19AttributeCommonInfo29getAttributeSpellingListIndexEv.exit

_ZNK5clang19AttributeCommonInfo29getAttributeSpellingListIndexEv.exit: ; preds = %bb.b, %bb.c
  %i.g = phi i32 [ %i.e, %bb.b ], [ %i.f, %bb.c ]
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 10 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !29
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 34 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !28   ; 4 uses
  %i.l = ptrtoint ptr %i.i to i64
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = sub i64 %i.l, %i.m                       ; 3 uses
  switch i32 %i.g, label %bb.d [
    i32 0, label %bb.e
    i32 1, label %bb.n
    i32 2, label %bb.w
  ]

bb.d:                                             ; preds = %_ZNK5clang19AttributeCommonInfo29getAttributeSpellingListIndexEv.exit
  unreachable

bb.e:                                             ; preds = %_ZNK5clang19AttributeCommonInfo29getAttributeSpellingListIndexEv.exit
  %i.o = icmp ult i64 %i.n, 25
  br i1 %i.o, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.p = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull @.str.514, i64 noundef 25) #20 ; 0 uses
  %.pre72 = load ptr, ptr %i.j, align 8, !tbaa !28
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit

bb.g:                                             ; preds = %bb.e
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(25) %i.k, ptr noundef nonnull align 1 dereferenceable(25) @.str.514, i64 25, i1 false)
  %i.q = load ptr, ptr %i.j, align 8, !tbaa !28
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 25 ; 2 uses
  store ptr %i.r, ptr %i.j, align 8, !tbaa !28
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit

_ZN4llvm11raw_ostreamlsEPKc.exit:                 ; preds = %bb.g, %bb.f
  %i.s = phi ptr [ %i.r, %bb.g ], [ %.pre72, %bb.f ] ; 2 uses
  %i.t = load ptr, ptr %i.h, align 8, !tbaa !29
  %i.u = icmp eq ptr %i.t, %i.s
  br i1 %i.u, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit
  %i.v = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull @.str, i64 noundef 1) #20 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit18

bb.i:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit
  store i8 40, ptr %i.s, align 1
  %i.w = load ptr, ptr %i.j, align 8, !tbaa !28
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 1
  store ptr %i.x, ptr %i.j, align 8, !tbaa !28
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit18

_ZN4llvm11raw_ostreamlsEPKc.exit18:               ; preds = %bb.h, %bb.i
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.sroa.0.0.copyload.i = load i32, ptr %i.y, align 8, !tbaa !30
  %i.z = and i32 %.sroa.0.0.copyload.i, 1073741823
  %i.aa = zext nneg i32 %i.z to i64
  %i.ab = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsEm(ptr noundef nonnull align 8 dereferenceable(48) %1, i64 noundef %i.aa) #20 ; 0 uses
  %i.ac = load ptr, ptr %i.h, align 8, !tbaa !29
  %i.ad = load ptr, ptr %i.j, align 8, !tbaa !28  ; 2 uses
  %i.ae = icmp eq ptr %i.ac, %i.ad
  br i1 %i.ae, label %bb.j, label %bb.k

bb.j:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit18
  %i.af = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull @.str.9, i64 noundef 1) #20 ; 0 uses
  %.pre73 = load ptr, ptr %i.j, align 8, !tbaa !28
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit24

bb.k:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit18
  store i8 41, ptr %i.ad, align 1
  %i.ag = load ptr, ptr %i.j, align 8, !tbaa !28
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 1 ; 2 uses
  store ptr %i.ah, ptr %i.j, align 8, !tbaa !28
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit24

_ZN4llvm11raw_ostreamlsEPKc.exit24:               ; preds = %bb.k, %bb.j
  %i.ai = phi ptr [ %i.ah, %bb.k ], [ %.pre73, %bb.j ] ; 2 uses
  %i.aj = load ptr, ptr %i.h, align 8, !tbaa !29
  %i.ak = ptrtoint ptr %i.aj to i64
  %i.al = ptrtoint ptr %i.ai to i64
  %i.am = sub i64 %i.ak, %i.al
  %i.an = icmp ult i64 %i.am, 2
  br i1 %i.an, label %bb.l, label %bb.m

bb.l:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit24
  %i.ao = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull @.str.30, i64 noundef 2) #20 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit27

bb.m:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit24
  store i16 10537, ptr %i.ai, align 1
  %i.ap = load ptr, ptr %i.j, align 8, !tbaa !28
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 2
  store ptr %i.aq, ptr %i.j, align 8, !tbaa !28
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit27

bb.n:                                             ; preds = %_ZNK5clang19AttributeCommonInfo29getAttributeSpellingListIndexEv.exit
  %i.ar = icmp ult i64 %i.n, 17
  br i1 %i.ar, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.as = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull @.str.515, i64 noundef 17) #20 ; 0 uses
  %.pre70 = load ptr, ptr %i.j, align 8, !tbaa !28
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit30

bb.p:                                             ; preds = %bb.n
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(17) %i.k, ptr noundef nonnull align 1 dereferenceable(17) @.str.515, i64 17, i1 false)
  %i.at = load ptr, ptr %i.j, align 8, !tbaa !28
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 17 ; 2 uses
  store ptr %i.au, ptr %i.j, align 8, !tbaa !28
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit30

_ZN4llvm11raw_ostreamlsEPKc.exit30:               ; preds = %bb.p, %bb.o
end_hunk_3
begin_hunk_4_@_ZN5clang11NonNullAttrC2ERNS_10ASTContextERKNS_19AttributeCommonInfoEPNS_8ParamIdxEj:bb.a

_ZnamRKN5clang10ASTContextEm.exit:                ; preds = %bb.b, %bb.c
  %.0.i.i.i.i = phi ptr [ %i.u, %bb.b ], [ %i.v, %bb.c ] ; 4 uses
  %i.w = icmp eq i32 %4, 0
  br i1 %i.w, label %.loopexit, label %.loopexit.loopexit

.loopexit.loopexit:                               ; preds = %_ZnamRKN5clang10ASTContextEm.exit
  tail call void @llvm.memset.p0.i64(ptr align 4 %.0.i.i.i.i, i8 0, i64 %i.h, i1 false)
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %_ZnamRKN5clang10ASTContextEm.exit
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %.0.i.i.i.i, ptr %i.x, align 8, !tbaa !527
  %i.y = load i32, ptr %i.f, align 8, !tbaa !526  ; 3 uses
  %i.z = icmp ugt i32 %i.y, 1
  br i1 %i.z, label %bb.d, label %bb.e, !prof !138

bb.d:                                             ; preds = %.loopexit
  %i.aa = zext i32 %i.y to i64
  %.idx = shl nuw nsw i64 %i.aa, 2
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %.0.i.i.i.i, ptr align 4 %3, i64 %.idx, i1 false)
  br label %_ZSt4copyIPN5clang8ParamIdxES2_ET0_T_S4_S3_.exit

bb.e:                                             ; preds = %.loopexit
  %i.ab = icmp eq i32 %i.y, 1
  br i1 %i.ab, label %bb.f, label %_ZSt4copyIPN5clang8ParamIdxES2_ET0_T_S4_S3_.exit

bb.f:                                             ; preds = %bb.e
  %i.ac = load i32, ptr %3, align 4, !tbaa !30
  store i32 %i.ac, ptr %.0.i.i.i.i, align 4, !tbaa !30
  br label %_ZSt4copyIPN5clang8ParamIdxES2_ET0_T_S4_S3_.exit

_ZSt4copyIPN5clang8ParamIdxES2_ET0_T_S4_S3_.exit: ; preds = %bb.d, %bb.e, %bb.f
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @_ZN5clang11NonNullAttrC2ERNS_10ASTContextERKNS_19AttributeCommonInfoE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(56) initializes((0, 38), (40, 44), (48, 56)) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(36) %2) unnamed_addr #6 align 2 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(39) %0, ptr noundef nonnull align 8 dereferenceable(36) %2, i64 36, i1 false), !tbaa.struct !141
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i16 109, ptr %i.a, align 4
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 38 ; 2 uses
  %i.c = load i8, ptr %i.b, align 2
  %i.d = and i8 %i.c, -32
  %i.e = or disjoint i8 %i.d, 16
  store i8 %i.e, ptr %i.b, align 2
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 0, ptr %i.f, align 8, !tbaa !526
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr null, ptr %i.g, align 8, !tbaa !527
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef zeroext i1 @_ZNK5clang11NonNullAttr12isEquivalentERKS0_RNS_28StructuralEquivalenceContextE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %1, ptr nofree nonnull readnone align 8 captures(none) %2) local_unnamed_addr #7 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !527  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load i32, ptr %i.c, align 8, !tbaa !526  ; 3 uses
  %i.e = zext i32 %i.d to i64
  %.idx = shl nuw nsw i64 %i.e, 2
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 %.idx
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.h = load i32, ptr %i.g, align 8, !tbaa !526
  %.not.i = icmp eq i32 %i.d, %i.h
  br i1 %.not.i, label %.preheader.i, label %_ZN12_GLOBAL__N_113equalAttrArgsIN5clang8ParamIdxEEEbPT_S4_S4_S4_RNS1_28StructuralEquivalenceContextE.exit

.preheader.i:                                     ; preds = %bb.a
  %.not151.i = icmp eq i32 %i.d, 0
  br i1 %.not151.i, label %_ZN12_GLOBAL__N_113equalAttrArgsIN5clang8ParamIdxEEEbPT_S4_S4_S4_RNS1_28StructuralEquivalenceContextE.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %.preheader.i
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !527
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.i.preheader
  %.0133.i = phi ptr [ %i.p, %.lr.ph.i ], [ %i.b, %.lr.ph.i.preheader ] ; 2 uses
  %.0142.i = phi ptr [ %i.q, %.lr.ph.i ], [ %i.j, %.lr.ph.i.preheader ] ; 2 uses
  %.sroa.01.0.copyload.i = load i32, ptr %.0133.i, align 4, !tbaa !30 ; 2 uses
  %.sroa.0.0.copyload.i = load i32, ptr %.0142.i, align 4, !tbaa !30
  %i.k = icmp sgt i32 %.sroa.01.0.copyload.i, -1
  %i.l = xor i32 %.sroa.0.0.copyload.i, %.sroa.01.0.copyload.i ; 2 uses
  %i.m = icmp slt i32 %i.l, 0                     ; 2 uses
  %brmerge.i.i = or i1 %i.k, %i.m
  %not..i.i = xor i1 %i.m, true
  %i.n = and i32 %i.l, 1073741823
  %i.o = icmp eq i32 %i.n, 0
  %.0.i.i = select i1 %brmerge.i.i, i1 %not..i.i, i1 %i.o ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.0133.i, i64 4 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.0142.i, i64 4
  %.not15.i = icmp ne ptr %i.p, %i.f
  %or.cond.not = select i1 %.0.i.i, i1 %.not15.i, i1 false
  br i1 %or.cond.not, label %.lr.ph.i, label %_ZN12_GLOBAL__N_113equalAttrArgsIN5clang8ParamIdxEEEbPT_S4_S4_S4_RNS1_28StructuralEquivalenceContextE.exit, !llvm.loop !10

_ZN12_GLOBAL__N_113equalAttrArgsIN5clang8ParamIdxEEEbPT_S4_S4_S4_RNS1_28StructuralEquivalenceContextE.exit: ; preds = %.lr.ph.i, %bb.a, %.preheader.i
  %.0.i = phi i1 [ false, %bb.a ], [ true, %.preheader.i ], [ %.0.i.i, %.lr.ph.i ]
  ret i1 %.0.i
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZNK5clang11NonNullAttr7ProfileERN4llvm16FoldingSetNodeIDERKNS_10ASTContextE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(144) %1, ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(23904) %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !527  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load i32, ptr %i.c, align 8, !tbaa !526
  %i.e = zext i32 %i.d to i64
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.e
  tail call fastcc void @_ZN12_GLOBAL__N_114profileAttrArgIN5clang8ParamIdxEEEvRN4llvm16FoldingSetNodeIDERKNS1_10ASTContextEPT_SA_(ptr noundef nonnull align 8 dereferenceable(144) %1, ptr noundef %i.b, ptr noundef %i.f)
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal fastcc void @_ZN12_GLOBAL__N_114profileAttrArgIN5clang8ParamIdxEEEvRN4llvm16FoldingSetNodeIDERKNS1_10ASTContextEPT_SA_(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #8 {
bb.a:
  %i.a = ptrtoint ptr %2 to i64
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.a, %i.b
  %i.d = ashr exact i64 %i.c, 2                   ; 2 uses
  %i.e = trunc i64 %i.d to i32                    ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 12 uses
  %i.g = load i32, ptr %i.f, align 8, !tbaa !88   ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 4 uses
  %i.i = load i32, ptr %i.h, align 4, !tbaa !151
  %.not.i.i.i = icmp ult i32 %i.g, %i.i
  br i1 %.not.i.i.i, label %bb.c, label %bb.b, !prof !138

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4llvm23SmallVectorTemplateBaseIjLb1EE15growAndPushBackEj(ptr noundef nonnull align 8 dereferenceable(144) %0, i32 noundef %i.e)
  %.pre.i.i = load i32, ptr %i.f, align 8, !tbaa !88
  br label %_ZN4llvm23SmallVectorTemplateBaseIjLb1EE9push_backEj.exit.i.i

bb.c:                                             ; preds = %bb.a
  %i.j = zext i32 %i.g to i64
  %i.k = load ptr, ptr %0, align 8, !tbaa !87
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.j
  store i32 %i.e, ptr %i.l, align 1
  %i.m = load i32, ptr %i.f, align 8, !tbaa !88
  %i.n = add i32 %i.m, 1                          ; 2 uses
  store i32 %i.n, ptr %i.f, align 8, !tbaa !88
  br label %_ZN4llvm23SmallVectorTemplateBaseIjLb1EE9push_backEj.exit.i.i

_ZN4llvm23SmallVectorTemplateBaseIjLb1EE9push_backEj.exit.i.i: ; preds = %bb.c, %bb.b
  %i.o = phi i32 [ %.pre.i.i, %bb.b ], [ %i.n, %bb.c ] ; 2 uses
  %i.p = lshr i64 %i.d, 32
  %i.q = trunc nuw i64 %i.p to i32                ; 2 uses
  %i.r = load i32, ptr %i.h, align 4, !tbaa !151
  %.not.i2.i.i = icmp ult i32 %i.o, %i.r
  br i1 %.not.i2.i.i, label %bb.e, label %bb.d, !prof !138

bb.d:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseIjLb1EE9push_backEj.exit.i.i
  tail call void @_ZN4llvm23SmallVectorTemplateBaseIjLb1EE15growAndPushBackEj(ptr noundef nonnull align 8 dereferenceable(144) %0, i32 noundef %i.q)
  br label %_ZN4llvm16FoldingSetNodeID10AddIntegerEl.exit

bb.e:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseIjLb1EE9push_backEj.exit.i.i
  %i.s = zext i32 %i.o to i64
  %i.t = load ptr, ptr %0, align 8, !tbaa !87
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %i.s
  store i32 %i.q, ptr %i.u, align 1
  %i.v = load i32, ptr %i.f, align 8, !tbaa !88
  %i.w = add i32 %i.v, 1
  store i32 %i.w, ptr %i.f, align 8, !tbaa !88
  br label %_ZN4llvm16FoldingSetNodeID10AddIntegerEl.exit

_ZN4llvm16FoldingSetNodeID10AddIntegerEl.exit:    ; preds = %bb.d, %bb.e
  %.not1 = icmp eq ptr %1, %2
  br i1 %.not1, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN4llvm16FoldingSetNodeID10AddIntegerEl.exit, %_ZN12_GLOBAL__N_114profileAttrArgIN5clang8ParamIdxEEENSt9enable_ifIXntoooooooooosr3stdE9is_same_vIT_N4llvm9StringRefEEsr3stdE9is_same_vIS4_NS5_12VersionTupleEEsr3stdE9is_same_vIS4_PNS1_14IdentifierInfoEEsr3stdE9is_same_vIS4_PKS8_Esr3stdE9is_enum_vIS4_Esr3stdE13is_integral_vIS4_EEvE4typeERNS5_16FoldingSetNodeIDERKNS1_10ASTContextES4_.exit
  %.02 = phi ptr [ %i.ao, %_ZN12_GLOBAL__N_114profileAttrArgIN5clang8ParamIdxEEENSt9enable_ifIXntoooooooooosr3stdE9is_same_vIT_N4llvm9StringRefEEsr3stdE9is_same_vIS4_NS5_12VersionTupleEEsr3stdE9is_same_vIS4_PNS1_14IdentifierInfoEEsr3stdE9is_same_vIS4_PKS8_Esr3stdE9is_enum_vIS4_Esr3stdE13is_integral_vIS4_EEvE4typeERNS5_16FoldingSetNodeIDERKNS1_10ASTContextES4_.exit ], [ %1, %_ZN4llvm16FoldingSetNodeID10AddIntegerEl.exit ] ; 2 uses
  %.sroa.0.0.copyload = load i32, ptr %.02, align 4, !tbaa !30 ; 4 uses
  %i.x = icmp slt i32 %.sroa.0.0.copyload, 0
  %.lobit.i = lshr i32 %.sroa.0.0.copyload, 31    ; 2 uses
  %i.y = load i32, ptr %i.f, align 8, !tbaa !88   ; 2 uses
  %i.z = load i32, ptr %i.h, align 4, !tbaa !151
  %.not.i.i.i.i.i = icmp ult i32 %i.y, %i.z
  br i1 %.not.i.i.i.i.i, label %bb.g, label %bb.f, !prof !138

bb.f:                                             ; preds = %.lr.ph
  tail call void @_ZN4llvm23SmallVectorTemplateBaseIjLb1EE15growAndPushBackEj(ptr noundef nonnull align 8 dereferenceable(144) %0, i32 noundef %.lobit.i)
  br label %_ZN4llvm16FoldingSetNodeID10AddBooleanEb.exit.i

bb.g:                                             ; preds = %.lr.ph
  %i.aa = zext i32 %i.y to i64
  %i.ab = load ptr, ptr %0, align 8, !tbaa !87
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %i.aa
  store i32 %.lobit.i, ptr %i.ac, align 1
  %i.ad = load i32, ptr %i.f, align 8, !tbaa !88
  %i.ae = add i32 %i.ad, 1
  store i32 %i.ae, ptr %i.f, align 8, !tbaa !88
  br label %_ZN4llvm16FoldingSetNodeID10AddBooleanEb.exit.i

_ZN4llvm16FoldingSetNodeID10AddBooleanEb.exit.i:  ; preds = %bb.g, %bb.f
  br i1 %i.x, label %bb.h, label %_ZN12_GLOBAL__N_114profileAttrArgIN5clang8ParamIdxEEENSt9enable_ifIXntoooooooooosr3stdE9is_same_vIT_N4llvm9StringRefEEsr3stdE9is_same_vIS4_NS5_12VersionTupleEEsr3stdE9is_same_vIS4_PNS1_14IdentifierInfoEEsr3stdE9is_same_vIS4_PKS8_Esr3stdE9is_enum_vIS4_Esr3stdE13is_integral_vIS4_EEvE4typeERNS5_16FoldingSetNodeIDERKNS1_10ASTContextES4_.exit

bb.h:                                             ; preds = %_ZN4llvm16FoldingSetNodeID10AddBooleanEb.exit.i
  %i.af = and i32 %.sroa.0.0.copyload, 1073741823
  %3 = lshr i32 %.sroa.0.0.copyload, 30
  %4 = and i32 %3, 1
  %5 = xor i32 %4, -1
  %i.ag = add nsw i32 %i.af, %5                   ; 2 uses
  %i.ah = load i32, ptr %i.f, align 8, !tbaa !88  ; 2 uses
  %i.ai = load i32, ptr %i.h, align 4, !tbaa !151
  %.not.i.i.i.i = icmp ult i32 %i.ah, %i.ai
  br i1 %.not.i.i.i.i, label %bb.j, label %bb.i, !prof !138

bb.i:                                             ; preds = %bb.h
  tail call void @_ZN4llvm23SmallVectorTemplateBaseIjLb1EE15growAndPushBackEj(ptr noundef nonnull align 8 dereferenceable(144) %0, i32 noundef %i.ag)
  br label %_ZN12_GLOBAL__N_114profileAttrArgIN5clang8ParamIdxEEENSt9enable_ifIXntoooooooooosr3stdE9is_same_vIT_N4llvm9StringRefEEsr3stdE9is_same_vIS4_NS5_12VersionTupleEEsr3stdE9is_same_vIS4_PNS1_14IdentifierInfoEEsr3stdE9is_same_vIS4_PKS8_Esr3stdE9is_enum_vIS4_Esr3stdE13is_integral_vIS4_EEvE4typeERNS5_16FoldingSetNodeIDERKNS1_10ASTContextES4_.exit

bb.j:                                             ; preds = %bb.h
  %i.aj = zext i32 %i.ah to i64
  %i.ak = load ptr, ptr %0, align 8, !tbaa !87
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %i.aj
  store i32 %i.ag, ptr %i.al, align 1
  %i.am = load i32, ptr %i.f, align 8, !tbaa !88
  %i.an = add i32 %i.am, 1
  store i32 %i.an, ptr %i.f, align 8, !tbaa !88
  br label %_ZN12_GLOBAL__N_114profileAttrArgIN5clang8ParamIdxEEENSt9enable_ifIXntoooooooooosr3stdE9is_same_vIT_N4llvm9StringRefEEsr3stdE9is_same_vIS4_NS5_12VersionTupleEEsr3stdE9is_same_vIS4_PNS1_14IdentifierInfoEEsr3stdE9is_same_vIS4_PKS8_Esr3stdE9is_enum_vIS4_Esr3stdE13is_integral_vIS4_EEvE4typeERNS5_16FoldingSetNodeIDERKNS1_10ASTContextES4_.exit

_ZN12_GLOBAL__N_114profileAttrArgIN5clang8ParamIdxEEENSt9enable_ifIXntoooooooooosr3stdE9is_same_vIT_N4llvm9StringRefEEsr3stdE9is_same_vIS4_NS5_12VersionTupleEEsr3stdE9is_same_vIS4_PNS1_14IdentifierInfoEEsr3stdE9is_same_vIS4_PKS8_Esr3stdE9is_enum_vIS4_Esr3stdE13is_integral_vIS4_EEvE4typeERNS5_16FoldingSetNodeIDERKNS1_10ASTContextES4_.exit: ; preds = %_ZN4llvm16FoldingSetNodeID10AddBooleanEb.exit.i, %bb.i, %bb.j
  %i.ao = getelementptr inbounds nuw i8, ptr %.02, i64 4 ; 2 uses
  %.not = icmp eq ptr %i.ao, %2
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !937

._crit_edge:                                      ; preds = %_ZN12_GLOBAL__N_114profileAttrArgIN5clang8ParamIdxEEENSt9enable_ifIXntoooooooooosr3stdE9is_same_vIT_N4llvm9StringRefEEsr3stdE9is_same_vIS4_NS5_12VersionTupleEEsr3stdE9is_same_vIS4_PNS1_14IdentifierInfoEEsr3stdE9is_same_vIS4_PKS8_Esr3stdE9is_enum_vIS4_Esr3stdE13is_integral_vIS4_EEvE4typeERNS5_16FoldingSetNodeIDERKNS1_10ASTContextES4_.exit, %_ZN4llvm16FoldingSetNodeID10AddIntegerEl.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef nonnull ptr @_ZNK5clang11NonNullAttr5cloneERNS_10ASTContextE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(23904) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 2632 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !136  ; 2 uses
  %i.c = ptrtoint ptr %i.b to i64
  %i.d = add i64 %i.c, 56                         ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 2640
  %i.f = load i64, ptr %i.e, align 8, !tbaa !137
  %i.g = icmp ult i64 %i.d, %i.f
  br i1 %i.g, label %bb.b, label %bb.c, !prof !138

bb.b:                                             ; preds = %bb.a
  %i.h = inttoptr i64 %i.d to ptr
  store ptr %i.h, ptr %i.a, align 8, !tbaa !136
  br label %_ZN5clang4AttrnwEmRNS_10ASTContextEm.exit

bb.c:                                             ; preds = %bb.a
  %i.i = tail call noundef nonnull ptr @_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE12AllocateSlowEmmNS_5AlignE(ptr noundef nonnull align 8 dereferenceable(80) %i.a, i64 noundef 56, i64 noundef 56, i8 3)
  br label %_ZN5clang4AttrnwEmRNS_10ASTContextEm.exit

_ZN5clang4AttrnwEmRNS_10ASTContextEm.exit:        ; preds = %bb.b, %bb.c
  %.0.i.i.i.i.i = phi ptr [ %i.b, %bb.b ], [ %i.i, %bb.c ] ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.i.i.i.i.i) ]
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !527
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.m = load i32, ptr %i.l, align 8, !tbaa !526
  tail call void @_ZN5clang11NonNullAttrC1ERNS_10ASTContextERKNS_19AttributeCommonInfoEPNS_8ParamIdxEj(ptr noundef nonnull align 8 dereferenceable(56) %.0.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(23904) %1, ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef %i.k, i32 noundef %i.m) #20
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 38 ; 3 uses
  %i.o = load i8, ptr %i.n, align 2
  %i.p = and i8 %i.o, 1
  %i.q = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i, i64 38 ; 4 uses
  %i.r = load i8, ptr %i.q, align 2
  %i.s = and i8 %i.r, -2
  %i.t = or disjoint i8 %i.s, %i.p                ; 2 uses
  store i8 %i.t, ptr %i.q, align 2
  %i.u = load i8, ptr %i.n, align 2
  %i.v = and i8 %i.u, 2
  %i.w = and i8 %i.t, -3
  %i.x = or disjoint i8 %i.w, %i.v                ; 2 uses
  store i8 %i.x, ptr %i.q, align 2
  %i.y = load i8, ptr %i.n, align 2
  %i.z = and i8 %i.y, 4
  %i.aa = and i8 %i.x, -5
  %i.ab = or disjoint i8 %i.aa, %i.z
  store i8 %i.ab, ptr %i.q, align 2
  ret ptr %.0.i.i.i.i.i
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZNK5clang11NonNullAttr11printPrettyERN4llvm11raw_ostreamERKNS_14PrintingPolicyE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(48) %1, ptr nofree nonnull readnone align 8 captures(none) %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i32, ptr %i.a, align 8              ; 2 uses
  %i.c = and i32 %i.b, 15728640
  %.not.i = icmp eq i32 %i.c, 15728640
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = lshr i32 %i.b, 20
  %i.e = and i32 %i.d, 15
  br label %_ZNK5clang19AttributeCommonInfo29getAttributeSpellingListIndexEv.exit

bb.c:                                             ; preds = %bb.a
  %i.f = tail call noundef i32 @_ZNK5clang19AttributeCommonInfo35calculateAttributeSpellingListIndexEv(ptr noundef nonnull align 8 dereferenceable(36) %0) #20
  br label %_ZNK5clang19AttributeCommonInfo29getAttributeSpellingListIndexEv.exit

_ZNK5clang19AttributeCommonInfo29getAttributeSpellingListIndexEv.exit: ; preds = %bb.b, %bb.c
  %i.g = phi i32 [ %i.e, %bb.b ], [ %i.f, %bb.c ]
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 13 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !29
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 43 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !28   ; 4 uses
  %i.l = ptrtoint ptr %i.i to i64
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = sub i64 %i.l, %i.m                       ; 3 uses
  switch i32 %i.g, label %bb.d [
    i32 0, label %bb.e
    i32 1, label %bb.q
    i32 2, label %bb.ac
  ]

bb.d:                                             ; preds = %_ZNK5clang19AttributeCommonInfo29getAttributeSpellingListIndexEv.exit
  unreachable

bb.e:                                             ; preds = %_ZNK5clang19AttributeCommonInfo29getAttributeSpellingListIndexEv.exit
  %i.o = icmp ult i64 %i.n, 22
  br i1 %i.o, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.p = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull @.str.889, i64 noundef 22) #20 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit49

bb.g:                                             ; preds = %bb.e
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(22) %i.k, ptr noundef nonnull align 1 dereferenceable(22) @.str.889, i64 22, i1 false)
  %i.q = load ptr, ptr %i.j, align 8, !tbaa !28
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 22
  store ptr %i.r, ptr %i.j, align 8, !tbaa !28
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit49

_ZN4llvm11raw_ostreamlsEPKc.exit49:               ; preds = %bb.f, %bb.g
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !527  ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.v = load i32, ptr %i.u, align 8, !tbaa !526  ; 3 uses
  %i.w = zext i32 %i.v to i64
  %.idx119 = shl nuw nsw i64 %i.w, 2
  %i.x = getelementptr inbounds nuw i8, ptr %i.t, i64 %.idx119
  %.not46113 = icmp eq i32 %i.v, 0
  br i1 %.not46113, label %_ZN4llvm11raw_ostreamlsEPKc.exit55, label %.lr.ph116.preheader

.lr.ph116.preheader:                              ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit49
  %i.y = load ptr, ptr %i.h, align 8, !tbaa !29
  %i.z = load ptr, ptr %i.j, align 8, !tbaa !28   ; 2 uses
  %i.aa = icmp eq ptr %i.y, %i.z
  br i1 %i.aa, label %bb.i, label %bb.h

bb.h:                                             ; preds = %.lr.ph116.preheader
  store i8 40, ptr %i.z, align 1
  %i.ab = load ptr, ptr %i.j, align 8, !tbaa !28
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 1
  store ptr %i.ac, ptr %i.j, align 8, !tbaa !28
  br label %_ZN5clangL24DelimitAttributeArgumentERN4llvm11raw_ostreamERb.exit.peel

bb.i:                                             ; preds = %.lr.ph116.preheader
  %i.ad = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull @.str, i64 noundef 1) #20 ; 0 uses
  br label %_ZN5clangL24DelimitAttributeArgumentERN4llvm11raw_ostreamERb.exit.peel

_ZN5clangL24DelimitAttributeArgumentERN4llvm11raw_ostreamERb.exit.peel: ; preds = %bb.i, %bb.h
  %i.ae = load i32, ptr %i.t, align 4
  %i.af = and i32 %i.ae, 1073741823
  %i.ag = zext nneg i32 %i.af to i64
  %i.ah = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsEm(ptr noundef nonnull align 8 dereferenceable(48) %1, i64 noundef %i.ag) #20 ; 0 uses
  %.not46.peel = icmp eq i32 %i.v, 1
  br i1 %.not46.peel, label %_ZN4llvm11raw_ostreamlsEPKc.exit52, label %.lr.ph116.peel.next

.lr.ph116.peel.next:                              ; preds = %_ZN5clangL24DelimitAttributeArgumentERN4llvm11raw_ostreamERb.exit.peel
  %i.ai = getelementptr inbounds nuw i8, ptr %i.t, i64 4
  br label %bb.j

bb.j:                                             ; preds = %_ZN5clangL24DelimitAttributeArgumentERN4llvm11raw_ostreamERb.exit, %.lr.ph116.peel.next
  %.044115 = phi ptr [ %i.aw, %_ZN5clangL24DelimitAttributeArgumentERN4llvm11raw_ostreamERb.exit ], [ %i.ai, %.lr.ph116.peel.next ] ; 2 uses
  %i.aj = load ptr, ptr %i.h, align 8, !tbaa !29
  %i.ak = load ptr, ptr %i.j, align 8, !tbaa !28  ; 2 uses
  %i.al = ptrtoint ptr %i.aj to i64
  %i.am = ptrtoint ptr %i.ak to i64
  %i.an = sub i64 %i.al, %i.am
  %i.ao = icmp ult i64 %i.an, 2
  br i1 %i.ao, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ap = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull @.str.17, i64 noundef 2) #20 ; 0 uses
  br label %_ZN5clangL24DelimitAttributeArgumentERN4llvm11raw_ostreamERb.exit

bb.l:                                             ; preds = %bb.j
  store i16 8236, ptr %i.ak, align 1
  %i.aq = load ptr, ptr %i.j, align 8, !tbaa !28
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 2
  store ptr %i.ar, ptr %i.j, align 8, !tbaa !28
  br label %_ZN5clangL24DelimitAttributeArgumentERN4llvm11raw_ostreamERb.exit

_ZN5clangL24DelimitAttributeArgumentERN4llvm11raw_ostreamERb.exit: ; preds = %bb.k, %bb.l
  %i.as = load i32, ptr %.044115, align 4
  %i.at = and i32 %i.as, 1073741823
  %i.au = zext nneg i32 %i.at to i64
  %i.av = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsEm(ptr noundef nonnull align 8 dereferenceable(48) %1, i64 noundef %i.au) #20 ; 0 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.044115, i64 4 ; 2 uses
  %.not46 = icmp eq ptr %i.aw, %i.x
  br i1 %.not46, label %_ZN4llvm11raw_ostreamlsEPKc.exit52, label %bb.j, !llvm.loop !938

_ZN4llvm11raw_ostreamlsEPKc.exit52:               ; preds = %_ZN5clangL24DelimitAttributeArgumentERN4llvm11raw_ostreamERb.exit, %_ZN5clangL24DelimitAttributeArgumentERN4llvm11raw_ostreamERb.exit.peel
end_hunk_4
begin_hunk_5_@_ZN5clang12RestrictAttr6CreateERNS_10ASTContextEPNS_4ExprENS_8ParamIdxENS_11SourceRangeENS0_8SpellingE:switch.lookup
  %.0.i.i.i.i.i7.i = phi ptr [ %i.n, %_ZN5clang4AttrnwEmRNS_10ASTContextEm.exit.thread.i ], [ %i.h, %_ZN5clang4AttrnwEmRNS_10ASTContextEm.exit.i ] ; 2 uses
  call void @_ZN5clang12RestrictAttrC1ERNS_10ASTContextERKNS_19AttributeCommonInfoEPNS_4ExprENS_8ParamIdxE(ptr noundef nonnull align 8 dereferenceable(52) %.0.i.i.i.i.i7.i, ptr noundef nonnull align 8 dereferenceable(23904) %0, ptr noundef nonnull align 8 dereferenceable(36) %5, ptr noundef %1, i32 %2) #20
  br label %_ZN5clang12RestrictAttr6CreateERNS_10ASTContextEPNS_4ExprENS_8ParamIdxERKNS_19AttributeCommonInfoE.exit

_ZN5clang12RestrictAttr6CreateERNS_10ASTContextEPNS_4ExprENS_8ParamIdxERKNS_19AttributeCommonInfoE.exit: ; preds = %_ZN5clang4AttrnwEmRNS_10ASTContextEm.exit.i, %bb.a
  %i.q = phi ptr [ %.0.i.i.i.i.i7.i, %bb.a ], [ null, %_ZN5clang4AttrnwEmRNS_10ASTContextEm.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  ret ptr %i.q
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @_ZN5clang12RestrictAttrC2ERNS_10ASTContextERKNS_19AttributeCommonInfoEPNS_4ExprENS_8ParamIdxE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(52) initializes((0, 38), (40, 52)) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(36) %2, ptr noundef %3, i32 %4) unnamed_addr #6 align 2 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(39) %0, ptr noundef nonnull align 8 dereferenceable(36) %2, i64 36, i1 false), !tbaa.struct !141
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i16 369, ptr %i.a, align 4
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 38 ; 2 uses
  %i.c = load i8, ptr %i.b, align 2
  %i.d = and i8 %i.c, -32
  store i8 %i.d, ptr %i.b, align 2
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %3, ptr %i.e, align 8, !tbaa !643
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 %4, ptr %i.f, align 8, !tbaa !30
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @_ZN5clang12RestrictAttrC2ERNS_10ASTContextERKNS_19AttributeCommonInfoE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(52) initializes((0, 38), (40, 52)) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(36) %2) unnamed_addr #6 align 2 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(39) %0, ptr noundef nonnull align 8 dereferenceable(36) %2, i64 36, i1 false), !tbaa.struct !141
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i16 369, ptr %i.a, align 4
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 38 ; 2 uses
  %i.c = load i8, ptr %i.b, align 2
  %i.d = and i8 %i.c, -32
  store i8 %i.d, ptr %i.b, align 2
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr null, ptr %i.e, align 8, !tbaa !643
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 0, ptr %i.f, align 8
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef range(i32 0, 4) i32 @_ZNK5clang12RestrictAttr19getSemanticSpellingEv(ptr noundef nonnull align 8 dereferenceable(52) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i32, ptr %i.a, align 8              ; 2 uses
  %i.c = and i32 %i.b, 15728640
  %.not.i = icmp eq i32 %i.c, 15728640
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = lshr i32 %i.b, 20
  %i.e = and i32 %i.d, 15
  br label %_ZNK5clang19AttributeCommonInfo29getAttributeSpellingListIndexEv.exit

bb.c:                                             ; preds = %bb.a
  %i.f = tail call noundef i32 @_ZNK5clang19AttributeCommonInfo35calculateAttributeSpellingListIndexEv(ptr noundef nonnull align 8 dereferenceable(36) %0) #20
  br label %_ZNK5clang19AttributeCommonInfo29getAttributeSpellingListIndexEv.exit

_ZNK5clang19AttributeCommonInfo29getAttributeSpellingListIndexEv.exit: ; preds = %bb.b, %bb.c
  %i.g = phi i32 [ %i.e, %bb.b ], [ %i.f, %bb.c ]
  ret i32 %i.g
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZNK5clang12RestrictAttr12isEquivalentERKS0_RNS_28StructuralEquivalenceContextE(ptr noundef nonnull align 8 dereferenceable(52) %0, ptr noundef nonnull align 8 dereferenceable(52) %1, ptr noundef nonnull align 8 dereferenceable(145) %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i32, ptr %i.a, align 8              ; 2 uses
  %i.c = and i32 %i.b, 15728640
  %.not.i.i = icmp eq i32 %i.c, 15728640
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = lshr i32 %i.b, 20
  %i.e = and i32 %i.d, 15
  br label %_ZNK5clang12RestrictAttr11getSpellingEv.exit

bb.c:                                             ; preds = %bb.a
  %i.f = tail call noundef i32 @_ZNK5clang19AttributeCommonInfo35calculateAttributeSpellingListIndexEv(ptr noundef nonnull align 8 dereferenceable(52) %0) #20
  br label %_ZNK5clang12RestrictAttr11getSpellingEv.exit

_ZNK5clang12RestrictAttr11getSpellingEv.exit:     ; preds = %bb.b, %bb.c
  %i.g = phi i32 [ %i.e, %bb.b ], [ %i.f, %bb.c ]
  %i.h = icmp eq i32 %i.g, 0
  %.str.1211..str.1212.i = select i1 %i.h, ptr @.str.1211, ptr @.str.1212
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.j = load i32, ptr %i.i, align 8              ; 2 uses
  %i.k = and i32 %i.j, 15728640
  %.not.i.i8 = icmp eq i32 %i.k, 15728640
  br i1 %.not.i.i8, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZNK5clang12RestrictAttr11getSpellingEv.exit
  %i.l = lshr i32 %i.j, 20
  %i.m = and i32 %i.l, 15
  br label %_ZNK5clang12RestrictAttr11getSpellingEv.exit10

bb.e:                                             ; preds = %_ZNK5clang12RestrictAttr11getSpellingEv.exit
  %i.n = tail call noundef i32 @_ZNK5clang19AttributeCommonInfo35calculateAttributeSpellingListIndexEv(ptr noundef nonnull align 8 dereferenceable(52) %1) #20
  br label %_ZNK5clang12RestrictAttr11getSpellingEv.exit10

_ZNK5clang12RestrictAttr11getSpellingEv.exit10:   ; preds = %bb.d, %bb.e
  %i.o = phi i32 [ %i.m, %bb.d ], [ %i.n, %bb.e ]
  %i.p = icmp eq i32 %i.o, 0
  %.str.1211..str.1212.i9 = select i1 %i.p, ptr @.str.1211, ptr @.str.1212
  %.not = icmp eq ptr %.str.1211..str.1212.i, %.str.1211..str.1212.i9
  br i1 %.not, label %bb.f, label %bb.h

bb.f:                                             ; preds = %_ZNK5clang12RestrictAttr11getSpellingEv.exit10
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !643
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !643
  %i.u = tail call noundef zeroext i1 @_ZN5clang24ASTStructuralEquivalence12isEquivalentERNS_28StructuralEquivalenceContextEPKNS_4StmtES5_(ptr noundef nonnull align 8 dereferenceable(145) %2, ptr noundef %i.r, ptr noundef %i.t) #20
  br i1 %i.u, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.sroa.0.0.copyload.i = load i32, ptr %i.v, align 8, !tbaa !30 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.sroa.0.0.copyload.i11 = load i32, ptr %i.w, align 8, !tbaa !30
  %i.x = icmp sgt i32 %.sroa.0.0.copyload.i, -1
  %i.y = xor i32 %.sroa.0.0.copyload.i11, %.sroa.0.0.copyload.i ; 2 uses
  %i.z = icmp slt i32 %i.y, 0                     ; 2 uses
  %brmerge.i = or i1 %i.x, %i.z
  %not..i = xor i1 %i.z, true
  %i.aa = and i32 %i.y, 1073741823
  %i.ab = icmp eq i32 %i.aa, 0
  %.0.i = select i1 %brmerge.i, i1 %not..i, i1 %i.ab
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %_ZNK5clang12RestrictAttr11getSpellingEv.exit10
  %.0 = phi i1 [ false, %_ZNK5clang12RestrictAttr11getSpellingEv.exit10 ], [ false, %bb.f ], [ %.0.i, %bb.g ]
  ret i1 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef nonnull ptr @_ZNK5clang12RestrictAttr11getSpellingEv(ptr noundef nonnull align 8 dereferenceable(52) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i32, ptr %i.a, align 8              ; 2 uses
  %i.c = and i32 %i.b, 15728640
  %.not.i = icmp eq i32 %i.c, 15728640
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = lshr i32 %i.b, 20
  %i.e = and i32 %i.d, 15
  br label %_ZNK5clang19AttributeCommonInfo29getAttributeSpellingListIndexEv.exit

bb.c:                                             ; preds = %bb.a
  %i.f = tail call noundef i32 @_ZNK5clang19AttributeCommonInfo35calculateAttributeSpellingListIndexEv(ptr noundef nonnull align 8 dereferenceable(36) %0) #20
  br label %_ZNK5clang19AttributeCommonInfo29getAttributeSpellingListIndexEv.exit

_ZNK5clang19AttributeCommonInfo29getAttributeSpellingListIndexEv.exit: ; preds = %bb.b, %bb.c
  %i.g = phi i32 [ %i.e, %bb.b ], [ %i.f, %bb.c ]
  %i.h = icmp eq i32 %i.g, 0
  %.str.1211..str.1212 = select i1 %i.h, ptr @.str.1211, ptr @.str.1212
  ret ptr %.str.1211..str.1212
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZNK5clang12RestrictAttr7ProfileERN4llvm16FoldingSetNodeIDERKNS_10ASTContextE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(52) %0, ptr noundef nonnull align 8 dereferenceable(144) %1, ptr noundef nonnull align 8 dereferenceable(23904) %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !643
  tail call void @_ZNK5clang4Stmt7ProfileERN4llvm16FoldingSetNodeIDERKNS_10ASTContextEbb(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 8 dereferenceable(144) %1, ptr noundef nonnull align 8 dereferenceable(23904) %2, i1 noundef zeroext true, i1 noundef zeroext false) #20
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.sroa.0.0.copyload.i = load i32, ptr %i.c, align 8, !tbaa !30 ; 4 uses
  %i.d = icmp slt i32 %.sroa.0.0.copyload.i, 0
  %.lobit.i = lshr i32 %.sroa.0.0.copyload.i, 31  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 6 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !88   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !151
  %.not.i.i.i.i.i = icmp ult i32 %i.f, %i.h
  br i1 %.not.i.i.i.i.i, label %bb.c, label %bb.b, !prof !138

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4llvm23SmallVectorTemplateBaseIjLb1EE15growAndPushBackEj(ptr noundef nonnull align 8 dereferenceable(144) %1, i32 noundef %.lobit.i)
  br label %_ZN4llvm16FoldingSetNodeID10AddBooleanEb.exit.i

bb.c:                                             ; preds = %bb.a
  %i.i = zext i32 %i.f to i64
  %i.j = load ptr, ptr %1, align 8, !tbaa !87
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.i
  store i32 %.lobit.i, ptr %i.k, align 1
  %i.l = load i32, ptr %i.e, align 8, !tbaa !88
  %i.m = add i32 %i.l, 1
  store i32 %i.m, ptr %i.e, align 8, !tbaa !88
  br label %_ZN4llvm16FoldingSetNodeID10AddBooleanEb.exit.i

_ZN4llvm16FoldingSetNodeID10AddBooleanEb.exit.i:  ; preds = %bb.c, %bb.b
  br i1 %i.d, label %bb.d, label %_ZN12_GLOBAL__N_114profileAttrArgIN5clang8ParamIdxEEENSt9enable_ifIXntoooooooooosr3stdE9is_same_vIT_N4llvm9StringRefEEsr3stdE9is_same_vIS4_NS5_12VersionTupleEEsr3stdE9is_same_vIS4_PNS1_14IdentifierInfoEEsr3stdE9is_same_vIS4_PKS8_Esr3stdE9is_enum_vIS4_Esr3stdE13is_integral_vIS4_EEvE4typeERNS5_16FoldingSetNodeIDERKNS1_10ASTContextES4_.exit

bb.d:                                             ; preds = %_ZN4llvm16FoldingSetNodeID10AddBooleanEb.exit.i
  %i.n = and i32 %.sroa.0.0.copyload.i, 1073741823
  %3 = lshr i32 %.sroa.0.0.copyload.i, 30
  %4 = and i32 %3, 1
  %5 = xor i32 %4, -1
  %i.o = add nsw i32 %i.n, %5                     ; 2 uses
  %i.p = load i32, ptr %i.e, align 8, !tbaa !88   ; 2 uses
  %i.q = load i32, ptr %i.g, align 4, !tbaa !151
  %.not.i.i.i.i = icmp ult i32 %i.p, %i.q
  br i1 %.not.i.i.i.i, label %bb.f, label %bb.e, !prof !138

bb.e:                                             ; preds = %bb.d
  tail call void @_ZN4llvm23SmallVectorTemplateBaseIjLb1EE15growAndPushBackEj(ptr noundef nonnull align 8 dereferenceable(144) %1, i32 noundef %i.o)
  br label %_ZN12_GLOBAL__N_114profileAttrArgIN5clang8ParamIdxEEENSt9enable_ifIXntoooooooooosr3stdE9is_same_vIT_N4llvm9StringRefEEsr3stdE9is_same_vIS4_NS5_12VersionTupleEEsr3stdE9is_same_vIS4_PNS1_14IdentifierInfoEEsr3stdE9is_same_vIS4_PKS8_Esr3stdE9is_enum_vIS4_Esr3stdE13is_integral_vIS4_EEvE4typeERNS5_16FoldingSetNodeIDERKNS1_10ASTContextES4_.exit

bb.f:                                             ; preds = %bb.d
  %i.r = zext i32 %i.p to i64
  %i.s = load ptr, ptr %1, align 8, !tbaa !87
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %i.r
  store i32 %i.o, ptr %i.t, align 1
  %i.u = load i32, ptr %i.e, align 8, !tbaa !88
  %i.v = add i32 %i.u, 1
  store i32 %i.v, ptr %i.e, align 8, !tbaa !88
  br label %_ZN12_GLOBAL__N_114profileAttrArgIN5clang8ParamIdxEEENSt9enable_ifIXntoooooooooosr3stdE9is_same_vIT_N4llvm9StringRefEEsr3stdE9is_same_vIS4_NS5_12VersionTupleEEsr3stdE9is_same_vIS4_PNS1_14IdentifierInfoEEsr3stdE9is_same_vIS4_PKS8_Esr3stdE9is_enum_vIS4_Esr3stdE13is_integral_vIS4_EEvE4typeERNS5_16FoldingSetNodeIDERKNS1_10ASTContextES4_.exit

_ZN12_GLOBAL__N_114profileAttrArgIN5clang8ParamIdxEEENSt9enable_ifIXntoooooooooosr3stdE9is_same_vIT_N4llvm9StringRefEEsr3stdE9is_same_vIS4_NS5_12VersionTupleEEsr3stdE9is_same_vIS4_PNS1_14IdentifierInfoEEsr3stdE9is_same_vIS4_PKS8_Esr3stdE9is_enum_vIS4_Esr3stdE13is_integral_vIS4_EEvE4typeERNS5_16FoldingSetNodeIDERKNS1_10ASTContextES4_.exit: ; preds = %_ZN4llvm16FoldingSetNodeID10AddBooleanEb.exit.i, %bb.e, %bb.f
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef nonnull ptr @_ZNK5clang12RestrictAttr5cloneERNS_10ASTContextE(ptr noundef nonnull align 8 dereferenceable(52) %0, ptr noundef nonnull align 8 dereferenceable(23904) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 2632 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !136  ; 2 uses
  %i.c = ptrtoint ptr %i.b to i64
  %i.d = add i64 %i.c, 56                         ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 2640
  %i.f = load i64, ptr %i.e, align 8, !tbaa !137
  %i.g = icmp ult i64 %i.d, %i.f
  br i1 %i.g, label %bb.b, label %bb.c, !prof !138

bb.b:                                             ; preds = %bb.a
  %i.h = inttoptr i64 %i.d to ptr
  store ptr %i.h, ptr %i.a, align 8, !tbaa !136
  br label %_ZN5clang4AttrnwEmRNS_10ASTContextEm.exit

bb.c:                                             ; preds = %bb.a
  %i.i = tail call noundef nonnull ptr @_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE12AllocateSlowEmmNS_5AlignE(ptr noundef nonnull align 8 dereferenceable(80) %i.a, i64 noundef 56, i64 noundef 56, i8 3)
  br label %_ZN5clang4AttrnwEmRNS_10ASTContextEm.exit

_ZN5clang4AttrnwEmRNS_10ASTContextEm.exit:        ; preds = %bb.b, %bb.c
  %.0.i.i.i.i.i = phi ptr [ %i.b, %bb.b ], [ %i.i, %bb.c ] ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.i.i.i.i.i) ]
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !643
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.sroa.0.0.copyload = load i32, ptr %i.l, align 8, !tbaa !30
  tail call void @_ZN5clang12RestrictAttrC1ERNS_10ASTContextERKNS_19AttributeCommonInfoEPNS_4ExprENS_8ParamIdxE(ptr noundef nonnull align 8 dereferenceable(52) %.0.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(23904) %1, ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef %i.k, i32 %.sroa.0.0.copyload) #20
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 38 ; 3 uses
  %i.n = load i8, ptr %i.m, align 2
  %i.o = and i8 %i.n, 1
  %i.p = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i, i64 38 ; 4 uses
  %i.q = load i8, ptr %i.p, align 2
  %i.r = and i8 %i.q, -2
  %i.s = or disjoint i8 %i.r, %i.o                ; 2 uses
  store i8 %i.s, ptr %i.p, align 2
  %i.t = load i8, ptr %i.m, align 2
  %i.u = and i8 %i.t, 2
  %i.v = and i8 %i.s, -3
  %i.w = or disjoint i8 %i.v, %i.u                ; 2 uses
  store i8 %i.w, ptr %i.p, align 2
  %i.x = load i8, ptr %i.m, align 2
  %i.y = and i8 %i.x, 4
  %i.z = and i8 %i.w, -5
  %i.aa = or disjoint i8 %i.z, %i.y
  store i8 %i.aa, ptr %i.p, align 2
  ret ptr %.0.i.i.i.i.i
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZNK5clang12RestrictAttr11printPrettyERN4llvm11raw_ostreamERKNS_14PrintingPolicyE(ptr noundef nonnull align 8 dereferenceable(52) %0, ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #0 align 2 {
bb.a:
  %3 = alloca %"class.llvm::StringRef", align 8   ; 3 uses
  %4 = alloca %"class.llvm::StringRef", align 8   ; 3 uses
  %5 = alloca %"class.llvm::StringRef", align 8   ; 3 uses
  %6 = alloca %"class.llvm::StringRef", align 8   ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i32, ptr %i.a, align 8              ; 2 uses
  %i.c = and i32 %i.b, 15728640
  %.not.i = icmp eq i32 %i.c, 15728640
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = lshr i32 %i.b, 20
  %i.e = and i32 %i.d, 15
  br label %_ZNK5clang19AttributeCommonInfo29getAttributeSpellingListIndexEv.exit

bb.c:                                             ; preds = %bb.a
  %i.f = tail call noundef i32 @_ZNK5clang19AttributeCommonInfo35calculateAttributeSpellingListIndexEv(ptr noundef nonnull align 8 dereferenceable(36) %0) #20
  br label %_ZNK5clang19AttributeCommonInfo29getAttributeSpellingListIndexEv.exit

_ZNK5clang19AttributeCommonInfo29getAttributeSpellingListIndexEv.exit: ; preds = %bb.b, %bb.c
  %i.g = phi i32 [ %i.e, %bb.b ], [ %i.f, %bb.c ]
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 21 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !29
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 69 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !28   ; 5 uses
  %i.l = ptrtoint ptr %i.i to i64
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = sub i64 %i.l, %i.m                       ; 4 uses
  switch i32 %i.g, label %bb.d [
    i32 0, label %bb.e
    i32 1, label %bb.u
    i32 2, label %bb.ak
    i32 3, label %bb.ba
  ]

bb.d:                                             ; preds = %_ZNK5clang19AttributeCommonInfo29getAttributeSpellingListIndexEv.exit
  unreachable

bb.e:                                             ; preds = %_ZNK5clang19AttributeCommonInfo29getAttributeSpellingListIndexEv.exit
  %i.o = icmp ult i64 %i.n, 19
  br i1 %i.o, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.p = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull @.str.1208, i64 noundef 19) #20 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit

bb.g:                                             ; preds = %bb.e
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(19) %i.k, ptr noundef nonnull align 1 dereferenceable(19) @.str.1208, i64 19, i1 false)
  %i.q = load ptr, ptr %i.j, align 8, !tbaa !28
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 19
  store ptr %i.r, ptr %i.j, align 8, !tbaa !28
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit

_ZN4llvm11raw_ostreamlsEPKc.exit:                 ; preds = %bb.f, %bb.g
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !643
  %.not54 = icmp eq ptr %i.u, null
  br i1 %.not54, label %_ZN4llvm11raw_ostreamlsEPKc.exit60, label %bb.h

bb.h:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit
  %i.v = load ptr, ptr %i.h, align 8, !tbaa !29
  %i.w = load ptr, ptr %i.j, align 8, !tbaa !28   ; 2 uses
  %i.x = icmp eq ptr %i.v, %i.w
  br i1 %i.x, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.y = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull @.str, i64 noundef 1) #20 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit60.thread

bb.j:                                             ; preds = %bb.h
  store i8 40, ptr %i.w, align 1
  %i.z = load ptr, ptr %i.j, align 8, !tbaa !28
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 1
  store ptr %i.aa, ptr %i.j, align 8, !tbaa !28
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit60.thread

_ZN4llvm11raw_ostreamlsEPKc.exit60:               ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit
  %.sroa.0.0.copyload.i61 = load i32, ptr %i.s, align 8, !tbaa !30
  %i.ab = icmp slt i32 %.sroa.0.0.copyload.i61, 0
  br i1 %i.ab, label %bb.k, label %_ZN4llvm11raw_ostreamlsEPKc.exit72

_ZN4llvm11raw_ostreamlsEPKc.exit60.thread:        ; preds = %bb.j, %bb.i
  %i.ac = load ptr, ptr %i.t, align 8, !tbaa !643
  store ptr @.str.1, ptr %3, align 8, !tbaa !53
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 1, ptr %i.ad, align 8, !tbaa !54
  tail call void @_ZNK5clang4Stmt11printPrettyERN4llvm11raw_ostreamEPNS_13PrinterHelperERKNS_14PrintingPolicyEjNS1_9StringRefEPKNS_10ASTContextE(ptr noundef nonnull align 8 dereferenceable(8) %i.ac, ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef null, ptr noundef nonnull align 8 dereferenceable(16) %2, i32 noundef 0, ptr noundef nonnull byval(%"class.llvm::StringRef") align 8 %3, ptr noundef null) #20
  %.sroa.0.0.copyload.i61192 = load i32, ptr %i.s, align 8, !tbaa !30
  %i.ae = icmp slt i32 %.sroa.0.0.copyload.i61192, 0
  br i1 %i.ae, label %bb.n, label %_ZN4llvm11raw_ostreamlsEPKc.exit69.thread

bb.k:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit60
  %i.af = load ptr, ptr %i.h, align 8, !tbaa !29
  %i.ag = load ptr, ptr %i.j, align 8, !tbaa !28  ; 2 uses
  %i.ah = icmp eq ptr %i.af, %i.ag
  br i1 %i.ah, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ai = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull @.str, i64 noundef 1) #20 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit65

bb.m:                                             ; preds = %bb.k
  store i8 40, ptr %i.ag, align 1
  %i.aj = load ptr, ptr %i.j, align 8, !tbaa !28
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 1
  store ptr %i.ak, ptr %i.j, align 8, !tbaa !28
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit65

bb.n:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit60.thread
  %i.al = load ptr, ptr %i.h, align 8, !tbaa !29
  %i.am = load ptr, ptr %i.j, align 8, !tbaa !28  ; 2 uses
  %i.an = ptrtoint ptr %i.al to i64
  %i.ao = ptrtoint ptr %i.am to i64
  %i.ap = sub i64 %i.an, %i.ao
  %i.aq = icmp ult i64 %i.ap, 2
  br i1 %i.aq, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.ar = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull @.str.17, i64 noundef 2) #20 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit65

bb.p:                                             ; preds = %bb.n
  store i16 8236, ptr %i.am, align 1
end_hunk_5
begin_hunk_6_@_ZN5clang14SwiftAsyncAttrC2ERNS_10ASTContextERKNS_19AttributeCommonInfoENS0_4KindENS_8ParamIdxE
define dso_local void @_ZN5clang14SwiftAsyncAttrC2ERNS_10ASTContextERKNS_19AttributeCommonInfoENS0_4KindENS_8ParamIdxE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(48) initializes((0, 38), (40, 48)) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(36) %2, i32 noundef %3, i32 %4) unnamed_addr #6 align 2 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(39) %0, ptr noundef nonnull align 8 dereferenceable(36) %2, i64 36, i1 false), !tbaa.struct !141
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i16 388, ptr %i.a, align 4
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 38 ; 2 uses
  %i.c = load i8, ptr %i.b, align 2
  %i.d = and i8 %i.c, -32
  store i8 %i.d, ptr %i.b, align 2
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 %3, ptr %i.e, align 8, !tbaa !675
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 44
  store i32 %4, ptr %i.f, align 4, !tbaa !30
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @_ZN5clang14SwiftAsyncAttrC2ERNS_10ASTContextERKNS_19AttributeCommonInfoENS0_4KindE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(48) initializes((0, 38), (40, 48)) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(36) %2, i32 noundef %3) unnamed_addr #6 align 2 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(39) %0, ptr noundef nonnull align 8 dereferenceable(36) %2, i64 36, i1 false), !tbaa.struct !141
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i16 388, ptr %i.a, align 4
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 38 ; 2 uses
  %i.c = load i8, ptr %i.b, align 2
  %i.d = and i8 %i.c, -32
  store i8 %i.d, ptr %i.b, align 2
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 %3, ptr %i.e, align 8, !tbaa !675
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 44
  store i32 0, ptr %i.f, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local noundef zeroext i1 @_ZN5clang14SwiftAsyncAttr16ConvertStrToKindEN4llvm9StringRefERNS0_4KindE(ptr nofree readonly captures(none) %0, i64 %1, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(4) %2) local_unnamed_addr #6 align 2 {
bb.a:
  switch i64 %1, label %_ZN4llvm12StringSwitchISt8optionalIN5clang14SwiftAsyncAttr4KindEES5_E4CaseENS_13StringLiteralES5_.exit21.thread [
    i64 4, label %_ZN4llvmneENS_9StringRefES0_.exit.i.i
    i64 13, label %_ZN4llvmneENS_9StringRefES0_.exit.i.i8
    i64 17, label %_ZN4llvmneENS_9StringRefES0_.exit.i.i17
  ]

_ZN4llvmneENS_9StringRefES0_.exit.i.i:            ; preds = %bb.a
  %i.a = load i32, ptr %0, align 1
  %i.b = icmp ne i32 %i.a, 1701736302
  %i.c = zext i1 %i.b to i32
  %.not.i.i = icmp eq i32 %i.c, 0
  br i1 %.not.i.i, label %_ZN4llvm12StringSwitchISt8optionalIN5clang14SwiftAsyncAttr4KindEES5_E4CaseENS_13StringLiteralES5_.exit21, label %_ZN4llvm12StringSwitchISt8optionalIN5clang14SwiftAsyncAttr4KindEES5_E4CaseENS_13StringLiteralES5_.exit21.thread

_ZN4llvmneENS_9StringRefES0_.exit.i.i8:           ; preds = %bb.a
  %i.d = load i64, ptr %0, align 1
  %i.e = xor i64 %i.d, 8246195871254411123
  %i.f = getelementptr i8, ptr %0, i64 5
  %i.g = load i64, ptr %i.f, align 1
  %i.h = xor i64 %i.g, 7310575256332300383
  %i.i = or i64 %i.e, %i.h
  %i.j = icmp ne i64 %i.i, 0
  %i.k = zext i1 %i.j to i32
  %.not.i.i10 = icmp eq i32 %i.k, 0
  br i1 %.not.i.i10, label %_ZN4llvm12StringSwitchISt8optionalIN5clang14SwiftAsyncAttr4KindEES5_E4CaseENS_13StringLiteralES5_.exit21, label %_ZN4llvm12StringSwitchISt8optionalIN5clang14SwiftAsyncAttr4KindEES5_E4CaseENS_13StringLiteralES5_.exit21.thread

_ZN4llvmneENS_9StringRefES0_.exit.i.i17:          ; preds = %bb.a
  %i.l = load i128, ptr %0, align 1
  %i.m = xor i128 %i.l, 154696501985035556015122472504845954926
  %i.n = getelementptr i8, ptr %0, i64 16
  %i.o = load i8, ptr %i.n, align 1
  %i.p = zext i8 %i.o to i128
  %i.q = xor i128 %i.p, 101
  %i.r = or i128 %i.m, %i.q
  %i.s = icmp ne i128 %i.r, 0
  %i.t = zext i1 %i.s to i32
  %.not.i.i19 = icmp eq i32 %i.t, 0
  br i1 %.not.i.i19, label %_ZN4llvm12StringSwitchISt8optionalIN5clang14SwiftAsyncAttr4KindEES5_E4CaseENS_13StringLiteralES5_.exit21, label %_ZN4llvm12StringSwitchISt8optionalIN5clang14SwiftAsyncAttr4KindEES5_E4CaseENS_13StringLiteralES5_.exit21.thread

_ZN4llvm12StringSwitchISt8optionalIN5clang14SwiftAsyncAttr4KindEES5_E4CaseENS_13StringLiteralES5_.exit21: ; preds = %_ZN4llvmneENS_9StringRefES0_.exit.i.i, %_ZN4llvmneENS_9StringRefES0_.exit.i.i8, %_ZN4llvmneENS_9StringRefES0_.exit.i.i17
  %.sroa.10.2 = phi i32 [ 0, %_ZN4llvmneENS_9StringRefES0_.exit.i.i ], [ 1, %_ZN4llvmneENS_9StringRefES0_.exit.i.i8 ], [ 2, %_ZN4llvmneENS_9StringRefES0_.exit.i.i17 ]
  store i32 %.sroa.10.2, ptr %2, align 4, !tbaa !989
  br label %_ZN4llvm12StringSwitchISt8optionalIN5clang14SwiftAsyncAttr4KindEES5_E4CaseENS_13StringLiteralES5_.exit21.thread

_ZN4llvm12StringSwitchISt8optionalIN5clang14SwiftAsyncAttr4KindEES5_E4CaseENS_13StringLiteralES5_.exit21.thread: ; preds = %bb.a, %_ZN4llvmneENS_9StringRefES0_.exit.i.i, %_ZN4llvmneENS_9StringRefES0_.exit.i.i8, %_ZN4llvmneENS_9StringRefES0_.exit.i.i17, %_ZN4llvm12StringSwitchISt8optionalIN5clang14SwiftAsyncAttr4KindEES5_E4CaseENS_13StringLiteralES5_.exit21
  %i.u = phi i1 [ true, %_ZN4llvm12StringSwitchISt8optionalIN5clang14SwiftAsyncAttr4KindEES5_E4CaseENS_13StringLiteralES5_.exit21 ], [ false, %_ZN4llvmneENS_9StringRefES0_.exit.i.i ], [ false, %bb.a ], [ false, %_ZN4llvmneENS_9StringRefES0_.exit.i.i17 ], [ false, %_ZN4llvmneENS_9StringRefES0_.exit.i.i8 ]
  ret i1 %i.u
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef nonnull ptr @_ZN5clang14SwiftAsyncAttr16ConvertKindToStrENS0_4KindE(i32 noundef %0) local_unnamed_addr #4 align 2 {
switch.lookup:
  %i.a = zext nneg i32 %0 to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZNK5clang14SwiftAsyncAttr11printPrettyERN4llvm11raw_ostreamERKNS_14PrintingPolicyE.1567, i64 %i.a
  %switch.load = load ptr, ptr %switch.gep, align 8
  ret ptr %switch.load
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef zeroext i1 @_ZNK5clang14SwiftAsyncAttr12isEquivalentERKS0_RNS_28StructuralEquivalenceContextE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %1, ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(145) %2) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load i32, ptr %i.a, align 8, !tbaa !675
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.d = load i32, ptr %i.c, align 8, !tbaa !675
  %i.e = icmp eq i32 %i.b, %i.d
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 44
  %.sroa.0.0.copyload.i = load i32, ptr %i.f, align 4, !tbaa !30 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 44
  %.sroa.0.0.copyload.i7 = load i32, ptr %i.g, align 4, !tbaa !30
  %i.h = icmp sgt i32 %.sroa.0.0.copyload.i, -1
  %i.i = xor i32 %.sroa.0.0.copyload.i7, %.sroa.0.0.copyload.i ; 2 uses
  %i.j = icmp slt i32 %i.i, 0                     ; 2 uses
  %brmerge.i = or i1 %i.h, %i.j
  %not..i = xor i1 %i.j, true
  %i.k = and i32 %i.i, 1073741823
  %i.l = icmp eq i32 %i.k, 0
  %.0.i = select i1 %brmerge.i, i1 %not..i, i1 %i.l
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi i1 [ false, %bb.a ], [ %.0.i, %bb.b ]
  ret i1 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZNK5clang14SwiftAsyncAttr7ProfileERN4llvm16FoldingSetNodeIDERKNS_10ASTContextE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(144) %1, ptr nofree nonnull readnone align 8 captures(none) %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load i32, ptr %i.a, align 8, !tbaa !675  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 12 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !88   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 4 uses
  %i.f = load i32, ptr %i.e, align 4, !tbaa !151
  %.not.i.i.i.i = icmp ult i32 %i.d, %i.f
  br i1 %.not.i.i.i.i, label %bb.c, label %bb.b, !prof !138

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4llvm23SmallVectorTemplateBaseIjLb1EE15growAndPushBackEj(ptr noundef nonnull align 8 dereferenceable(144) %1, i32 noundef %i.b)
  %.pre.i.i.i = load i32, ptr %i.c, align 8, !tbaa !88
  br label %_ZN4llvm23SmallVectorTemplateBaseIjLb1EE9push_backEj.exit.i.i.i

bb.c:                                             ; preds = %bb.a
  %i.g = zext i32 %i.d to i64
  %i.h = load ptr, ptr %1, align 8, !tbaa !87
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.g
  store i32 %i.b, ptr %i.i, align 1
  %i.j = load i32, ptr %i.c, align 8, !tbaa !88
  %i.k = add i32 %i.j, 1                          ; 2 uses
  store i32 %i.k, ptr %i.c, align 8, !tbaa !88
  br label %_ZN4llvm23SmallVectorTemplateBaseIjLb1EE9push_backEj.exit.i.i.i

_ZN4llvm23SmallVectorTemplateBaseIjLb1EE9push_backEj.exit.i.i.i: ; preds = %bb.c, %bb.b
  %i.l = phi i32 [ %.pre.i.i.i, %bb.b ], [ %i.k, %bb.c ] ; 2 uses
  %i.m = load i32, ptr %i.e, align 4, !tbaa !151
  %.not.i2.i.i.i = icmp ult i32 %i.l, %i.m
  br i1 %.not.i2.i.i.i, label %bb.e, label %bb.d, !prof !138

bb.d:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseIjLb1EE9push_backEj.exit.i.i.i
  tail call void @_ZN4llvm23SmallVectorTemplateBaseIjLb1EE15growAndPushBackEj(ptr noundef nonnull align 8 dereferenceable(144) %1, i32 noundef 0)
  %.pre = load i32, ptr %i.c, align 8, !tbaa !88
  br label %_ZN12_GLOBAL__N_114profileAttrArgIN5clang14SwiftAsyncAttr4KindEEENSt9enable_ifIXoooooooooosr3stdE9is_same_vIT_N4llvm9StringRefEEsr3stdE9is_same_vIS5_NS6_12VersionTupleEEsr3stdE9is_same_vIS5_PNS1_14IdentifierInfoEEsr3stdE9is_same_vIS5_PKS9_Esr3stdE9is_enum_vIS5_Esr3stdE13is_integral_vIS5_EEvE4typeERNS6_16FoldingSetNodeIDERKNS1_10ASTContextES5_.exit

bb.e:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseIjLb1EE9push_backEj.exit.i.i.i
  %i.n = zext i32 %i.l to i64
  %i.o = load ptr, ptr %1, align 8, !tbaa !87
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %i.n
  store i32 0, ptr %i.p, align 1
  %i.q = load i32, ptr %i.c, align 8, !tbaa !88
  %i.r = add i32 %i.q, 1                          ; 2 uses
  store i32 %i.r, ptr %i.c, align 8, !tbaa !88
  br label %_ZN12_GLOBAL__N_114profileAttrArgIN5clang14SwiftAsyncAttr4KindEEENSt9enable_ifIXoooooooooosr3stdE9is_same_vIT_N4llvm9StringRefEEsr3stdE9is_same_vIS5_NS6_12VersionTupleEEsr3stdE9is_same_vIS5_PNS1_14IdentifierInfoEEsr3stdE9is_same_vIS5_PKS9_Esr3stdE9is_enum_vIS5_Esr3stdE13is_integral_vIS5_EEvE4typeERNS6_16FoldingSetNodeIDERKNS1_10ASTContextES5_.exit

_ZN12_GLOBAL__N_114profileAttrArgIN5clang14SwiftAsyncAttr4KindEEENSt9enable_ifIXoooooooooosr3stdE9is_same_vIT_N4llvm9StringRefEEsr3stdE9is_same_vIS5_NS6_12VersionTupleEEsr3stdE9is_same_vIS5_PNS1_14IdentifierInfoEEsr3stdE9is_same_vIS5_PKS9_Esr3stdE9is_enum_vIS5_Esr3stdE13is_integral_vIS5_EEvE4typeERNS6_16FoldingSetNodeIDERKNS1_10ASTContextES5_.exit: ; preds = %bb.d, %bb.e
  %i.s = phi i32 [ %.pre, %bb.d ], [ %i.r, %bb.e ] ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 44
  %.sroa.0.0.copyload.i = load i32, ptr %i.t, align 4, !tbaa !30 ; 4 uses
  %i.u = icmp slt i32 %.sroa.0.0.copyload.i, 0
  %.lobit.i = lshr i32 %.sroa.0.0.copyload.i, 31  ; 2 uses
  %i.v = load i32, ptr %i.e, align 4, !tbaa !151
  %.not.i.i.i.i.i = icmp ult i32 %i.s, %i.v
  br i1 %.not.i.i.i.i.i, label %bb.g, label %bb.f, !prof !138

bb.f:                                             ; preds = %_ZN12_GLOBAL__N_114profileAttrArgIN5clang14SwiftAsyncAttr4KindEEENSt9enable_ifIXoooooooooosr3stdE9is_same_vIT_N4llvm9StringRefEEsr3stdE9is_same_vIS5_NS6_12VersionTupleEEsr3stdE9is_same_vIS5_PNS1_14IdentifierInfoEEsr3stdE9is_same_vIS5_PKS9_Esr3stdE9is_enum_vIS5_Esr3stdE13is_integral_vIS5_EEvE4typeERNS6_16FoldingSetNodeIDERKNS1_10ASTContextES5_.exit
  tail call void @_ZN4llvm23SmallVectorTemplateBaseIjLb1EE15growAndPushBackEj(ptr noundef nonnull align 8 dereferenceable(144) %1, i32 noundef %.lobit.i)
  br label %_ZN4llvm16FoldingSetNodeID10AddBooleanEb.exit.i

bb.g:                                             ; preds = %_ZN12_GLOBAL__N_114profileAttrArgIN5clang14SwiftAsyncAttr4KindEEENSt9enable_ifIXoooooooooosr3stdE9is_same_vIT_N4llvm9StringRefEEsr3stdE9is_same_vIS5_NS6_12VersionTupleEEsr3stdE9is_same_vIS5_PNS1_14IdentifierInfoEEsr3stdE9is_same_vIS5_PKS9_Esr3stdE9is_enum_vIS5_Esr3stdE13is_integral_vIS5_EEvE4typeERNS6_16FoldingSetNodeIDERKNS1_10ASTContextES5_.exit
  %i.w = zext i32 %i.s to i64
  %i.x = load ptr, ptr %1, align 8, !tbaa !87
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %i.w
  store i32 %.lobit.i, ptr %i.y, align 1
  %i.z = load i32, ptr %i.c, align 8, !tbaa !88
  %i.aa = add i32 %i.z, 1
  store i32 %i.aa, ptr %i.c, align 8, !tbaa !88
  br label %_ZN4llvm16FoldingSetNodeID10AddBooleanEb.exit.i

_ZN4llvm16FoldingSetNodeID10AddBooleanEb.exit.i:  ; preds = %bb.g, %bb.f
  br i1 %i.u, label %bb.h, label %_ZN12_GLOBAL__N_114profileAttrArgIN5clang8ParamIdxEEENSt9enable_ifIXntoooooooooosr3stdE9is_same_vIT_N4llvm9StringRefEEsr3stdE9is_same_vIS4_NS5_12VersionTupleEEsr3stdE9is_same_vIS4_PNS1_14IdentifierInfoEEsr3stdE9is_same_vIS4_PKS8_Esr3stdE9is_enum_vIS4_Esr3stdE13is_integral_vIS4_EEvE4typeERNS5_16FoldingSetNodeIDERKNS1_10ASTContextES4_.exit

bb.h:                                             ; preds = %_ZN4llvm16FoldingSetNodeID10AddBooleanEb.exit.i
  %i.ab = and i32 %.sroa.0.0.copyload.i, 1073741823
  %3 = lshr i32 %.sroa.0.0.copyload.i, 30
  %4 = and i32 %3, 1
  %5 = xor i32 %4, -1
  %i.ac = add nsw i32 %i.ab, %5                   ; 2 uses
  %i.ad = load i32, ptr %i.c, align 8, !tbaa !88  ; 2 uses
  %i.ae = load i32, ptr %i.e, align 4, !tbaa !151
  %.not.i.i.i.i5 = icmp ult i32 %i.ad, %i.ae
  br i1 %.not.i.i.i.i5, label %bb.j, label %bb.i, !prof !138

bb.i:                                             ; preds = %bb.h
  tail call void @_ZN4llvm23SmallVectorTemplateBaseIjLb1EE15growAndPushBackEj(ptr noundef nonnull align 8 dereferenceable(144) %1, i32 noundef %i.ac)
  br label %_ZN12_GLOBAL__N_114profileAttrArgIN5clang8ParamIdxEEENSt9enable_ifIXntoooooooooosr3stdE9is_same_vIT_N4llvm9StringRefEEsr3stdE9is_same_vIS4_NS5_12VersionTupleEEsr3stdE9is_same_vIS4_PNS1_14IdentifierInfoEEsr3stdE9is_same_vIS4_PKS8_Esr3stdE9is_enum_vIS4_Esr3stdE13is_integral_vIS4_EEvE4typeERNS5_16FoldingSetNodeIDERKNS1_10ASTContextES4_.exit

bb.j:                                             ; preds = %bb.h
  %i.af = zext i32 %i.ad to i64
  %i.ag = load ptr, ptr %1, align 8, !tbaa !87
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %i.af
  store i32 %i.ac, ptr %i.ah, align 1
  %i.ai = load i32, ptr %i.c, align 8, !tbaa !88
  %i.aj = add i32 %i.ai, 1
  store i32 %i.aj, ptr %i.c, align 8, !tbaa !88
  br label %_ZN12_GLOBAL__N_114profileAttrArgIN5clang8ParamIdxEEENSt9enable_ifIXntoooooooooosr3stdE9is_same_vIT_N4llvm9StringRefEEsr3stdE9is_same_vIS4_NS5_12VersionTupleEEsr3stdE9is_same_vIS4_PNS1_14IdentifierInfoEEsr3stdE9is_same_vIS4_PKS8_Esr3stdE9is_enum_vIS4_Esr3stdE13is_integral_vIS4_EEvE4typeERNS5_16FoldingSetNodeIDERKNS1_10ASTContextES4_.exit

_ZN12_GLOBAL__N_114profileAttrArgIN5clang8ParamIdxEEENSt9enable_ifIXntoooooooooosr3stdE9is_same_vIT_N4llvm9StringRefEEsr3stdE9is_same_vIS4_NS5_12VersionTupleEEsr3stdE9is_same_vIS4_PNS1_14IdentifierInfoEEsr3stdE9is_same_vIS4_PKS8_Esr3stdE9is_enum_vIS4_Esr3stdE13is_integral_vIS4_EEvE4typeERNS5_16FoldingSetNodeIDERKNS1_10ASTContextES4_.exit: ; preds = %_ZN4llvm16FoldingSetNodeID10AddBooleanEb.exit.i, %bb.i, %bb.j
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef nonnull ptr @_ZNK5clang14SwiftAsyncAttr5cloneERNS_10ASTContextE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(23904) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 2632 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !136  ; 2 uses
  %i.c = ptrtoint ptr %i.b to i64
  %i.d = add i64 %i.c, 48                         ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 2640
  %i.f = load i64, ptr %i.e, align 8, !tbaa !137
  %i.g = icmp ult i64 %i.d, %i.f
  br i1 %i.g, label %bb.b, label %bb.c, !prof !138

bb.b:                                             ; preds = %bb.a
  %i.h = inttoptr i64 %i.d to ptr
  store ptr %i.h, ptr %i.a, align 8, !tbaa !136
  br label %_ZN5clang4AttrnwEmRNS_10ASTContextEm.exit

bb.c:                                             ; preds = %bb.a
  %i.i = tail call noundef nonnull ptr @_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE12AllocateSlowEmmNS_5AlignE(ptr noundef nonnull align 8 dereferenceable(80) %i.a, i64 noundef 48, i64 noundef 48, i8 3)
  br label %_ZN5clang4AttrnwEmRNS_10ASTContextEm.exit

_ZN5clang4AttrnwEmRNS_10ASTContextEm.exit:        ; preds = %bb.b, %bb.c
  %.0.i.i.i.i.i = phi ptr [ %i.b, %bb.b ], [ %i.i, %bb.c ] ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.i.i.i.i.i) ]
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.k = load i32, ptr %i.j, align 8, !tbaa !675
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 44
  %.sroa.0.0.copyload = load i32, ptr %i.l, align 4, !tbaa !30
  tail call void @_ZN5clang14SwiftAsyncAttrC1ERNS_10ASTContextERKNS_19AttributeCommonInfoENS0_4KindENS_8ParamIdxE(ptr noundef nonnull align 8 dereferenceable(48) %.0.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(23904) %1, ptr noundef nonnull align 8 dereferenceable(36) %0, i32 noundef %i.k, i32 %.sroa.0.0.copyload) #20
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 38 ; 3 uses
  %i.n = load i8, ptr %i.m, align 2
  %i.o = and i8 %i.n, 1
  %i.p = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i, i64 38 ; 4 uses
  %i.q = load i8, ptr %i.p, align 2
  %i.r = and i8 %i.q, -2
  %i.s = or disjoint i8 %i.r, %i.o                ; 2 uses
  store i8 %i.s, ptr %i.p, align 2
  %i.t = load i8, ptr %i.m, align 2
  %i.u = and i8 %i.t, 2
  %i.v = and i8 %i.s, -3
  %i.w = or disjoint i8 %i.v, %i.u                ; 2 uses
  store i8 %i.w, ptr %i.p, align 2
  %i.x = load i8, ptr %i.m, align 2
  %i.y = and i8 %i.x, 4
  %i.z = and i8 %i.w, -5
  %i.aa = or disjoint i8 %i.z, %i.y
  store i8 %i.aa, ptr %i.p, align 2
  ret ptr %.0.i.i.i.i.i
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZNK5clang14SwiftAsyncAttr11printPrettyERN4llvm11raw_ostreamERKNS_14PrintingPolicyE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1, ptr nofree nonnull readnone align 8 captures(none) %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i32, ptr %i.a, align 8              ; 2 uses
  %i.c = and i32 %i.b, 15728640
  %.not.i = icmp eq i32 %i.c, 15728640
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = lshr i32 %i.b, 20
  %i.e = and i32 %i.d, 15
  br label %_ZNK5clang19AttributeCommonInfo29getAttributeSpellingListIndexEv.exit

bb.c:                                             ; preds = %bb.a
  %i.f = tail call noundef i32 @_ZNK5clang19AttributeCommonInfo35calculateAttributeSpellingListIndexEv(ptr noundef nonnull align 8 dereferenceable(36) %0) #20
  br label %_ZNK5clang19AttributeCommonInfo29getAttributeSpellingListIndexEv.exit

_ZNK5clang19AttributeCommonInfo29getAttributeSpellingListIndexEv.exit: ; preds = %bb.b, %bb.c
  %i.g = phi i32 [ %i.e, %bb.b ], [ %i.f, %bb.c ]
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 16 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !29
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 52 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !28   ; 4 uses
  %i.l = ptrtoint ptr %i.i to i64
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = sub i64 %i.l, %i.m                       ; 3 uses
  switch i32 %i.g, label %bb.d [
    i32 0, label %bb.e
    i32 1, label %bb.y
    i32 2, label %bb.as
  ]

bb.d:                                             ; preds = %_ZNK5clang19AttributeCommonInfo29getAttributeSpellingListIndexEv.exit
  unreachable

bb.e:                                             ; preds = %_ZNK5clang19AttributeCommonInfo29getAttributeSpellingListIndexEv.exit
  %i.o = icmp ult i64 %i.n, 26
  br i1 %i.o, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.p = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull @.str.1284, i64 noundef 26) #20 ; 0 uses
  %.pre134 = load ptr, ptr %i.j, align 8, !tbaa !28
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(26) %i.k, ptr noundef nonnull align 1 dereferenceable(26) @.str.1284, i64 26, i1 false)
  %i.q = load ptr, ptr %i.j, align 8, !tbaa !28
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 26 ; 2 uses
  store ptr %i.r, ptr %i.j, align 8, !tbaa !28
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.s = phi ptr [ %i.r, %bb.g ], [ %.pre134, %bb.f ] ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  %i.u = load ptr, ptr %i.h, align 8, !tbaa !29
  %i.v = icmp eq ptr %i.u, %i.s
  br i1 %i.v, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.w = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull @.str, i64 noundef 1) #20 ; 0 uses
  %.pre135 = load ptr, ptr %i.j, align 8, !tbaa !28
  br label %_ZN5clangL24DelimitAttributeArgumentERN4llvm11raw_ostreamERb.exit

bb.j:                                             ; preds = %bb.h
  store i8 40, ptr %i.s, align 1
  %i.x = load ptr, ptr %i.j, align 8, !tbaa !28
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 1 ; 2 uses
  store ptr %i.y, ptr %i.j, align 8, !tbaa !28
  br label %_ZN5clangL24DelimitAttributeArgumentERN4llvm11raw_ostreamERb.exit

_ZN5clangL24DelimitAttributeArgumentERN4llvm11raw_ostreamERb.exit: ; preds = %bb.i, %bb.j
  %i.z = phi ptr [ %.pre135, %bb.i ], [ %i.y, %bb.j ] ; 2 uses
  %i.aa = load ptr, ptr %i.h, align 8, !tbaa !29
  %i.ab = icmp eq ptr %i.aa, %i.z
  br i1 %i.ab, label %bb.k, label %bb.l

bb.k:                                             ; preds = %_ZN5clangL24DelimitAttributeArgumentERN4llvm11raw_ostreamERb.exit
  %i.ac = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull @.str.58, i64 noundef 1) #20
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit26

bb.l:                                             ; preds = %_ZN5clangL24DelimitAttributeArgumentERN4llvm11raw_ostreamERb.exit
  store i8 34, ptr %i.z, align 1
  %i.ad = load ptr, ptr %i.j, align 8, !tbaa !28
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 1
  store ptr %i.ae, ptr %i.j, align 8, !tbaa !28
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit26

_ZN4llvm11raw_ostreamlsEPKc.exit26:               ; preds = %bb.k, %bb.l
  %.0.i.i25 = phi ptr [ %i.ac, %bb.k ], [ %1, %bb.l ] ; 5 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !675
  %i.ah = zext nneg i32 %i.ag to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZNK5clang14SwiftAsyncAttr11printPrettyERN4llvm11raw_ostreamERKNS_14PrintingPolicyE.1567, i64 %i.ah
  %switch.load = load ptr, ptr %switch.gep, align 8 ; 3 uses
  %i.ai = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %switch.load) #20 ; 5 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.0.i.i25, i64 24
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !29
  %i.al = getelementptr inbounds nuw i8, ptr %.0.i.i25, i64 32 ; 3 uses
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !28 ; 3 uses
  %i.an = ptrtoint ptr %i.ak to i64
  %i.ao = ptrtoint ptr %i.am to i64
  %i.ap = sub i64 %i.an, %i.ao
  %i.aq = icmp ugt i64 %i.ai, %i.ap
  br i1 %i.aq, label %bb.m, label %bb.n

bb.m:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit26
  %i.ar = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %.0.i.i25, ptr noundef nonnull %switch.load, i64 noundef %i.ai) #20 ; 2 uses
  %.phi.trans.insert136 = getelementptr inbounds nuw i8, ptr %i.ar, i64 32
  %.pre137 = load ptr, ptr %.phi.trans.insert136, align 8, !tbaa !28
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit29

bb.n:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit26
  %.not.i2.i27 = icmp eq i64 %i.ai, 0
  br i1 %.not.i2.i27, label %_ZN4llvm11raw_ostreamlsEPKc.exit29, label %bb.o

bb.o:                                             ; preds = %bb.n
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.am, ptr nonnull align 1 %switch.load, i64 %i.ai, i1 false)
  %i.as = load ptr, ptr %i.al, align 8, !tbaa !28
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.ai ; 2 uses
  store ptr %i.at, ptr %i.al, align 8, !tbaa !28
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit29

_ZN4llvm11raw_ostreamlsEPKc.exit29:               ; preds = %bb.m, %bb.n, %bb.o
  %i.au = phi ptr [ %.pre137, %bb.m ], [ %i.at, %bb.o ], [ %i.am, %bb.n ] ; 2 uses
  %.0.i.i28 = phi ptr [ %i.ar, %bb.m ], [ %.0.i.i25, %bb.o ], [ %.0.i.i25, %bb.n ] ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.0.i.i28, i64 24
end_hunk_6
