Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/ty_python_semantic-ec859307257497d7.ty_python_semantic.4ad91d80fb3de5b-cgu.02?download=true
inline.NumInlined: 7440
inline.NumDeleted: 2774
loop-unroll.NumCompletelyUnrolled: 52
loop-unroll.NumRuntimeUnrolled: 178
loop-unroll.NumUnrolled: 230
begin_hunk_0_@_RINvYNtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherNtNtCs4NRVxsYgnAr_4core4hash11BuildHasher8hash_oneRNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7literal20LiteralValueTypeKindEB1F_:bb.a
  br label %.sink.split.i.i

bb.e:                                             ; preds = %bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.u = load i64, ptr %i.t, align 4, !alias.scope !28529, !noalias !28530
  %i.v = add i64 %i.u, %i.c
  br label %.sink.split.i.i

bb.f:                                             ; preds = %bb.a
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.x = load i64, ptr %i.w, align 4, !alias.scope !28529, !noalias !28530
  %i.y = add i64 %i.x, %i.c
  br label %.sink.split.i.i

.sink.split.i.i:                                  ; preds = %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  %.sink2.i.i = phi i64 [ %i.y, %bb.f ], [ %i.v, %bb.e ], [ %i.s, %bb.d ], [ %i.p, %bb.c ], [ %i.l, %bb.b ]
  %i.z = mul i64 %.sink2.i.i, -1065810590584100411
  br label %_RINvXs3_NtNtCs4NRVxsYgnAr_4core4hash5implsRNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7literal20LiteralValueTypeKindNtB8_4Hash4hashNtCsjp5HOZs6k8V_10rustc_hash8FxHasherEBL_.exit

_RINvXs3_NtNtCs4NRVxsYgnAr_4core4hash5implsRNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7literal20LiteralValueTypeKindNtB8_4Hash4hashNtCsjp5HOZs6k8V_10rustc_hash8FxHasherEBL_.exit: ; preds = %bb.a, %.sink.split.i.i
  %.sroa.03.0 = phi i64 [ %i.z, %.sink.split.i.i ], [ %i.c, %bb.a ] ; 2 uses
  %i.aa = tail call noundef i64 @llvm.fshl.i64(i64 %.sroa.03.0, i64 %.sroa.03.0, i64 26)
  ret i64 %i.aa
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden noundef i64 @_RINvYNtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherNtNtCs4NRVxsYgnAr_4core4hash11BuildHasher8hash_oneRNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7newtype7NewTypeEB1F_(ptr noalias noundef nonnull readonly captures(none) %0, ptr noalias noundef readonly align 4 captures(none) dereferenceable(8) %1) unnamed_addr #19 personality ptr @rust_eh_personality {
bb.a:
  %.val.i = load i64, ptr %1, align 4, !noalias !28533
  %i.a = mul i64 %.val.i, -1065810590584100411    ; 2 uses
  %i.b = tail call noundef i64 @llvm.fshl.i64(i64 %i.a, i64 %i.a, i64 26)
  ret i64 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden noundef i64 @_RINvYNtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherNtNtCs4NRVxsYgnAr_4core4hash11BuildHasher8hash_oneRNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar14BindingContextEB1F_(ptr noalias noundef nonnull readonly captures(none) %0, ptr noalias noundef readonly align 4 captures(none) dereferenceable(12) %1) unnamed_addr #19 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i32, ptr %1, align 4, !range !18, !alias.scope !28539, !noalias !28540, !noundef !6
  %i.b = zext nneg i32 %i.a to i64
  %i.c = mul nuw nsw i64 %i.b, -1065810590584100411
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.e = load i64, ptr %i.d, align 4, !alias.scope !28539, !noalias !28540
  %storemerge.in.i.i = add i64 %i.c, %i.e
  %storemerge.i.i = mul i64 %storemerge.in.i.i, -1065810590584100411 ; 2 uses
  %i.f = tail call noundef i64 @llvm.fshl.i64(i64 %storemerge.i.i, i64 %storemerge.i.i, i64 26)
  ret i64 %i.f
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden noundef i64 @_RINvYNtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherNtNtCs4NRVxsYgnAr_4core4hash11BuildHasher8hash_oneRNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar15TypeVarInstanceEB1F_(ptr noalias noundef nonnull readonly captures(none) %0, ptr noalias noundef readonly align 4 captures(none) dereferenceable(8) %1) unnamed_addr #19 personality ptr @rust_eh_personality {
bb.a:
  %.val.i = load i64, ptr %1, align 4, !noalias !28543
  %i.a = mul i64 %.val.i, -1065810590584100411    ; 2 uses
  %i.b = tail call noundef i64 @llvm.fshl.i64(i64 %i.a, i64 %i.a, i64 26)
  ret i64 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden noundef i64 @_RINvYNtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherNtNtCs4NRVxsYgnAr_4core4hash11BuildHasher8hash_oneRNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar20BoundTypeVarIdentityEB1F_(ptr noalias noundef nonnull readonly captures(none) %0, ptr noalias noundef readonly align 4 captures(none) dereferenceable(28) %1) unnamed_addr #19 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.b = load i64, ptr %i.a, align 4, !alias.scope !28552, !noalias !28553
  %i.c = mul i64 %i.b, -1065810590584100411
  %i.d = load i32, ptr %1, align 4, !range !18, !alias.scope !28554, !noalias !28555, !noundef !6
  %i.e = zext nneg i32 %i.d to i64
  %i.f = add i64 %i.c, %i.e
  %i.g = mul i64 %i.f, -1065810590584100411
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.i = load i64, ptr %i.h, align 4, !alias.scope !28554, !noalias !28555
  %storemerge.in.i.i.i = add i64 %i.g, %i.i
  %storemerge.i.i.i = mul i64 %storemerge.in.i.i.i, -1065810590584100411
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.k = load i8, ptr %i.j, align 4, !range !33, !alias.scope !28552, !noalias !28553, !noundef !6 ; 2 uses
  %i.l = icmp ne i8 %i.k, 2                       ; 2 uses
  %i.m = zext i1 %i.l to i64
  %i.n = add i64 %storemerge.i.i.i, %i.m
  %i.o = mul i64 %i.n, -1065810590584100411       ; 2 uses
  %i.p = zext nneg i8 %i.k to i64
  %i.q = add i64 %i.o, %i.p
  %i.r = mul i64 %i.q, -1065810590584100411
  %storemerge.i.i = select i1 %i.l, i64 %i.r, i64 %i.o
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.t = load i32, ptr %i.s, align 4, !alias.scope !28552, !noalias !28553, !noundef !6
  %i.u = zext i32 %i.t to i64
  %i.v = add i64 %storemerge.i.i, %i.u
  %i.w = mul i64 %i.v, -1065810590584100411       ; 2 uses
  %i.x = tail call noundef i64 @llvm.fshl.i64(i64 %i.w, i64 %i.w, i64 26)
  ret i64 %i.x
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden noundef i64 @_RINvYNtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherNtNtCs4NRVxsYgnAr_4core4hash11BuildHasher8hash_oneRNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar20BoundTypeVarInstanceEB1F_(ptr noalias noundef nonnull readonly captures(none) %0, ptr noalias noundef readonly align 4 captures(none) dereferenceable(8) %1) unnamed_addr #19 personality ptr @rust_eh_personality {
bb.a:
  %.val.i = load i64, ptr %1, align 4, !noalias !28558
  %i.a = mul i64 %.val.i, -1065810590584100411    ; 2 uses
  %i.b = tail call noundef i64 @llvm.fshl.i64(i64 %i.a, i64 %i.a, i64 26)
  ret i64 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden noundef i64 @_RINvYNtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherNtNtCs4NRVxsYgnAr_4core4hash11BuildHasher8hash_oneRNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types8callable12CallableTypeEB1F_(ptr noalias noundef nonnull readonly captures(none) %0, ptr noalias noundef readonly align 4 captures(none) dereferenceable(8) %1) unnamed_addr #19 personality ptr @rust_eh_personality {
bb.a:
  %.val.i = load i64, ptr %1, align 4, !noalias !28561
  %i.a = mul i64 %.val.i, -1065810590584100411    ; 2 uses
  %i.b = tail call noundef i64 @llvm.fshl.i64(i64 %i.a, i64 %i.a, i64 26)
  ret i64 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read, inaccessiblemem: readwrite) uwtable
define hidden noundef i64 @_RINvYNtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherNtNtCs4NRVxsYgnAr_4core4hash11BuildHasher8hash_oneRNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types8equality13ComparisonKeyEB1F_(ptr noalias noundef nonnull readonly captures(none) %0, ptr noalias noundef readonly align 4 captures(none) dereferenceable(36) %1) unnamed_addr #22 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 0, ptr %i.a, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !28571)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !28572)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !28573)
  call fastcc void @_RINvXs2S_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB7_4TypeNtNtCs4NRVxsYgnAr_4core4hash4Hash4hashNtCsjp5HOZs6k8V_10rustc_hash8FxHasherEB9_(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(36) %1, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  call fastcc void @_RINvXs2S_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB7_4TypeNtNtCs4NRVxsYgnAr_4core4hash4Hash4hashNtCsjp5HOZs6k8V_10rustc_hash8FxHasherEB9_(ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(16) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.d = load i8, ptr %i.c, align 4, !range !32, !alias.scope !28572, !noalias !28574, !noundef !6
  %i.e = zext nneg i8 %i.d to i64
  %i.f = load i64, ptr %i.a, align 8, !alias.scope !28575, !noalias !28572, !noundef !6
  %i.g = add i64 %i.f, %i.e
  %i.h = mul i64 %i.g, -1065810590584100411
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 33
  %i.j = load i8, ptr %i.i, align 1, !range !32, !alias.scope !28572, !noalias !28574, !noundef !6
  %i.k = zext nneg i8 %i.j to i64
  %i.l = add i64 %i.h, %i.k
  %i.m = mul i64 %i.l, -1065810590584100411       ; 2 uses
  %i.n = tail call noundef i64 @llvm.fshl.i64(i64 %i.m, i64 %i.m, i64 26)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i64 %i.n
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden noundef i64 @_RINvYNtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherNtNtCs4NRVxsYgnAr_4core4hash11BuildHasher8hash_oneRNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types8function12FunctionTypeEB1F_(ptr noalias noundef nonnull readonly captures(none) %0, ptr noalias noundef readonly align 4 captures(none) dereferenceable(8) %1) unnamed_addr #19 personality ptr @rust_eh_personality {
bb.a:
  %.val.i = load i64, ptr %1, align 4, !noalias !28578
  %i.a = mul i64 %.val.i, -1065810590584100411    ; 2 uses
  %i.b = tail call noundef i64 @llvm.fshl.i64(i64 %i.a, i64 %i.a, i64 26)
  ret i64 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden noundef i64 @_RINvYNtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherNtNtCs4NRVxsYgnAr_4core4hash11BuildHasher8hash_oneRNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types8function29RecursiveTypeNormalizationKeyEB1F_(ptr noalias noundef nonnull readonly captures(none) %0, ptr noalias noundef readonly align 4 captures(none) dereferenceable(12) %1) unnamed_addr #19 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %1, align 4, !alias.scope !28584, !noalias !28585
  %i.b = mul i64 %i.a, -1065810590584100411
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i8, ptr %i.c, align 4, !range !32, !alias.scope !28584, !noalias !28585, !noundef !6
  %i.e = zext nneg i8 %i.d to i64
  %i.f = add i64 %i.b, %i.e
  %i.g = mul i64 %i.f, -1065810590584100411       ; 2 uses
  %i.h = tail call noundef i64 @llvm.fshl.i64(i64 %i.g, i64 %i.g, i64 26)
  ret i64 %i.h
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden noundef i64 @_RINvYNtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherNtNtCs4NRVxsYgnAr_4core4hash11BuildHasher8hash_oneRNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types8generics14GenericContextEB1F_(ptr noalias noundef nonnull readonly captures(none) %0, ptr noalias noundef readonly align 4 captures(none) dereferenceable(8) %1) unnamed_addr #19 personality ptr @rust_eh_personality {
bb.a:
  %.val.i = load i64, ptr %1, align 4, !noalias !28588
  %i.a = mul i64 %.val.i, -1065810590584100411    ; 2 uses
  %i.b = tail call noundef i64 @llvm.fshl.i64(i64 %i.a, i64 %i.a, i64 26)
  ret i64 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden noundef i64 @_RINvYNtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherNtNtCs4NRVxsYgnAr_4core4hash11BuildHasher8hash_oneRNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class14static_literal18StaticClassLiteralEB1H_(ptr noalias noundef nonnull readonly captures(none) %0, ptr noalias noundef readonly align 4 captures(none) dereferenceable(8) %1) unnamed_addr #19 personality ptr @rust_eh_personality {
bb.a:
  %.val.i = load i64, ptr %1, align 4, !noalias !28591
  %i.a = mul i64 %.val.i, -1065810590584100411    ; 2 uses
  %i.b = tail call noundef i64 @llvm.fshl.i64(i64 %i.a, i64 %i.a, i64 26)
  ret i64 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden noundef i64 @_RINvYNtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherNtNtCs4NRVxsYgnAr_4core4hash11BuildHasher8hash_oneRNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5known10KnownClassEB1H_(ptr noalias noundef nonnull readonly captures(none) %0, ptr noalias noundef readonly captures(none) dereferenceable(1) %1) unnamed_addr #19 personality ptr @rust_eh_personality {
bb.a:
  %.val.i = load i8, ptr %1, align 1, !range !51, !noalias !28594, !noundef !6
  %i.a = zext nneg i8 %.val.i to i64
  %i.b = mul i64 %i.a, -1065810590584100411       ; 2 uses
  %i.c = tail call noundef i64 @llvm.fshl.i64(i64 %i.b, i64 %i.b, i64 26)
  ret i64 %i.c
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, inaccessiblemem: readwrite, target_mem: none) uwtable
define hidden noundef i64 @_RINvYNtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherNtNtCs4NRVxsYgnAr_4core4hash11BuildHasher8hash_oneRNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types8equality5enums17EnumComparisonKeyEB1H_(ptr noalias noundef nonnull readonly captures(none) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %1) unnamed_addr #23 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !28613)
  %i.a = load i32, ptr %1, align 8, !alias.scope !28613, !noalias !28614, !noundef !6 ; 2 uses
  %i.b = icmp eq i32 %i.a, 0
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  br i1 %i.b, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.d = load i8, ptr %i.c, align 4, !range !25, !alias.scope !28615, !noalias !28616, !noundef !6 ; 2 uses
  %i.e = zext nneg i8 %i.d to i64
  %i.f = mul nsw i64 %i.e, -1065810590584100411
  %i.g = add nsw i64 %i.f, 1452335207727870361    ; 6 uses
  switch i8 %i.d, label %default.unreachable [
    i8 0, label %bb.c
    i8 1, label %bb.d
    i8 2, label %bb.e
    i8 3, label %bb.f
    i8 5, label %bb.g
    i8 4, label %_RINvXs3_NtNtCs4NRVxsYgnAr_4core4hash5implsRNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types8equality5enums17EnumComparisonKeyNtB8_4Hash4hashNtCsjp5HOZs6k8V_10rustc_hash8FxHasherEBN_.exit
  ]

default.unreachable:                              ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.i = load i32, ptr %i.h, align 8, !alias.scope !28615, !noalias !28616, !noundef !6
  %i.j = zext i32 %i.i to i64
  %i.k = add nsw i64 %i.g, %i.j
  %i.l = mul i64 %i.k, -1065810590584100411
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.n = load i32, ptr %i.m, align 4, !alias.scope !28615, !noalias !28616, !noundef !6
  %i.o = zext i32 %i.n to i64
  %i.p = add i64 %i.l, %i.o
  br label %.sink.split.i.i.i

bb.d:                                             ; preds = %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 5
  %i.r = load i8, ptr %i.q, align 1, !range !32, !alias.scope !28615, !noalias !28616, !noundef !6
  %i.s = zext nneg i8 %i.r to i64
  %i.t = add nsw i64 %i.g, %i.s
  br label %.sink.split.i.i.i

bb.e:                                             ; preds = %bb.b
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.v = load i64, ptr %i.u, align 8, !alias.scope !28615, !noalias !28616
  %i.w = add i64 %i.v, %i.g
  br label %.sink.split.i.i.i

bb.f:                                             ; preds = %bb.b
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.y = load i64, ptr %i.x, align 8, !alias.scope !28615, !noalias !28616
  %i.z = add i64 %i.y, %i.g
  br label %.sink.split.i.i.i

bb.g:                                             ; preds = %bb.b
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ab = load i64, ptr %i.aa, align 8, !alias.scope !28615, !noalias !28616
  %i.ac = add i64 %i.ab, %i.g
  br label %.sink.split.i.i.i

.sink.split.i.i.i:                                ; preds = %bb.g, %bb.f, %bb.e, %bb.d, %bb.c
  %.sink2.i.i.i = phi i64 [ %i.ac, %bb.g ], [ %i.z, %bb.f ], [ %i.w, %bb.e ], [ %i.t, %bb.d ], [ %i.p, %bb.c ]
  %i.ad = mul i64 %.sink2.i.i.i, -1065810590584100411
  br label %_RINvXs3_NtNtCs4NRVxsYgnAr_4core4hash5implsRNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types8equality5enums17EnumComparisonKeyNtB8_4Hash4hashNtCsjp5HOZs6k8V_10rustc_hash8FxHasherEBN_.exit

bb.h:                                             ; preds = %bb.a
  %i.ae = load i32, ptr %i.c, align 4, !alias.scope !28613, !noalias !28614, !noundef !6
  %i.af = zext i32 %i.a to i64
  %i.ag = zext i32 %i.ae to i64
  %i.ah = shl nuw i64 %i.ag, 32
  %i.ai = or disjoint i64 %i.ah, %i.af
  %i.aj = mul i64 %i.ai, -1065810590584100411
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.al = load ptr, ptr %i.ak, align 8, !alias.scope !28613, !noalias !28614, !nonnull !6, !align !24, !noundef !6 ; 4 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 15
  %i.an = load i8, ptr %i.am, align 1, !range !8, !alias.scope !28617, !noalias !28618, !noundef !6 ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.ap = load i64, ptr %i.ao, align 8, !alias.scope !28617, !noalias !28618, !noundef !6
  %i.aq = and i64 %i.ap, 72057594037927935
  %i.ar = icmp ult i8 %i.an, -48
  %i.as = zext i8 %i.an to i64
  %i.at = add nsw i64 %i.as, -192
  %spec.store.select.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.at, i64 16)
  %.sroa.0.0.i.i.i = select i1 %i.ar, i64 %spec.store.select.i.i.i, i64 %i.aq ; 11 uses
  %i.au = icmp ugt i8 %i.an, -49
  %i.av = load ptr, ptr %i.al, align 8, !alias.scope !28617, !noalias !28618
  %.sroa.01.0.i.i.i = select i1 %i.au, ptr %i.av, ptr %i.al ; 10 uses
  %i.aw = icmp samesign ult i64 %.sroa.0.0.i.i.i, 17
  br i1 %i.aw, label %bb.i, label %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsoTR8nlGN3X_18ty_python_semantic.exit74.preheader.i.i.i.i.i

bb.i:                                             ; preds = %bb.h
  %i.ax = icmp samesign ugt i64 %.sroa.0.0.i.i.i, 7
  br i1 %i.ax, label %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsoTR8nlGN3X_18ty_python_semantic.exit.i.i.i.i.i, label %bb.j

_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsoTR8nlGN3X_18ty_python_semantic.exit74.preheader.i.i.i.i.i: ; preds = %bb.h
  %i.ay = add nsw i64 %.sroa.0.0.i.i.i, -17       ; 2 uses
  %i.az = lshr i64 %i.ay, 4                       ; 2 uses
  %i.ba = add nuw nsw i64 %i.az, 1                ; 2 uses
  %i.bb = icmp eq i64 %i.az, 0
  br i1 %i.bb, label %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsoTR8nlGN3X_18ty_python_semantic.exit74.i.i.i.i.i.epil.preheader, label %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsoTR8nlGN3X_18ty_python_semantic.exit74.preheader.i.i.i.i.i.new

_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsoTR8nlGN3X_18ty_python_semantic.exit74.preheader.i.i.i.i.i.new: ; preds = %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsoTR8nlGN3X_18ty_python_semantic.exit74.preheader.i.i.i.i.i
  %unroll_iter = and i64 %i.ba, 2305843009213693950
  br label %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsoTR8nlGN3X_18ty_python_semantic.exit74.i.i.i.i.i

_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsoTR8nlGN3X_18ty_python_semantic.exit74.i.i.i.i.i: ; preds = %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsoTR8nlGN3X_18ty_python_semantic.exit74.i.i.i.i.i, %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsoTR8nlGN3X_18ty_python_semantic.exit74.preheader.i.i.i.i.i.new
  %.sroa.0.090.i.i.i.i.i = phi i64 [ 2611923443488327891, %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsoTR8nlGN3X_18ty_python_semantic.exit74.preheader.i.i.i.i.i.new ], [ %i.bl, %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsoTR8nlGN3X_18ty_python_semantic.exit74.i.i.i.i.i ]
  %.sroa.06.089.i.i.i.i.i = phi i64 [ 1376283091369227076, %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsoTR8nlGN3X_18ty_python_semantic.exit74.preheader.i.i.i.i.i.new ], [ %i.bv, %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsoTR8nlGN3X_18ty_python_semantic.exit74.i.i.i.i.i ]
  %.sroa.018.088.i.i.i.i.i = phi ptr [ %.sroa.01.0.i.i.i, %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsoTR8nlGN3X_18ty_python_semantic.exit74.preheader.i.i.i.i.i.new ], [ %i.bm, %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsoTR8nlGN3X_18ty_python_semantic.exit74.i.i.i.i.i ] ; 5 uses
  %niter = phi i64 [ 0, %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsoTR8nlGN3X_18ty_python_semantic.exit74.preheader.i.i.i.i.i.new ], [ %niter.next.1, %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsoTR8nlGN3X_18ty_python_semantic.exit74.i.i.i.i.i ]
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.018.088.i.i.i.i.i, i64 16
  %.sroa.037.0.copyload.i.i.i.i.i = load i64, ptr %.sroa.018.088.i.i.i.i.i, align 1, !alias.scope !28619, !noalias !28620
  %i.bd = getelementptr inbounds nuw i8, ptr %.sroa.018.088.i.i.i.i.i, i64 8
  %.sroa.039.0.copyload.i.i.i.i.i = load i64, ptr %i.bd, align 1, !alias.scope !28619, !noalias !28620
  %i.be = xor i64 %.sroa.037.0.copyload.i.i.i.i.i, %.sroa.0.090.i.i.i.i.i
  %i.bf = xor i64 %.sroa.039.0.copyload.i.i.i.i.i, -6626703657320631856
  %i.bg = zext i64 %i.be to i128
  %i.bh = zext i64 %i.bf to i128
  %i.bi = mul nuw i128 %i.bh, %i.bg               ; 2 uses
  %i.bj = lshr i128 %i.bi, 64
  %i.bk = xor i128 %i.bj, %i.bi
  %i.bl = trunc i128 %i.bk to i64                 ; 3 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %.sroa.018.088.i.i.i.i.i, i64 32 ; 2 uses
  %.sroa.037.0.copyload.i.i.i.i.i.1 = load i64, ptr %i.bc, align 1, !alias.scope !28619, !noalias !28620
  %i.bn = getelementptr inbounds nuw i8, ptr %.sroa.018.088.i.i.i.i.i, i64 24
  %.sroa.039.0.copyload.i.i.i.i.i.1 = load i64, ptr %i.bn, align 1, !alias.scope !28619, !noalias !28620
  %i.bo = xor i64 %.sroa.037.0.copyload.i.i.i.i.i.1, %.sroa.06.089.i.i.i.i.i
  %i.bp = xor i64 %.sroa.039.0.copyload.i.i.i.i.i.1, -6626703657320631856
  %i.bq = zext i64 %i.bo to i128
  %i.br = zext i64 %i.bp to i128
  %i.bs = mul nuw i128 %i.br, %i.bq               ; 2 uses
  %i.bt = lshr i128 %i.bs, 64
  %i.bu = xor i128 %i.bt, %i.bs
  %i.bv = trunc i128 %i.bu to i64                 ; 3 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1.not = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1.not, label %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsoTR8nlGN3X_18ty_python_semantic.exit70.i.i.i.i.i.unr-lcssa, label %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsoTR8nlGN3X_18ty_python_semantic.exit74.i.i.i.i.i

_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsoTR8nlGN3X_18ty_python_semantic.exit70.i.i.i.i.i.unr-lcssa: ; preds = %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsoTR8nlGN3X_18ty_python_semantic.exit74.i.i.i.i.i
  %i.bw = and i64 %i.ay, 16
  %lcmp.mod.not.not = icmp eq i64 %i.bw, 0
  br i1 %lcmp.mod.not.not, label %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsoTR8nlGN3X_18ty_python_semantic.exit74.i.i.i.i.i.epil.preheader, label %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsoTR8nlGN3X_18ty_python_semantic.exit70.i.i.i.i.i

_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsoTR8nlGN3X_18ty_python_semantic.exit74.i.i.i.i.i.epil.preheader: ; preds = %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsoTR8nlGN3X_18ty_python_semantic.exit70.i.i.i.i.i.unr-lcssa, %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsoTR8nlGN3X_18ty_python_semantic.exit74.preheader.i.i.i.i.i
  %.sroa.0.090.i.i.i.i.i.epil.init = phi i64 [ 2611923443488327891, %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsoTR8nlGN3X_18ty_python_semantic.exit74.preheader.i.i.i.i.i ], [ %i.bl, %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsoTR8nlGN3X_18ty_python_semantic.exit70.i.i.i.i.i.unr-lcssa ]
  %.sroa.06.089.i.i.i.i.i.epil.init = phi i64 [ 1376283091369227076, %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsoTR8nlGN3X_18ty_python_semantic.exit74.preheader.i.i.i.i.i ], [ %i.bv, %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsoTR8nlGN3X_18ty_python_semantic.exit70.i.i.i.i.i.unr-lcssa ]
  %.sroa.018.088.i.i.i.i.i.epil.init = phi ptr [ %.sroa.01.0.i.i.i, %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsoTR8nlGN3X_18ty_python_semantic.exit74.preheader.i.i.i.i.i ], [ %i.bm, %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsoTR8nlGN3X_18ty_python_semantic.exit70.i.i.i.i.i.unr-lcssa ] ; 2 uses
  %lcmp.mod7 = trunc i64 %i.ba to i1
  tail call void @llvm.assume(i1 %lcmp.mod7)
  %.sroa.037.0.copyload.i.i.i.i.i.epil = load i64, ptr %.sroa.018.088.i.i.i.i.i.epil.init, align 1, !alias.scope !28619, !noalias !28620
  %i.bx = getelementptr inbounds nuw i8, ptr %.sroa.018.088.i.i.i.i.i.epil.init, i64 8
  %.sroa.039.0.copyload.i.i.i.i.i.epil = load i64, ptr %i.bx, align 1, !alias.scope !28619, !noalias !28620
  %i.by = xor i64 %.sroa.037.0.copyload.i.i.i.i.i.epil, %.sroa.0.090.i.i.i.i.i.epil.init
  %i.bz = xor i64 %.sroa.039.0.copyload.i.i.i.i.i.epil, -6626703657320631856
  %i.ca = zext i64 %i.by to i128
  %i.cb = zext i64 %i.bz to i128
  %i.cc = mul nuw i128 %i.cb, %i.ca               ; 2 uses
  %i.cd = lshr i128 %i.cc, 64
  %i.ce = xor i128 %i.cd, %i.cc
  %i.cf = trunc i128 %i.ce to i64
  br label %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsoTR8nlGN3X_18ty_python_semantic.exit70.i.i.i.i.i

_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsoTR8nlGN3X_18ty_python_semantic.exit70.i.i.i.i.i: ; preds = %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsoTR8nlGN3X_18ty_python_semantic.exit70.i.i.i.i.i.unr-lcssa, %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsoTR8nlGN3X_18ty_python_semantic.exit74.i.i.i.i.i.epil.preheader
  %.sroa.06.089.i.i.i.i.i.lcssa = phi i64 [ %i.bl, %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsoTR8nlGN3X_18ty_python_semantic.exit70.i.i.i.i.i.unr-lcssa ], [ %.sroa.06.089.i.i.i.i.i.epil.init, %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsoTR8nlGN3X_18ty_python_semantic.exit74.i.i.i.i.i.epil.preheader ]
  %.lcssa = phi i64 [ %i.bv, %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsoTR8nlGN3X_18ty_python_semantic.exit70.i.i.i.i.i.unr-lcssa ], [ %i.cf, %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsoTR8nlGN3X_18ty_python_semantic.exit74.i.i.i.i.i.epil.preheader ]
  %i.cg = getelementptr i8, ptr %.sroa.01.0.i.i.i, i64 %.sroa.0.0.i.i.i ; 2 uses
  %i.ch = getelementptr i8, ptr %i.cg, i64 -16
  %.sroa.041.0.copyload.i.i.i.i.i = load i64, ptr %i.ch, align 1, !alias.scope !28619, !noalias !28620
  %i.ci = xor i64 %.sroa.041.0.copyload.i.i.i.i.i, %.sroa.06.089.i.i.i.i.i.lcssa
  %i.cj = getelementptr i8, ptr %i.cg, i64 -8
  %.sroa.043.0.copyload.i.i.i.i.i = load i64, ptr %i.cj, align 1, !alias.scope !28619, !noalias !28620
  %i.ck = xor i64 %.sroa.043.0.copyload.i.i.i.i.i, %.lcssa
  br label %_RNvYNtCsjp5HOZs6k8V_10rustc_hash8FxHasherNtNtCs4NRVxsYgnAr_4core4hash6Hasher9write_strCsoTR8nlGN3X_18ty_python_semantic.exit.i.i

bb.j:                                             ; preds = %bb.i
  %i.cl = icmp samesign ugt i64 %.sroa.0.0.i.i.i, 3
  br i1 %i.cl, label %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCsoTR8nlGN3X_18ty_python_semantic.exit.i.i.i.i.i, label %bb.k

_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsoTR8nlGN3X_18ty_python_semantic.exit.i.i.i.i.i: ; preds = %bb.i
  %.sroa.028.0.copyload.i.i.i.i.i = load i64, ptr %.sroa.01.0.i.i.i, align 1, !alias.scope !28619, !noalias !28620
  %i.cm = xor i64 %.sroa.028.0.copyload.i.i.i.i.i, 2611923443488327891
  %i.cn = getelementptr i8, ptr %.sroa.01.0.i.i.i, i64 %.sroa.0.0.i.i.i
  %i.co = getelementptr i8, ptr %i.cn, i64 -8
  %.sroa.030.0.copyload.i.i.i.i.i = load i64, ptr %i.co, align 1, !alias.scope !28619, !noalias !28620
  %i.cp = xor i64 %.sroa.030.0.copyload.i.i.i.i.i, 1376283091369227076
  br label %_RNvYNtCsjp5HOZs6k8V_10rustc_hash8FxHasherNtNtCs4NRVxsYgnAr_4core4hash6Hasher9write_strCsoTR8nlGN3X_18ty_python_semantic.exit.i.i

bb.k:                                             ; preds = %bb.j
  %.not.i.i.i.i.i = icmp eq i64 %.sroa.0.0.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %_RNvYNtCsjp5HOZs6k8V_10rustc_hash8FxHasherNtNtCs4NRVxsYgnAr_4core4hash6Hasher9write_strCsoTR8nlGN3X_18ty_python_semantic.exit.i.i, label %bb.l

_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCsoTR8nlGN3X_18ty_python_semantic.exit.i.i.i.i.i: ; preds = %bb.j
  %i.cq = getelementptr i8, ptr %.sroa.01.0.i.i.i, i64 %.sroa.0.0.i.i.i
  %i.cr = getelementptr i8, ptr %i.cq, i64 -4
  %.sroa.033.0.copyload.i.i.i.i.i = load i32, ptr %i.cr, align 1, !alias.scope !28619, !noalias !28620
  %.sroa.032.0.copyload.i.i.i.i.i = load i32, ptr %.sroa.01.0.i.i.i, align 1, !alias.scope !28619, !noalias !28620
  %i.cs = zext i32 %.sroa.032.0.copyload.i.i.i.i.i to i64
  %i.ct = xor i64 %i.cs, 2611923443488327891
  %i.cu = zext i32 %.sroa.033.0.copyload.i.i.i.i.i to i64
  %i.cv = xor i64 %i.cu, 1376283091369227076
  br label %_RNvYNtCsjp5HOZs6k8V_10rustc_hash8FxHasherNtNtCs4NRVxsYgnAr_4core4hash6Hasher9write_strCsoTR8nlGN3X_18ty_python_semantic.exit.i.i

bb.l:                                             ; preds = %bb.k
  %i.cw = load i8, ptr %.sroa.01.0.i.i.i, align 1, !alias.scope !28619, !noalias !28620, !noundef !6
  %i.cx = lshr i64 %.sroa.0.0.i.i.i, 1
  %i.cy = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i.i, i64 %i.cx
  %i.cz = load i8, ptr %i.cy, align 1, !alias.scope !28619, !noalias !28620, !noundef !6
  %i.da = getelementptr i8, ptr %.sroa.01.0.i.i.i, i64 %.sroa.0.0.i.i.i
  %i.db = getelementptr i8, ptr %i.da, i64 -1
  %i.dc = load i8, ptr %i.db, align 1, !alias.scope !28619, !noalias !28620, !noundef !6
  %i.dd = zext i8 %i.cw to i64
end_hunk_0
